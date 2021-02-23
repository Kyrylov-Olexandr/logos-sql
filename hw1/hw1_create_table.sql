CREATE TABLE book (
	title varchar(120) NOT NULL,
    info  varchar(255) DEFAULT 'Опис відсутній',
    publication_date date NOT NULL DEFAULT '2018-01-01',
    author varchar(60) NOT NULL,
    category varchar(30) NOT NULL
);