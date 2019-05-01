-- Resource

CREATE TABLE IF NOT EXISTS Resource(

Resource_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

Email VARCHAR(200),

Title VARCHAR(200) NOT NULL,

OpHours VARCHAR(350) NOT NULL,

Street_Address VARCHAR(100) NOT NULL,

Zipcode INT NOT NULL,

Phone VARCHAR(20) NOT NULL,

Website VARCHAR(200),

Description VARCHAR(500) NOT NULL,

Documents VARCHAR (500),

Requirements VARCHAR (500),

Insurance BOOLEAN NOT NULL);


-- Category

CREATE TABLE IF NOT EXISTS Category(

Category_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

Name VARCHAR(100)NOT NULL,

Description VARCHAR(500) NOT NULL);

-- Belongs_to

CREATE TABLE IF NOT EXISTS Belongs_To(

Resource_id INT PRIMARY KEY NOT NULL,

Category_id INT NOT NULL,

FOREIGN KEY(Category_id) REFERENCES Category(Category_id) ON DELETE CASCADE ON UPDATE CASCADE);


-- Contact

CREATE TABLE Contact(

Contact_id INT NOT NULL AUTO_INCREMENT,

Resource_id INT NOT NULL,

Title VARCHAR(50) NOT NULL,

F_Name VARCHAR(50) NOT NULL,

L_Name VARCHAR(50) NOT NULL,

Phone VARCHAR(20) NOT NULL,

Email VARCHAR(200),

PRIMARY KEY(Contact_id, Resource_id),

FOREIGN KEY(Resource_id) REFERENCES Resource(Resource_id) ON DELETE CASCADE ON UPDATE CASCADE);


-- Admin

CREATE TABLE Admin(

Admin_id INT NOT NULL AUTO_INCREMENT,

Username VARCHAR(20) NOT NULL UNIQUE,

Password VARCHAR(100) NOT NULL,

F_Name VARCHAR(50) NOT NULL,

L_Name VARCHAR(50) NOT NULL,

PRIMARY KEY(Admin_id));


--Sevice

CREATE TABLE IF NOT EXISTS Service(

Service_id INT PRIMARY KEY AUTO_INCREMENT,

Name VARCHAR (100) NOT NULL,

Description VARCHAR(255) NOT NULL);


-- Updates

CREATE TABLE Updates(

Date DATE NOT NULL,

Admin_id INT NOT NULL,

Resource_id INT NOT NULL,

PRIMARY KEY(Resource_id, Admin_id),

FOREIGN KEY(Resource_id) REFERENCES Resource(Resource_id) ON UPDATE CASCADE ON DELETE CASCADE,

FOREIGN KEY(Admin_id) REFERENCES Admin(Admin_id) ON UPDATE CASCADE ON DELETE CASCADE);



--Provides

CREATE TABLE IF NOT EXISTS Provides(

Resource_id INT NOT NULL,

Service_id INT PRIMARY KEY NOT NULL,

FOREIGN KEY(Resource_id) REFERENCES Resource(Resource_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY(Service_id) REFERENCES Service(Service_id) ON DELETE CASCADE ON UPDATE CASCADE);















