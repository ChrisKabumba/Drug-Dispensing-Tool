

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../resources/stylesheet.css"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drug dispensing</title>
</head>
<body>
    <header>
        <img src="../resources/logo.jpg" alt="Drug dispensing logo"/>
        <h1>Drug Dispensing</h1>
    </header>
    <main>
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

        $sql = "SELECT * FROM pharmacist WHERE SSN='$ssn'";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
            $row = $result->fetch_assoc();
            
            if($row['password'] == $password){

                echo"<a href='index.html'>Welcome</a>";

            }else{
                echo "Invalid password. ";
                try_again();
            }
        }else{
            echo "Invalid SSN. ";
            try_again();
        }
            
        ?>
    </main>
    <footer>
        <hr/>
        <p>Copyrighted @2023.<br/>
        KABUMBA Christian and MUIRURI Patrick<br/>
        This webiste was done as the final project for the unit Web development</p>
    </footer>
    <address>
        <P>
            <a href="https://github.com/ChrisKabumba" target="_blank">Check out KABUMBA Christian's Github profile</a><br/>
            <a href="http://" target="_blank">Check out MUIRURI Patrick's Github profile</a>
        </P>
    </address>
</body>
</html>