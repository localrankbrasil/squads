---
task: "Classify Lead"
order: 1
input: |
  - lead_name: Nome do lead
  - business_type: Segmento/tipo de negócio
  - city_state: Cidade e estado nos EUA
  - arrival_channel: Canal de chegada (Instagram, Google, indicação, etc.)
  - lead_message: O que o lead disse na primeira mensagem ou formulário
  - additional_context: Informações extras coletadas no diagnóstico (opcional)
output: |
  - persona: P1/P2/P3/P4 com nome e justificativa
  - temperature: frio/morno/quente com evidências
  - go_no_go: go ou no-go com motivo
  - next_step: próximo passo recomendado
  - opening_message: primeira mensagem de WhatsApp personalizada
---

# Classify Lead

Analisa os dados do lead, classifica em persona e temperatura, decide go/no-go e gera a primeira mensagem de WhatsApp personalizada para iniciar o diagnóstico.

## Process

1. **Ler os dados do lead** fornecidos no input. Se algum campo crítico estiver ausente (nome, negócio, canal), sinalizar antes de classificar.

2. **Identificar a persona** comparando os sinais do lead com os perfis:
   - P1 (Caroline): estágio inicial, sem estrutura, sem budget, chegou pelo Instagram
   - P2 (Andréia): tem alguma estrutura, tentativas anteriores frustradas, cautela com budget
   - P3 (Marcus): negócio sólido, já gasta em pay-per-lead, veio pelo Google, alta urgência
   - P4 (Leandro): empresa consolidada no Brasil querendo entrar nos EUA

3. **Avaliar a temperatura** cruzando: estrutura digital existente + budget sinalizado + urgência demonstrada:
   - Frio: sem estrutura, sem budget, chegou por conteúdo educativo
   - Morno: tem alguma estrutura, budget incerto, já tentou algo antes
   - Quente: tem estrutura, já investe, veio ativamente buscando solução

4. **Tomar a decisão go/no-go** aplicando as regras do playbook:
   - Go: Persona 2, 3 ou 4 com budget confirmado ou sinalizado
   - No-go: Persona 1, sem budget, compara com agências baratas, não responde

5. **Gerar a primeira mensagem de WhatsApp** seguindo a estrutura:
   - Apresentação: "Me chamo Lucas, da Local Rank Brasil"
   - Referência ao negócio específico (segmento + cidade)
   - Uma pergunta aberta de diagnóstico (máximo 250 caracteres no total)

## Output Format

```
CLASSIFICAÇÃO DO LEAD
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Persona: [P1/P2/P3/P4] — [Nome da persona]
Justificativa:
- [Sinal 1 observado nas informações do lead]
- [Sinal 2 observado]
- [Sinal 3 observado]

Temperatura: [🔴 Frio / 🟡 Morno / 🟢 Quente]
Evidências:
- [Evidência 1]
- [Evidência 2]

Decisão: [✅ GO / ❌ NO-GO]
Motivo: [Explicação do critério de decisão aplicado]

Próximo passo: [Ação específica recomendada]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PRIMEIRA MENSAGEM — WHATSAPP

[Mensagem de abertura completa]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Output Example

> Use como referência de qualidade, não como template rígido.

```
CLASSIFICAÇÃO DO LEAD
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Persona: P3 — Marcus (Escalador)
Justificativa:
- Negócio de pool services em operação há mais de 2 anos com equipe formada
- Já investe ativamente em pay-per-lead (Thumbtack/Google LSA)
- Chegou pelo Google buscando ativamente "agência SEO para brasileiros nos EUA"

Temperatura: 🟢 Quente
Evidências:
- Budget real confirmado: já paga mensalmente por leads no Thumbtack
- Alta urgência: menciona "margem comprimida" e quer solução a longo prazo
- Consciência alta sobre o problema: sabe que precisa de SEO, não achou quem confia

Decisão: ✅ GO — Avançar para Discovery Call
Motivo: Persona 3 é prioridade máxima. Budget real, urgência alta, consciência de SEO.
Próximo passo: Responder com primeira mensagem agora. Propor Discovery Call em até 48h.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PRIMEIRA MENSAGEM — WHATSAPP

Oi Marcus, tudo bem? Me chamo Lucas, da Local Rank Brasil.

Vi que você tem uma empresa de pool services em Orlando e está buscando
uma alternativa mais sustentável ao Thumbtack.

Me conta: hoje você consegue rastrear quanto gasta por lead no Thumbtack?

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Quality Criteria

- [ ] Persona identificada com pelo menos 2 sinais concretos citados
- [ ] Temperatura declarada com evidências do input do lead
- [ ] Decisão go/no-go é explícita e o motivo é o critério do playbook (não intuição)
- [ ] Primeira mensagem menciona nome + negócio + cidade + tem pergunta aberta
- [ ] Primeira mensagem tem no máximo 250 caracteres
- [ ] Primeira mensagem NÃO menciona SEO, Google Ads, preço ou serviços

## Veto Conditions

Rejeitar e refazer se:
1. A primeira mensagem não referencia o negócio específico do lead (é genérica)
2. A classificação de persona não tem nenhuma evidência citada do input — é apenas "parece ser P3"
