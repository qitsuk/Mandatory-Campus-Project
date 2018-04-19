<?php
include_once "dbfactory.php";
$weekday = date('N');
$q = "Larblar!";
if (isset($_POST['data'])) {
    $roomNumber = $_POST['data'];
    $q = "SELECT * FROM CampusSchedule WHERE ClassRoom=$roomNumber AND WeekDay=$weekday ORDER BY Period ASC;";
} else {
    $q = "SELECT * FROM CampusSchedule WHERE WeekDay=$weekday ORDER BY Period ASC;";
}
$result = mysqli_query($dbc, $q);

$resultArray = array();
while ($row = $result -> fetch_assoc()) {
    array_push($resultArray, $row);
}
echo json_encode($resultArray);