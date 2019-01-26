CREATE TABLE USERS
(
  accessKey varchar(50) PRIMARY KEY,
  Fname varchar(50),
  Lname varchar(50),
  Email varchar(50),
  Username varchar(50),
  Password varchar(50),
  Phone# bigint
);


CREATE TABLE IMAGES
(
	accessKey varchar(50) FOREIGN KEY REFERENCES USERS(accessKey),
	Username varchar(50),
	ImagePath varchar(1024),
	time_received TIME,
	date_received DATE
);
