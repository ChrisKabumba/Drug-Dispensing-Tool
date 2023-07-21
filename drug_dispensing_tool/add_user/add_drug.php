<?php
require_once("database_connection.php");

$sql = "INSERT INTO drug(trade_name, formula, utilization)
VALUES('benzoazepram', 'y78x99o', 'increase feel-good hormones')";

if($conn->query($sql) == TRUE){
    echo "record inserted succefully";
}else{
    echo "Error" .$sql. "<br>" .$conn->error;
}

$conn->close();
?>