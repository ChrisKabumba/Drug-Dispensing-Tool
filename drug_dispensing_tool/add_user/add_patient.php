<?php
require_once("database_connection.php");

$ssn = "A14599";
$name = "Chris";
$address = "1st Lewis";
$phone_number = "+1704395430";
$email = "chris@mail.com";
$primary_physician = "John";
$medication_history = [
    "paracetamol: 2 pills"
];

$sql = "INSERT INTO patient(SSN, name, address, phone_number, email, primary_physician, medication_history)
VALUES('A14533', 'Chris', '1st Lewis', '+1704395430', 'chris@mail.com', 'John', 'paracetamol:2 tablets')";

if($conn->query($sql) == TRUE){
    echo "<br>New record added successfully</br>";
}else{
    echo "Error: " .$sql. "<br>" .$conn->error;
}

$conn->close();

?>