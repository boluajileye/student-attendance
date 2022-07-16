<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'stuattendance';


$connectdb = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

if($connectdb->connect_error){
    echo "Conneection to database". mysqli_connect_error();
}