---
execution: inline
agent: pedro-proposta
inputFile: squads/vendas-local-rank/output/modo-operacao.md
outputFile: squads/vendas-local-rank/output/proposta-comercial.html
---

# Step 05: Elaborar Proposta Comercial

## Context Loading

Carregar antes de executar:
- `squads/vendas-local-rank/output/modo-operacao.md` — notas da Discovery Call + persona + budget
- `squads/vendas-local-rank/output/classificacao-lead.md` — análise do lead
- `squads/vendas-local-rank/pipeline/data/domain-framework.md` — estrutura de proposta por persona
- `squads/branding-local-rank/pipeline/data/brand-kit.md` — identidade visual da Local Rank
- `squads/branding-local-rank/pipeline/data/tone-of-voice.md` — tom da marca
- `squads/branding-local-rank/pipeline/data/quality-criteria.md` — critérios visuais e verbais

**Executar este step apenas se o modo selecionado for "proposta" (pós-Discovery Call).**
Se o modo for outro (diagnóstico, follow-up, objeção, reciclagem), pular este step e ir direto ao Step 06.

## Instructions

### Process

1. Verificar se o modo em `modo-operacao.md` é proposta. Se não for, declarar "STEP PULADO — modo não requer proposta" e encerrar.

2. Ler as notas da Discovery Call:
   - Problema central identificado na call
   - Números reais mencionados (investimento atual, leads, conversão)
   - Histórico de tentativas anteriores
   - Objetivos para 6–12 meses
   - Budget confirmado
   - Serviços combinados

3. Definir slug do cliente (ex: "WA Investimentos" → `wa-investimentos`)

4. Identificar persona e aplicar personalização:
   - **P2 (Andréia):** explicar por que tentativas anteriores falharam
   - **P3 (Marcus):** comparativo financeiro obrigatório (custo atual vs. Local Rank)
   - **P4 (Leandro):** mapear obstáculos reais + estratégia em fases

5. Gerar o HTML completo da proposta seguindo o padrão Frontend Slides + branding da Local Rank:
   - Proposta em formato de slides web, não markdown
   - Arquivo HTML com CSS/JS inline e sem build step
   - Gradiente navy→azul médio em todos os slides
   - Box labels verdes
   - Logo oficial embutida em base64
   - Navegação por teclado/toque
   - Mobile responsive
   - Verificação desktop/mobile antes de publicar
   - Texto escaneável, um objetivo por slide
   - Se ficar denso, criar mais slides

6. Embutir a logo oficial:
```python
import base64
with open('/Users/lucasmourao/Documents/local-rank-operacoes/branding/logos/png/Local_Rank_Logo_White_Green.png','rb') as f:
    logo_b64 = base64.b64encode(f.read()).decode()
```

7. Salvar HTML em `squads/vendas-local-rank/output/proposta-comercial.html`

8. Fazer deploy no GitHub Pages:
```bash
# Clonar/atualizar repo propostas
git clone https://github.com/localrankbrasil/propostas.git /tmp/propostas-deploy
mkdir -p /tmp/propostas-deploy/{slug-cliente}
cp squads/vendas-local-rank/output/proposta-comercial.html /tmp/propostas-deploy/{slug-cliente}/index.html
# Atualizar index.html do repo com card do novo cliente
# Push
cd /tmp/propostas-deploy && git add -A && git commit -m "Add proposta {Nome Cliente}" && git push origin main
```

9. Retornar link público:
```
https://localrankbrasil.github.io/propostas/{slug-cliente}/
```

## Slides Obrigatórios — Modelo Atual

| Slide | Título | Conteúdo chave |
|-------|--------|---------------|
| 1 | Capa | Nome do cliente + proposta comercial + segmento/local |
| 2 | Cenário Atual | Números e contexto real da call |
| 3 | Dor Principal | Gargalo central diagnosticado |
| 4 | O Que Propomos | 3 pilares da solução |
| 5 | SEO Local | Autoridade, conteúdo, otimização e presença em Google/IAs quando aplicável |
| 6 | Google + Meta Ads | Campanhas por cidade, serviço, intenção e landing pages |
| 7 | Social Media | Posts, calendário, estratégia e consistência visual |
| 8 | Resultado Esperado | Expectativa realista, prazo de SEO e impacto esperado |
| 9 | SEO Programático / Expansão Local | Páginas por cidade + serviço, ACF/WordPress/template quando aplicável |
| 10 | Investimento Mensal | Apenas serviços recorrentes e total mensal |
| 11 | Serviços Adicionais | Apenas projetos únicos/opcionais |
| 12 | Próximos Passos | Confirmação → contrato → pagamento upfront → onboarding |

### Regras Comerciais de Slides

- Nunca juntar investimento mensal, serviços adicionais e próximos passos em um único slide.
- Em Ads, se houver mínimo, deixar claro que é **mínimo de gestão**, não mínimo de mídia.
- Orçamento de mídia deve aparecer como pago separadamente pelo cliente às plataformas.
- Em próximos passos, o contrato vem antes do pagamento.
- Se houver pagamento recorrente, mencionar cobrança mensal no dia 1 quando aplicável.

## Referência de Design

Proposta modelo atual: `https://localrankbrasil.github.io/propostas/my-cleaning-angel/`
Arquivo local quando disponível: `/tmp/propostas-update/my-cleaning-angel/index.html`

Referência anterior: `https://localrankbrasil.github.io/propostas/wa-investimentos/`

## Veto Conditions

Rejeitar e refazer se:
1. HTML não abre no browser sem erros
2. Logo não está embutida (aparece quebrada)
3. Proposta não menciona detalhes específicos da Discovery Call
4. Investimento oferece desconto ou condição especial
5. Link do GitHub Pages não funciona
6. Proposta final é entregue em markdown/texto em vez de HTML slides
7. Investimento mensal, serviços adicionais e próximos passos estão no mesmo slide

## Quality Criteria

- [ ] HTML completo e funcional
- [ ] Logo oficial embutida em base64 em todos os slides
- [ ] Gradiente navy→azul médio em todos os slides
- [ ] Navegação ← → funcionando
- [ ] Mobile responsive
- [ ] Segue o modelo visual My Cleaning Angel ou adaptação equivalente
- [ ] ≥ 3 detalhes específicos da Discovery Call no diagnóstico
- [ ] Todos os valores em USD, sem desconto
- [ ] Investimento mensal, serviços adicionais e próximos passos em slides separados
- [ ] Próximos passos incluem contrato antes do pagamento upfront
- [ ] Publicado em `https://localrankbrasil.github.io/propostas/{slug}/`
