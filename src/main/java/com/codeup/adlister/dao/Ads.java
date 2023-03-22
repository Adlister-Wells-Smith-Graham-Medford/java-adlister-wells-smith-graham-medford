package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    List<Ad> allProfile(Ad ad);
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    //    Delete Ads
    void deleteAd(int id);

    public List<Ad> deleteById(int id);

//    List<Ad> adDetails(Ad ad);

    List<Ad> findById(int id);
    Ad findById(Long id);
    List<Ad> search(String keyword);

    List<Ad> findByYearAndMake(int year, String make);

    List<Ad> findByMake(String make);
    List<Ad> searchByModel(String model);

}
