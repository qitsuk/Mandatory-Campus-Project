var xhr = new XMLHttpRequest();
xhr.open("GET", "https://campus.qitsuk.dk/php/get_schedule.php", false);
xhr.send();

var scheduleArray = JSON.parse(xhr.responseText);
