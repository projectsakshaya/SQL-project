/*Exercise1  - Retrieve Data Using Text Query (SELECT, WHERE, DISTINCT, LIKE)Exercise - Retrieve Data Using Text Query (SELECT, WHERE, DISTINCT, LIKE)*/


SELECT title ,release_year FROM moviesdb.movies WHERE  studio like 'Marvel Studios' group by title; /*. Print all movie titles and release year for all Marvel Studios movies.*/
SELECT * from moviesdb.movies  where  title LIKE "Avenger%"; /* 2. Print all movies that have Avenger in their name.*/
SELECT release_year  FROM moviesdb.movies where title like 'The Godfather'; /* year when the movie "The Godfather" was released.*/
Select distinct studio from moviesdb.movies; /*4. Print all distinct movie studios in the Bollywood industry.*/

/*EXCERCISE 2 - Exercise - Retrieve Data Using Numeric Query (BETWEEN, IN, ORDER BY, LIMIT, OFFSET)*/

SELECT * FROM moviesdb.movies WHERE release_year=2022; /*print all movies from latest release to end release */
SELECT * FROM moviesdb.movies ORDER BY release_year desc ; /* All movies relesed in y2022 */
SELECT * FROM moviesdb.movies WHERE release_year > 2020; /* All movies released after 2020*/
SELECT * FROM moviesdb.movies WHERE release_year > 2020 AND imdb_rating = 8; /*all movies after2020 having rating 8*/
SELECT * FROM moviesdb.movies WHERE studio IN  ("Marvel Studios ","Hombale Films");


/*EXCERCISE 3- SUMMARY ANALYTICS MAX ,MIN ,COUNT(*)*/

SELECT COUNT( * ) FROM moviesdb.movies WHERE release_year BETWEEN 2015 AND  2020;

select  max(release_year)from moviesdb.movies ;
select  min(release_year)from moviesdb.movies ;

select release_year, count(*) as movies_count from movies group by release_year order by release_year desc;



    
    
