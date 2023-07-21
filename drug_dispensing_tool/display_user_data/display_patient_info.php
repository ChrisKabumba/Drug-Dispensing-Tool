<?php
require_once("dbconnection.php");

$sql = "SELECT * FROM patient";
$result = $conn->query($sql);

if($result->num_rows > 0){
    // Heading row
    echo"<table border='0' cellpadding='1' width='1000'>
        <tr>
            <th>SSN</th>
            <th>Name</th>
            <th>Age</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone number</th>
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
                <td>$ssn</td>
                <td>$name</td>
                <td>$age</td>
                <td>$address</td>
                <td>$email</td>
                <td>$phone_number</td>
            </tr>
        </table>";
    }
}
?>

<html>
    <body>
        <a href="update_info.php">Update profile</a>
        <br />
        <a href="delete_account.php">Delete profile</a>
    </body>
</html>