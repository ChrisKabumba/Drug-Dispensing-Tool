<?php
/* 1. Deal with the checkbox when it is not on. 
   2. Referential integrity when updating a key which does not have a reference.
   3. The get the current authenticated user' ssn from the session. 
*/
require_once("dbconnection_testfunction.php");

$sql = "";
$user_ssn = test_input($_POST['user_ssn']); 
$user_psswd = test_input($_POST['user_password']);

$result = $conn->query("SELECT * FROM patient WHERE SSN='$user_ssn'");
if($result->num_rows > 0){
    $row = $result->fetch_assoc();
    $user_psswd_db = $row['password'];

    if($user_psswd == $user_psswd_db){
        if($_POST['up_ssn'] == 'on')
        {   
            $ssn = test_input($_POST['ssn']);
            $sql = "UPDATE patient SET SSN='$ssn' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The ssn was successfully updated <br/>";
            }else{
                echo "An error occured while updating the ssn<br/>";
            }
        }

        if($_POST['up_name'] == 'on')
        {   
            $name = test_input($_POST['name']);
            $sql = "UPDATE patient SET name='$name' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The name was successfully updated<br/>";
            }else{
                echo "An error occured while updating the name<br/>";
            }
        }

        if($_POST['up_age'] == 'on')
        {   
            $age = test_input($_POST['age']);
            $sql = "UPDATE patient SET age='$age' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The age was successfully updated<br/>";
            }else{
                echo "An error occured while updating the age<br/>";
            }
        }

        if($_POST['up_address'] == 'on')
        {   
            $address = test_input($_POST['address']);
            $sql = "UPDATE patient SET address='$address' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The address was successfully updated<br/>";
            }else{
                echo "An error occured while updating the address<br/>";
            }
        }

        if($_POST['up_email'] == 'on')
        {   
            $email = test_input($_POST['email']);
            $sql = "UPDATE patient SET email='$email' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The email was successfully updated<br/>";
            }else{
                echo "An error occured while updating the email<br/>";
            }
        }

        if($_POST['up_phone_number'] == 'on')
        {   
            $phone_number = test_input($_POST['phone_number']);
            $sql = "UPDATE patient SET phone_number='$phone_number' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The phone number was successfully updated<br/>";
            }else{
                echo "An error occured while updating the phone number<br/>";
            }
        }

        if($_POST['up_primary_physician'] == 'on')
        {   
            $primary_physician = test_input($_POST['primary_physician']);
            $sql = "UPDATE patient SET primary_physician_SSN='$primary_physician' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The primary physician SSN was successfully updated<br/>";
            }else{
                echo "An error occured while updating the primary physician SSN<br/>";
            }
        }

        if($_POST['up_additional_info'] == 'on')
        {   
            $additional_info = test_input($_POST['additional_info']);
            $sql = "UPDATE patient SET additional_info='$additional_info' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The additional information was successfully updated<br/>";
            }else{
                echo "An error occured while updating the additional information<br/>";
            }
        }
    }else{
        echo "Invalid password! <br/>";
    }
}else{
    echo "Invalid SSN! <br/>";
}
    
?>