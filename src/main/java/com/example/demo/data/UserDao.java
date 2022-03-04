package com.example.demo.data;

import java.util.UUID;

import com.example.demo.model.User;

//Data

public interface UserDao {

    // insert user with a given ID
    int insertUser(UUID id, User user);

    // insert user with random ID
    default int insertUser(User user) {
        UUID id = UUID.randomUUID();
        return insertUser(id, user);
    }

}
