-- Este script cria o banco de dados principal "Ignis3D-BANCO",
-- define o schema "autenticacao" e ajusta o search_path
-- para facilitar consultas e organização das tabelas de autenticação.

-- Criação do banco de dados principal
CREATE DATABASE "Banco-Name";

-- Conectar ao banco
\c "Banco-Name";

-- Criar schema padrão
CREATE SCHEMA autenticacao;

-- Define o schema 'autenticacao' como o principal para buscas automáticas
ALTER DATABASE "Banco-Name" SET search_path TO autenticacao, public;
