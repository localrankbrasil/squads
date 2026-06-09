---
execution: inline
agent: beatriz-branding
outputFile: squads/branding-local-rank/output/brand-audit.md
---

# Step 02: Auditoria de Marca

## Context Loading

Load these files before executing:
- `squads/branding-local-rank/pipeline/data/brand-kit.md` — especificações exatas da marca: cores hex, fontes com pesos, variações de logo, tom de voz, vocabulário aprovado/proibido
- `squads/branding-local-rank/pipeline/data/quality-criteria.md` — rubrica de pontuação 1-10, limiares críticos (<4 = rejeição automática), critérios de veredito
- `squads/branding-local-rank/pipeline/data/anti-patterns.md` — erros comuns e como identificá-los
- `squads/branding-local-rank/pipeline/data/domain-framework.md` — metodologia de auditoria em 5 fases

## Instructions

### Process

1. **Classificar o material.** Identificar: tipo (carrossel, post estático, story, copy puro), plataforma, persona alvo, estágio do funil. Determinar se a auditoria é visual+verbal (materiais com design) ou apenas verbal (textos puros).

2. **Auditoria visual** (se o material tem elementos visuais). Verificar sistematicamente:
   - **Estilo do carrossel**: é Estilo Escuro (gradiente em todos os slides) ou Estilo Claro (fundo texturizado papel)? O estilo é consistente em todos os slides ou mistura os dois?
   - **Fundo**: Estilo Escuro deve ter composição em camadas (base navy + textura/foto P&B ~10% + iluminação), não navy sólido flat. Estilo Claro deve ter textura de papel/concreto, não branco puro sólido.
   - **Cores**: todas as cores usadas vs. paleta aprovada (#62bb46, #172259, #1d40ad, #ffffff, ~#f0eeeb). Verde usado como fundo? Rejeição automática.
   - **Fontes**: Merriweather (títulos) + Roboto (corpo). Cada linha de texto em caixa individual? Mix regular+itálico usado para ênfase?
   - **Logo**: variante correta para o estilo? Escuro = White_Green ou White. Claro = Original (verde+navy). Área de respiro mínima 20px.
   - **Box label**: presente como âncora visual do tema? Cor correta para o estilo (verde no escuro, navy no claro para título principal)?
   - **Imagens**: objetos/conceitos em halftone P&B? Pessoas naturais? Foto de fundo em P&B a ~10% de opacidade?
   - Contraste texto/fundo (WCAG AA: 4.5:1 mínimo para texto normal, 3:1 para texto grande ≥43px)
   - Hierarquia visual: título > subtítulo > corpo claramente diferenciados
   - Dimensões: 1080×1440px para Feed, 1080×1920px para Stories

3. **Auditoria verbal.** Verificar:
   - Tom de voz: qual dos 6 tons? adequado para persona e funil?
   - Vocabulário: termos aprovados vs. proibidos
   - Mensagem central: reforça o posicionamento Google-first?
   - Adequação à persona identificada
   - CTA: presente, claro, não-agressivo?

4. **Pontuar cada critério de 1-10.** Justificativa específica obrigatória para cada nota — citar o elemento exato do material. Identificar critérios críticos (<4 = rejeição automática).

5. **Determinar o veredito** e listar todos os `Required change`s e `Suggestion (non-blocking)`s. Salvar em `output/brand-audit.md`.

## Output Format

```
==============================
 AUDITORIA DE MARCA: [APROVADO | APROVADO CONDICIONAL | REPROVADO]
==============================

Material: [nome/descrição]
Tipo: [tipo] — [subtipo]
Plataforma: [plataforma]
Persona alvo: [persona]
Funil: [topo | meio | fundo]
Auditoria: [Nª revisão]

------------------------------
 PONTUAÇÃO
------------------------------
| Critério              | Nota  | Resumo                                           |
|-----------------------|-------|--------------------------------------------------|
| Paleta de Cores       | X/10  | [justificativa com elemento exato]               |
| Tipografia            | X/10  | [justificativa]                                  |
| Logo                  | X/10  | [justificativa]                                  |
| Contraste             | X/10  | [justificativa com ratio]                        |
| Hierarquia Visual     | X/10  | [justificativa]                                  |
| Dimensões             | X/10  | [justificativa]                                  |
| Tom de Voz            | X/10  | [justificativa]                                  |
| Vocabulário           | X/10  | [justificativa]                                  |
| Mensagem Central      | X/10  | [justificativa]                                  |
| Persona               | X/10  | [justificativa]                                  |
| Consistência Interna  | X/10  | [justificativa — apenas para multi-slide]        |
------------------------------
 SCORE GERAL: X.X/10
------------------------------

[Se REPROVADO: GATILHO CRÍTICO: [critério] (X/10) abaixo de 4/10.]

Ponto forte: [elemento bem executado com justificativa específica]

[Required change N: descrição exata — onde está + como corrigir]
[Suggestion (non-blocking): descrição da melhoria opcional]

VEREDITO: [APROVADO | APROVADO CONDICIONAL | REPROVADO] — [frase resumo]
```

## Output Example

```
==============================
 AUDITORIA DE MARCA: APROVADO CONDICIONAL
==============================

Material: Carrossel "5 motivos para aparecer no Google"
Tipo: Instagram Feed — Carrossel (6 slides)
Plataforma: Instagram
Persona alvo: Andréia (intermediária)
Funil: Topo (awareness)
Auditoria: 1ª revisão

------------------------------
 PONTUAÇÃO
------------------------------
| Critério              | Nota  | Resumo                                              |
|-----------------------|-------|-----------------------------------------------------|
| Paleta de Cores       | 10/10 | #62bb46, #172259, #ffffff — 100% dentro da paleta   |
| Tipografia            | 6/10  | Títulos em Merriweather corretos; corpo em Arial     |
| Logo                  | 10/10 | Versão branca, canto inferior direito, capa e CTA   |
| Contraste             | 9/10  | Todos textos acima de 4.5:1 verificados             |
| Hierarquia Visual     | 8/10  | Títulos 58px vs. corpo 34px — ratio adequado        |
| Dimensões             | 10/10 | 1080×1440px correto para Feed                       |
| Tom de Voz            | 9/10  | Consultivo e educativo — adequado para Andréia      |
| Vocabulário           | 10/10 | "aparecer no Google" — sem jargões técnicos         |
| Mensagem Central      | 9/10  | Reforça Google-first em 4 dos 5 slides de conteúdo |
| Persona               | 9/10  | Linguagem e exemplos alinhados com Andréia          |
| Consistência Interna  | 8/10  | Sistema visual uniforme — 1 desvio tipográfico      |
------------------------------
 SCORE GERAL: 8.9/10
------------------------------

Ponto forte: A capa usa o gancho "5 motivos" com título em Merriweather Heavy
branco sobre Navy #172259 — máximo contraste e identidade de marca imediata.

Required change: Substituir Arial no corpo por Roboto Regular 400. Arial não faz
parte do sistema tipográfico aprovado. Localização: slides 2-5, 2ª e 3ª linhas de
texto abaixo do título do ponto.

Suggestion (non-blocking): Adicionar logo ao slide 3 (de maior valor informativo)
para reforço de marca intermediário.

VEREDITO: APROVADO CONDICIONAL — 1 mudança obrigatória (tipografia). Resubmeter após correção.
```

## Veto Conditions

Reject and redo if ANY of these are true:
1. Algum critério recebeu nota sem justificativa específica citando o elemento do material
2. O veredito não é consistente com os scores (ex: APROVADO com critério crítico abaixo de 4/10)
3. `Required change` não inclui (a) o que está errado, (b) onde está, (c) como corrigir
4. Nenhum ponto forte identificado (todo material tem algo certo)

## Quality Criteria

- [ ] Cada critério tem nota + justificativa com referência ao elemento exato do material
- [ ] Veredito é consistente com os scores calculados
- [ ] Critérios críticos (<4) causam REPROVADO independente do score médio
- [ ] Todo Required change tem localização exata + instrução de correção
- [ ] Pelo menos 1 ponto forte identificado
- [ ] Score geral calculado corretamente como média dos critérios pontuados
