package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.adDetailsServlet", urlPatterns = "/details")
public class adDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        TODO make the pictures button redirect to a dynamic details page
        String adId = request.getParameter("adId");
        System.out.println(adId);
        List<Ad> ad = DaoFactory.getAdsDao().findById(Integer.parseInt(adId));
        System.out.println(ad);
        HttpSession session = request.getSession();
        session.setAttribute("ads", ad);
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);
    }
}
