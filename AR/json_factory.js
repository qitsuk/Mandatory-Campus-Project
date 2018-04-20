//#region Comments

// var xhr = new XMLHttpRequest();
// xhr.open("POST", "https://campus.qitsuk.dk/php/get_schedule.php", false);
// xhr.send(104);
// console.log(xhr.responseText);
// var scheduleArray = JSON.parse(xhr.responseText);

// function sendData(roomNumber) {
//     $.post('https://campus.qitsuk.dk/php/get_schedule.php', {
//       data: roomNumber
//     }, function(response) {
//       console.log(response);
//       responseArray = JSON.parse(response);
//       responseArray.toString();
//       return responseArray;
//     });
// }
//sendData(104);


// function postAndGet(str)
// {
//     data = str;
//     var xhr = new XMLHttpRequest();
//     var url = "https://campus.qitsuk.dk/php/get_schedule.php";
//     xhr.open('POST', url, true);
//     xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
//     xhr.send(data);

//     xhr.onreadystatechange = function () {
//     if (xhr.readyState === 4 && xhr.status === 200) {
//           test = JSON.parse(xhr.responseText);
//         }
//     };
//     return test;
// }

//#endregion

var xhr = new XMLHttpRequest();
var url = "https://campus.qitsuk.dk/php/get_schedule.php";

xhr.open('GET', url + "?data=104", false);
xhr.send();
console.log(xhr.responseText);
var room104Schedule = JSON.parse(xhr.responseText);

xhr.open('GET', url + "?data=105", false);
xhr.send(105);
console.log(xhr.responseText);
var room105Schedule = JSON.parse(xhr.responseText);

xhr.open('GET', url + "?data=106", false);
xhr.send(106);
console.log(xhr.responseText);
var room106Schedule = JSON.parse(xhr.responseText);