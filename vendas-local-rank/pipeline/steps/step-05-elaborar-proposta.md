---
execution: inline
agent: pedro-proposta
inputFile: squads/vendas-local-rank/output/modo-operacao.md
outputFile: squads/vendas-local-rank/output/proposta-comercial.md
---

# Step 05: Elaborar Proposta Comercial

## Context Loading

Carregar antes de executar:
- `squads/vendas-local-rank/output/modo-operacao.md` — notas da Discovery Call + persona + budget
- `squads/vendas-local-rank/output/classificacao-lead.md` — análise do lead
- `squads/vendas-local-rank/pipeline/data/domain-framework.md` — estrutura de proposta por persona
- `squads/vendas-local-rank/pipeline/data/output-examples.md` — exemplo de proposta completa

**Executar este step apenas se o modo selecionado for "proposta" (pós-Discovery Call).**
Se o modo for outro (diagnóstico, follow-up, objeção, reciclagem), pular este step e ir direto ao Step 06.

## Instructions

### Process

1. Verificar se o modo em `modo-operacao.md` é proposta. Se não for, declarar "STEP PULADO — modo não requer proposta" e encerrar.

2. Ler as notas da Discovery Call em `modo-operacao.md`:
   - Problema central identificado na call
   - Histórico de tentativas anteriores
   - Concorrentes identificados ao vivo
   - Objetivos declarados para 6–12 meses
   - Budget confirmado

3. Identificar a persona e aplicar a personalização específica:
   - P2 (Andréia): explicar por que as tentativas anteriores falharam + metodologia diferente
   - P3 (Marcus): comparativo financeiro obrigatório (custo pay-per-lead vs. SEO + projeção de ROI)
   - P4 (Leandro): mapear obstáculos reais + estratégia em fases

4. Escrever as 7 seções da proposta com detalhes específicos da call em cada uma.

5. Verificar que nenhuma seção parece genérica — pelo menos 3 detalhes específicos da call devem aparecer.

6. Salvar em `proposta-comercial.md`.

## Output Format

```
PROPOSTA COMERCIAL — LOCAL RANK BRASIL
[Nome] | [Negócio] | [Cidade]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. RESUMO DO DIAGNÓSTICO
[Situação atual documentada com detalhes da call]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

2. OPORTUNIDADE IDENTIFICADA
[O que está sendo perdido — com números quando possível]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

3. ESTRATÉGIA RECOMENDADA
[Fases com justificativa específica para esse negócio]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

4. SERVIÇOS INCLUÍDOS
[Lista detalhada com impacto esperado de cada serviço]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

5. CRONOGRAMA
[Estimativa realista por etapa]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

6. INVESTIMENTO
[Valor mensal, condições, sem desconto]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

7. PRÓXIMOS PASSOS
[Contrato → pagamento antecipado → início]
```

## Output Example

> Ver `pipeline/data/output-examples.md` — Exemplo 2 (Proposta para Andréia) e Exemplo na task do Pedro.

## Veto Conditions

Rejeitar e refazer se:
1. A proposta não menciona nenhum detalhe específico da Discovery Call
2. A seção de investimento oferece desconto, condição especial ou promessa de resultado em menos de 3 meses para SEO

## Quality Criteria

- [ ] Seção 1 tem ≥ 3 detalhes específicos da call
- [ ] Seção 2 quantifica a oportunidade sendo perdida
- [ ] Personalização por persona aplicada (ROI para P3, diagnóstico de falha para P2, fases para P4)
- [ ] Cronograma realista (SEO ≥ 3–6 meses)
- [ ] Sem desconto ou promessa de resultado imediato
- [ ] Próximos passos incluem pagamento antecipado
