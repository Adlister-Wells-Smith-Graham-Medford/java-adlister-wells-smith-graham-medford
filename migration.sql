# USE adlister_db;
#
# DROP TABLE IF EXISTS ads;
# DROP TABLE IF EXISTS users;
#
# CREATE TABLE users (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     profile_picture BLOB,
#     username VARCHAR(25) NOT NULL,
#     email VARCHAR(50) NOT NULL,
#     password VARCHAR(255) NOT NULL,
#     bio VARCHAR(255),
#     PRIMARY KEY (id)
# );
#
# CREATE TABLE ads (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     user_id INT UNSIGNED NOT NULL,
#     title VARCHAR(100) NOT NULL,
#     description TEXT NOT NULL,
#     price INT(10) NOT NULL,
#     make VARCHAR(30) NOT NULL,
#     model VARCHAR(30) NOT NULL,
#     year INT(4) NOT NULL,
#     mpg INT(3) NOT NULL,
#     mileage varchar(7) NOT NULL,
#     transmission VARCHAR(30) NOT NULL,
#     PRIMARY KEY (id),
#     FOREIGN KEY (user_id) REFERENCES users(id)
#         ON DELETE CASCADE
# );
#
#
# select * from users;
#
# select * from ads;
#
#  select * from ad_images;
# INSERT INTO ad_images (ad_id, image) VALUES
#                                          (11, LOAD_FILE('/Users/remonsmith/Desktop/Codeup/IMG/'));
# #                                          (11, LOAD_FILE('/path/to/image2.jpg'));
USE adlister_db;

DROP TABLE IF EXISTS images;

CREATE TABLE images (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        user_id int unsigned NOT NULL,
                        name VARCHAR(255) NOT NULL,
                        filepath varchar(255) NOT NULL,
                        FOREIGN KEY (user_id) REFERENCES users(id)

);
DROP TABLE IF EXISTS images;

ALTER TABLE ads
    DROP FOREIGN KEY ads_ibfk_1;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       profile_picture varchar(300),
                       username VARCHAR(25) NOT NULL,
                       email VARCHAR(50) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       bio VARCHAR(255),
                       profilePic varchar(300) NOT NULL,
                       PRIMARY KEY (id)
);
DROP TABLE IF EXISTS ads;
CREATE TABLE ads (

                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(100) NOT NULL,
                     description TEXT NOT NULL,
                     price INT(10) NOT NULL,
                     make VARCHAR(30) NOT NULL,
                     model VARCHAR(30) NOT NULL,
                     year INT(4) NOT NULL,
                     mpg INT(3) NOT NULL,
                     mileage varchar(7) NOT NULL,
                     transmission VARCHAR(30) NOT NULL,
                     ads_picture varchar(300) NOT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id)
                         ON DELETE CASCADE

);

SELECT * From users;

SELECT * FROM images;
