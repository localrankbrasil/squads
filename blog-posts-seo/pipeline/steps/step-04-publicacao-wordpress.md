# Step 4: Publicação no WordPress

**Agent:** publicador-wordpress

**CHECKPOINT:** Usuário aprova post publicado

## Objetivo

Publicar blog post no WordPress com TODAS as configurações Yoast corretas (SEM featured image ainda).

## Input

Carregar blog post validado de: `pipeline/data/blog-post-links-validated.html`

Carregar WordPress credentials de: `pipeline/data/current-input.json`

## Processo

1. Conectar ao WordPress (REST API)
2. Criar novo post com conteúdo HTML
3. Converter para blocos (se necessário)
4. Selecionar categoria correta
5. **Yoast SEO Setup:**
   - Focus keyword
   - SEO title (~60 chars)
   - Meta description (150-156 chars)
   - Canonical URL
6. **Inserir FAQs** usando Yoast FAQ widget (com schema)
7. **Publicar post** (não draft)
8. Salvar URL publicada em: `pipeline/data/post-url.txt`

## Validação Pós-Publicação

- [ ] URL acessível
- [ ] H1 único visível
- [ ] Conteúdo renderizado corretamente
- [ ] Categoria correta
- [ ] Yoast SEO configurado
- [ ] FAQs com schema FAQPage
- [ ] Links externos abrem em nova aba
- [ ] SEM featured image ainda (será adicionada no próximo passo)

## Checkpoint

Mostrar ao usuário:
- URL publicada
- SEO title e meta description
- FAQs schema validado
- Screenshot do post live

## Próximo Passo

Step 5: Geração de Imagem em Destaque
