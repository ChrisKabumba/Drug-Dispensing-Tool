<?php
/* 1. Deal with the checkbox when it is not on. 
   2. Referential integrity when updating a key which does not have a reference.
   3. The get the current authenticated user' ssn from the session. 
*/
require_once("dbconnection_testfunction.php");

$sql = "";
$user_ssn = test_input($_POST['user_ssn']); 
$user_psswd = test_input($_POST['user_password']);

$result = $conn->query("SELECT * FROM pharmacist WHERE SSN='$user_ssn'");
if($result->num_rows > 0){
    $row = $result->fetch_assoc();
    $user_psswd_db = $row['password'];

    if($user_psswd == $user_psswd_db){
        if($_POST['up_ssn'] == 'on')
        {   
            $ssn = test_input($_POST['ssn']);
            $sql = "UPDATE pharmacist SET SSN='$ssn' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The ssn was successfully updated <br/>";
            }else{
                echo "An error occured while updating the ssn<br/>";
            }
        }

        if($_POST['up_name'] == 'on')
        {   
            $name = test_input($_POST['name']);
            $sql = "UPDATE pharmacist SET name='$name' WHERE SSN='$user_ssn'";

            if($conn->query($sql) == true){
                echo "The name was successfully updated<br/>";
            }else{
                echo "An error occured while updating the name<br/>";
            }
        }
    }else{
        echo "Invalid password! <br/>";
    }
}else{
    echo "Invalid SSN! <br/>";
}
    
?>