CREATE TABLE CampusRoom (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Name INT(6)
);
CREATE TABLE CampusDay (
	WeekDay VARCHAR(10),
    RoomNumber INT(6),
	Period INT(3)
);
CREATE TABLE CampusSchedule (
	WeekDay VARCHAR(10),
    Period INT(3),
	Class VARCHAR(255)
);

CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PhoneNumber` int(8) NOT NULL,
  `Address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Zip` int(4) NOT NULL,
  `City` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IsAdmin` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IsAdmin` (`IsAdmin`)
) 