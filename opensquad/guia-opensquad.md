# Guia Opensquad

Opensquad e um framework para criar squads de agentes de IA que trabalham em pipeline dentro da IDE.

Referencia: https://github.com/renatoasse/opensquad

## Comandos Principais

```text
/opensquad
/opensquad create
/opensquad run <nome-do-squad>
/opensquad list
/opensquad edit <nome-do-squad>
```

## Quando Criar Um Squad

Crie um squad quando o trabalho tiver etapas repetiveis, como:

- otimizar product feeds
- criar relatorios mensais
- escrever propostas
- gerar paginas SEO
- analisar concorrentes
- produzir conteudo
- revisar entregas de clientes

## Como Descrever Um Squad

Use este formato:

```text
Quero um squad para [resultado final].

Contexto:
- cliente:
- objetivo:
- arquivos de entrada:
- arquivos de saida esperados:
- ferramentas:
- criterios de qualidade:
- pontos que nao podem ser alterados:
```

## Checkpoints

Todo squad importante deve ter checkpoints antes de:

- alterar arquivos finais
- publicar conteudo
- enviar mensagens para clientes
- mexer em dados sensiveis
- fazer push para GitHub

## Padrao Local Rank

Cada squad deve manter:

- `contexto.md` atualizado
- inputs em uma pasta clara
- outputs separados dos arquivos originais
- registro de decisoes e proximos passos
- commit e push ao final da sessao

