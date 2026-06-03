# Brand Kit — Local Rank Brasil

Fonte consolidada: `branding-local-rank` e estrategia Local Rank.

## Cores

| Nome | Hex | Uso |
| --- | --- | --- |
| Navy | `#172259` | Fundo escuro, texto sobre claro, boxes principais |
| Azul medio | `#1d40ad` | Gradiente com navy e pontos de luz |
| Verde Local Rank | `#62bb46` | CTAs, bullets, labels, destaques e indicadores |
| Branco | `#ffffff` | Texto sobre fundo escuro |
| Papel/off-white | `#f0eeeb` | Fundos claros editoriais |
| Cinza texto | `#292929` | Corpo sobre fundos claros |

## Gradiente Oficial

Usar como base em heros e secoes escuras:

```css
background: linear-gradient(135deg, #172259 0%, #1d40ad 100%);
```

O verde nunca deve ser fundo dominante de uma pagina inteira. Use verde para acentos, CTA, bullets, box labels e pequenos blocos de conversao.

## Tipografia

- Titulos: Merriweather Bold/Heavy, com italico para enfase quando fizer sentido.
- Corpo, labels e botoes: Roboto Regular/Bold.
- Letter spacing: `0` em textos normais; usar uppercase tracking apenas em labels curtos.

Google Fonts:

```html
<link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,700;0,900;1,700&family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">
```

## Componentes

### Box Label

- Fundo verde `#62bb46` em secoes escuras.
- Fundo navy `#172259` ou verde em secoes claras.
- Border radius: 4-6px.
- Padding: 8-14px vertical, 16-24px horizontal.
- Texto branco, Roboto Bold, curto.

### Cards

- Em fundo escuro: glassmorphism discreto.
- Em fundo claro: card branco/off-white com borda leve.
- Radius maximo recomendado: 8px para landing pages operacionais.
- Evitar card dentro de card.

### Botoes

- CTA primario: verde `#62bb46` com texto branco ou navy, conforme contraste.
- CTA secundario: transparente com borda branca em fundo escuro ou borda navy em fundo claro.
- Sempre incluir foco visivel.

## Tom Visual

- Consultivo, premium e direto.
- Mais agencia americana com entendimento brasileiro do que infoproduto agressivo.
- Evitar visual generico de SaaS, gradientes roxos, blobs decorativos e hero abstrato sem relacao com Google/mercado americano.

## Logo

Quando houver asset oficial disponivel, usar:

- Logo branca/verde em fundos escuros.
- Logo colorida em fundos claros.

Se a execucao nao tiver arquivo de logo acessivel, usar texto "Local Rank Brasil" como wordmark temporario no preview, sem fingir que e logo final.
