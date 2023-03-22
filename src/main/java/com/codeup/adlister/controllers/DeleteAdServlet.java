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

@WebServlet(name = "controllers.DeleteAdServlet", urlPatterns = "/delete")
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws java.io.IOException {
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");
        int adId = Integer.parseInt(request.getParameter("id"));
        System.out.println(adId);
        if (currentUser != null) {
            if (adId > 0) {
                Ad ad = (Ad) DaoFactory.getAdsDao().findById(adId);
                if (ad != null && ad.getUserId() == currentUser.getId()) {
                    DaoFactory.getAdsDao().deleteAd(adId);
                }
            }
        }
        response.sendRedirect("/profile");
    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        TODO make the pictures button redirect to a dynamic details page
//        String adId = request.getParameter("adId");
//        List<Ad> ad = DaoFactory.getAdsDao().deleteById(Integer.parseInt(adId));
//        HttpSession session = request.getSession();
//        session.setAttribute("ads", ad);
//        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
//    }
}
