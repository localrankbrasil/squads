---
execution: inline
agent: renata-revisao
inputFile: squads/branding-local-rank/output/design-brief.md
outputFile: squads/branding-local-rank/output/brand-review.md
on_reject: 4
---

# Step 05: Revisão Final de Marca

## Context Loading

Load these files before executing:
- `squads/branding-local-rank/output/design-brief.md` — o brief gerado por Caio Canvas para revisar
- `squads/branding-local-rank/output/brand-audit.md` — a auditoria original de Beatriz (referência dos Required changes que devem estar endereçados)
- `squads/branding-local-rank/pipeline/data/brand-kit.md` — especificações oficiais para verificação

## Instructions

### Process

1. **Verificar correspondência auditoria → brief.** Ler todos os `Required change`s da auditoria de Beatriz e confirmar que cada um foi endereçado no brief. Um Required change ignorado é rejeição imediata — independente de qualquer outra coisa.

2. **Verificar o sistema de design.** Checar que o sistema de design contém:
   - Estilo visual declarado (Escuro ou Claro) — obrigatório no cabeçalho
   - Paleta: todas as cores com hex exato e função explícita
   - Tipografia: família + peso + tamanho + cor para cada nível (todos os 4 campos presentes)
   - Construção do fundo BIFE: 5 camadas documentadas com opacidades para o estilo declarado
   - Espaçamento: valores em px
   - Dimensões: corretas para a plataforma identificada na auditoria

3. **Verificar cada slide elemento a elemento.** Para cada slide:
   - Fundo: composição em camadas BIFE especificada (não apenas um hex)?
   - Textos: família + peso + tamanho + cor — todos os 4 campos? Copy final (não placeholder)? Cada linha em caixa de texto separada indicada?
   - Logo: variante exata nomeada e corresponde ao estilo? (White_Green ↔ Escuro; Original ↔ Claro) dimensão em px? posição especificada?
   - Box label: presente? cor correta para o estilo? copy final?
   - Boxes/destaques: hex de fundo + cor de texto + copy final?

4. **Verificar todos os ratios de contraste.** Para cada par texto/fundo: o ratio está documentado? Se não, calcular. Se abaixo do mínimo (4.5:1 normal / 3:1 texto grande ≥43px), marcar como bloqueante.

5. **Determinar o veredito:**
   - **APROVADO**: zero problemas bloqueantes → "Liberado para execução no Canva"
   - **APROVADO CONDICIONAL**: apenas sugestões não-bloqueantes
   - **REJEITAR PARA REVISÃO**: qualquer problema bloqueante (Required change ignorado, placeholder, contraste inválido, especificação incompleta)

6. **Se REJEITAR**: o pipeline retorna ao Step 4 (Caio Canvas). Após 4 rejeições do mesmo brief com os mesmos problemas, escalar ao usuário com análise da causa raiz.

## Output Format

```
==============================
 REVISÃO DE BRIEF: [APROVADO | APROVADO CONDICIONAL | REJEITAR PARA REVISÃO]
==============================

Material: [nome]
Brief gerado por: Caio Canvas
Auditoria base: brand-audit.md ([veredito original])
Revisão: [Nª]

CORRESPONDÊNCIA AUDITORIA → BRIEF
[✅ | ❌] Required change N: [descrição do Required change original] — [endereçado/ignorado]

SISTEMA DE DESIGN
[✅ | ❌] Paleta: [status]
[✅ | ❌] Tipografia: [status]
[✅ | ❌] Espaçamento: [status]
[✅ | ❌] Dimensões: [status]

SLIDES (elemento a elemento)
Slide N ([tipo]):
[✅ | ❌] Fundo: [status]
[✅ | ❌] [Elemento]: [status]
[✅ | ❌] Logo: [status]
[✅ | ❌] Contraste: [ratio e status]

[Se houver problemas:]
PROBLEMAS ENCONTRADOS (N bloqueantes)

Problema N — [tipo]:
  [descrição: elemento + problema exato]
  Correção: [instrução de correção]

PONTOS APROVADOS
[✅ lista dos elementos verificados e aprovados]

VEREDITO: [APROVADO | APROVADO CONDICIONAL | REJEITAR PARA REVISÃO] — [frase resumo]
[Se APROVADO:] Liberado para execução no Canva.
```

## Output Example

```
==============================
 REVISÃO DE BRIEF: APROVADO
==============================

Material: "Por que o americano não encontra sua empresa" — Carrossel Instagram
Brief gerado por: Caio Canvas
Auditoria base: brand-audit.md (REPROVADO — 2 critérios críticos)
Revisão: 1ª

CORRESPONDÊNCIA AUDITORIA → BRIEF
✅ Required change 1: Substituir fundo laranja por Navy #172259 — Slide 1 especifica fundo #172259 ✓
✅ Required change 2: Remover "Garantimos resultados em 30 dias" — copy do CTA usa dado real de ROI ✓
✅ Required change 3: Substituir fonte Inter por Merriweather Heavy no título — Slide 1 título: Merriweather Heavy 900 ✓
✅ Required change 4: Trocar logo colorida por logo branca — Local_Rank_Logo_White.png especificado ✓

SISTEMA DE DESIGN
✅ Paleta: 7 entradas com hex e função explícita — todas dentro do brand kit
✅ Tipografia: 7 níveis com família + peso + tamanho + cor (4 campos presentes em todos)
✅ Espaçamento: 72px lateral, 60px vertical, 32px gap — valores em px ✓
✅ Dimensões: 1080×1440px — correto para Instagram Feed ✓

SLIDES (elemento a elemento)

Slide 1 (Capa):
✅ Fundo: #172259 — dentro da paleta ✓
✅ Título: Merriweather Heavy 900 — 67px — #ffffff — copy final presente ✓
✅ Subtítulo: Merriweather Bold 700 — 38px — #62bb46 — copy final presente ✓
✅ Logo: Local_Rank_Logo_White.png — canto inferior direito — 180px ✓
✅ Contraste título: branco sobre navy — ratio 10.6:1 ✓

Slides 2-6 (Conteúdo):
✅ Fundo: #ffffff ✓
✅ Números: Merriweather Heavy 900 — 80px — #62bb46 ✓
✅ Títulos: Merriweather Bold 700 — 52px — #172259 — ratio 10.6:1 ✓
✅ Corpo: Roboto Regular 400 — 34px — #292929 — ratio 13.4:1 ✓
✅ Boxes: #62bb46 fundo, Roboto Bold 500 — 30px — #ffffff — ratio 3.8:1 (texto grande ✓)
✅ Copy final presente em todos os slides — zero placeholders ✓

Slide 7 (CTA):
✅ Fundo: #62bb46 ✓
✅ Logo: Local_Rank_Logo_White.png — centralizado — 220px ✓
✅ Título: Merriweather Heavy 900 — 52px — #ffffff — ratio 3.8:1 (≥43px ✓)
✅ CTA: Roboto Bold 500 — 38px — #ffffff — ratio 3.8:1 ✓
✅ Copy final presente ✓

PONTOS APROVADOS
✅ Todos os 4 Required changes endereçados
✅ Sistema de design completo e dentro do brand kit
✅ 7 slides com especificações completas — zero placeholders
✅ Todos os ratios de contraste verificados e dentro dos mínimos WCAG

VEREDITO: APROVADO — Brief completo, executável e alinhado com o brand kit.
Liberado para execução no Canva.
```

## Veto Conditions

Reject and redo if ANY of these are true:
1. A revisão não verificou a correspondência Required change por Required change (verificação por lista, não por impressão geral)
2. O veredito é APROVADO mas existe pelo menos 1 Required change ignorado no brief
3. O veredito é APROVADO mas existe pelo menos 1 placeholder de copy
4. O veredito é APROVADO mas o estilo visual não foi declarado no brief
5. O veredito é APROVADO mas o fundo especifica apenas hex sem composição BIFE em camadas
6. O veredito é APROVADO mas o logo não corresponde ao estilo declarado

## Quality Criteria

- [ ] Estilo visual (Escuro ou Claro) verificado e declarado no brief
- [ ] Cada Required change da auditoria verificado individualmente (✅ ou ❌)
- [ ] Construção BIFE verificada (5 camadas com opacidades)
- [ ] Correspondência logo ↔ estilo verificada (White_Green ↔ Escuro; Original ↔ Claro)
- [ ] Cada slide verificado elemento a elemento (não por slide completo)
- [ ] Ratios de contraste verificados para cada par texto/fundo
- [ ] Todo problema tem instrução de correção com localização exata
- [ ] "Liberado para execução no Canva" presente apenas quando APROVADO sem pendências
