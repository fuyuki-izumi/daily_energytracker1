package controllers.yoine;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Employee;
import models.Report;
import models.Yoine;
import models.validators.YoineValidator;
import utils.DBUtil;


@WebServlet("/yoine/update")
public class YoineUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public YoineUpdateServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String _token = (String)request.getParameter("token");
        //CSRF対策　L13 10参照
        if(_token != null && _token.equals(request.getSession().getId())){
          //@DBUtilのHibernateに接続するおまじない
            EntityManager em = DBUtil.createEntityManager();



            Yoine y = new Yoine();
            //Yoine.javaからemp_idとrep_idを呼び出す
            y.setEmployee((Employee)request.getSession().getAttribute("login_employee"));
            Report report = em.find(Report.class, Integer.parseInt(request.getParameter("report_id")));
            y.setReport(report);


         /* //DBのemp_repテーブルにアクセス
            //セッションスコープからいいねのIDを取得して
            //該当のIDのいいね1件のみをDBから取得 RepUpdServlet参照
            Yoine y = em.find(Yoine.class, (Integer)(request.getSession().getAttribute("yoine_id")));

            Yoine y = em.find(Yoine.class, Integer.parseInt(request.getParameter("yoine_id")));　*/

/*
         //いいねされた数を計算する処理　L14 5.2参照
           long the_number_of_yoine = (long)em.createNamedQuery("getLimitedYoineCount", Long.class)
                                       .setParameter("report", report)
                                       .setParameter("employee", employee)
                                       .getSingleResult();

           request.setAttribute("the_number_of_yoine", the_number_of_yoine); */


           //バリデーションを実行しエラーがあったらshowのページに戻る L13 15,5参照
           //L14 3,1参照
           List<String> errors = YoineValidator.validate(y);
           if(errors.size() > 0){
               em.close();

               request.setAttribute("_token", request.getSession().getId());
               request.setAttribute("yoine", y);
               request.setAttribute("errors", errors);

               //ビューとなるindex.jspを指定してフォワード
               RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/reports/index.jsp");
               rd.forward(request,response);
           }else{
           // DB更新
           em.getTransaction().begin();
           //DBに保存するメソッド
           em.persist(y);
           em.getTransaction().commit();
           request.getSession().setAttribute("flush","あなたのいいねが追加されました。");
           //EntityManagerの利用を終了
           em.close();

           // indexページへリダイレクト
           response.sendRedirect(request.getContextPath() + "/reports/index");
        }
    }

    }
}
