-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE nationality = 'China' OR nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE name = 'Albert Camus';

-- Find out how many books written before 1980 were by authors not from the US.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE publication_date < 1980 AND nationality <> 'United States of America';

-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name LIKE 'J%';

-- Find all books whose titles contain 'the'.
SELECT * from books WHERE title LIKE '% the %'; -- Added spaces to not include words like other.
