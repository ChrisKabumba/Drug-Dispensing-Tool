<?php
require_once("dbconnection_testfunction.php");
$user_ssn = test_input($_POST['ssn']);
$user_psswd = test_input($_POST['password']);

$result = $conn->query("SELECT * FROM nurse WHERE SSN='$user_ssn'");

if($result->num_rows > 0){
    $row = $result->fetch_assoc();
    $user_psswd_db = $row['password'];

    if($user_psswd == $user_psswd_db){
        $sql = "DELETE FROM nurse WHERE SSN='$user_ssn'";
        if($conn->query($sql)){
            echo "Account succesfully deleted!<br/>";
        }else{
            echo "An error occured while deleting this account! <br/>";
        }
    }else{
        echo "Invalid password! <br/>";
    }
}else{
    echo "Invalid SSN!<br/>";
}

?>