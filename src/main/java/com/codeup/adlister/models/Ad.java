package com.codeup.adlister.models;

import java.text.DecimalFormat;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private Integer price;
    private String make;
    private String model;
    private Integer year;
    private Integer mpg;
    private String transmission;
    private Integer mileage;


    public Ad(long id, long userId, String title, String description, int price, String make, String model) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.make = make;
        this.model = model;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;

    }
    public Ad(long userId){
        this.userId=userId;
    }

    public Ad(long id, long userId, String title, String description, Integer price, String make, String model, Integer year, Integer mpg, String transmission, Integer mileage) {
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

    public Ad(int i, String title, String description, String price, String make, String model, String year, String mpg, String transmission, String mileage) {

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

    public void setPrice(int price) {
        this.price = price;
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

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getMpg() {
        return mpg;
    }

    public void setMpg(Integer mpg) {
        this.mpg = mpg;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public Integer getMileage() {
        return mileage;
    }

    public void setMileage(Integer mileage) {
        this.mileage = mileage;
    }
}
