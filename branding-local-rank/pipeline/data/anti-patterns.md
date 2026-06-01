# Anti-Patterns de Branding — Local Rank Brasil

## Erros Visuais

### 1. Cor fora da paleta
**Erro:** Usar azul genérico (#0066cc, #007bff) ou vermelho em destaques.
**Por que é ruim:** Dilui a identidade. A paleta verde+navy é o principal diferencial visual da marca.
**Correção:** Substituir por #62bb46 (destaque) ou #1d40ad (link/apoio).

### 2. Fonte não aprovada
**Erro:** Usar Arial, Lato, Open Sans, ou qualquer fonte que não seja Merriweather/Roboto.
**Por que é ruim:** Quebra a consistência tipográfica. Merriweather transmite autoridade e credibilidade — substituí-la muda a percepção da marca.
**Correção:** Merriweather para títulos, Roboto para corpo. Sem exceções.

### 3. Logo sobre fundo de baixo contraste
**Erro:** Logo colorido sobre fundo navy, ou logo branco sobre fundo claro.
**Por que é ruim:** Logo ilegível = marca invisível.
**Correção:** Logo branco em fundos escuros (navy, preto), logo original em fundos brancos/claros.

### 4. Texto sem overlay em imagem
**Erro:** Texto branco diretamente sobre foto sem overlay.
**Por que é ruim:** Contraste insuficiente, especialmente em telas pequenas (mobile).
**Correção:** Overlay navy a 60%+ de opacidade, ou gradiente navy transparente.

### 5. Hierarquia tipográfica quebrada
**Erro:** Título e corpo com tamanhos similares (ex: título 18px, corpo 16px).
**Por que é ruim:** Sem hierarquia visual clara, o olho não sabe onde começar a ler.
**Correção:** Mínimo 1.5x entre níveis. Instagram: hero ≥58px, heading ≥43px, body ≥34px.

### 6. Contador de slide visível
**Erro:** "1/7", "Slide 3 de 8" em carrosséis Instagram.
**Por que é ruim:** Instagram já exibe navegação nativa. O contador é ruído visual desnecessário.
**Correção:** Remover completamente o contador de slide.

---

## Erros de Tom de Voz

### 7. Promessas irreais
**Erro:** "Apareça no Google em 48h", "Garantimos resultados", "Aumente seu faturamento em 300%".
**Por que é ruim:** Contradiz o posicionamento "pé no chão sobre prazos". Destrói confiança.
**Correção:** "Em média, clientes veem os primeiros resultados orgânicos em 3-6 meses."

### 8. Jargão técnico sem contexto
**Erro:** "Melhore seu SEO, CTR e ROAS com nossa estratégia de GBP."
**Por que é ruim:** A persona principal (Andréia, Marcus) já tentou marketing antes e não entende esses termos — jargão cria distância.
**Correção:** "Faça sua empresa aparecer no Google quando americanos buscam o seu serviço."

### 9. Tom de vendedor agressivo
**Erro:** "ÚLTIMAS VAGAS!", "Não perca essa oportunidade!", "Oferta exclusiva expira hoje!".
**Por que é ruim:** Contraria o posicionamento consultivo. A Local Rank é guia, não vendedor.
**Correção:** "Quer entender como seus concorrentes estão chegando na frente? Fala com a gente."

### 10. Ignorar a frustração do público
**Erro:** Conteúdo que ignora que o empreendedor brasileiro já tentou marketing antes e falhou.
**Por que é ruim:** A principal objeção é "já tentei e não funcionou". Ignorá-la é perder conexão.
**Correção:** "Você fez tudo certo — site, Instagram, Meta Ads. O problema não era você. Era a estratégia."

---

## Erros de Consistência

### 11. Mistura de estilos visuais num mesmo carrossel
**Erro:** Capa com fundo navy, slides com fundo colorido aleatório, CTA com fundo vermelho.
**Por que é ruim:** Sem sistema visual consistente, o material parece amador.
**Correção:** Definir sistema antes de criar: fundos padronizados, mesmo espaçamento, mesma tipografia.

### 12. Logo ausente em material oficial
**Erro:** Carrossel, post ou email sem logo da Local Rank.
**Por que é ruim:** Marca invisível. Conteúdo não atribuído perde valor de branding.
**Correção:** Logo sempre presente — canto inferior direito em carrosséis, header em emails.

### 13. Verde como cor de fundo
**Erro:** Slide inteiro com fundo verde `#62bb46` ou box verde grande dominando o layout.
**Por que é ruim:** O verde é a cor de detalhe e destaque da marca — quando vira fundo, perde o poder de atrair o olho e dilui o contraste com elementos brancos (ratio 3.8:1 abaixo do mínimo para texto normal).
**Correção:** Verde apenas em elementos pontuais: box de frase-destaque, texto em itálico de ênfase, ícone, badge. Fundos devem ser gradiente navy→azul médio (escuro) ou branco/off-white (claro).

### 14. Gradiente aplicado de forma errada
**Erro:** Gradiente com verde, gradiente com cores fora da paleta, ou gradiente muito claro que perde impacto.
**Por que é ruim:** O gradiente de marca é exclusivamente Navy `#172259` → Azul Médio `#1d40ad`. Variações criam materiais que não se parecem com a Local Rank.
**Correção:** Usar apenas o gradiente oficial linear (diagonal ou vertical) entre os dois azuis. Direção padrão: canto superior esquerdo navy → canto inferior direito azul médio.

### 16. Texto em caixa única em vez de caixas individuais
**Erro:** Colocar múltiplas linhas de título em um único text box no Canva.
**Por que é ruim:** Perde o controle criativo — não é possível ajustar o tamanho, peso ou posição de cada linha individualmente. O mix regular+itálico característico da marca fica impossível de executar com precisão.
**Correção:** Cada linha (ou cada bloco semântico) em uma caixa de texto separada. O título "Você está pagando / **por cada cliente que chega.**" são duas caixas distintas, não uma.

### 17. Usar gradiente em vez de construir em camadas
**Erro:** Aplicar um gradiente CSS/Canva simples de navy para azul médio e achar que está correto.
**Por que é ruim:** O fundo da marca não é um gradiente — é uma composição de: base navy sólida + foto P&B a 10% + textura + efeito de iluminação com azul claro. O resultado parece gradiente mas tem profundidade e textura que um gradiente simples não reproduz.
**Correção:** Construir em camadas: (1) base navy, (2) foto P&B ~10% de opacidade, (3) textura, (4) iluminação azul claro como light effect.

### 18. Foto de fundo com opacidade errada
**Erro:** Usar a foto P&B de fundo com opacidade muito alta (30%+) ou muito baixa (5%-).
**Por que é ruim:** Alta opacidade: a foto domina o fundo e distrai do conteúdo. Baixa opacidade: a textura some e o fundo fica flat demais.
**Correção:** Opacidade da foto P&B de fundo = ~10%. É quase invisível mas dá profundidade e caráter artesanal ao fundo.

### 15. Foto colorida sem tratamento halftone
**Erro:** Inserir foto de pessoa, objeto ou cenário colorida diretamente no slide, sem tratamento.
**Por que é ruim:** O estilo visual dos posts usa imagens em halftone/engraving P&B. Fotos coloridas criam ruptura visual com o sistema de design da marca.
**Correção:** Aplicar filtro halftone ou engraving (P&B pontilhado) em qualquer imagem antes de inserir. Imagens devem parecer gravuras, não fotografias.
