-- Este script cria a tabela "licencas" dentro do schema "autenticacao".
-- Armazena informações de planos e assinaturas dos usuários,
-- incluindo status, datas de validade e integração com Stripe.

-- Tabela de licenças e assinaturas
CREATE TABLE autenticacao.licencas (
    id_licenca SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL REFERENCES autenticacao.usuarios(id_usuario) ON DELETE CASCADE,
    stripe_subscription_id VARCHAR(255),
    tipo VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    ativa BOOLEAN DEFAULT TRUE,
    data_inicio TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    data_vencimento TIMESTAMP WITH TIME ZONE,
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Índice para busca rápida por usuário
CREATE INDEX idx_licencas_usuario ON autenticacao.licencas(id_usuario);

-- Trigger para atualizar o timestamp de 'atualizado_em'
CREATE TRIGGER update_licencas_atualizado_em
    BEFORE UPDATE ON autenticacao.licencas
    FOR EACH ROW EXECUTE FUNCTION autenticacao.update_updated_at_column();
