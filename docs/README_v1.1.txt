PROJETO: POKEDEX RELACIONAL
VERSÃO: 1.1 (BASELINE OFICIAL)
DATA DE CONGELAMENTO: [25/02/2026]

------------------------------------------------------------
1. OBJETIVO DO PROJETO
------------------------------------------------------------

Desenvolver um banco de dados relacional modelando uma Pokédex,
com foco em aprendizado prático de SQL, normalização, integridade
referencial e versionamento profissional utilizando Git.

O projeto busca simular práticas reais de desenvolvimento de banco
de dados, incluindo controle de versões, baseline formal e planejamento
de migrações.

------------------------------------------------------------
2. CONTEXTO TÉCNICO
------------------------------------------------------------

SGBD utilizado: SQLite
Ferramenta: DB Browser for SQLite
Versionamento: Git + GitHub

A escolha do SQLite foi estratégica, considerando simplicidade,
portabilidade e adequação ao contexto de aprendizado.

------------------------------------------------------------
3. ESTRUTURA DO BANCO (v1.1)
------------------------------------------------------------

TABELAS:

1. pokemon
- pokemon_id (PK)
- nome
- hp
- attack
- defense
- sp_attack
- sp_defense
- speed

2. tipo
- tipo_id (PK)
- nome_tipo (UNIQUE)

3. pokemon_tipo (tabela associativa N:N)
- pokemon_id (FK)
- tipo_id (FK)
- PK composta (pokemon_id, tipo_id)

4. relacao_tipos
- tipo_atacante_id (FK)
- tipo_defensor_id (FK)
- multiplicador
- PK composta (tipo_atacante_id, tipo_defensor_id)

------------------------------------------------------------
4. DECISÕES DE MODELAGEM
------------------------------------------------------------

- Separação da entidade "tipo" para evitar redundância.
- Uso de tabela associativa para resolver relação N:N.
- Uso de PK composta para impedir duplicidade lógica.
- Implementação de matriz relacional para cálculo de dano.
- Campos obrigatórios (NOT NULL) para integridade de dados.

O banco está normalizado até 3FN.

------------------------------------------------------------
5. STATUS DA VERSÃO 1.1
------------------------------------------------------------

- Schema exportado diretamente do banco funcional.
- Commit baseline realizado.
- Tag v1.1 criada no GitHub.
- Estrutura congelada para referência histórica.

Esta versão representa o primeiro marco estrutural estável do projeto.

------------------------------------------------------------
6. LIMITAÇÕES ATUAIS
------------------------------------------------------------

- Não há políticas ON DELETE / ON UPDATE definidas.
- Não há controle de autoincrement explícito.
- Não há camadas de aplicação ou interface.
- Foco exclusivamente estrutural.

------------------------------------------------------------
7. PRÓXIMOS PASSOS (PLANEJAMENTO v2.0)
------------------------------------------------------------

- Implementar regras de integridade (CASCADE).
- Melhorar ordem declarativa do schema.
- Criar scripts de migração.
- Adicionar queries de análise.
- Evoluir para simulação de cálculo de dano completo.
- Preparar base para futura integração com aplicação.

------------------------------------------------------------
8. CONSIDERAÇÕES FINAIS
------------------------------------------------------------

A versão 1.1 representa o início da profissionalização do projeto,
marcando a transição de um exercício local para um sistema versionado
com controle formal de evolução.

O foco permanece no aprendizado estruturado, boas práticas e
simulação de cenários reais de mercado.