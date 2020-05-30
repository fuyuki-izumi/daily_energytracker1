package controllers.energytracker;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Energy;

/**
 * Servlet implementation class EnergyNewServlet
 */
@WebServlet("/energy/new")
public class EnergyNewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnergyNewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("_token", request.getSession().getId());

        Energy t = new Energy();
        t.setTracker_date(new Date(System.currentTimeMillis()));
        request.setAttribute("tracker", t);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/energy/new.jsp");
        rd.forward(request, response);
    }
}