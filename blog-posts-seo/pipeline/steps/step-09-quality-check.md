# Step 9 — Quality Check Final

## Tipo
agent: revisor

## Objetivo
Validar o checklist completo de entrega: readability, SEO, links, conteúdo, WordPress/Yoast, cluster e entregáveis.

## Input
Artigo revisado (Step 8) + SEO output (Step 7) + imagens (Step 6).

## Output esperado
Quality check final com todos os itens verificados e veredito: APROVADO ou BLOQUEADO. Quando houver publicação WordPress, incluir validação da URL final: H1 único, Yoast title/meta, canonical, categoria, featured image, FAQ schema, links externos e Related Articles.

## Critério de Conclusão
Veredito APROVADO com todos os checkboxes marcados. Se BLOQUEADO, listar o que falta e retornar ao step correspondente. Não aprovar se a conclusão vier depois das FAQs, se SEO Output/Image Suggestions aparecerem no conteúdo público, ou se cluster com 3+ posts não estiver uniformizado com Related Articles no fim da seção 1 e seção 2.
