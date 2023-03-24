CREATE TABLE "users" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "level" varchar NOT NULL
);

CREATE TABLE "courses" (
  "id" int UNIQUE PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text,
  "user_id" int NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "courses_videos" (
  "id" int UNIQUE PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar UNIQUE NOT NULL,
  "categories_id" int NOT NULL
);

CREATE TABLE "categories" (
  "id" int UNIQUE PRIMARY KEY,
  "Name" varchar NOT NULL,
  "courses_id" int NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("level") REFERENCES "courses" ("level");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("title") REFERENCES "courses" ("title");