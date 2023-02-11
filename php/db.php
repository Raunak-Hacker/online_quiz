<?php
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");
$conn = mysqli_connect('localhost', 'root', '', 'quiz');

if (!$conn) {
    die('Could not connect: ' . mysqli_connect_error());
}
