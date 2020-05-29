package controllers.energytracker;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Energy;
import utils.DBUtil;

/**
 * Servlet implementation class EnergyIndexServlet
 */
@WebServlet("/energy/index")
public class EnergyIndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnergyIndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        int page;
        try{
            page = Integer.parseInt(request.getParameter("page"));
        } catch(Exception e){
            page = 1;
        }
        List<Energy> trackers = em.createNamedQuery("getAllTrackers", Energy.class)
                                   .setFirstResult(15 * (page -1))
                                   .setMaxResults(15)
                                   .getResultList();

        long trackers_count = (long)em.createNamedQuery("getTrackersCount", Long.class)
                                      .getSingleResult();

        em.close();

        request.setAttribute("trackers", trackers);
        request.setAttribute("trackers_count", trackers_count);
        request.setAttribute("page", page);
        if(request.getSession().getAttribute("flush") != null){
            request.setAttribute("flush", request.getSession().getAttribute("flush"));
            request.getSession().removeAttribute("flush");
        }

        RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/energy/index.jsp");
        rd.forward(request, response);
}
}
