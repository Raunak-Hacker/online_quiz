<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');
session_start();
$_SESSION["check"] = $_POST["check"] == "true" ? true : false;
