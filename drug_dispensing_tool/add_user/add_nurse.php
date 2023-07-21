<?php
require_once("database_connection.php");

$sql = "INSERT INTO nurse(SSN, name, years_of_experience, followed_patients, date_of_birth)
VALUES('N56933', 'doctor', '5', 'A15689\nA42942\nA429234', '8-31-2023')";

if($conn->query($sql)){
    echo "record added successfully";
}else{
    echo "Error: " .$sql. "<br>" .$conn->error;
}

$conn->close();
?>