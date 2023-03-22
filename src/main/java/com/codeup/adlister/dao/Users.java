package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    User findByEmail(String email);
    Long insert(User user);
    User findById(long userId);


    public void updateUsername(User user, String newUsername);
    public void updateEmail(User user, String newEmail);
    public void updateBio(User user, String newBio);

    public void updatePassword(User user, String newPassword);

    void deleteUser(long id);

}
