# Step 3: Validação de Links Externos

**Agent:** validador-links

## Objetivo

Validar TODOS os links externos no blog post, identificar quebrados e substituir por alternativas funcionais.

## Input

Carregar blog post de: `pipeline/data/blog-post-ready.html`

## Processo

Para cada link externo:

1. **Teste o link** — Abra URL, confirme que carrega
2. **Valide autoridade** — .gov, .edu, ou organization oficial?
3. **Verifique HTML** — Tem `target="_blank" rel="noopener noreferrer"`?
4. **Se quebrado** — Buscar no Google, encontrar alternativa da mesma fonte

## Exemplo de Fix

**Quebrado:** `https://www.fema.gov/sites/default/files/2020-07/tb8-corrosion.pdf` (404)

**Ação:**
- Buscar: "fema.gov corrosion protection metal"
- Encontrar: `https://www.fema.gov/disaster/hazard-mitigation/building-science/resources`
- Registrar substituição

## Output

Salvar em: `pipeline/data/blog-post-links-validated.html`

Gerar relatório de validação (para checkpoint)

## Próximo Passo

Step 4: Publicação no WordPress
