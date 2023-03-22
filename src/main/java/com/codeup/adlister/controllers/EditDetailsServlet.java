package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Config;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLUsersDao;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditDetailsServlet", urlPatterns = {"/user/editAccount/detail", "/user/edit-username","/user/edit-email", "/user/edit-bio","/user/edit-password"})
public class EditDetailsServlet extends HttpServlet {

    private Users usersDao;

    @Override
    public void init() {

        usersDao = new MySQLUsersDao(new Config());
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userNameAction = request.getParameter("userNameAction");
        String userEmailAction = request.getParameter("userEmailAction");
        String userBioAction = request.getParameter("userBioAction");
        String userPasswordAction = request.getParameter("userPasswordAction");

        if ("editUsername".equals(userNameAction)) {
            // Redirect to the edit-username JSP
            request.getRequestDispatcher("/WEB-INF/user/edit-username.jsp").forward(request, response);
        } else if ("editEmail".equals(userEmailAction)) {
            request.getRequestDispatcher("/WEB-INF/user/edit-email.jsp").forward(request, response);
        }else if ("editBio".equals(userBioAction)) {
            request.getRequestDispatcher("/WEB-INF/user/edit-bio.jsp").forward(request, response);
        }else if ("editPassword".equals(userPasswordAction)) {
            request.getRequestDispatcher("/WEB-INF/user/edit-password.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //update user object in the session
        //need to hash the new password before its saved to the database -- reference the register servlet to see how to hash the password, create a new user object and insert it into the DaoFactory.getUsersDao().insert(user);
        HttpSession session = request.getSession();
        String newUsername = request.getParameter("newUsername");
        String newEmail = request.getParameter("newEmail");
        String newBio = request.getParameter("newBio");
        String newPassword = request.getParameter("newPassword");
        String newPasswordConfirmation = request.getParameter("confirmPassword");

//        System.out.println(newBio);

        if (newUsername != null) {
            if(newUsername.length() > 0 && newUsername.length() <= 25){
                // check if the new username is already taken
                User existingUser = usersDao.findByUsername(newUsername);
                if (existingUser != null) {
                    request.setAttribute("error", "Username is already taken. Please choose a different one.");
                    request.getRequestDispatcher("/WEB-INF/user/edit-username.jsp").forward(request, response);
                    return;
                }
                // update the user's username
                User user = (User) session.getAttribute("user");
                usersDao.updateUsername(user, newUsername);
                user.setUsername(newUsername);
                session.setAttribute("user", user);
//            response.sendRedirect("/profile");
            } else {
                request.setAttribute("error", "Invalid username. The username cannot be empty and must be 25 characters or less.");
                request.getRequestDispatcher("/WEB-INF/user/editAccount.jsp").forward(request, response);
            }
        }

        if (newEmail != null) {
            if(newEmail.length() > 0 && newEmail.length() <= 50){
                // check if the new email is already taken
                User existingUser = usersDao.findByEmail(newEmail);
                if (existingUser != null) {
                    request.setAttribute("error", "That email address is already taken. Please choose a different one.");
                    request.getRequestDispatcher("/WEB-INF/user/edit-email.jsp").forward(request, response);
                    return;
                }
                // update the user's email
                User user = (User) session.getAttribute("user");
                usersDao.updateEmail(user, newEmail);
                user.setEmail(newEmail);
                session.setAttribute("user", user);
            } else {
                request.setAttribute("error", "Invalid email address. The email address cannot be empty and must be 50 characters or less.");
                request.getRequestDispatcher("/WEB-INF/user/editAccount.jsp").forward(request, response);
            }
        }

        if (newBio != null) {
            if(newBio.length() <= 255) {
            }
            // update the user's bio
            System.out.println("This is working!");
            User user = (User) session.getAttribute("user");
            usersDao.updateBio(user, newBio);
            user.setBio(newBio);
            session.setAttribute("user", user);
        } else {
            request.setAttribute("error", "Invalid user bio length. The user bio cannot be greater than 255 characters.");
            request.getRequestDispatcher("/WEB-INF/user/editAccount.jsp").forward(request, response);
        }

        if (newPassword != null) {

//            String password = request.getParameter("password");
//            User user = DaoFactory.getUsersDao().findByUsername(username);
//            boolean validAttempt = BCrypt.checkpw(password, user.getPassword());
//
//            if (validAttempt) {
//                request.getSession().setAttribute("user", user);
//                response.sendRedirect("/profile");
//            } else {
//                response.sendRedirect("/login");
//            }

            if(newPassword.length() > 0 && newPassword.length() <= 255){
                // update the user's password
                String hashedPassword = BCrypt.hashpw(newPassword, BCrypt.gensalt());
                System.out.println(hashedPassword);

                boolean inputHasErrors = newPassword.isEmpty() || (! newPassword.equals(newPasswordConfirmation));

                if (inputHasErrors) {
                    request.getRequestDispatcher("/WEB-INF/user/edit-password.jsp").forward(request, response);
                    return;
                }

                User user = (User) session.getAttribute("user");
                usersDao.updatePassword(user, hashedPassword);
                user.setPassword(hashedPassword);
                session.setAttribute("user", user);

            } else {
                request.setAttribute("error", "Invalid user password. User password cannot be empty and must be 255 characters or less.");
                request.getRequestDispatcher("/WEB-INF/user/editAccount.jsp").forward(request, response);
            }
        }


        response.sendRedirect("/profile");
    }
}
