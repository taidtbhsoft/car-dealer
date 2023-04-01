<?php

function registerFunc($data)
{
    extract($data);
    $password = sha1($password);
    query("INSERT INTO users (username, email, password) VALUES('{$username}', '{$email}', '{$password}')");

    //Execute function
    try {
        execute();
    } catch (Exception $e) {
        die("Oh noes! There's an error in the query!");
    }
}

function loginFunc($username, $password)
{
    query("SELECT * FROM users WHERE username = '{$username}'");

    $row = single();

    $hashedPassword = $row->password;

    if (sha1($password) == $hashedPassword) {
        return $row;
    } else {
        return false;
    }
}

//Find user by email. Email is passed in by the Controller.
function findUserByEmailFunc($email)
{
    //Prepared statement
    query("SELECT * FROM users WHERE email = '{$email}'");

    //Check if email is already registered
    return rowCount();
}

//Find user by username. username is passed in by the Controller.
function findUserByUsernameFunc($username)
{
    //Prepared statement
    query("SELECT * FROM users WHERE username = '{$username}'");

    //Check if username is already registered
    return rowCount();
}
