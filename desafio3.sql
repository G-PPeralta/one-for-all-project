SELECT
  u.usuario,
  COUNT(h.cancao_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM
  SpotifyClone.usuarios AS u
  LEFT JOIN SpotifyClone.historico_de_reproducao AS h ON u.usuario_id = h.usuario_id
  LEFT JOIN SpotifyClone.cancoes AS c ON c.cancao_id = h.cancao_id
GROUP BY
  usuario
ORDER BY
  usuario ASC;