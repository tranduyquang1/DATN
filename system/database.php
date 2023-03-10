<?php
require_once "../system/config.php";
function getConnection()
{
    $opt = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8", PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
    $conn = new PDO('mysql:host=' . HOST_DB . ';dbname=' . NAME_DB, USER_DB, PASS_DB, $opt);
    return $conn;
}
function query($sql)
{
    $conn = getConnection();
    $result = $conn->query($sql);
    return $result;
}
function queryOne($sql)
{
    $conn = getConnection();
    $result = $conn->query($sql);
    $row = $result->fetch(PDO::FETCH_ASSOC);
    return $row;
}
function execute($sql)
{
    $conn = getConnection();
    $result = $conn->exec($sql);
    return $result;
}

function queryGetData($sql)
{
    $conn = getConnection();
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $data = [];
    foreach($stmt->fetchAll() as $k => $v) {
        array_push($data, $v);
    }
    return $data;
}

