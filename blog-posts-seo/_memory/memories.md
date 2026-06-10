# Memories — Blog Posts SEO

## Contexto do Squad
Squad criado para produzir blog posts otimizados para SEO com foco em brasileiros que possuem negócios locais nos EUA.

## Decisões Tomadas
- Estrutura fixa: H1 + introdução (3 parágrafos) + 4 seções H2+H3s + conclusão H2 + FAQs.
- A conclusão deve aparecer antes das FAQs.
- Zero bullets, listas, tabelas ou divisórias no artigo final.
- SEO Output, sugestões de imagem e checklist são notas operacionais; não publicar como conteúdo visível no WordPress.
- Quando o cliente exigir profundidade, todo parágrafo público deve ter 400+ caracteres sem ultrapassar os limites de Yoast.
- Revisão de readability é etapa obrigatória separada, não apenas um check final.
- Outbound links devem ser validados antes de toda entrega.
- FAQs otimizadas para People Also Ask: 5 perguntas, mínimo 3 com a focus keyword.
- Em WordPress com Yoast, FAQs devem usar bloco Yoast FAQ e validar `FAQPage` + 5 Question schema nodes.
- Links internos nunca devem repetir a mesma URL dentro do artigo; o link primario da introducao nao pode aparecer de novo no body.
- Links adicionais ficam no body principal e devem ser distribuidos naturalmente, sem concentrar varios links em um paragrafo.
- Links de cluster usam blocos `Related Articles:` no fim de secoes do body principal. Nunca entram na introducao, conclusao ou FAQs.
- Se o artigo for o primeiro post de um cluster novo, nao inserir `Related Articles:` no post e nao adicionar backlinks em posts antigos.
- Cada secao deve ter no maximo um bloco `Related Articles:`. Ao atualizar posts antigos do cluster, adicionar o novo backlink ao bloco existente da secao, sem criar bloco duplicado.
- Quando publicar post de cluster, atualizar os posts antigos do cluster com backlink para o novo post.
- Em clusters com 3+ posts, padronizar todos os posts com um bloco `Related Articles:` no fim da primeira secao e outro no fim da segunda secao, linkando para os outros posts sem self-link.
- Publicacao WordPress deve validar H1 unico, Yoast title/meta, canonical, categoria, featured image, FAQ schema e Related Articles na URL final.

## Posts Produzidos
(registrar aqui após cada run)
