package controllers.employees;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Employee;
import utils.DBUtil;

//index ページのID番号に貼ったリンクをクリックすると
//該当のメッセージの詳細情報を表示するページ
@WebServlet("/employees/show")
public class EmployeesShowServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeesShowServlet() {
        super();

    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //@DBUtilのHibernateに接続するおまじない
        //EntityManagerのオブジェクトを生成
        EntityManager em = DBUtil.createEntityManager();

        //該当のIDの従業員1件のみをDBから取得 em.findメソッド
        //request.getParameter()はどんなデータもString型で取得する
        //Integer.parseInt()メソッドでString型の”1”を整数値の1に変えてから
        //findメソッドの引数にする
        Employee e = em.find(Employee.class, Integer.parseInt(request.getParameter("id")));

        em.close();

        //従業員データをリクエストスコープにセット
        request.setAttribute("employee", e);

        //show.jspを呼び出す
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/employees/show.jsp");
        rd.forward(request, response);
    }

}
