# Step 2: Redação do Blog Post SEO

**Agent:** redator-pesquisador

## Objetivo

Escrever blog post completo, SEO-otimizado, legível e seguindo os 3 playbooks obrigatoriamente.

## Input

Carregar inputs de: `pipeline/data/current-input.json`

## Processo

1. **Pesquisa** — Entender tema, cliente, contexto, cluster
2. **Redação** — Escrever estrutura obrigatória:
   - H1 (exact title)
   - Introduction (3 parágrafo sem heading)
   - 4 seções (cada H2 com 3 H3s, 70-90 palavras cada)
   - Conclusion (H2: "Wrapping Up" + 2 parágrafo)
   - FAQs (5 questões para Yoast widget)

3. **Revisão (8 passes)** — Seguir Readability Playbook:
   - Structure → Sentence length → Passive voice → Starters → Paragraph length → Transition words → Complexity → Yoast gate

4. **Otimização SEO** — Seguir SEO Playbook:
   - Keyword placement (intro, H1, H2/H3, meta, final paragraph)
   - Headings hierarchy
   - Internal links (exact anchor text)
   - 5 external links (.gov/.edu/industry)

## Output

Salvar em: `pipeline/data/blog-post-ready.html`

Também gerar operacional notes (NÃO publicar):
- SEO Output: Keyword, Title (~60 chars), Meta Description (150-156 chars), URL Slug
- Supporting images (3 sugestões com alt text)

## Próximo Passo

Step 3: Validação de Links
