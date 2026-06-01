---
task: "Write Proposal"
order: 1
input: |
  - persona: P2/P3/P4 identificada
  - lead_name: Nome do lead
  - business_name: Nome do negócio
  - city_state: Cidade e estado
  - discovery_notes: Notas completas da Discovery Call (problema, histórico, frustações, objetivos, budget)
  - budget_range: Valor aproximado disponível para investimento
  - competitors_seen: Concorrentes identificados ao vivo na call (opcional)
output: |
  - proposal: proposta comercial completa em formato markdown
  - persona_customizations: checklist de personalizações aplicadas por persona
---

# Write Proposal

Gera proposta comercial personalizada e completa com base nas notas da Discovery Call, calibrada para a persona identificada, seguindo a estrutura do Playbook de Vendas Local Rank Brasil 2026.

## Process

1. **Ler as notas da Discovery Call** e identificar:
   - O problema central do negócio (não o que o lead disse, mas o que foi observado)
   - O histórico de tentativas anteriores (frustações específicas)
   - Os concorrentes identificados ao vivo na call
   - Os objetivos declarados para 6–12 meses
   - O budget aproximado disponível

2. **Calibrar o foco da proposta pela persona:**
   - P2 (Andréia): Seção de diagnóstico deve explicar especificamente POR QUÊ as tentativas anteriores falharam (Facebook Ads não gera leads no mercado americano, site sem SEO é invisível). Usar case de segmento similar se disponível.
   - P3 (Marcus): Seção de oportunidade deve ter comparativo financeiro: custo atual de pay-per-lead × investimento em SEO × projeção de leads orgânicos em 6–12 meses. Foco em ROI e números.
   - P4 (Leandro): Mapear os obstáculos reais de entrada no mercado americano. Estratégia em fases: Fase 1 credibilidade → Fase 2 aquisição. Honesto sobre o tempo necessário.

3. **Escrever cada seção da proposta:**
   - Seção 1: Resumo do Diagnóstico (o que foi identificado — específico para esse lead)
   - Seção 2: Oportunidade Identificada (o que está sendo perdido — com números quando possível)
   - Seção 3: Estratégia Recomendada (fases, justificativa para esse negócio)
   - Seção 4: Serviços Incluídos (lista detalhada com contexto de impacto)
   - Seção 5: Cronograma (realista — SEO = 3–6 meses para rankings)
   - Seção 6: Investimento (valor mensal, condições, sem desconto)
   - Seção 7: Próximos Passos (contrato → pagamento → início)

4. **Verificar personalização:** Checar que pelo menos 3 detalhes específicos da Discovery Call aparecem na proposta (nome do bairro, concorrente identificado, frustação específica, número citado pelo lead).

5. **Revisar investimento:** Garantir que não há linguagem de desconto, condição especial ou promessa de resultado imediato.

## Output Format

```
PROPOSTA COMERCIAL — LOCAL RANK BRASIL
[Nome do Lead] | [Nome do Negócio] | [Cidade]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. RESUMO DO DIAGNÓSTICO
[Situação atual documentada com detalhes específicos da call]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

2. OPORTUNIDADE IDENTIFICADA
[O que está sendo perdido — quantificado quando possível]
[Para P3: comparativo financeiro obrigatório]

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
[Processo de onboarding: contrato → pagamento → início]
```

## Output Example

> Proposta para Marcus (P3) — Pool Services, Orlando

```
PROPOSTA COMERCIAL — LOCAL RANK BRASIL
Marcus | Orlando Pool Pro | Orlando, FL

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. RESUMO DO DIAGNÓSTICO

Com base na nossa conversa, mapeamos a situação atual do Orlando Pool Pro:

- Negócio sólido com equipe de 4 técnicos e carteira ativa de clientes
- 70% da receita vem de leads pagos via Thumbtack e Google LSA (~US$ 1.200/mês investidos)
- Google Business Profile existe mas não está otimizado — não aparece nas buscas orgânicas de "pool service Orlando"
- Concorrentes americanos (Blue Wave Pools, Clear Waters) aparecem nas 3 primeiras posições para todos os termos locais relevantes
- Sem estratégia de SEO local, a dependência de pay-per-lead continuará crescendo com o negócio

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

2. OPORTUNIDADE IDENTIFICADA — ANÁLISE DE ROI

Situação atual (pay-per-lead):
- Custo médio por lead no Thumbtack: US$ 45–80
- Leads mensais necessários para operar: ~15–20
- Investimento mensal estimado: US$ 800–1.200/mês
- Resultado: leads que você para de pagar quando para de pagar

Com SEO local (após 6 meses):
- Custo mensal de SEO: US$ 950 (investimento fixo)
- Leads orgânicos estimados em 6 meses: 8–15/mês sem custo adicional por lead
- Em 12 meses: 15–25 leads orgânicos/mês
- ROI: a partir do 7º mês, cada lead orgânico é 100% menos caro que o lead do Thumbtack

A matemática é simples: você já gasta US$ 1.200/mês para depender de leads pagos.
Por US$ 950/mês você constrói um ativo que gera leads permanentemente.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

3. ESTRATÉGIA RECOMENDADA

Fase 1 — Estrutura (meses 1–2): Google Business Profile + site otimizado
Fase 2 — Posicionamento (meses 3–5): Conteúdo local, citações, autoridade de domínio
Fase 3 — Escala (mês 6+): Rankings consolidados em Orlando + áreas adjacentes

Por que essa ordem faz sentido para o Orlando Pool Pro:
Hoje você está pagando por leads que os seus concorrentes recebem de graça pelo Google.
Vamos reverter isso construindo a infraestrutura que o Google precisa ver para ranquear sua empresa.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

4. SERVIÇOS INCLUÍDOS

✓ Auditoria completa do Google Business Profile + otimização (categorias, fotos, posts semanais)
✓ Reestruturação do site para SEO local de pool services em Orlando (páginas por bairro/cidade)
✓ Pesquisa de palavras-chave específicas para pool services na região de Orlando
✓ Criação de citações locais em 40+ diretórios americanos (Yelp, Angi, HomeAdvisor, etc.)
✓ Monitoramento mensal de rankings e relatório de posições
✓ Consultoria mensal de estratégia (30 min via WhatsApp ou Meet)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

5. CRONOGRAMA

Semana 1: Onboarding, acessos e auditoria técnica completa
Semana 2–3: Otimização do GBP e reestruturação do site
Mês 2: Conteúdo local + início de citações
Mês 3–4: Monitoramento e ajustes de posicionamento
Mês 5–6: Primeiros rankings consolidados + leads orgânicos regulares
Mês 6+: Escala para áreas adjacentes a Orlando

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

6. INVESTIMENTO

Mensalidade: US$ 950/mês
Contrato mínimo: 6 meses (tempo necessário para SEO local gerar resultados consistentes)

Este valor está calibrado abaixo da média de agências americanas especializadas em pool services
(que cobram US$ 2.500–4.000/mês) e acima de agências brasileiras que aplicam estratégias erradas
para o mercado americano.

Não oferecemos desconto. O preço já reflete nosso posicionamento e a qualidade do serviço entregue.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

7. PRÓXIMOS PASSOS

Para confirmar e iniciar:
1. Assinar contrato digital — enviamos via DocuSign em até 24h após sua confirmação
2. Pagamento da primeira mensalidade antecipada
3. Início do onboarding em até 1 dia útil após confirmação do pagamento

Qualquer dúvida, fico à disposição.
Lucas | Local Rank Brasil | contato@localrankbrasil.com
```

## Quality Criteria

- [ ] Seção de diagnóstico tem pelo menos 3 detalhes específicos da Discovery Call
- [ ] Seção de oportunidade quantifica o que está sendo perdido (P3: obrigatório ter comparativo financeiro)
- [ ] Estratégia justifica POR QUE essa sequência de fases faz sentido para ESSE negócio
- [ ] Cronograma tem prazos realistas (SEO mínimo 3–6 meses para resultados)
- [ ] Investimento apresentado sem desconto ou condições especiais
- [ ] Próximos passos incluem contrato + pagamento antecipado
- [ ] Proposta personalizada: não poderia ser enviada para outro lead sem modificação

## Veto Conditions

Rejeitar e refazer se:
1. A proposta não menciona nenhum detalhe específico da Discovery Call (nome do concorrente, frustação citada, número mencionado)
2. A seção de investimento oferece desconto, condição especial ou promessa de resultado em menos de 3 meses para SEO
