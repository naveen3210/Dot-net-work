<?php
/*
$data = $_GET;
$user_text =$_GET["user_text"];
$response= strtoupper($user_text);
echo $response;

$data = $_POST;
$user_text =$_POST["user_text"];
$response= strtoupper($user_text);
echo $response;
*/

$data = $_REQUEST;
$user_text =$_REQUEST['user_text'];
$response= strtoupper($user_text);
echo $response;


?>