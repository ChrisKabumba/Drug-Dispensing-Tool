<?php
require_once("dbconnection.php");
require_once("test_function.php");
$ssn = test_input($_POST["ssn"]) ;
$name = test_input( $_POST["name"]);
$age = test_input($_POST["age"]) ;
$email = test_input($_POST["email"]) ;
$password = test_input($_POST["password"]) ;

$sql = "INSERT INTO patient (SSN, name, age, email, password)
        VALUES ('$ssn', '$name', '$age', '$email', '$password')";


$conn->query($sql);
echo "Record saved.";

?>


