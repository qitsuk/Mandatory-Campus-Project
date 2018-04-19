// var xhr = new XMLHttpRequest();
// xhr.open("GET", "https://campus.qitsuk.dk/php/get_schedule.php", false);
// xhr.send();

// var scheduleArray = JSON.parse(xhr.responseText);


function getScheduleForRoom(roomNumber) {
    console.log("The method gets called here: " + roomNumber);
    var sendData = function() {
        $.post('https://campus.qitsuk.dk/php/get_schedule.php', {
          data: roomNumber
        }, function(response) {
          console.log(response);
        });
    }
}

getScheduleForRoom(104);