package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String make = request.getParameter("make");
        String model = request.getParameter("model");
        String mileage = request.getParameter("mileage");
        String transmission = request.getParameter("transmission");
        String priceParam = request.getParameter("price");
        String ad_picture = request.getParameter("ads_picture");
        System.out.println(ad_picture);


        int price = 0;
        if (priceParam != null && !priceParam.isEmpty()) {
            price = Integer.parseInt(priceParam);
        }

        String yearParam = request.getParameter("year");
        int year = 0;
        if (yearParam != null && !yearParam.isEmpty()) {
            year = Integer.parseInt(yearParam);
        }

        String mpgParam = request.getParameter("mpg");
        int mpg = 0;
        if (mpgParam != null && !mpgParam.isEmpty()) {
            mpg = Integer.parseInt(mpgParam);
        }
        String idParam = request.getParameter("id");
        long id = idParam != null ? Long.parseLong(idParam) : 0;

        User loggedInUser = (User) request.getSession().getAttribute("user");


//        loggedInUser.getId();



        Ad ad = new Ad(
                id,
                loggedInUser.getId(),
                title,
                description,
                price,
                make,
                model,
                year,
                mpg,
                mileage,
                transmission,
                ad_picture
        );

        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/profile");

    }}
