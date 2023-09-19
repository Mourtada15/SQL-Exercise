BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "students" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	TEXT,
	"Gender"	TEXT,
	"Points"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "graduates" (
	"id"	INTEGER,
	"Name"	TEXT NOT NULL,
	"Age"	INTEGER NOT NULL,
	"Gender"	TEXT NOT NULL,
	"Points"	INTEGER NOT NULL,
	"Graduation"	DATE NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "students" ("ID","Name","Age","Gender","Points") VALUES (1,'Alex','21','M',100),
 (2,'Basma','25','F',400),
 (3,'Hasan','30','M',150),
 (5,'Robert','34','M',500),
 (6,'Jana','33','F',500),
 (8,'Hassan','28','M',1000);
INSERT INTO "graduates" ("id","Name","Age","Gender","Points","Graduation") VALUES (1,'Layal',18,'F',350,'18/09/2018');
CREATE UNIQUE INDEX IF NOT EXISTS "graduates_name_unique" ON "graduates" (
	"Name"
);
COMMIT;
