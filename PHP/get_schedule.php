<?php
include_once "dbfactory.php";
$weekday = date('N');
//echo "$weekday - Is this the weekday?";
if (isset($_GET['data'])) {
    $roomNumber = $_GET['data'];
    $q = "SELECT * FROM CampusSchedule WHERE ClassRoom=$roomNumber AND Weekday=$weekday ORDER BY Period ASC;";
//    echo "<br>$q";
} else {
    $q = "SELECT * FROM CampusSchedule WHERE Weekday=$weekday ORDER BY Period ASC;";
//    echo "<br>$q";
}
$result = mysqli_query($dbc, $q);
//echo "<br>Right here, is where it should have just established the connection to the db!<br>";
$resultArray = array();
while ($row = $result -> fetch_assoc()) {
//    echo "<br>Does it even go into the loop?";
//    if ($row['Weekday']) {
//        $day = "";
//        switch ($row['Weekday']) {
//            case 1:
//                $day = 'Monday';
//                break;
//            case 2:
//                $day = 'Tuesday';
//                break;
//            case 3:
//                $day = 'Wednesday';
//                break;
//            case 4:
//                $day = 'Thursday';
//                break;
//            case 5:
//                $day = 'Friday';
//                break;
//            default:
//                $day = 'Not a schoolday!';
//                break;
//        }
//        //array_push($resultArray, $day);
//    } else {
        array_push($resultArray, $row);
//    }
}
echo json_encode($resultArray);