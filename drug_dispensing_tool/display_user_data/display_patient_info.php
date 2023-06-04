<?php
require_once("dbconnection.php");

$sql = "SELECT * FROM patient";
$result = $conn->query($sql);

if($result->num_rows > 0){
    // Heading row
    echo"<table border='0' cellpadding='1' width='1000'>
        <tr>
            <th colspan = 2>SSN</th>
            <th colspan = 2>Name</th>
            <th colspan = 2>Age</th>
            <th colspan = 2>Address</th>
            <th colspan = 2>Email</th>
            <th colspan = 2>Phone number</th>
        </tr>
    </table>";

    while($row = $result->fetch_assoc()){
        $ssn = $row['SSN'];
        $name = $row['name'];
        $age = $row['age'];
        $address = $row['address'];
        $email = $row['email'];
        $phone_number = $row['phone_number'];

        echo"<table border='1' cellpadding='1' width='1000'>
            <tr>
                <td colspan = 2>$ssn</td>
                <td colspan = 2>$name</td>
                <td colspan = 2>$age</td>
                <td colspan = 2>$address</td>
                <td colspan = 2>$email</td>
                <td colspan = 2>$phone_number</td>
            </tr>
        </table>";
    }
}
?>