SELECT
  COUNT(h.cancao_id) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.historico_de_reproducao AS h
  JOIN SpotifyClone.usuarios AS u
WHERE
  u.usuario_id = h.usuario_id
  AND u.usuario = 'Bill';