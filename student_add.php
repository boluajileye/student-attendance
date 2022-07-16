<?php
session_start();
require "config/database.php";
include "src/inc/header.php";

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $gender = $_POST['gender'];
    $age = $_POST['age'];

    $add = "INSERT INTO students (name, gender, age) VALUES('$name', '$gender', '$age')";
    $res = $connectdb->query($add);
    if ($res) {
        $_SESSION['message'] = "Student added Successfully";
        $_SESSION['errorstyle'] = "success";
        header('location: student_view.php');
    } else {
        $_SESSION['message'] = "Student not Added";
        $_SESSION['errorstyle'] = "danger";
    }
} ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <form method="POST">
            Name: <input class="form-control" type="text" name="name">
            Gender: <input class="form-control" type="text" name="gender">
            Age:<input class="form-control" type="number" name="age">
            <input class="btn btn-success" type="submit" name="submit" value="Submit">
        </form>
    </div>
</body>

</html>