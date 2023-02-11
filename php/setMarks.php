<?php
require 'db.php';
session_start();
$name = $_POST['name'];
$sub = $_POST['sub'];
$marks = $_POST['marks'];


if (!$_SESSION['check']) {
  $sql = "INSERT INTO marks (Name, Marks, Subject) VALUES ('$name',$marks,'$sub')";
  $result = mysqli_query($conn, $sql);
  if ($result) {
    echo "done";
  } else {
    echo "not";
  }
}
