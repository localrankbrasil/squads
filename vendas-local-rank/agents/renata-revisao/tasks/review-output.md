---
task: "Review Output"
order: 1
input: |
  - messages_file: caminho para mensagens-whatsapp.md (se existir)
  - proposal_file: caminho para proposta-comercial.html (se existir)
  - persona: persona identificada (P1/P2/P3/P4)
  - operation_mode: modo de operação executado
output: |
  - verdict: APPROVE / REJECT / APPROVE CONDICIONAL
  - scores: score por critério com justificativa
  - required_changes: mudanças obrigatórias (se REJECT)
  - suggestions: sugestões não bloqueantes
  - revision_count: número desta revisão
---

# Review Output

Revisa todos os outputs do squad (mensagens de WhatsApp e proposta comercial) contra os critérios do Playbook de Vendas Local Rank Brasil 2026, emitindo APPROVE/REJECT com feedback acionável.

## Process

1. **Carregar os arquivos de output** — ler mensagens-whatsapp.md e/ou proposta-comercial.html conforme o modo de operação.

2. **Revisar mensagens de WhatsApp** (se existirem) contra:
   - Personalização: nome + negócio referenciados
   - Limite de caracteres: diagnóstico ≤ 300 chars
   - Ausência de preço/serviços antes da proposta
   - Tom calibrado à persona identificada
   - Follow-up tem encerramento elegante
   - Uma ação por mensagem

3. **Revisar proposta comercial** (se existir) contra:
   - Diagnóstico específico da call (≥ 3 detalhes concretos)
   - Oportunidade quantificada
   - Personalização por persona aplicada
   - Cronograma realista (SEO ≥ 3–6 meses)
   - Sem desconto ou promessa de resultado imediato
   - Proposta em HTML slides, não markdown
   - Investimento mensal, serviços adicionais e próximos passos em slides separados
   - Próximos passos explícitos com contrato antes do pagamento upfront

4. **Calcular score** por critério (1–10) com justificativa em uma frase.

5. **Aplicar regras de veredicto:**
   - APPROVE: todos os critérios ≥ 7.0, nenhum abaixo de 4.0
   - APPROVE CONDICIONAL: média ≥ 7.0 mas 1–2 critérios não críticos entre 4–6
   - REJECT: média < 7.0 OU qualquer critério crítico abaixo de 4.0

6. **Escrever feedback** com:
   - Pontos fortes (pelo menos 1)
   - Mudanças obrigatórias (se REJECT): citar a passagem exata + instrução de correção
   - Sugestões não bloqueantes (melhorias opcionais)

## Output Format

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 REVISÃO DE QUALIDADE — VENDAS LOCAL RANK
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Outputs revisados: [lista dos arquivos revisados]
Persona: [P1/P2/P3/P4]
Revisão nº: [X de 3]

──────────────────────────────────────
 TABELA DE SCORES
──────────────────────────────────────
| Critério                    | Score  | Resumo                          |
|-----------------------------|--------|---------------------------------|
| [critério 1]                | X/10   | [justificativa em 1 linha]      |
| [critério 2]                | X/10   | [justificativa em 1 linha]      |
| [...]                       | X/10   | [...]                           |
──────────────────────────────────────
 SCORE GERAL: X.X/10
──────────────────────────────────────

FEEDBACK DETALHADO:

Ponto forte: [aspecto específico que está bem feito]

[Se REJECT:]
Mudança obrigatória: [qual passagem, por que está errada, como corrigir]

[Se sugestão:]
Sugestão (não bloqueante): [melhoria opcional]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 VEREDICTO: [APPROVE / REJECT / APPROVE CONDICIONAL]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Output Example

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 REVISÃO DE QUALIDADE — VENDAS LOCAL RANK
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Outputs revisados: mensagens-whatsapp.md, proposta-comercial.html
Persona: P3 — Marcus (Escalador)
Revisão nº: 1 de 3

──────────────────────────────────────
 TABELA DE SCORES
──────────────────────────────────────
| Critério                    | Score  | Resumo                                         |
|-----------------------------|--------|------------------------------------------------|
| Personalização (nome/negócio)| 10/10  | Menciona Marcus, Orlando Pool Pro, Thumbtack   |
| Ausência de preço no WA     | 10/10  | Nenhuma mensagem cita valor                    |
| Tom calibrado à persona     | 9/10   | Direto e focado em ROI — adequado para P3      |
| Diagnóstico específico      | 9/10   | 4 detalhes concretos da call citados           |
| Comparativo ROI (P3)        | 10/10  | Comparativo Thumbtack vs SEO bem estruturado   |
| Cronograma realista         | 8/10   | 6 meses para resultados — correto              |
| Sem desconto                | 10/10  | Posicionamento mantido, desconto não ofertado  |
| Próximos passos             | 9/10   | Contrato + pagamento antecipado explícitos     |
──────────────────────────────────────
 SCORE GERAL: 9.4/10
──────────────────────────────────────

FEEDBACK DETALHADO:

Ponto forte: A seção de ROI da proposta (Seção 2) está excelente — a comparação
financeira entre custo atual do Thumbtack e investimento em SEO é exatamente o que
o Persona 3 precisa para tomar a decisão. Números concretos, lógica clara, sem
promessa exagerada.

Ponto forte: A mensagem de abertura do WhatsApp está personalizada e direta —
referencia o Thumbtack (ponto de dor específico do Marcus) já na primeira mensagem.

Sugestão (não bloqueante): Na Seção 4 (Serviços Incluídos), o item de "consultoria
mensal de 30 min" poderia especificar o canal (WhatsApp ou Meet) para deixar mais
concreto.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 VEREDICTO: APPROVE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Quality Criteria

- [ ] Todos os critérios do quality-criteria.md verificados e scorados
- [ ] Cada score tem justificativa em pelo menos uma frase
- [ ] Pontos fortes identificados (≥ 1 mesmo em REJECT)
- [ ] Mudanças obrigatórias em REJECT têm: citação da passagem + instrução de correção
- [ ] Veredicto é APPROVE, REJECT ou APPROVE CONDICIONAL (sem ambiguidade)
- [ ] Número de revisão registrado

## Veto Conditions

Rejeitar e refazer se:
1. Algum critério crítico não foi verificado (preço no WA, ausência de personalização, desconto na proposta)
2. O veredicto não está explícito no output (não pode ser ambíguo)
