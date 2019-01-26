/*Programmer: Rushdi Al-Hasan*/

/*table for user information*/
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

/*table for image information*/
CREATE TABLE IMAGES
(
	accessKey varchar(50) FOREIGN KEY REFERENCES USERS(accessKey), /*referemces accessKey in USERS table*/
	Username varchar(50),
	ImagePath varchar(1024), /*location of image*/
	time_received TIME, /*time image is received*/
	date_received DATE /*date image is received*/
);
