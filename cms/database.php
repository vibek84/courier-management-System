<?php

// Database connection configuration
$dbHost = 'localhost';
$dbUser = 'root';
$dbPass = '';
$dbName = 'courier_db';

// Create a MySQLi connection
$dbConn = new mysqli($dbHost, $dbUser, $dbPass, $dbName);

// Check connection
if ($dbConn->connect_error) {
    die('Connection failed: ' . $dbConn->connect_error);
}

// Define database query function
function dbQuery($sql)
{
    global $dbConn;
    $result = $dbConn->query($sql) or die($dbConn->error);
    return $result;
}

// Define function to get affected rows
function dbAffectedRows()
{
    global $dbConn;
    return $dbConn->affected_rows;
}

// Define function to fetch array
function dbFetchArray($result, $resultType = MYSQLI_NUM)
{
    return $result->fetch_array($resultType);
}

// Define function to fetch associative array
function dbFetchAssoc($result)
{
    return $result->fetch_assoc();
}

// Define function to fetch row
function dbFetchRow($result)
{
    return $result->fetch_row();
}

// Define function to free result
function dbFreeResult($result)
{
    return $result->free_result();
}

// Define function to get number of rows
function dbNumRows($result)
{
    return $result->num_rows;
}

// Define function to select database
function dbSelect($dbName)
{
    global $dbConn;
    return $dbConn->select_db($dbName);
}

// Define function to get last inserted ID
function dbInsertId()
{
    global $dbConn;
    return $dbConn->insert_id;
}

?>
