---
execution: inline
agent: marcos-mensagem
inputFile: squads/vendas-local-rank/output/modo-operacao.md
outputFile: squads/vendas-local-rank/output/mensagens-whatsapp.md
---

# Step 04: Gerar Mensagens de WhatsApp

## Context Loading

Carregar antes de executar:
- `squads/vendas-local-rank/output/modo-operacao.md` — classificação confirmada + modo selecionado
- `squads/vendas-local-rank/output/classificacao-lead.md` — análise completa do lead
- `squads/vendas-local-rank/pipeline/data/domain-framework.md` — personas, objeções e protocolos
- `squads/vendas-local-rank/pipeline/data/output-examples.md` — exemplos de mensagens de qualidade

## Instructions

### Process

1. Ler `modo-operacao.md` para identificar:
   - Persona confirmada (P1/P2/P3/P4)
   - Modo de operação selecionado (diagnóstico / follow-up / reciclagem / objeção)
   - Dados específicos fornecidos (objeção descrita, notas adicionais)

2. Calibrar o tom pela persona:
   - P3 (Marcus): direto, dados e ROI, sem rodeios
   - P2 (Andréia): empático, reconhece frustrações, consultivo
   - P4 (Leandro): honesto sobre desafios, educativo sobre o mercado americano
   - P1 (Caroline): educativo, empático, sem pressão

3. Gerar as mensagens conforme o modo:
   - **Diagnóstico**: 3–5 perguntas conversacionais (uma por mensagem, sequência do playbook)
   - **Follow-up pós-proposta**: 3 mensagens (24–48h / 4–5 dias / encerramento elegante)
   - **Reciclagem**: 1 mensagem empática + oferta de guia gratuito + encerramento
   - **Objeção**: 1 resposta estruturada (validar → recontextualizar → alternativa)

4. Verificar cada mensagem: ≤ 300 chars para diagnóstico, sem preço, sem jargão técnico com P1/P2 em diagnóstico inicial.

5. Formatar com propósito e timing para cada mensagem.

## Output Format

```
MENSAGENS WHATSAPP — [MODO] — [PERSONA]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Mensagem 1
Propósito: [objetivo]
Timing: [quando enviar]
──────────────────────────────────────
[texto]

Mensagem 2
Propósito: [objetivo]
Timing: [quando enviar]
──────────────────────────────────────
[texto]

[...]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTAS DE USO
[instruções para o Lucas]
```

## Output Example

```
MENSAGENS WHATSAPP — FOLLOW-UP PÓS-PROPOSTA — P2 (ANDRÉIA)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Mensagem 1
Propósito: Confirmar recebimento + abrir espaço para dúvidas
Timing: 24–48h após envio da proposta
──────────────────────────────────────
Oi Andréia, tudo bem?

Só queria confirmar se teve tempo de ver a proposta que enviei.
Surgiu alguma dúvida? Fico à disposição!

Mensagem 2
Propósito: Reativar problema sem pressionar
Timing: 4–5 dias se sem resposta
──────────────────────────────────────
Oi Andréia! Passando para retomar nossa conversa.

Lembrei do que você falou sobre depender 100% de indicação —
isso é exatamente o que o SEO local resolve: leads chegando pelo Google
sem precisar esperar alguém te indicar.

Se quiser bater um papo rápido antes de decidir, é só me avisar.

Mensagem 3
Propósito: Encerramento elegante — manter porta aberta
Timing: 7–10 dias se ainda sem resposta
──────────────────────────────────────
Oi Andréia! Como não tivemos retorno, vou encerrar nossa conversa
por aqui para não te incomodar.

Quando fizer sentido retomar, fico à disposição.
Espero te ver crescendo — qualquer dúvida, é só chamar!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTAS DE USO
- Enviar Mensagem 1 exatamente 24–48h após envio da proposta
- Se Andréia responder à Msg 1, cancelar a sequência e responder naturalmente
- Mensagem 3 encerra o ciclo — não mandar mais mensagem após isso
```

## Veto Conditions

Rejeitar e refazer se:
1. Qualquer mensagem menciona preço, valor ou mensalidade
2. O ciclo de follow-up não termina com encerramento elegante

## Quality Criteria

- [ ] Modo de operação correto aplicado
- [ ] Tom calibrado à persona (P3 = ROI, P2 = empatia)
- [ ] Mensagens de diagnóstico ≤ 300 chars cada
- [ ] Timing de envio especificado para cada mensagem
- [ ] Nenhuma mensagem menciona preço ou pacote
