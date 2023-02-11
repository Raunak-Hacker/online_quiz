<?php
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");
session_start();
$_SESSION["check"] = $_POST["check"] == "true" ? true : false;
