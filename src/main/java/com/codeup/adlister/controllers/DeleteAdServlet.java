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

@WebServlet(name = "controllers.DeleteAdServlet", urlPatterns = "/ads/delete")
public class DeleteAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Ad ad= new Ad(user.getId());
        request.setAttribute("ads", DaoFactory.getAdsDao().allProfile(ad));
        request.getRequestDispatcher("/WEB-INF/ads/delete.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        com.codeup.adlister.dao.DaoFactory.getAdsDao().deleteAd(id);
        response.sendRedirect("/profile");
    }

}