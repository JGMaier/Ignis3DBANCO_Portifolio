-- Este script cria a tabela "tokens_sessao" dentro do schema "autenticacao".
-- Armazena tokens de sessão vinculados a usuários, com controle de expiração e status de uso.

-- Tabela de tokens de sessão
CREATE TABLE autenticacao.tokens_sessao (
    id_token SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES autenticacao.usuarios(id_usuario) ON DELETE CASCADE,
    token VARCHAR(255) UNIQUE NOT NULL,
    usado BOOLEAN DEFAULT FALSE,
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    expira_em TIMESTAMP WITH TIME ZONE NOT NULL
);
