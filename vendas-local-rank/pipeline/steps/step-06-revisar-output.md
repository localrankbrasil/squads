---
execution: inline
agent: renata-revisao
inputFile: squads/vendas-local-rank/output/
outputFile: squads/vendas-local-rank/output/revisao.md
on_reject: 4
---

# Step 06: Revisar Output

## Context Loading

Carregar antes de executar:
- `squads/vendas-local-rank/output/mensagens-whatsapp.md` — mensagens geradas (se existir)
- `squads/vendas-local-rank/output/proposta-comercial.md` — proposta gerada (se existir)
- `squads/vendas-local-rank/output/classificacao-lead.md` — persona identificada
- `squads/vendas-local-rank/pipeline/data/quality-criteria.md` — critérios de avaliação

## Instructions

### Process

1. Carregar os arquivos de output disponíveis (mensagens e/ou proposta).

2. Revisar mensagens de WhatsApp (se existirem):
   - Personalização: nome + negócio referenciados?
   - Limite de 300 chars para diagnóstico respeitado?
   - Preço/serviços mencionados? (= REJECT imediato)
   - Tom adequado à persona?
   - Ciclo de follow-up tem encerramento elegante?

3. Revisar proposta comercial (se existir):
   - Diagnóstico tem ≥ 3 detalhes concretos da call?
   - Oportunidade quantificada?
   - Personalização por persona aplicada?
   - Cronograma realista (≥ 3–6 meses para SEO)?
   - Sem desconto ou promessa de resultado imediato?
   - Próximos passos com pagamento antecipado?

4. Calcular score por critério (1–10) com justificativa.

5. Aplicar regra de veredicto:
   - APPROVE: todos ≥ 7.0, nenhum abaixo de 4.0
   - REJECT: média < 7.0 ou qualquer critério crítico < 4.0
   - Se REJECT: listar mudanças obrigatórias com instrução específica de correção

6. Se REJECT, retornar ao Step 04 para reescrita.

## Output Format

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 REVISÃO DE QUALIDADE — VENDAS LOCAL RANK
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Outputs revisados: [lista]
Persona: [P1/P2/P3/P4]
Revisão nº: [X de 3]

──────────────────────────────────────
 TABELA DE SCORES
──────────────────────────────────────
| Critério                    | Score  | Resumo                          |
|-----------------------------|--------|---------------------------------|
| [critério]                  | X/10   | [justificativa]                 |
──────────────────────────────────────
 SCORE GERAL: X.X/10
──────────────────────────────────────

FEEDBACK DETALHADO:
Ponto forte: [...]
[Mudança obrigatória: ... — se REJECT]
[Sugestão (não bloqueante): ... — se aplicável]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 VEREDICTO: [APPROVE / REJECT / APPROVE CONDICIONAL]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Output Example

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 REVISÃO DE QUALIDADE — VENDAS LOCAL RANK
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Outputs revisados: mensagens-whatsapp.md
Persona: P3 — Marcus (Escalador)
Revisão nº: 1 de 3

──────────────────────────────────────
 TABELA DE SCORES
──────────────────────────────────────
| Critério                    | Score  | Resumo                                    |
|-----------------------------|--------|-------------------------------------------|
| Personalização              | 10/10  | Nome + Pool Services + Thumbtack citados  |
| Ausência de preço           | 10/10  | Nenhuma mensagem cita valor               |
| Tom por persona (P3)        | 9/10   | Direto e focado em ROI — adequado         |
| Tamanho das mensagens       | 9/10   | Todas ≤ 250 chars                         |
| Encerramento elegante       | 10/10  | Msg 3 fecha o ciclo com dignidade         |
──────────────────────────────────────
 SCORE GERAL: 9.6/10
──────────────────────────────────────

FEEDBACK DETALHADO:
Ponto forte: A Mensagem 2 retoma o problema do pay-per-lead (não a solução de SEO)
— exatamente o protocolo correto de follow-up para P3.

Sugestão (não bloqueante): Na Mensagem 1, "Só queria confirmar" pode ser substituído
por "Queria confirmar" — mais direto e adequado para P3 que prefere comunicação objetiva.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 VEREDICTO: APPROVE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Veto Conditions

Rejeitar e refazer se:
1. Algum critério crítico não foi verificado (preço no WA, falta de personalização, desconto na proposta)
2. Veredicto não está explícito no output

## Quality Criteria

- [ ] Todos os critérios do quality-criteria.md verificados
- [ ] Cada score tem justificativa
- [ ] Pontos fortes identificados (≥ 1)
- [ ] Mudanças obrigatórias em REJECT têm passagem citada + instrução de correção
- [ ] Veredicto explícito (APPROVE / REJECT / APPROVE CONDICIONAL)
