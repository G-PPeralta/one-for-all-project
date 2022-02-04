SELECT
  u.usuario,
  IF(
    YEAR(MAX(h.data_reproducao)) = 2021,
    'Usuário ativo',
    'Usuário inativo'
  ) AS condicao_usuario
FROM
  usuarios AS u
  INNER JOIN SpotifyClone.historico_de_reproducao AS h ON u.usuario_id = h.usuario_id
GROUP BY
  u.usuario
ORDER BY
  u.usuario;