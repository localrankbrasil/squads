# Protocolo Git Sync

Regra da Local Rank Brasil: tudo que for feito na IDE deve ser salvo no GitHub.

## Regra Principal

Ao terminar qualquer etapa de trabalho:

```bash
git status
git add .
git commit -m "Describe the change"
git push origin main
```

## Quando Fazer Commit

Faca commit sempre que:

- criar ou editar documentos
- criar squads
- alterar prompts, agentes ou pipelines
- processar arquivos de clientes
- gerar outputs importantes
- atualizar contexto

## Mensagens De Commit

Use mensagens simples e objetivas:

```text
Add squad creation guide
Update Imperial feed optimization context
Add monthly reporting workflow
Refine sales proposal template
```

## Nao Fazer Commit De

- senhas
- tokens
- cookies
- arquivos `.env`
- sessoes de navegador
- dados privados que nao devem ir para GitHub

## Antes Do Push

Sempre revisar:

```bash
git status
git diff --staged
```

Se houver arquivos sensiveis, remover antes do commit.

