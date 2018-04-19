// var xhr = new XMLHttpRequest();
// xhr.open("GET", "https://campus.qitsuk.dk/php/get_schedule.php", false);
// xhr.send();

// var scheduleArray = JSON.parse(xhr.responseText);


function getScheduleForRoom(roomNumber) {

}

var sendData = function(roomNumber) {
    $.post('https://campus.qitsuk.dk/php/get_schedule.php', {
      data: roomNumber
    }, function(response) {
      console.log(response);
    });
}

sendData(104);