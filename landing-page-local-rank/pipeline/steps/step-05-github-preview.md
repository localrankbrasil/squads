# Step 05: Gerar Preview Final para GitHub Pages

Agente responsavel: `nina-visual`

## Inputs

- `output/copy-input.md`
- `output/page-structure.md`
- `output/preview-choice.md`
- `output/previews/style-a.html`
- `output/previews/style-b.html`
- `output/previews/style-c.html`
- `pipeline/data/brand-kit-local-rank.md`
- `pipeline/data/form-config.md`
- `pipeline/data/technical-checklist.md`

## Output

Salvar:

`squads/landing-page-local-rank/output/github-preview/index.html`

Criar `output/github-preview/assets/` apenas se houver assets externos indispensaveis.

## Tarefa

Gerar a versao final estatica da landing para preview/aprovacao via GitHub Pages.

Regras:

- Deve abrir sem build step.
- Deve ser responsiva para desktop e mobile.
- Deve ser fiel ao preview escolhido e ao handoff futuro de Elementor.
- Deve incluir o shortcode Fluent Forms no ponto correto como bloco visual da pagina.
- Deve preservar a copy original em conteudo e intencao.
- Nao deixar placeholders, comentarios internos ou instrucoes visiveis na pagina.
