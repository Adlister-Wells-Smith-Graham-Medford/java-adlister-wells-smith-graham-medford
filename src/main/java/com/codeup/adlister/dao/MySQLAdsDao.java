package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }
    @Override
    public List<Ad> allProfile(Ad ad){
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE adlister_db.ads.user_id= ?");
            stmt.setLong(1, ad.getUserId());
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, price, make, model, year, mpg, mileage, transmission) VALUES (?, ?, ?, ?, ?, ?,?,?,?,?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setInt(4, ad.getPrice());
            stmt.setString(5, ad.getMake());
            stmt.setString(6, ad.getModel());
            stmt.setInt(7, ad.getYear());
            stmt.setInt(8, ad.getMpg());
            stmt.setString(8,ad.getMileage());
            stmt.setString(9, ad.getTransmission());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    public Ad findById(Long id) {
        String query = "SELECT * FROM ads WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
//            return extractAd(stmt.executeQuery());
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                return extractAd(rs);
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException("Error finding ad by that Id #", e);
        }
    }

    public List<Ad> search(String keyword) {
        PreparedStatement stmt = null;
        try {
            String query = "SELECT * FROM ads WHERE title LIKE ? OR description LIKE ?";
            stmt = connection.prepareStatement(query);
            stmt.setString(1, "%" + keyword + "%");
            stmt.setString(2, "%" + keyword + "%");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching ads by keyword.", e);
        }
    }

    @Override
    public List<Ad> findByYearAndMake(int year, String make) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE year = ? AND make = ?");
            stmt.setInt(1, year);
            stmt.setString(2, make);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving ads by year and make.", e);
        }
    }

    @Override
    public List<Ad> findByMake(String make) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE make=?");
            stmt.setString(1, make);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving ads by make.", e);
        }
    }

    @Override
    public List<Ad> searchByModel(String model) {
        PreparedStatement stmt = null;
        try {
            String query = "SELECT * FROM ads WHERE model = ?";
            stmt = connection.prepareStatement(query);
            stmt.setString(1, model);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching ads by model.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getInt("price"),
                rs.getString("make"),
                rs.getString("model"),
                rs.getInt("year"),
                rs.getInt("mpg"),
                rs.getString("mileage"),
                rs.getString("transmission")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
