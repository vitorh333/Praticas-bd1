SELECT movies.id, movies.name
FROM movies
JOIN genres ON genres.description = 'Action' AND movies.id_genres = genres.id;

