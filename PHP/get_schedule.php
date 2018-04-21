<?php
include_once "dbfactory.php";
$tempWeekday = date('N');
switch ($tempWeekday) {
    case 1:
        $weekday = 'Monday';
        break;
    case 2:
        $weekday = 'Tuesday';
        break;
    case 3:
        $weekday = 'Wednesday';
        break;
    case 4:
        $weekday = 'Thursday';
        break;
    case 5:
        $weekday = 'Friday';
        break;
    default:
        $weekday = 'Not a schoolday!';
        break;
}
//echo "$weekday - Is this the weekday?";
if (isset($_GET['data'])) {
    $roomNumber = $_GET['data'];
    $q = "SELECT * FROM CampusSchedule WHERE ClassRoom=$roomNumber AND Weekday='$weekday' ORDER BY Period ASC;";
//    echo "<br>$q";
} else {
    $q = "SELECT * FROM CampusSchedule WHERE Weekday='$weekday' ORDER BY Period ASC;";
//    echo "<br>$q";
}
$result = mysqli_query($dbc, $q);
$resultArray = array();
while ($row = $result -> fetch_assoc()) {
    array_push($resultArray, $row);
}
echo json_encode($resultArray);