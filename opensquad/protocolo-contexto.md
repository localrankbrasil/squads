# Protocolo De Contexto

Objetivo: nunca perder contexto quando uma conversa mudar de chat, IDE, modelo ou maquina.

## Regra Principal

Toda conversa importante deve virar um resumo em arquivo.

Arquivo padrao:

```text
contexto.md
```

## Onde Salvar

Use o contexto mais especifico possivel:

```text
local-rank-operacoes/contexto.md
local-rank-operacoes/vendas/contexto.md
local-rank-operacoes/branding/contexto.md
cliente-imperial/contexto.md
```

## O Que Registrar

O arquivo deve responder:

- quem e o cliente ou area
- qual e o objetivo atual
- o que ja foi feito
- quais decisoes foram tomadas
- quais arquivos importam
- quais riscos existem
- quais sao os proximos passos

## Frequencia

Atualize o contexto:

- no inicio de um projeto
- depois de qualquer decisao importante
- antes de trocar de IDE/modelo/maquina
- antes de fechar a sessao
- depois de gerar entregaveis para cliente

## Regra Para IA

Antes de trabalhar em um repo, a IA deve ler:

1. `AGENTS.md`, se existir.
2. `contexto.md`, se existir.
3. o README da pasta relacionada.

Depois de trabalhar, a IA deve atualizar o contexto e fazer commit/push.

