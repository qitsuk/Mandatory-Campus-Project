<?php
include_once "dbhandler.php";

if (($_SERVER['REQUEST_METHOD'] == 'POST')
    && !empty($_POST['Firstname'])
    && !empty($_POST['LastName'])
    && !empty($_POST['Username'])
    && !empty($_POST['Email'])
    && !empty($_POST['PhoneNumber'])
    && !empty($_POST['Address'])
    && !empty($_POST['Zip'])
    && !empty($_POST['City'])
    && !empty($_POST['Password'])
) {


    $FirstName = $_POST['FirstName'];
    $LastName = $_POST['LastName'];
    $Username = $_POST['Username'];
    $Email = $_POST['Email'];
    $PhoneNumber  = $_POST['PhoneNumber'];
    $Address    = $_POST['Address'];
    $Zip  = $_POST['Zip'];
    $City = $_POST['City'];
    $Password  = $_POST['Password'];


    $q = "INSERT INTO users (FirstName, LastName, Username, Email, PhoneNumber, Address, Zip, City, Password, IsAdmin) VALUES ('$FirstName', '$LastName', '$Username', '$Email', '$PhoneNumber', '$Address', '$Zip', '$City', '$Password',  0)";

    if (preg_match('/d{8}/', $PhoneNumber)) {

    } else {
        echo "ERROR: Your Phone number must be 8 digits";
    }
    if (preg_match('/d{4}/', $Zip)) {

    } else {
        echo "ERROR: Your zipcode must be 4 digits";
    }


    $result = mysqli_query($dbc, $q);

    if (mysqli_affected_rows($dbc) == 1) {
        echo "You are created in  the system";

    } else {
        echo "<p>". mysqli_error($dbc) . "</p>"; //only during  development
        echo "<p> Could not create user : " . $Username . "</p>";

    }
} else {
    echo "<span style='color: #313335'> All fields are required  </span>" . mysqli_error($dbc);
}
