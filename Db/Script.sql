CREATE TABLE "users" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "level" varchar NOT NULL
);

CREATE TABLE "courses" (
  "id" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text,
  "user_id" int NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "courses_videos" (
  "id" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar UNIQUE NOT NULL,
  "categories_id" int NOT NULL
);

CREATE TABLE "categories" (
  "id" int PRIMARY KEY,
  "Name" varchar NOT NULL,
  "courses_id" int NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");



ALTER TABLE "courses_videos" ADD FOREIGN KEY ("title") REFERENCES "courses" ("title");




insert into users ( id , name , email , "password" , age, "level" ) values ( 4,'Cristian','kmilo@asdfd.com','afjrkslf',33,'intermedio');

insert into courses ( id , title , description , user_id,"level",teacher) values (2, 'Baile','Libera tu alma', 2 ,'avanzado','Martina');

insert into categories ( id , "Name" , courses_id) values (2, 'Break Dance' , 2);

insert into courses_videos ( id , title , url , categories_id) values ( 2,'Escuela de Baile' , 'https://DanceAcademy.com',2);


select * from users
select * from courses
select * from categories
select * from courses_videos
insert into courses (id , title , description , user_id , )

update users set email = 'JJ@academlo.com' where id = 1

delete from users where id = 4 