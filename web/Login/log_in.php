<?php
include_once "dbhandler.php"; ?>
<?php
session_start();
?>

<html>
<head>
    <title></title>
</head>
<body>
<nav>

    <a href="log_in.php">Login</a>
</nav>

<form action="login.php" method="post">
    <fieldset>
        <legend>Login</legend>
        <input type="text" name="Username" placeholder="Username">
        <input type="password" name="password" placeholder="Password">
        <button type="submit">Login</button>
    </fieldset>
</form>


<br><br>

<form action="signup.php" method="post">
    <fieldset>
        <legend>Sign Up</legend>
        <input type="text" name="FirstName" placeholder="FirstName">
        <input type="text" name="LastName" placeholder="LastName">
        <input type="text" name="Username" placeholder="Username">
        <input type="email" name="Email" placeholder="Email">
        <input type="number" name="PhoneNumber" placeholder="PhoneNumber">
        <input type="text" name="Address" placeholder="Address">
        <input type="number" name="Zip" placeholder="Zip">
        <input type="text" name="City" placeholder="City">
        <input type="password" name="Password" placeholder="Password">
        <button type="submit">Sign Up</button>
    </fieldset>
</form>
