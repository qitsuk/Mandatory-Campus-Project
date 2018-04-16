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