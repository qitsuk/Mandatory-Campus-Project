<?php
include_once "dbhandler.php";


session_start();
$Username = $_POST['Username'];
$Password = $_POST['Password'];


$q = "SELECT * FROM users WHERE Username ='$Username'";

$result = mysqli_query($dbc, $q);


if($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
    if($row['Password'] == $Password){

        if ($row['IsAdmin'] == 1) {
            $_SESSION['IsAdmin'] = 1;
        }
        $_SESSION['message'] = "Welcome ". $row['Username'];
        header('Location: index.php');
        $_SESSION['logged_in'] = true;
    }
else{
    echo "Username or password is wrong";
    echo "<a href='log_in.php'>Go back and try again</a>";
}
}
else{
    echo "Username or password is wrong";
    echo "<a href='log_in.php'>Go back and try again</a>";

}


