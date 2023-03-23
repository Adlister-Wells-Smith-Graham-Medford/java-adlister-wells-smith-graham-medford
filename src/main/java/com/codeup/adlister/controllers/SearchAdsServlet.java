package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchAdsServlet", urlPatterns = "/ads2")
public class SearchAdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String keyword = request.getParameter("keyword");
        String adIdStr = request.getParameter("adId");
        String yearStr = request.getParameter("year");
        String make = request.getParameter("make");
        String model = request.getParameter("model");

        if (adIdStr != null && !adIdStr.isEmpty()) {
            try {
                Long adId = Long.parseLong(adIdStr);
                Ad ad = DaoFactory.getAdsDao().findById(adId);
                if (ad == null) {
                    request.setAttribute("errorMessage", "Ad not found");
                } else {
                    User user = DaoFactory.getUsersDao().findById(ad.getUserId());
                    List<Ad> ads = new ArrayList<>();
                    ads.add(ad);
                    request.setAttribute("ads", ads);
                    request.setAttribute("user", user);
                }
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Invalid Ad Id format");
            }
        }else if (model != null && !model.isEmpty()) {
            List<Ad> ads = DaoFactory.getAdsDao().searchByModel(model);
            request.setAttribute("ads", ads);
            request.setAttribute("model", model);
        } else if (keyword != null && !keyword.isEmpty()) {
            List<Ad> ads = DaoFactory.getAdsDao().search(keyword);
            request.setAttribute("ads", ads);
            request.setAttribute("keyword", keyword);
        } else if (make != null && !make.isEmpty()) {
            List<Ad> ads = null;
            if (yearStr != null && !yearStr.isEmpty()) {
                try {
                    int year = Integer.parseInt(yearStr);
                    ads = DaoFactory.getAdsDao().findByYearAndMake(year, make);
                    request.setAttribute("year", year);
                } catch (NumberFormatException e) {
                    request.setAttribute("errorMessage", "Invalid Year format");
                }
            } else {
                ads = DaoFactory.getAdsDao().findByMake(make);
            }
            request.setAttribute("ads", ads);
            request.setAttribute("make", make);
        }

        // Forward the request to the JSP page for rendering
        request.getRequestDispatcher("/WEB-INF/ads/index2.jsp").forward(request, response);
//        TODO get this to send the user to the second index and keep the filter response that they picked.
        response.sendRedirect("/WEB-INF/ads/index2.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
