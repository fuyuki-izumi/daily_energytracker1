package controllers.energytracker;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Employee;
import models.Energy;
import utils.DBUtil;

/**
 * Servlet implementation class EnergyEditServlet
 */
@WebServlet("/energy/edit")
public class EnergyEditServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnergyEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        //該当のIDのトラッカー１件のみをDBから取得
        Energy t = em.find(Energy.class, Integer.parseInt(request.getParameter("id")));

        em.close();

        Employee login_employee = (Employee)request.getSession().getAttribute("login_employee");
        if(t != null && login_employee.getId() == t.getEmployee().getId()) {
            //トラッカー情報とセッションIDをリクエストスコープに登録
            request.setAttribute("energy", t);
            request.setAttribute("_token", request.getSession().getId());
            //トラッカーIDをセッションスコープに登録
            request.getSession().setAttribute("tracker_id", t.getId());
        }

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/energy/edit.jsp");
        rd.forward(request, response);
    }




    }
