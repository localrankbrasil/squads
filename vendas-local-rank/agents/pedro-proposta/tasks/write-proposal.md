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
  - proposal_html: proposta comercial completa em HTML slides
  - deploy_url: link público no GitHub Pages quando publicado
  - persona_customizations: checklist de personalizações aplicadas por persona
---

# Write Proposal

Gera proposta comercial personalizada em HTML slides, calibrada para a persona identificada, seguindo o Playbook de Vendas Local Rank Brasil 2026, o branding da Local Rank e o padrão visual da proposta modelo My Cleaning Angel.

## Output Final Obrigatório

A entrega final deve ser um **arquivo HTML navegável**, não um markdown. O formato segue a lógica `frontend-slides`: apresentação web, CSS/JS inline, navegação por setas/dots/swipe, visual de slides e deploy no GitHub Pages.

Referência principal:
`https://localrankbrasil.github.io/propostas/my-cleaning-angel/`

Antes de gerar, consultar:
- `squads/branding-local-rank/pipeline/data/brand-kit.md`
- `squads/branding-local-rank/pipeline/data/tone-of-voice.md`
- `squads/branding-local-rank/pipeline/data/quality-criteria.md`

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

3. **Definir a estrutura de slides:**
   - Use o modelo base abaixo e adapte aos serviços contratados.
   - Se a proposta ficar densa, dividir em mais slides em vez de reduzir fonte ou amontoar conteúdo.
   - Não juntar investimento mensal, serviços adicionais e próximos passos no mesmo slide.

4. **Gerar HTML completo:**
   - HTML, CSS e JS no mesmo arquivo
   - Branding Local Rank: navy `#172259`, azul `#1d40ad`, verde `#62bb46`, branco
   - Fontes: Merriweather para títulos, Roboto para corpo/labels
   - Gradiente navy→azul médio
   - Box labels verdes
   - Cards glassmorphism
   - Logo oficial em todos os slides
   - Navegação por teclado, botões, dots e swipe
   - Mobile responsive ou fixed-stage escalável, sem overflow

5. **Verificar personalização:** Checar que pelo menos 3 detalhes específicos da Discovery Call aparecem na proposta (nome do bairro, concorrente identificado, frustração específica, número citado pelo lead).

6. **Revisar investimento:** Garantir que não há linguagem de desconto, condição especial ou promessa de resultado imediato.

7. **Publicar quando solicitado/pipeline pedir deploy:** salvar no repo `localrankbrasil/propostas`, criar pasta do cliente, atualizar o índice e retornar o link.

## Estrutura Base de Slides

| Slide | Título | Função |
|-------|--------|--------|
| 1 | Capa | Nome do cliente, negócio, local e proposta comercial |
| 2 | Cenário Atual | Mostrar que entendemos a operação atual |
| 3 | Dor Principal | Explicar o gargalo real |
| 4 | O Que Propomos | Resumir os pilares da solução |
| 5 | SEO Local | Autoridade, conteúdo, otimização, presença no Google e IAs quando aplicável |
| 6 | Google + Meta Ads | Campanhas por cidade, serviço e intenção |
| 7 | Social Media | Posts, calendário, estratégia e consistência visual |
| 8 | Resultado Esperado | Expectativa realista, prazos e efeitos buscados |
| 9 | SEO Programático / Expansão Local | Quando houver expansão geográfica, páginas por cidade/serviço ou WordPress/ACF |
| 10 | Investimento Mensal | Somente mensalidades/retainers |
| 11 | Serviços Adicionais | Somente projetos únicos/opcionais |
| 12 | Próximos Passos | Confirmação → contrato → pagamento upfront → onboarding |

### Regras por Tipo de Slide

#### SEO Local
Mencionar, quando fizer sentido:
- construção e fortalecimento de autoridade digital
- otimização mensal do site
- blog posts/conteúdo
- presença em buscas locais
- sinais que ajudam a marca a aparecer em respostas de IAs como ChatGPT e Gemini

#### Ads
Mencionar, quando fizer sentido:
- Google Ads, Meta Ads ou ambos
- campanhas por cidade + serviço
- landing pages específicas
- mídia paga separada da taxa de gestão
- se houver mínimo, escrever "mínimo de gestão", não "mínimo de investimento em mídia"

#### Social Media
Mencionar:
- quantidade de posts quando definida
- calendário de conteúdo
- estratégia
- consistência visual e presença de marca

#### SEO Programático Local
Usar apenas quando fizer sentido para expansão. Explicar:
- páginas por cidade + serviço
- relação com Google Ads e landing pages ultra focadas
- economia vs. criação manual por página quando aplicável
- dependência de Website Revamp quando for necessário mudar WordPress/ACF/template/campos dinâmicos

#### Investimento Mensal
Incluir apenas valores recorrentes. Exemplo:
- Social Media: `US$ X/mês`
- SEO Local: `US$ X/mês`
- Gestão de Ads: `15% do ad spend, com mínimo de gestão de US$ X/mês. Mídia paga separada.`
- Total mensal consolidado quando aplicável

#### Serviços Adicionais
Incluir apenas projetos únicos, como:
- Website Revamp
- SEO Programático Local Setup
- Rebranding
- CRM/Automações
- Setup técnico

#### Próximos Passos
Fluxo padrão:
1. Confirmação
2. Contrato
3. Pagamento upfront
4. Onboarding

Se houver mensalidade recorrente, mencionar: "Depois, a mensalidade é cobrada todo dia 1 de cada mês."

## Output Example

> Modelo atual de proposta HTML:

```
https://localrankbrasil.github.io/propostas/my-cleaning-angel/
```

## Quality Criteria

- [ ] HTML completo, funcional e pronto para deploy
- [ ] Proposta segue branding da Local Rank
- [ ] Estrutura segue o modelo My Cleaning Angel ou adaptação equivalente
- [ ] Diagnóstico tem pelo menos 3 detalhes específicos da Discovery Call
- [ ] Oportunidade quantifica o que está sendo perdido (P3: obrigatório ter comparativo financeiro quando houver dados)
- [ ] Estratégia justifica POR QUE essa sequência de fases faz sentido para ESSE negócio
- [ ] Cronograma tem prazos realistas (SEO mínimo 3–6 meses para resultados)
- [ ] Investimento mensal, serviços adicionais e próximos passos estão em slides separados
- [ ] Investimento apresentado em USD, sem desconto ou condições especiais
- [ ] Próximos passos incluem contrato antes de pagamento upfront
- [ ] Proposta personalizada: não poderia ser enviada para outro lead sem modificação
- [ ] Verificada em desktop e mobile sem overflow/ sobreposição

## Veto Conditions

Rejeitar e refazer se:
1. A proposta não menciona nenhum detalhe específico da Discovery Call (nome do concorrente, frustação citada, número mencionado)
2. A seção de investimento oferece desconto, condição especial ou promessa de resultado em menos de 3 meses para SEO
3. A proposta final for entregue apenas em markdown/texto
4. Investimento mensal, serviços adicionais e próximos passos estiverem amontoados no mesmo slide
