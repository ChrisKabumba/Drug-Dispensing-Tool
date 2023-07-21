<?php
/* 1. Deal with the checkbox when it is not on. 
   2. Referential integrity when updating a key which does not have a reference.
   3. The get the current authenticated user' ID from the session. 
*/
require_once("dbconnection_testfunction.php");

$sql = "";
$user_ID = test_input($_POST['user_ID']); 
$user_psswd = test_input($_POST['password']);

$result = $conn->query("SELECT * FROM administrator WHERE ID='$user_ID'");
if($result->num_rows > 0){
    $row = $result->fetch_assoc();
    $user_psswd_db = $row['password'];

    if($user_psswd == $user_psswd_db){
        if($_POST['up_ID'] == 'on')
        {   
            $ID = test_input($_POST['ID']);
            $sql = "UPDATE administrator SET ID='$ID' WHERE ID='$user_ID'";

            if($conn->query($sql) == true){
                echo "The ID was successfully updated <br/>";
            }else{
                echo "An error occured while updating the ID<br/>";
            }
        }

        if($_POST['up_name'] == 'on')
        {   
            $name = test_input($_POST['name']);
            $sql = "UPDATE administrator SET name='$name' WHERE ID='$user_ID'";

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
    echo "Invalid ID! <br/>";
}
    
?>