package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
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
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public User findByEmail(String email) {
        String query = "SELECT * FROM users WHERE email = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, email);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by email", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, email, password, bio) VALUES (?, ?, ?,?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4,user.getBio());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    @Override
    public User findById(long userId) {
        String query = "SELECT * FROM users WHERE id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, userId);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public void deleteUser(long id) {
        String query = "DELETE FROM users WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting user", e);
        }
    }

    @Override

    public void updateUsername(User user, String newUsername) {
        try {
            PreparedStatement stmt = connection.prepareStatement("UPDATE users SET username = ? WHERE id = ?");
            stmt.setString(1, newUsername);
            stmt.setLong(2, user.getId());
            stmt.executeUpdate();
            user.setUsername(newUsername);
        } catch (SQLException e) {
            throw new RuntimeException("Error updating username for user: " + user, e);
        }
    }

    @Override
    public void updateEmail(User user, String newEmail) {
        try {
            PreparedStatement stmt = connection.prepareStatement("UPDATE users SET email = ? WHERE id = ?");
            stmt.setString(1, newEmail);
            stmt.setLong(2, user.getId());
            stmt.executeUpdate();
            user.setEmail(newEmail);
        } catch (SQLException e) {
            throw new RuntimeException("Error updating email for user: " + user, e);
        }
    }

    @Override
    public void updateBio(User user, String newBio) {
        try {
            PreparedStatement stmt = connection.prepareStatement("UPDATE users SET bio = ? WHERE id = ?");
            stmt.setString(1, newBio);
            stmt.setLong(2, user.getId());
            stmt.executeUpdate();
//            user.setBio(newBio);
        } catch (SQLException e) {
            throw new RuntimeException("Error updating email for user: " + user, e);
        }
    }

    @Override
    public void updatePassword(User user, String newPassword) {
        try {
            PreparedStatement stmt = connection.prepareStatement("UPDATE users SET password = ? WHERE id = ?");
            stmt.setString(1, newPassword);
            stmt.setLong(2, user.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating password for user: " + user, e);
        }
    }


        private User extractUser (ResultSet rs) throws SQLException {
            if (!rs.next()) {
                return null;
            }
            return new User(
                    rs.getLong("id"),
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("password"),
                    rs.getString("bio")
            );
        }

}
