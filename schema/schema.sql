CREATE TABLE author (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    publish_date DATE NOT NULL,
    archived BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id)
);

CREATE TABLE game (
    id INT NOT NULL AUTO_INCREMENT,
    multiplayer BOOLEAN NOT NULL,
    last_played_at DATE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE genres (
    id  INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE music (
    id  INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    on_spotify BOOLEAN,
);
CREATE TABLE "Books"(
    "id" INT GENERATED ALWAYS AS IDENTITY,
    "publisher" VARCHAR(255) NOT NULL,
    "cover_state" VARCHAR(255) NOT NULL,
    "publisher_date" DATE NOT NULL,
    "archived" BOOLEAN NOT NULL,
    "label_id" INTEGER NOT NULL
);
CREATE INDEX "books_label_id_index" ON
    "Books"("label_id");
ALTER TABLE
    "Books" ADD PRIMARY KEY("id");
CREATE TABLE "Label"(
    "id" INT GENERATED ALWAYS AS IDENTITY,
    "title" VARCHAR(255) NOT NULL,
    "color" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Label" ADD PRIMARY KEY("id");
ALTER TABLE
    "Books" ADD CONSTRAINT "books_label_id_foreign" FOREIGN KEY("label_id") REFERENCES "Label"("id");
