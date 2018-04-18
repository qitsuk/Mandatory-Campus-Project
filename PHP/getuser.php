<?php
include_once "dbfactory.php";
$q = "SELECT * FROM WebshopUsers";
$result = mysqli_query($dbc, $q);

$resultArray = array();
while ($row = $result -> fetch_array(MYSQLI_NUM)) {
    array_push($resultArray, $row);
}
echo json_encode($resultArray);