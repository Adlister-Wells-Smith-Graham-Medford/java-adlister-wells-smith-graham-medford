package com.codeup.adlister.models;

import java.text.DecimalFormat;

public class Ad {
    private String ad_picture;
    private long id;
    private long userId;
    private String title;
    private String description;
    private int price;
    private String make;
    private String model;
    private int year;
    private int mpg;
    private String mileage;
    private String transmission;


    public Ad(long id, long userid, String title, String description, int price, String make, String model, int year, int mpg,String mileage,String transmission, String ad_picture) {

        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.make = make;
        this.model = model;
        this.year=year;
        this.mpg=mpg;
        this.mileage = mileage;

        this.transmission = transmission;
        this.ad_picture = ad_picture;
    }




    public Ad(String ad_picture, long userid, String title, String description) {
        this.ad_picture = ad_picture;
        this.userid = userid;
        this.title = title;
        this.description = description;

    }
    public Ad(long userId){
        this.userId=userId;
    }

    public Ad(long id, long userId, String title, String description, Integer price, String make, String model, Integer year, Integer mpg, String transmission, String mileage) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.make = make;
        this.model = model;
        this.year = year;
        this.mpg = mpg;
        this.transmission = transmission;
        this.mileage = mileage;
    }

    public Ad(int id, String title, String description, String price, String make, String model, String year, String mpg, String transmission, String mileage) {
    }

    public Ad(int id, String userId, String title, String description, String price, String make, String model, int year, int mpg, String mileage, String transmission) {
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

//    public void setPrice(int price) {
//        this.price = price;
//    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMpg() {
        return mpg;
    }

    public void setMpg(int mpg) {
        this.mpg = mpg;
    }

    public String getMileage() {
        return mileage;
    }

    public void setMileage(String mileage) {
        this.mileage = mileage;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;

    }

    public void setPrice(int price) {
        this.price = price;
    }


    public String getAd_picture() {
        return ad_picture;
    }

}
