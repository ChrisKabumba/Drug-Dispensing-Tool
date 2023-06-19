<?php
require_once("dbconnection.php");
$ssn = $_POST["ssn"];
$name = $_POST["name"];
$age = $_POST["age"];
$email = $_POST["email"];
$password = $_POST["password"];

$sql = "INSERT INTO administrator (SSN, name, age, email, password)
        VALUES ('$ssn', '$name', '$age', '$email', '$password')";


$conn->query($sql);
echo "Record saved.";

?>


