<?php
require_once("dbconnection.php");
require_once("test_input.php");
$ssn = test_input($_POST["ssn"]);
$name = test_input($_POST["name"]);
$password = test_input($_POST["password"];)

$sql = "INSERT INTO physician (SSN, name, password)
        VALUES ('$ssn', '$name', '$password')";


$conn->query($sql);
echo "Record saved.";

?>


