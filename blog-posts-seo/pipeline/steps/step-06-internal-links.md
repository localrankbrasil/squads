# Step 6 — Links Internos e Cluster

## Tipo
agent: arquiteto-links-internos

## Objetivo
Revisar o draft completo e aplicar a arquitetura de links internos: link primário da introdução, links adicionais do body, link da conclusão, blocos `Related Articles:` e backlinks nos posts antigos do cluster quando aplicável.

## Input
Artigo completo (Step 5) + outline aprovado + briefing de links internos + URLs do cluster + client context + credenciais WordPress quando for necessário atualizar posts antigos.

## Output esperado
Artigo com links internos e cluster normalizados, mais relatório de links internos contendo:

- link primário da introdução
- links internos adicionais do body
- link da conclusão
- blocos `Related Articles:` inseridos
- posts antigos do cluster atualizados
- validação de duplicação de URLs
- validação de self-link
- pendências, se houver

## Critério de Conclusão

O step só está concluído quando:

- O link primário da introdução aparece com anchor text exato.
- Cada URL interna aparece no máximo uma vez no artigo, exceto em regra explícita do cliente.
- O link primário da introdução não reaparece no body ou conclusão.
- Links adicionais aparecem naturalmente no body.
- Link da conclusão aparece na conclusão com anchor text exato.
- `Related Articles:` não aparece na introdução, conclusão ou FAQs.
- Em cluster com 3+ posts, o novo post tem bloco `Related Articles:` no fim da seção 1 e no fim da seção 2.
- Em cluster com 3+ posts, posts antigos foram normalizados com o mesmo padrão quando houver acesso WordPress/API.
- Nenhum post linka para si mesmo em blocos `Related Articles:`.
- A URL publicada foi validada quando houver publicação/atualização WordPress.
