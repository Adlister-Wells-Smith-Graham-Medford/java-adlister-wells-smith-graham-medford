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

@WebServlet(name = "controllers.DeleteAccountServlet", urlPatterns = "/ads/accountDelete")
public class DeleteAccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Ad ad = new Ad(user.getId());
        request.setAttribute("ads", DaoFactory.getAdsDao().allProfile(ad));
        request.getRequestDispatcher("/WEB-INF/ads/accountDelete.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws java.io.IOException {
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");
        if (currentUser != null) {
            DaoFactory.getAdsDao().deleteAllAds((int) currentUser.getId());
            DaoFactory.getUsersDao().deleteUser(currentUser.getId());
            System.out.println("User and ads deleted");
            session.invalidate();
        }
        response.sendRedirect("/ads");
    }
}