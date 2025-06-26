DROP DATABASE IF EXISTS libraryDB;
CREATE DATABASE libraryDB;
USE libraryDB;

-- Author Table
CREATE TABLE author (
    author_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    author VARCHAR(40),
    CONSTRAINT pk_author PRIMARY KEY (author_id)
);

-- Publisher Table
CREATE TABLE publisher (
    pub_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    publisher VARCHAR(40),
    CONSTRAINT pk_publisher PRIMARY KEY (pub_id)
);

-- Genre Table
CREATE TABLE genre (
    genre_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    genre VARCHAR(40),
    CONSTRAINT pk_genre PRIMARY KEY (genre_id)
);

-- Format Table (initial definition)
CREATE TABLE format (
    format_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    format ENUM('PHYSICAL', 'AUDIOBOOK', 'E-BOOK'),
    CONSTRAINT pk_format PRIMARY KEY (format_id)
);

-- Book Table
CREATE TABLE book (
    book_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    title VARCHAR(60),
    author_id TINYINT UNSIGNED NOT NULL,
    pub_id TINYINT UNSIGNED NOT NULL,
    copyright_year YEAR,
    edition TINYINT UNSIGNED NOT NULL,
    edition_year YEAR,
    binding ENUM('paperback', 'hardback'),
    rating ENUM('1', '2', '3', '4', '5'),
    language VARCHAR(4),
    qty TINYINT UNSIGNED NOT NULL,
    num_pages SMALLINT UNSIGNED NOT NULL,
    cover_image VARCHAR(40),
    format_id TINYINT UNSIGNED NOT NULL,

    CONSTRAINT pk_book PRIMARY KEY (book_id),
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES author (author_id),
    CONSTRAINT fk_pub FOREIGN KEY (pub_id) REFERENCES publisher (pub_id),
    CONSTRAINT fk_format FOREIGN KEY (format_id) REFERENCES format (format_id)
);

-- Book-to-Genre Table
CREATE TABLE book_to_genre (
    book_id TINYINT UNSIGNED NOT NULL,
    genre_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT fk_book_btg FOREIGN KEY (book_id) REFERENCES book (book_id),
    CONSTRAINT fk_genre_btg FOREIGN KEY (genre_id) REFERENCES genre (genre_id)
);

-- Book-to-Format Table
CREATE TABLE book_to_format (
    book_id TINYINT UNSIGNED NOT NULL,
    format_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT fk_book_btf FOREIGN KEY (book_id) REFERENCES book (book_id),
    CONSTRAINT fk_format_btf FOREIGN KEY (format_id) REFERENCES format (format_id)
);