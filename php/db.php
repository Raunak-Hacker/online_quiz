<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');
$conn = mysqli_connect('localhost', 'root', '', 'online_quiz');

if (!$conn) {
    die('Could not connect: ' . mysqli_connect_error());
}
