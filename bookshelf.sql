DROP TABLE IF EXISTS bookshelf{
   id SERIAL PRIMARY KEY,
   name VARCHAR(255)
};

CREATE TABLE IF NOT EXISTS books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  isbn VARCHAR(255),
  image_url VARCHAR(255),
  description TEXT,
  bookshelf_id INT REFERENCES bookshelf(id)
);
