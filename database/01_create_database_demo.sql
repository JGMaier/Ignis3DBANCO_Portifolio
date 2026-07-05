-- Este script cria o banco de dados principal "Ignis3D-BANCO",
-- define o schema "autenticacao" e ajusta o search_path
-- para facilitar consultas e organização das tabelas de autenticação.

-- Criação do banco de dados principal
CREATE DATABASE "Ignis3D-BANCO";

-- Conectar ao banco
\c "Ignis3D-BANCO";

-- Criar schema padrão
CREATE SCHEMA autenticacao;

-- Define o schema 'autenticacao' como o principal para buscas automáticas
ALTER DATABASE "Ignis3D-BANCO" SET search_path TO autenticacao, public;
