SELECT
  a.artista,
  ab.album
FROM
  SpotifyClone.artistas AS a
  LEFT JOIN SpotifyClone.albuns AS ab ON a.artista_id = ab.artista_id 
  WHERE artista LIKE 'Walter Phoenix'
ORDER BY album ASC;