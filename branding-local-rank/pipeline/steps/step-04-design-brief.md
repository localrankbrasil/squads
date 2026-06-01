---
execution: inline
agent: caio-canvas
inputFile: squads/branding-local-rank/output/brand-audit.md
outputFile: squads/branding-local-rank/output/design-brief.md
---

# Step 04: Geração do Brief de Design

## Context Loading

Load these files before executing:
- `squads/branding-local-rank/output/brand-audit.md` — auditoria de Beatriz: veredito, Required changes, scores por critério
- `squads/branding-local-rank/pipeline/data/brand-kit.md` — especificações oficiais: cores hex, fontes com pesos/tamanhos, variações de logo, combinações aprovadas
- `squads/branding-local-rank/pipeline/data/output-examples.md` — exemplos de briefs completos de referência

## Instructions

### Process

1. **Ler o veredito da auditoria.** Determinar o tipo de brief a gerar:
   - APROVADO CONDICIONAL → brief de **correção pontual** (lista apenas os elementos a mudar)
   - REPROVADO → brief de **criação completa** do zero
   - Se o usuário solicitou um brief para material aprovado → brief de **documentação** do sistema

2. **Identificar o estilo visual do carrossel.** Antes de qualquer outra especificação, declarar:
   - **Estilo Escuro** (gradiente navy→azul médio em todos os slides): usar logo White_Green, box label verde, fundos em camadas BIFE
   - **Estilo Claro** (textura de papel/concreto em todos os slides): usar logo Original, box label navy (título) / verde (impacto), fundos texturizados
   - Regra de ouro: o estilo é aplicado a 100% dos slides — nunca misturar Escuro com Claro no mesmo carrossel

3. **Definir o sistema de design.** Documentar antes de qualquer slide:
   - Paleta: cada cor com hex e função (fundo, texto principal, destaque, box label)
   - Tipografia: cada nível (título capa, subtítulo, box label, título conteúdo, corpo, caption) com família + peso + tamanho + cor
   - Construção do fundo (técnica BIFE):
     - **Estilo Escuro**: (1) base Navy #172259 → (2) foto P&B temática ~10% opacidade → (3) textura → (4) iluminação azul claro → (5) conteúdo
     - **Estilo Claro**: (1) base branco/off-white #f0eeeb → (2) foto P&B temática ~10% opacidade → (3) textura papel/concreto → (4) iluminação opcional → (5) conteúdo
   - Espaçamento: margem lateral, margem vertical, gap entre elementos — todos em px
   - Dimensões: largura × altura corretas para a plataforma (1080×1440px para Feed, 1080×1920px para Stories)

4. **Gerar especificações slide a slide.** Para cada slide:
   - Fundo: especificar a composição em camadas (não apenas o hex — descrever cada camada conforme técnica BIFE)
   - Todos os textos: família + peso + tamanho + cor + conteúdo final — cada linha em caixa de texto separada
   - Logo: qual variante + posição + dimensão em px (White_Green para Estilo Escuro; Original para Estilo Claro)
   - Box label: presente como âncora visual — cor de fundo + hex do texto + copy exato
   - Imagens: especificar tratamento (halftone P&B para objetos/conceitos; foto natural para pessoas; P&B ~10% para fundo)

5. **Verificar ratios de contraste WCAG.** Para cada par texto/fundo: calcular ratio e documentar ao lado (ex: "ratio 10.6:1 ✓"). Substituir qualquer combinação abaixo de 4.5:1 (texto normal) ou 3:1 (texto grande ≥43px).

6. **Incluir copy final.** Nenhum elemento textual pode ter placeholder. Se o copy original estava correto (conforme auditoria), mantê-lo. Se havia problemas, reescrevê-lo seguindo o tom de voz aprovado para a persona e funil identificados.

7. **Salvar em `output/design-brief.md`** no formato padronizado.

## Output Format

```
==============================
 BRIEF DE [CORREÇÃO | DESIGN]: [TIPO DE MATERIAL]
==============================

Material: [nome]
Tipo de brief: [Correção pontual | Criação completa | Documentação]
Estilo visual: [Estilo Escuro | Estilo Claro]
Plataforma: [plataforma] — [dimensões]
Slides: [N] ([estrutura: capa + N conteúdo + CTA])

------------------------------
 SISTEMA DE DESIGN
------------------------------
Paleta:
  [Nome]:      [hex] — [função] — ratio vs. [cor texto]: [X:1] ✓/✗
  ...

Tipografia:
  [Nível]:     [Família] [Peso] — [tamanho]px — [hex]
  ...

Construção do fundo (BIFE):
  Camada 1 — Base:        [hex]
  Camada 2 — Foto P&B:    [descrição da foto] — opacidade ~10%
  Camada 3 — Textura:     [tipo de textura]
  Camada 4 — Iluminação:  [azul claro como light leak | opcional]
  Camada 5 — Conteúdo:    textos, logo, caixas

Espaçamento:
  Margem lateral: [N]px
  Margem vertical: [N]px
  Gap elementos:   [N]px

------------------------------
 SLIDE A SLIDE
------------------------------

SLIDE N ([tipo]):
- Fundo: [composição em camadas conforme BIFE acima]
- Box label: fundo [hex] — [Família Peso] — [tamanho]px — [hex] — "[copy]"
- [Elemento]: [Família Peso] — [tamanho]px — [hex] — "[copy exato]"
- Logo: [variante].png — [posição] — [largura]px
- Imagem: [descrição + tratamento: halftone P&B | natural | P&B ~10%]

[repetir para cada slide]

------------------------------
 COPY FINAL
------------------------------
[Elemento N]: "[texto exato]"
...

REFERÊNCIAS
Template base: [link Canva se disponível]
Logo White_Green: https://localrankbrasil.com/wp-content/uploads/2026/05/Local_Rank_Logo_White_Green-scaled.png
Logo Original:    https://localrankbrasil.com/wp-content/uploads/2023/10/Local_Rank_Logo_Original.png
Logos (GitHub):   github.com/localrankbrasil/local-rank-operacoes/tree/main/branding/logos
```

## Output Example

```
==============================
 BRIEF DE DESIGN: CARROSSEL INSTAGRAM
==============================

Material: "Por que o americano não encontra sua empresa"
Tipo de brief: Criação completa
Estilo visual: Estilo Escuro (gradiente em todos os slides)
Plataforma: Instagram Feed — 1080×1440px
Slides: 7 (capa + 5 conteúdo + CTA)

------------------------------
 SISTEMA DE DESIGN
------------------------------
Paleta:
  Fundo principal: #172259 (Navy) — ratio texto branco: 10.6:1 ✓
  Destaque/Acento: #62bb46 (Verde) — box label, palavras-chave, números
  Texto Destaque:  #ffffff (Branco sobre verde) — ratio 3.8:1 ✓ (texto grande ≥43px)
  Corpo:           #ffffff (Branco sobre navy) — ratio 10.6:1 ✓
  CTA botão:       #172259 (Navy sobre verde) — ratio 3.8:1 ✓ (texto grande ✓)

Tipografia:
  Título Capa:     Merriweather Heavy 900 — 67px — #ffffff
  Subtítulo Capa:  Merriweather Bold 700 — 38px — #62bb46
  Box Label:       Roboto Bold 500 — 22px — #ffffff (sobre #62bb46)
  Título Conteúdo: Merriweather Heavy 900 — 52px — #ffffff
  Ênfase título:   Merriweather Heavy 900 Italic — 52px — #62bb46 (linha de impacto)
  Corpo:           Roboto Regular 400 — 34px — #ffffff
  CTA:             Merriweather Bold 700 — 44px — #ffffff

Construção do fundo (BIFE) — Estilo Escuro:
  Camada 1 — Base:        #172259 (Navy sólido — 100%)
  Camada 2 — Foto P&B:    foto temática EUA (bandeira, skyline, street) — P&B — opacidade ~10%
  Camada 3 — Textura:     textura granulada/ruído — opacidade 15-20%
  Camada 4 — Iluminação:  azul claro (#1d40ad ou similar) como light leak/glow — opacidade 20-30%
  Camada 5 — Conteúdo:    textos, logo, caixas (cada elemento em camada própria)

Espaçamento:
  Margem lateral: 72px
  Margem vertical: 60px
  Gap elementos:  32px

------------------------------
 SLIDE A SLIDE
------------------------------

SLIDE 1 (Capa):
- Fundo: composição BIFE — base navy #172259 + foto P&B ~10% + textura + iluminação azul claro
- Box label: fundo #62bb46 — Roboto Bold 500 — 22px — #ffffff — "LOCAL RANK"
- Título (linha 1): Merriweather Heavy 900 — 67px — #ffffff — "Por que o americano"
- Título (linha 2): Merriweather Heavy 900 Italic — 67px — #62bb46 — "NÃO encontra"
- Título (linha 3): Merriweather Heavy 900 — 67px — #ffffff — "sua empresa"
  ⚠️ Cada linha em caixa de texto separada no Canva
- Subtítulo: Merriweather Bold 700 — 38px — #62bb46 — "E o que fazer para mudar isso hoje"
- Logo: Local_Rank_Logo_White_Green.png — canto inferior direito — 180px largura

SLIDE 2 (Ponto 01):
- Fundo: composição BIFE (mesma base do slide 1)
- Box label: fundo #62bb46 — Roboto Bold 500 — 22px — #ffffff — "01"
- Título: Merriweather Heavy 900 — 52px — #ffffff — "O americano começa"
- Ênfase: Merriweather Heavy 900 Italic — 52px — #62bb46 — "a busca no Google"
- Corpo: Roboto Regular 400 — 34px — #ffffff — "95% dos americanos pesquisam no Google antes de contratar qualquer serviço local."
- Logo: Local_Rank_Logo_White_Green.png — canto inferior direito — 140px largura

SLIDES 3-6: Mesmo padrão do Slide 2, pontos 02-05.

SLIDE 7 (CTA):
- Fundo: composição BIFE (mesma base)
- Box label: fundo #62bb46 — Roboto Bold 500 — 22px — #ffffff — "FALE CONOSCO"
- Título: Merriweather Heavy 900 — 52px — #ffffff — "Quer aparecer quando americanos buscam seu serviço?"
- Botão CTA: fundo #62bb46 — Merriweather Bold 700 — 44px — #ffffff — "Fale com a gente no WhatsApp ↓"
- Instagram: Roboto Regular 400 — 28px — rgba(255,255,255,0.7) — "@localrankbrasil"
- Logo: Local_Rank_Logo_White_Green.png — canto inferior direito — 180px largura

------------------------------
 COPY FINAL
------------------------------
Ponto 01: "O americano começa a busca no Google"
Corpo 01: "95% dos americanos pesquisam no Google antes de contratar qualquer serviço local."

Ponto 02: "Ele busca por serviço + cidade, não pelo nome"
Corpo 02: "O americano digita 'pool service Orlando' — e contrata quem aparece nas primeiras posições."

REFERÊNCIAS
Template base: https://www.canva.com/folder/FAHIEZQ045M
Logo White_Green: https://localrankbrasil.com/wp-content/uploads/2026/05/Local_Rank_Logo_White_Green-scaled.png
Logo Original:    https://localrankbrasil.com/wp-content/uploads/2023/10/Local_Rank_Logo_Original.png
Logos (GitHub):   github.com/localrankbrasil/local-rank-operacoes/tree/main/branding/logos
```

## Veto Conditions

Reject and redo if ANY of these are true:
1. Qualquer elemento textual tem placeholder ("[texto aqui]", "escreva o copy", campos em branco)
2. Qualquer par texto/fundo não tem ratio de contraste documentado
3. Algum valor de fonte está incompleto (faltando família, peso, tamanho ou cor)
4. O nome de arquivo de logo está genérico ("logo branca") sem o nome exato do arquivo
5. O estilo visual (Escuro ou Claro) não está declarado no cabeçalho
6. A construção do fundo especifica apenas um hex ao invés das camadas BIFE
7. O logo especificado não corresponde ao estilo (White_Green para Escuro; Original para Claro)

## Quality Criteria

- [ ] Estilo visual declarado (Escuro ou Claro) antes de qualquer especificação de slide
- [ ] Sistema de design documentado antes dos slides (paleta, tipografia, espaçamento, dimensões)
- [ ] Construção do fundo BIFE documentada com as 5 camadas e opacidades
- [ ] Todo valor é exato: hex para cores, px para tamanhos, família+peso para fontes
- [ ] Ratios de contraste WCAG calculados e documentados para cada par texto/fundo
- [ ] Copy final presente para todos os elementos textuais — zero placeholders
- [ ] Nome exato do arquivo de logo especificado com dimensão em px e posição
- [ ] Logo correto para o estilo (White_Green ↔ Escuro; Original ↔ Claro)
- [ ] Brief de correção lista apenas elementos modificados (antes → depois)
- [ ] Brief completo cobre todos os slides sem omissão
