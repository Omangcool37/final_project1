insert into author (author_name)VALUES(Rick Riordian)

insert into author(author)
    ('Jane Austin'),
('Mark Twain'),
('J.K. Rowling'),
('Stephen King'),
('J.R.R. Tolkien'),
('James Baldwin'),
('Neil Gaiman'),
('Octavia Butler'),
('George Orwell'),
('Virginia Wolf'),
('Enerst Hemingway'),
('Isabel Allende'),
('Ray Bradbury'),
('Margaret Atwood'),
('Leo Tolstoy'),
('Haruki Murakami'),
('Chinua Achebe'),
('F. Scott Fitzgerald');

insert into publisher(publisher)
    ('Penguin Books');

insert into publisher(publisher)
    values('Austen House'), 
    ('Twain Press'), 
    ('Rowling Ink'), 
    ('Derry Press'), 
    ('Tolkien Estate'), 
    ('Baldwin House'), 
    ('Gaiman Works'), 
    ('Butler Futures'), 
    ('Orwell Editions'),
    ('Woolf House'),
    ('Hemingway Press'),
    ('Allende Books'),
    ('Bradbury Media'),
    ('Atwood Publishers'),
    ('Tolstoy Legacy'),
    ('Murakami Studio'),
    ('Achebe Media'),
    ('Fitzgerald Press'),
    ('');

insert into genre(genre)
    values('Literary'),
    ('Fantasy'),
    ('Science Fiction'),
    ('Horror'),
    ('Mystery'),
    ('Thriller'),
    ('Romance'),
    ('Historical Fiction'),
    ('Biography'),
    ('Poetry'),
    ('Young Adult'),
    ('Adventure'),
    ('Non-Fiction');
  

insert into format(format)
    values('PHYSICAL'),
    ('AUDIOBOOK'),
    ('E-BOOK');

insert into book(
    title,
    author_id, 
    pub_id,
    copyright_year,
    edition,
    edition_year,
    binding,
    rating,
    language,
    num_pages,
    cover_image,
    qty,
    format_id
)
    values('Percy Jackson the Lightning Theif ', 5, 1, 2005, 1, 2006, 'hardback', '4', 'English', 377, 'riordian.jpg', 54, 1);



INSERT INTO book (
    title,
    author_id, 
    pub_id,
    copyright_year,
    edition,
    edition_year,
    binding,
    rating,
    language,
    num_pages,
    cover_image,
    qty,
    format_id
) VALUES
('Pride and Persuasion', 1, 1, 6, 1, 1813, 1813, 'Hardback', 3, 'English', 12, 432, 'austen.jpg'),
('Adventures of Tom & Huck', 2, 2, 11, 1, 1876, 1884, 'Paperback', 4.3, 'English', 8, 376, 'twain.jpg'),
('The Auror Trials', 3, 3, 1, 3, 2005, 2010, 'Hardback', 4, 'English', 20, 598, 'rowling.jpg'),
('The Silent Fog', 4, 4, 3, 1, 1983, 1983, 'Hardback', 3, 'English', 10, 412, 'king.jpg'),
('Children of Gondor', 5, 5, 1, 1, 1955,  1971, 'Hardback', 4, 'English', 15, 701, 'tolkien.jpg'),
('Notes of Harlem', 6, 6, 7, 1, 1962,  1962, 'Paperback', 4, 'English', 6, 301, 'baldwin.jpg'),
('Neverwhere: Reclaimed', 7, 7, 1, 2, 1996, 'Special', 2001, 'Hardback', 2, 'English', 9, 424, 'gaiman.jpg'),
('Parable of Dusk', 8, 8, 2, 3, 1993,  1993, 'Paperback', 4, 'English', 7, 355, 'butler.jpg'),
('The Last Watchman', 9, 9, 12, 1, 1949, 1949, 'Hardback', 3, 'English', 11, 328, 'orwell.jpg'),
('Streams of Thought', 10, 10, 9, 3, 1927, 'Collected', 1932, 'Paperback', 4, 'English', 5, 290, 'woolf.jpg'),
('To the Last Marlin', 11, 11, 7, 1, 1952,  1952, 'Hardback', 4, 'English', 10, 215, 'hemingway.jpg'),
('House of Ghosts', 12, 12, 6, 2, 1985, 1985, 'Paperback', 5, 'Spanish', 8, 480, 'allende.jpg'),
('The Ash Planet', 13, 13, 2, 1, 1953, 1953, 'Hardback', 4, 'English', 13, 240, 'bradbury.jpg'),
('The Archives Tale', 14, 14, 5, 3, 1986, 1986, 'Paperback', 4, 'English', 9, 379, 'atwood.jpg'),
('Voices of War', 15, 15, 7, 1, 1869, 1869, 'Hardback', 4, 'Russian', 7, 1225, 'tolstoy.jpg'),
('1Q94: The Final Chapter', 16, 16, 2, 1, 2011, 2018, 'Paperback', 4 , 'Japanese', 10, 724, 'murakami.jpg'),
('Things Fall to Fire', 17, 17, 7, 3, 1958, 1958, 'Hardback', 3, 'English', 6, 332, 'achebe.jpg'),
('The Gatsby Mirror', 18, 18, 4, 1, 1925,  1930, 'Paperback', 3, 'English', 14, 218, 'fitzgerald.jpg');

INSERT INTO book_to_genre (book_id, genre_id) VALUES
(1, 6),
(1, 7),
(2, 11),
(2, 4),
(3, 1), 
(3, 10),
(4, 3),
(4, 5),
(5, 1),  
(5, 11), 
(6, 7),
(6, 8), 
(7, 1),
(7, 5),
(8, 2), 
(8, 12),
(9, 12),  
(9, 5),
(10, 9),
(10, 12),
(11, 7),
(11, 8),
(12, 6),
(12, 1),  
(13, 2), 
(13, 4),  
(14, 5),  
(14, 10), 
(15, 7), 
(15, 12), 
(16, 2),  
(16, 5),  
(17, 7),  
(17, 12), 
(18, 4),  
(18, 6); 



