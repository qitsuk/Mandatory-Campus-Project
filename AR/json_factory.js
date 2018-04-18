var xhr = new XMLHttpRequest();
xhr.open("GET", "https://campus.qitsuk.dk/php/getuser.php", false);
xhr.send();

var testObj = JSON.parse(xhr.responseText);

console.log(testObj[0].FirstName);