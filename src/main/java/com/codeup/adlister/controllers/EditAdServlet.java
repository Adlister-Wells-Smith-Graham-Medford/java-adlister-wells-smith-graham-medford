package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.Config;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
//check if user is in session, if not redirct to login
    private Ads adsDao;

    @Override
    public void init() {
        adsDao = new MySQLAdsDao(new Config());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Check if the user is signed in
        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        Long adId = Long.parseLong(request.getParameter("id"));

        // Fetch the ad to be edited from the database
        Ad ads = adsDao.findById(adId);

        // Check if the ad belongs to the logged-in user
        if (!Long.valueOf(ads.getUserId()).equals(((User) session.getAttribute("user")).getId())) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN);
            return;
        }

        // Pass the ad to the JSP view for rendering
        request.setAttribute("ad", ads);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long adId = Long.parseLong(request.getParameter("id"));

        // Fetch the ad to be updated from the database
        Ad ad = adsDao.findById(adId);

        // Update the ad object with new values from the form fields
        ad.setTitle(request.getParameter("title"));
        ad.setDescription(request.getParameter("description"));
        ad.setPrice(Integer.parseInt(request.getParameter("price")));
        ad.setMake(request.getParameter("make"));
        ad.setModel(request.getParameter("model"));
        ad.setYear(Integer.parseInt(request.getParameter("year")));
        ad.setMpg(Integer.parseInt(request.getParameter("mpg")));
        ad.setMileage(request.getParameter("mileage"));
        ad.setTransmission(request.getParameter("transmission"));

        // Update the ad in the database
        adsDao.update(ad);

        response.sendRedirect("/profile");

    }
}
