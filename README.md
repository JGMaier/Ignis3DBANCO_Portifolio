# Ignis3DBANCO_Portifolio
Este repositório apresenta um modelo demonstrativo de banco de dados em PostgreSQL utilizado pela aplicação Ignis3D.
O objetivo é mostrar boas práticas de modelagem relacional, incluindo criação de schemas, tabelas de autenticação, licenciamento e logs de auditoria.

Os arquivos SQL estão organizados em etapas numeradas:

01_create_database.sql → Criação do banco e schema principal.

02_create_table_usuarios.sql → Estrutura da tabela de usuários.

03_create_table_tokens.sql → Tokens de sessão com expiração e vínculo ao usuário.

04_create_table_logs.sql → Logs de autenticação e checkout/licenciamento.

05_create_table_licencas.sql → Controle de licenças e assinaturas, incluindo integração com Stripe.

99_seed_data.sql → Inserção de dados fictícios para demonstração.

Este projeto demonstra domínio de PostgreSQL aplicado a cenários reais de autenticação e gestão de acesso, sem expor dados sensíveis.
