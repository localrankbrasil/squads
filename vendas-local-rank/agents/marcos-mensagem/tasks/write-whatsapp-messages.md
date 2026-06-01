---
task: "Write WhatsApp Messages"
order: 1
input: |
  - persona: P1/P2/P3/P4 identificada por Carla Classificadora
  - temperature: frio/morno/quente
  - operation_mode: novo_lead | pos_discovery | pos_proposta | objecao
  - lead_context: dados do lead (nome, negócio, cidade, situação)
  - objection_type: tipo de objeção (se modo = objecao)
  - days_since_proposal: dias desde envio da proposta (se modo = pos_proposta)
output: |
  - messages: lista de mensagens WhatsApp para o estágio
  - purpose: propósito de cada mensagem
  - send_timing: quando enviar cada mensagem
---

# Write WhatsApp Messages

Gera mensagens de WhatsApp personalizadas e calibradas por persona e estágio do funil de vendas, seguindo o Playbook de Vendas Local Rank Brasil 2026.

## Process

1. **Identificar o modo de operação** a partir do input:
   - `novo_lead`: gerar perguntas de diagnóstico (após primeira abertura de Carla)
   - `pos_discovery`: gerar mensagem de confirmação de proposta + context de apresentação
   - `pos_proposta`: gerar sequência de follow-up (24–48h / 4–5 dias / 7–10 dias)
   - `objecao`: gerar resposta específica à objeção declarada

2. **Calibrar tom pela persona:**
   - P2 (Andréia): empatia com frustração de tentativas anteriores
   - P3 (Marcus): dados, ROI, comparativo financeiro — sem rodeios
   - P4 (Leandro): honestidade sobre desafios reais do mercado americano
   - P1 (Caroline): educativo, empático, sem pressão

3. **Gerar mensagens conforme o modo:**

   **Modo novo_lead:** 3–5 perguntas de diagnóstico conversacional
   - Uma pergunta por mensagem
   - Seguir a sequência do playbook: origem de clientes → estrutura digital → histórico → volume → budget → objetivos

   **Modo pos_proposta:** Sequência de 3 follow-ups
   - Follow-up 1 (24–48h): leve, confirmar se viu a proposta
   - Follow-up 2 (4–5 dias): retomar o problema identificado, não a solução
   - Follow-up 3 (7–10 dias): encerramento elegante

   **Modo objecao:** Uma resposta por objeção
   - Validar ("Faz sentido...") → Recontextualizar → Alternativa ou reposicionamento

   **Modo pos_discovery:** Uma mensagem confirmando proposta em andamento

4. **Revisar cada mensagem** contra as regras:
   - Máximo 300 caracteres para mensagens de diagnóstico
   - Sem menção de preço fora da proposta formal
   - Sem jargão técnico com P1 e P2 no diagnóstico inicial

5. **Formatar o output** com todas as mensagens, propósito e timing de envio.

## Output Format

```
MENSAGENS WHATSAPP — [MODO] — [PERSONA]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Mensagem 1
Propósito: [objetivo desta mensagem]
Timing: [quando enviar]
──────────────────────────────────────
[texto da mensagem]

Mensagem 2
Propósito: [objetivo desta mensagem]
Timing: [quando enviar]
──────────────────────────────────────
[texto da mensagem]

[...]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTAS DE USO
[Instruções para Lucas sobre como usar as mensagens]
```

## Output Example

> Referência para follow-up pós-proposta (Persona 2 — Andréia, 48h sem resposta)

```
MENSAGENS WHATSAPP — PÓS-PROPOSTA — P2 (ANDRÉIA)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Mensagem 1
Propósito: Confirmar recebimento + abrir espaço para dúvidas
Timing: 24–48h após envio da proposta
──────────────────────────────────────
Oi Andréia, tudo bem?

Só queria confirmar se teve tempo de ver a proposta que enviei.
Surgiu alguma dúvida? Fico à disposição!

Mensagem 2
Propósito: Reativar problema sem pressionar (se sem resposta)
Timing: 4–5 dias após proposta sem resposta
──────────────────────────────────────
Oi Andréia! Passando para retomar nossa conversa.

Lembrei do que você falou sobre depender 100% de indicação —
isso é exatamente o que o SEO local resolve: leads chegando pelo Google
sem precisar esperar alguém te indicar.

Se quiser bater um papo rápido antes de decidir, é só me avisar.

Mensagem 3
Propósito: Encerramento elegante — manter porta aberta
Timing: 7–10 dias após proposta sem resposta
──────────────────────────────────────
Oi Andréia! Como não tivemos retorno, vou encerrar nossa conversa
por aqui para não te incomodar.

Quando fizer sentido retomar, fico à disposição.
Espero te ver crescendo — qualquer dúvida, é só chamar!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTAS DE USO
- Enviar Mensagem 1 exatamente 24–48h após o envio da proposta
- Se responder à Mensagem 1, follow-up de 4–5 dias é cancelado
- Mensagem 3 encerra o ciclo — não enviar nova mensagem após isso
```

## Quality Criteria

- [ ] Modo de operação correto identificado e aplicado
- [ ] Tom calibrado à persona (P3 = direto/ROI, P2 = empatia, P4 = honestidade, P1 = educativo)
- [ ] Mensagens de diagnóstico têm no máximo 300 caracteres
- [ ] Nenhuma mensagem menciona preço ou pacote
- [ ] Timing de envio especificado para cada mensagem
- [ ] Ciclo de follow-up tem encerramento elegante
- [ ] Resposta a objeção segue a estrutura: validar → recontextualizar → alternativa

## Veto Conditions

Rejeitar e refazer se:
1. Qualquer mensagem menciona preço, valor ou mensalidade
2. Follow-up pós-proposta não tem encerramento elegante como última mensagem do ciclo
