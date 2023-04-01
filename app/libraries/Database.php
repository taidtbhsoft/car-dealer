<?php

$statement;
$dbHandler;
$error;

$conn = 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME;
$options = array(
    PDO::ATTR_PERSISTENT => true,
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
);
try {
    $dbHandler = new PDO($conn, DB_USER, DB_PASS, $options);
} catch (PDOException $e) {
    $error = $e->getMessage();
    echo $error;
    die();
}

//Allows us to write queries
function query($sql)
{
    global $dbHandler, $statement;
    $statement = $dbHandler->prepare($sql);
}

//Execute the prepared statement
function execute()
{
    global $statement;
    try {
        $statement->execute();
    } catch (PDOException $e) {
        $error = $e->getMessage();
        echo $error;
        die();
    }
}

//Return an array
function resultSet()
{
    global $statement;
    try {
        execute();
        return $statement->fetchAll(PDO::FETCH_OBJ);
    } catch (PDOException $e) {
        $error = $e->getMessage();
        echo $error;
        die();
    }
}

//Return a specific row as an object
function single()
{
    global $statement;
    try {
        execute();
        return $statement->fetch(PDO::FETCH_OBJ);
    } catch (PDOException $e) {
        $error = $e->getMessage();
        echo $error;
        die();
    }
}

//Get's the row count
function rowCount()
{
    global $statement;
    try {
        execute();
        return $statement->rowCount();
    } catch (PDOException $e) {
        $error = $e->getMessage();
        echo $error;
        die();
    }
}
