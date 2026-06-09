---
execution: inline
agent: carla-classificadora
inputFile: squads/vendas-local-rank/output/lead-input.md
outputFile: squads/vendas-local-rank/output/classificacao-lead.md
---

# Step 02: Classificar Lead

## Context Loading

Carregar antes de executar:
- `squads/vendas-local-rank/output/lead-input.md` — dados do lead fornecidos no checkpoint
- `squads/vendas-local-rank/pipeline/data/domain-framework.md` — personas, temperaturas e critérios go/no-go

## Instructions

### Process

1. Ler os dados do lead em `lead-input.md` — nome, negócio, cidade, canal, mensagem, modo de operação e informações adicionais.

2. Identificar a persona comparando os sinais com os perfis do domain-framework.md:
   - P1 (Caroline): início, sem budget, chegou por conteúdo educativo
   - P2 (Andréia): tem estrutura, tentativas anteriores frustradas, cautela
   - P3 (Marcus): negócio sólido, já paga pay-per-lead, veio pelo Google
   - P4 (Leandro): empresa BR que quer entrar nos EUA

3. Avaliar a temperatura cruzando: estrutura digital + budget sinalizado + urgência:
   - Frio: sem estrutura, sem budget
   - Morno: alguma estrutura, budget incerto
   - Quente: estrutura existente, budget real, busca ativa

4. Tomar a decisão go/no-go aplicando as regras do playbook e registrar o motivo.

5. Gerar a primeira mensagem de WhatsApp personalizada (estrutura: apresentação + referência ao negócio + pergunta aberta, máximo 250 caracteres).

6. Salvar o output em `classificacao-lead.md`.

## Output Format

```
CLASSIFICAÇÃO DO LEAD
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Persona: [P1/P2/P3/P4] — [Nome da persona]
Justificativa:
- [Sinal 1 do input]
- [Sinal 2 do input]
- [Sinal 3 do input]

Temperatura: [🔴 Frio / 🟡 Morno / 🟢 Quente]
Evidências:
- [Evidência 1]
- [Evidência 2]

Decisão: [✅ GO / ❌ NO-GO]
Motivo: [critério do playbook aplicado]

Próximo passo: [ação específica]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PRIMEIRA MENSAGEM — WHATSAPP

[mensagem de abertura]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Output Example

```
CLASSIFICAÇÃO DO LEAD
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Persona: P3 — Marcus (Escalador)
Justificativa:
- Empresa de pool services em operação com equipe formada
- Já investe em Thumbtack mensalmente (budget real confirmado)
- Veio pelo Google buscando ativamente agência de SEO

Temperatura: 🟢 Quente
Evidências:
- Budget real: já gasta em pay-per-lead todo mês
- Urgência alta: menciona "margem comprimida" e quer solução permanente
- Consciência de SEO: sabe que precisa, está buscando ativamente

Decisão: ✅ GO — Avançar para Discovery Call
Motivo: Persona 3 é prioridade máxima — budget real + urgência alta + consciência de SEO
Próximo passo: Enviar primeira mensagem agora. Propor Discovery Call em até 48h.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PRIMEIRA MENSAGEM — WHATSAPP

Oi Marcus, tudo bem? Me chamo Lucas, da Local Rank Brasil.

Vi que você tem uma empresa de pool services em Orlando e está buscando
uma alternativa mais sustentável ao Thumbtack.

Me conta: hoje você consegue rastrear quanto gasta por lead no Thumbtack?

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Veto Conditions

Rejeitar e refazer se:
1. A primeira mensagem não menciona o negócio específico do lead (é genérica)
2. A classificação de persona não tem evidências concretas do input

## Quality Criteria

- [ ] Persona identificada com ≥ 2 sinais concretos do input
- [ ] Temperatura com evidências (não intuição)
- [ ] Decisão go/no-go explícita com motivo do playbook
- [ ] Primeira mensagem: nome + negócio + pergunta aberta, ≤ 250 caracteres
- [ ] Primeira mensagem sem menção de preço ou serviços
