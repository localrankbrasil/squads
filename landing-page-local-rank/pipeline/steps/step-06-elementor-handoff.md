# Step 06: Gerar Handoff Elementor

Agente responsavel: `diego-elementor`

## Inputs

- `output/copy-input.md`
- `output/page-structure.md`
- `output/github-preview/index.html`
- `pipeline/data/brand-kit-local-rank.md`
- `pipeline/data/elementor-fluent-forms-guide.md`
- `pipeline/data/form-config.md`

## Outputs

Salvar:

- `squads/landing-page-local-rank/output/wordpress-handoff/elementor-build-guide.md`
- `squads/landing-page-local-rank/output/wordpress-handoff/section-map.md`
- `squads/landing-page-local-rank/output/wordpress-handoff/custom-css.css`
- `squads/landing-page-local-rank/output/wordpress-handoff/fluent-forms-placement.md`

## Tarefa

Converter o preview aprovado em um handoff fiel para montagem manual no WordPress com Elementor.

Regras:

- Nao gerar JSON importavel do Elementor.
- Mapear cada secao para containers, widgets, textos, cores, fontes, espacamentos e responsivo.
- Informar exatamente onde inserir o shortcode Fluent Forms.
- Gerar CSS customizado somente para ajustes que Elementor nao cobre bem.
- Garantir que o handoff reproduza a landing do GitHub preview sem decisao adicional do implementador.
