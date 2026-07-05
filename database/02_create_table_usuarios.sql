-- Este script cria a tabela "usuarios" dentro do schema "autenticacao".
-- Define colunas para credenciais, consentimento e informações de acesso,
-- servindo como base para autenticação na aplicação Ignis3D.

CREATE TABLE autenticacao.usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    consentimento_dados BOOLEAN DEFAULT FALSE,
    tipo_conta VARCHAR(20) DEFAULT 'demo',
    hardware_id VARCHAR(255)
);
