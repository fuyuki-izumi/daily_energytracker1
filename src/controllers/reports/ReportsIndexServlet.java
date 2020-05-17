package controllers.reports;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Report;
import models.ReportYoine;
import utils.DBUtil;

/**
 * Servlet implementation class ReportsIndexServlet
 */
@WebServlet("/reports/index")
public class ReportsIndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportsIndexServlet() {
        super();

    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        //ページネーション EmployeeIndexServletとほぼ同じ
        int page;
        try{
            page = Integer.parseInt(request.getParameter("page"));
        } catch(Exception e) {
            page = 1;
        }
        List<Report> reports = em.createNamedQuery("getAllReports", Report.class)
                                  .setFirstResult(15 * (page - 1))
                                  .setMaxResults(15)
                                  .getResultList();

        long reports_count = (long)em.createNamedQuery("getReportsCount", Long.class)
                                     .getSingleResult();

        List<ReportYoine> report_yoine_list = new ArrayList<>();
        for(int i = 0; i < reports.size(); i++){
            ReportYoine reportYoine = new ReportYoine();
            reportYoine.setId(reports.get(i).getId());
            reportYoine.setEmployee(reports.get(i).getEmployee());
            reportYoine.setReport_date(reports.get(i).getReport_date());
            reportYoine.setTitle(reports.get(i).getTitle());
            reportYoine.SetContent(reports.get(i).getContent());

            Long yoineCount = (Long)em.createNamedQuery("getLimitedYoineCount" ,Long.class)
                                      .setParameter("report", reports.get(i))
                                      .getSingleResult();

            reportYoine.setYoineCount(yoineCount);
            report_yoine_list.add(reportYoine);
        }

        em.close();

        request.setAttribute("reports", report_yoine_list);
        request.setAttribute("reports_count", reports_count);
        request.setAttribute("page", page);
        if(request.getSession().getAttribute("flush") != null) {
            request.setAttribute("flush", request.getSession().getAttribute("flush"));
            request.getSession().removeAttribute("flush");
        }

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/reports/index.jsp");
        rd.forward(request, response);
    }

}
