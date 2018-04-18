var xhr = new XMLHttpRequest();
xhr.open("GET", "https://campus.qitsuk.dk/php/getuser.php", false);
xhr.send();

var testObj = JSON.parse(xhr.responseText);

console.log(testObj[1]);

// console.log(xhr.status);
// console.log(xhr.responseText);