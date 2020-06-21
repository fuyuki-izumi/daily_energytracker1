package controllers.energytracker;

import java.io.IOException;
import java.sql.Date;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Energy;
import utils.DBUtil;

/**
 * Servlet implementation class EnergyUpdateServlet
 */
@WebServlet("/energy/update")
public class EnergyUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnergyUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String _token = (String)request.getParameter("_token");
        if(_token != null && _token.equals(request.getSession().getId())) {
            EntityManager em = DBUtil.createEntityManager();

            Energy t = em.find(Energy.class, (Integer)(request.getSession().getAttribute("tracker_id")));

            //エラーが起こっている　編集画面で日付の情報が引き継がれていないことが原因か。Editを確認。
            t.setTracker_date(Date.valueOf(request.getParameter("tracker_date")));


            t.setAm01(Integer.valueOf(request.getParameter("am01")));
            t.setAm02(Integer.valueOf(request.getParameter("am02")));
            t.setAm03(Integer.valueOf(request.getParameter("am03")));
            t.setAm04(Integer.valueOf(request.getParameter("am04")));
            t.setAm05(Integer.valueOf(request.getParameter("am05")));
            t.setAm06(Integer.valueOf(request.getParameter("am06")));
            t.setAm07(Integer.valueOf(request.getParameter("am07")));
            t.setAm08(Integer.valueOf(request.getParameter("am08")));
            t.setAm09(Integer.valueOf(request.getParameter("am09")));
            t.setAm10(Integer.valueOf(request.getParameter("am10")));
            t.setAm11(Integer.valueOf(request.getParameter("am11")));
            t.setAm12(Integer.valueOf(request.getParameter("am12")));
            t.setPm01(Integer.valueOf(request.getParameter("pm01")));
            t.setPm02(Integer.valueOf(request.getParameter("pm02")));
            t.setPm03(Integer.valueOf(request.getParameter("pm03")));
            t.setPm04(Integer.valueOf(request.getParameter("pm04")));
            t.setPm05(Integer.valueOf(request.getParameter("pm05")));
            t.setPm06(Integer.valueOf(request.getParameter("pm06")));
            t.setPm07(Integer.valueOf(request.getParameter("pm07")));
            t.setPm08(Integer.valueOf(request.getParameter("pm08")));
            t.setPm09(Integer.valueOf(request.getParameter("pm09")));
            t.setPm10(Integer.valueOf(request.getParameter("pm10")));
            t.setPm11(Integer.valueOf(request.getParameter("pm11")));
            t.setPm12(Integer.valueOf(request.getParameter("pm12")));

          /*  List<String> errors = ReportValidator.validate(r);
            if(errors.size() > 0) {
                em.close();

                request.setAttribute("_token", request.getSession().getId());
                request.setAttribute("report", r);
                request.setAttribute("errors", errors);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/reports/edit.jsp");
                rd.forward(request, response);
            } else { */
                em.getTransaction().begin();
                em.getTransaction().commit();
                em.close();
                request.getSession().setAttribute("flush", "更新が完了しました。");

                request.getSession().removeAttribute("tracker_id");

                response.sendRedirect(request.getContextPath() + "/energy/index");
            }
        }

    }

