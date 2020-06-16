package controllers.energytracker;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Employee;
import models.Energy;
import models.Report;
import utils.DBUtil;

/**
 * Servlet implementation class EnergyShowServlet
 */
@WebServlet("/energy/show")
public class EnergyShowServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnergyShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        //該当のIDのトラッカー１件のみをDBから取得
        //indexからenergy.idをキーにリクエストスコープを使って渡されたtrackerのidを受け取る
        Energy t = em.find(Energy.class, Integer.parseInt(request.getParameter("id")));
        Employee login_employee = (Employee)request.getSession().getAttribute("login_employee");

        //エラーcontrollers.energytracker.EnergyShowServlet.doGet(EnergyShowServlet.java:46)
        //オブジェクトを渡してしまっているため
        //Energy et = em.find(Energy.class, Date.valueOf(request.getParameter("tracker_date")));

        //日報一覧表示
        int page;
        try{
            page = Integer.parseInt(request.getParameter("page"));
        } catch(Exception e) {
            page = 1;
        }
        List<Report> day_reports = em.createNamedQuery("getMyDayReports", Report.class)
                                  .setParameter("employee", login_employee)
                                  .setParameter("tracker_date", Date.valueOf(request.getParameter("tracker_date")))
                                  .setFirstResult(15 * (page - 1))
                                  .setMaxResults(15)
                                  .getResultList();



        /*long day_reports_count = (long)em.createNamedQuery("getMyReportsCount", Long.class)
                                     .setParameter("employee", login_employee)
                                     .getSingleResult();*/

        em.close();

        request.setAttribute("day_reports", day_reports);
        //request.setAttribute("day_reports_count", day_reports_count);
        request.setAttribute("page", page);
        request.setAttribute("energy", t);
        request.setAttribute("_token", request.getSession().getId());

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/energy/show.jsp");
        rd.forward(request, response);
    }

}
