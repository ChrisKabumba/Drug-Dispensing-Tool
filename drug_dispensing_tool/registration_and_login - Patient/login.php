<?php
require_once("dbconnection.php");

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

function try_again() {
    echo "Click <a href='login.html'>here</a> to try again";
}

$ssn = $password = "";

$ssn = test_input($_POST['ssn']);
$password = test_input($_POST['password']);

$sql = "SELECT * FROM patient WHERE SSN='$ssn'";
$result = $conn->query($sql);

if($result->num_rows > 0){
    $row = $result->fetch_assoc();
    
    if($row['password'] == $password){
        $ssn = $row['SSN'];
        $name = $row['name'];
        $age = $row['age'];
        $address = $row['address'];
        $email = $row['email'];
        $phone_number = $row['phone_number'];

        echo"<table border='1' cellpadding='1' width='1000'>
            <tr>
                <td>$ssn</td>
                <td>$name</td>
                <td>$age</td>
                <td>$address</td>
                <td>$email</td>
                <td>$phone_number</td>
            </tr>
        </table>";

    }else{
        echo "Invalid password. ";
        try_again();
    }
}else{
    echo "Invalid SSN. ";
    try_again();
}
    
?>