-- Este script insere dados de exemplo no banco para demonstração.
-- Cria um usuário de teste e vincula uma licença demo, evitando duplicações.

-- Cria usuário se não existir
INSERT INTO autenticacao.usuarios (nickname, email, senha_hash, consentimento_dados, tipo_conta)
VALUES ('usuario_test', 'example@email.com', 'hash_key', TRUE, 'admin')
ON CONFLICT (email) DO NOTHING;

-- Cria licença demo vinculada ao usuário (se não existir)
INSERT INTO autenticacao.licencas (id_usuario, tipo, status, ativa, data_vencimento, stripe_subscription_id)
SELECT u.id_usuario, 'demo', 'ativo', TRUE, CURRENT_TIMESTAMP + INTERVAL '1 year', NULL
FROM autenticacao.usuarios u
WHERE u.email = 'example@email.com'
AND NOT EXISTS (
    SELECT 1 FROM autenticacao.licencas l WHERE l.id_usuario = u.id_usuario
);
