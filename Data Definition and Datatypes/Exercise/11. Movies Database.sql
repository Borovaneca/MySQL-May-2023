create database Movies;

create table `directors`
(
    id            INT         not null auto_increment,
    director_name Varchar(50) not null,
    notes         text,
    primary key (id)
);

insert into directors (director_name, notes)
    value ('Director One', 'Note One'),
    ('Director Two', 'Note Two'),
    ('Director Three', 'Note Three'),
    ('Director Four', 'Note Four'),
    ('Director Five', 'Note Five');

create table `genres`
(
    id         INT         not null auto_increment,
    genre_name Varchar(50) not null,
    notes      text,
    primary key (id)
);

insert into genres (genre_name, notes)
    value ('Genre One', 'Note One'),
    ('Genre Two', 'Note Two'),
    ('Genre Three', 'Note Three'),
    ('Genre Four', 'Note Four'),
    ('Genre Five', 'Note Five');

create table `categories`
(
    id            INT         not null auto_increment,
    category_name Varchar(50) not null,
    notes         text,
    primary key (id)
);

insert into categories (category_name, notes)
    value ('Category One', 'Note One'),
    ('Category Two', 'Note Two'),
    ('Category Three', 'Note Three'),
    ('Category Four', 'Note Four'),
    ('Category Five', 'Note Five');

create table `movies`
(
    id             INT         not null auto_increment,
    title          Varchar(50) not null,
    director_id    INT,
    copyright_year YEAR,
    length         time,
    genre_id       INT,
    category_id    INT,
    rating         double,
    notes          text,
    primary key (id)
);

insert into movies (title)
values ('Movie One'),
       ('Movie Two'),
       ('Movie Three'),
       ('Movie Four'),
       ('Movie Five');
