create database library;
use library;

CREATE TABLE  book_dtl(
   book_id   int     NOT NULL,
   book_name  varchar(40)     NOT NULL,
   author_name varchar(40)    NOT NULL,
   num_pages  int      NOT NULL,
   price   float      NOT NULL
);

