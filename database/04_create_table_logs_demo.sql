-- Este script cria tabelas de logs dentro do schema "autenticacao".
-- Inclui registros de autenticação e de checkout/licenciamento,
-- permitindo auditoria e rastreamento de eventos de acesso e transações.

-- Tabela de logs de autenticação (opcional)
CREATE TABLE IF NOT EXISTS autenticacao.logs_autenticacao (
    id_log SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES autenticacao.usuarios(id_usuario) ON DELETE CASCADE,
    sucesso BOOLEAN NOT NULL,
    ip_origem INET,
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    mensagem TEXT
);

-- Tabela de logs de checkout/licença
CREATE TABLE IF NOT EXISTS autenticacao.logs_checkout (
    id_log SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES autenticacao.usuarios(id_usuario) ON DELETE CASCADE,
    plano VARCHAR(50) NOT NULL,
    stripe_subscription_id VARCHAR(255),
    status VARCHAR(50) NOT NULL,
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
