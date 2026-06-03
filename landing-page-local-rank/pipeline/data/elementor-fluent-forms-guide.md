# Guia Elementor + Fluent Forms

## Entrega Esperada

O squad gera handoff manual para Elementor, nao JSON importavel.

Arquivos finais:

- `elementor-build-guide.md`
- `section-map.md`
- `custom-css.css`
- `fluent-forms-placement.md`

## Configuracao Global da Pagina

Recomendado no Elementor:

- Layout da pagina: Elementor Canvas ou Full Width, conforme tema.
- Content width: 1120-1200px para conteudo principal.
- Containers flexbox.
- Sem sidebar.
- Header/footer do tema desativados se a landing precisar foco total.

## Widgets Preferidos

| Necessidade | Widget Elementor |
| --- | --- |
| Titulo | Heading |
| Texto | Text Editor |
| CTA | Button |
| Lista de beneficios | Icon List ou containers repetidos |
| Cards | Container + Heading + Text Editor |
| FAQ | Accordion ou Toggle |
| Shortcode Fluent Forms | Shortcode widget |
| Codigo customizado pontual | HTML widget |

## Classes CSS

Usar prefixo `lr-landing-` para classes customizadas.

Exemplos:

- `lr-landing-hero`
- `lr-landing-section`
- `lr-landing-card`
- `lr-landing-button`
- `lr-landing-form`

## Fluent Forms

Inserir o formulario via widget Shortcode do Elementor.

O shortcode padrao fica em:

`pipeline/data/form-config.md`

O preview GitHub deve mostrar o shortcode em uma area visual, mas o WordPress executara o formulario real.

## Responsivo

Breakpoints minimos:

- Desktop: 1200px+
- Tablet: ate 1024px
- Mobile: ate 767px

Regras:

- Grids viram uma coluna no mobile.
- Padding lateral mobile: 20-24px.
- Hero deve caber sem sobrepor CTA e formulario.
- Botoes devem ter largura confortavel no mobile.

## CSS Customizado

Usar CSS para:

- Gradiente de fundo.
- Efeitos de card/glassmorphism.
- Ajustes de foco/hover.
- Detalhes que Elementor nao controla com precisao.

Nao usar CSS para substituir a montagem inteira da pagina se um widget nativo resolve.
