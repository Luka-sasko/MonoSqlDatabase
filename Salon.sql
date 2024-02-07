/*
CREATE TABLE "Owner"(
	"Id" integer PRIMARY KEY,
	"FirstName" text NOT NULL,
	"LastName" text NOT NULL,
	"Contact" text NOT NULL
	
);
CREATE TABLE "Salon"(
	"Id" SERIAL PRIMARY KEY,
	"OwnerId" integer,
	"Name" text NOT NULL,
	"Year" date,
	"Adress" text NOT NULL,
	CONSTRAINT "FK_Owner_Salon_OwnerId" FOREIGN KEY("OwnerId") REFERENCES "Owner"("Id")
);
CREATE TABLE "Service"(
	"Id" SERIAl PRIMARY KEY,
	"Name" text NOT NULL,
	"Price" integer NOT NULL,
	"AvailableAppointment" date NOT NULL
);
CREATE TABLE "SalonService"(
	"Id" SERIAL PRIMARY KEY,
	"SalonId" integer NOT NULL,
	"ServiceId" integer NOT NULL,
	"Date" date NOT NULL,
	CONSTRAINT "FK_Salon_SalonService_SalonId" FOREIGN KEY ("SalonId") REFERENCES "Salon"("Id"),
	CONSTRAINT "FK_Service_SalonService_ServiceId" FOREIGN KEY ("ServiceId") REFERENCES "Service"("Id")
);
CREATE TABLE "Client"(
	"Id" SERIAL PRIMARY KEY,
	"FirstName" text NOT NULL,
	"LastName" text NOT NULL,
	"Contact" text NOT NULL,
	"Email" text
);
CREATE TABLE "Reservation"(
	"Id" SERIAL PRIMARY KEY,
	"ClientId" integer NOT NULL,
	"SalonServiceId" integer NOT NULL,
	CONSTRAINT "FK_Client_Reservation_ClientId"  FOREIGN KEY ("ClientId") REFERENCES "Client"("Id"),
	CONSTRAINT "FK_SalonService_Reservation_SalonServiceId" FOREIGN KEY ("SalonServiceId") REFERENCES "SalonService"("Id")
);
*/
/*
INSERT INTO "Owner" ("Id","FirstName","LastName","Contact")
VALUES ('0','Owner1','1','123456789');
INSERT INTO "Owner" ("Id","FirstName","LastName","Contact")
VALUES ('1','Owner2','2','123456789');

INSERT INTO "Salon" ("OwnerId","Name","Year","Adress")
VALUES ('0','Salon1','2015-10-10','Adress1');
INSERT INTO "Salon" ("OwnerId","Name","Year","Adress")
VALUES ('0','Salon2','2017-10-10','Adress2');
INSERT INTO "Salon" ("OwnerId","Name","Year","Adress")
VALUES ('1','Salon3','2019-10-10','Adress3');

INSERT INTO "Service" ("Name","Price","AvailableAppointment")
VALUES ('Service1','50','2024-02-08');
INSERT INTO "Service" ("Name","Price","AvailableAppointment")
VALUES ('Service2','150','2024-02-10');
INSERT INTO "Service" ("Name","Price","AvailableAppointment")
VALUES ('Service3','250','2024-02-12');
INSERT INTO "Service" ("Name","Price","AvailableAppointment")
VALUES ('Service4','25','2024-02-7');

INSERT INTO "SalonService" ("SalonId","ServiceId","Date")
VALUES ('10','9','2024-02-08');
INSERT INTO "SalonService" ("SalonId","ServiceId","Date")
VALUES ('10','9','2024-02-18');
INSERT INTO "SalonService" ("SalonId","ServiceId","Date")
VALUES ('11','10','2024-02-08');
INSERT INTO "SalonService" ("SalonId","ServiceId","Date")
VALUES ('11','10','2024-02-18');
INSERT INTO "SalonService" ("SalonId","ServiceId","Date")
VALUES ('12','11','2024-02-28');
INSERT INTO "SalonService" ("SalonId","ServiceId","Date")
VALUES ('12','12','2024-02-21');


INSERT INTO "Client" ("FirstName","LastName","Contact","Email")
VALUES ('Client1','1','123456','Client1@gmail.com');
INSERT INTO "Client" ("FirstName","LastName","Contact","Email")
VALUES ('Client2','2','123455','Client2@gmail.com');
INSERT INTO "Client" ("FirstName","LastName","Contact","Email")
VALUES ('Client3','3','123556','Client3@gmail.com');
INSERT INTO "Client" ("FirstName","LastName","Contact","Email")
VALUES ('Client4','4','124456','Client4@gmail.com');

INSERT INTO "Reservation" ("ClientId","SalonServiceId")
VALUES ('1','3');
INSERT INTO "Reservation" ("ClientId","SalonServiceId")
VALUES ('2','4');
INSERT INTO "Reservation" ("ClientId","SalonServiceId")
VALUES ('3','5');
INSERT INTO "Reservation" ("ClientId","SalonServiceId")
VALUES ('4','6');
INSERT INTO "Reservation" ("ClientId","SalonServiceId")
VALUES ('4','7');
INSERT INTO "Reservation" ("ClientId","SalonServiceId")
VALUES ('4','8');
*/
/*
UPDATE "Client"
SET "FirstName" = 'Alfred'
WHERE "Id" = 3;
*/

SELECT "Salon"."Name", "Owner"."FirstName", "Owner"."LastName"
FROM "Salon"
LEFT JOIN "Owner" ON "Salon"."OwnerId" = "Owner"."Id";

SELECT "Reservation"."ClientId","Client"."FirstName","Client"."Contact"
FROM "Reservation"
LEFT JOIN "Client" ON "Reservation"."ClientId" = "Client"."Id"
WHERE "Client"."FirstName" LIKE 'Client4';


