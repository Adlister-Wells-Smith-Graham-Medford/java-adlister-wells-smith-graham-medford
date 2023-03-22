package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.*;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUserServlet", urlPatterns = "/user/editAccount")
public class EditUserServlet extends HttpServlet {

    //check if user is in session, if not redirect to login
    private Users usersDao;

    @Override
    public void init() {
        usersDao = new MySQLUsersDao(new Config());
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Check if the user is signed in
        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/user/editAccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

