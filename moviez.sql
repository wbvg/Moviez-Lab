DROP DATABASE moviez;
CREATE DATABASE moviez;
\c moviez

CREATE TABLE moviez (
id serial8 primary key,
title varchar(150),
year int4 ,
rated varchar(50) ,
released varchar(20) ,
runtime varchar(9) ,
genre varchar(50) ,
director varchar(30) ,
writer text ,
actors varchar(200) ,
plot text,
imdbID varchar(20)
);



