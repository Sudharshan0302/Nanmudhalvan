CREATE DATABASE carbon_emission1;

--create user table and insert data

CREATE TABLE carbon_emission1.energy(
EID INT PRIMARY KEY,
UID int NOT NULL,
energy_con int not null,
energy_ce DEC(3,2)
);

SELECT *
FROM carbon_emission1.energy;

INSERT INTO carbon_emission1.energy
VALUES (7,7,140,2.30),
(8,9,999,9.00);
        
SELECT *
FROM carbon_emission1.energy;
--------------------------------------------------------------------------------------------
--create food table and insert data

        
CREATE TABLE carbon_emission1.foods (
TID INT PRIMARY KEY,
UID INT NOT NULL,
choice varchar(50) NOT NULL,
food_ce DEC(3,2)
);

SELECT *FROM 
carbon_emission1.foods;

INSERT INTO
carbon_emission1.foods
VALUES(3,3,'Truck','1.79'),
(4,4,'van','2.79');

SELECT *
FROM carbon_emission1.foods;

---------------------------------------------------------------------
create carbon emission table and insert data
----

CREATE TABLE carbon_emission1.ce (
CID INT PRIMARY KEY,
UID INT NOT NULL
);

SELECT *
FROM carbon_emission1.ce;

INSERT INTO carbon_emission1.ce
VALUES(4,1),
	  (1,4);
      
SELECT *
FROM carbon_emission1.ce;

---------------------------------------------------------
join only two tables


CREATE TABLE carbon_emission1.trans (
SELECT u.UID as 'Users_id',u.Name,u.Email,u.Password,t.UID,t.model,t.methods,t.trans-ce
FROM carbon_emission1.trans u 
LEFT JOIN
carbon_emission1.trans
ON u.UID=t.UID
);



SELECT *
FROM Carbon_emission.users_trans;



