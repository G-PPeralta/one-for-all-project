SELECT
  a.artista,
  ab.album,
  COUNT(ats.artista_id) AS seguidores
FROM
  SpotifyClone.artistas AS a
  LEFT JOIN SpotifyClone.albuns AS ab ON a.artista_id = ab.artista_id
  INNER JOIN SpotifyClone.artistas_seguidos AS ats ON a.artista_id = ats.artista_id
GROUP BY
  a.artista,
  ab.album
ORDER BY
  seguidores DESC,
  a.artista,
  ab.album;