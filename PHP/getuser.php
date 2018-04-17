<?php
include_once "dbfactory.php";
$q = "SELECT FirstName, LastName, UserName FROM WebshopUsers WHERE Username='McBruce'";
$result = mysqli_query($dbc, $q);

while ($row = $result -> fetch_assoc()) {
    echo json_encode($row);
}