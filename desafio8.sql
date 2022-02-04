SELECT
  a.artista,
  ab.album
FROM
  SpotifyClone.artistas AS a
  INNER JOIN SpotifyClone.albuns AS ab
WHERE
  artista LIKE 'Walter Phoenix'
ORDER BY
  a.artista
LIMIT
  2;