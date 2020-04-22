package controllers.employees;

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
import utils.DBUtil;

/**
 * Servlet implementation class EmployeesIndexServlet
 */
@WebServlet("/employees/index")
public class EmployeesIndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeesIndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //@DBUtilのHibernateに接続するおまじない
        //EntityManagerのオブジェクトを生成
        EntityManager em = DBUtil.createEntityManager();

        //ページネーション 開くページ数を取得（デフォルトは１ページ目）
        int page = 1;

        //try.catchで囲って処理が止まらないようにする
        try{
            page = Integer.parseInt(request.getParameter("page"));
        } catch(NumberFormatException e) { } //NamedQuery @Employee.javaなのでimportしている

        //最大件数と開始位置を指定してメッセージを取得
        List<Employee> employees = em.createNamedQuery("getAllEmployees", Employee.class)
                                     .setFirstResult(15 * (page - 1))
                                     .setMaxResults(15)
                                     .getResultList();

        //全件数を取得
        long employees_count = (long)em.createNamedQuery("getEmployeesCount", Long.class)
                                       .getSingleResult();

        //EntityManagerの利用を終了
        em.close();

        //フォームに初期値を設定、 JSPに入力データを送る
        request.setAttribute("employees", employees);
        request.setAttribute("employees_count", employees_count); //全件数
        request.setAttribute("page", page);                       //ページ数
        if(request.getSession().getAttribute("flush") != null) {
            //エラーメッセージを送る
            request.setAttribute("flush", request.getSession().getAttribute("flush"));
            request.getSession().removeAttribute("flush");
        }

        //ビューとなるJSPを指定して表示する
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/employees/index.jsp");
        rd.forward(request, response);
    }
}