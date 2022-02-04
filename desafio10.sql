SELECT
  c.cancao AS nome,
  COUNT(h.cancao_id) AS reproducoes
FROM
  SpotifyClone.historico_de_reproducao AS h
  LEFT JOIN SpotifyClone.cancoes AS c ON h.cancao_id = c.cancao_id
  RIGHT JOIN SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
  RIGHT JOIN SpotifyClone.planos AS p ON u.plano_id = p.plano_id
WHERE
  p.plano IN ('gratuito', 'pessoal')
GROUP BY
  c.cancao
ORDER BY
  c.cancao ASC;