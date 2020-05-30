package controllers.energytracker;

import java.io.IOException;
import java.sql.Date;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Employee;
import models.Energy;
import utils.DBUtil;

/**
 * Servlet implementation class EnergyCreateServlet
 */
@WebServlet("/energy/create")
public class EnergyCreateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnergyCreateServlet() {
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

            Energy t = new Energy();

            t.setEmployee((Employee)request.getSession().getAttribute("login_employee"));

            Date tracker_date = new Date(System.currentTimeMillis());
            String rd_str = request.getParameter("tracker_date");
            if(rd_str != null && !rd_str.equals("")) {
                tracker_date = Date.valueOf(request.getParameter("tracker_date"));
            }
            t.setTracker_date(tracker_date);

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






            /*Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            r.setCreated_at(currentTime);
            r.setUpdated_at(currentTime);

            List<String> errors = ReportValidator.validate(r);
            if(errors.size() > 0) {
                em.close();

                request.setAttribute("_token", request.getSession().getId());
                request.setAttribute("report", r);
                request.setAttribute("errors", errors);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/reports/new.jsp");
                rd.forward(request, response);
            } else { */
                em.getTransaction().begin();
                em.persist(t);
                em.getTransaction().commit();
                em.close();
                request.getSession().setAttribute("flush", "登録が完了しました。");

                response.sendRedirect(request.getContextPath() + "/energy/index");
            }
        }

    }

