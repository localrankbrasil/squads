# Readability Playbook

Este playbook existe para evitar os erros mais comuns do Yoast em blog posts:

- voz passiva acima de 10%
- frases consecutivas comecando com a mesma palavra
- blocos longos sem subheading
- frases longas acima de 25%
- paragrafos acima de 150 palavras
- transition words abaixo de 30%
- complex words acima de 10%

## Metas Internas

Use metas mais rigidas que o Yoast para ter margem de seguranca:

- Voz passiva: abaixo de 7%.
- Frases com mais de 20 palavras: abaixo de 20%.
- Blocos entre headings: abaixo de 280 palavras.
- Blocos H3: ideal entre 220 e 250 palavras.
- Paragrafos: ideal entre 60 e 85 palavras.
- Qualquer paragrafo: abaixo de 120 palavras como meta, nunca acima de 150.
- Transition words: acima de 35% como meta, nunca abaixo de 30%.
- Complex words: abaixo de 8% como meta, nunca acima de 10%.
- Consecutive starters: zero repeticao em frases vizinhas.

## Como Reduzir Voz Passiva

Procure estruturas com `is`, `are`, `was`, `were`, `been` ou `being` antes de um verbo no particípio.

Depois pergunte: quem faz a acao?

Ruim:

```text
The page was optimized by the agency.
```

Melhor:

```text
The agency optimized the page.
```

Ruim:

```text
The problem can be solved with better headings.
```

Melhor:

```text
Better headings can solve the problem.
```

Use voz passiva apenas quando o ator for desconhecido, irrelevante ou quando a frase ativa soar pior.

## Como Corrigir Frases Longas

Frases longas costumam juntar ideias demais.

Primeiro, divida a frase em ideias menores. Depois, conecte essas ideias com transition words.

Ruim:

```text
When a business waits too long to invest in local SEO, it can lose visibility in Google and miss leads that nearby competitors capture every week.
```

Melhor:

```text
Waiting too long to invest in local SEO costs visibility. Nearby competitors capture those leads every week.
```

Procure palavras que indicam frase longa:

- which
- because
- although
- while
- however
- in order to
- due to the fact that

Quando aparecerem no meio da frase, considere dividir.

## Como Evitar Sentence Starters Repetidos

Leia apenas a primeira palavra de cada frase em sequencia.

Se duas frases vizinhas comecarem igual, reescreva uma delas.

Ruim:

```text
The website needs better headings. The content also needs shorter sentences.
```

Melhor:

```text
The website needs better headings. Shorter sentences also make the content easier to read.
```

Boas formas de variar:

- trocar o sujeito
- usar um transition word
- inverter a ordem da frase
- substituir o nome por pronome, quando ficar claro
- combinar duas frases curtas, se isso nao criar frase longa

## Como Corrigir Subheading Distribution

Yoast reclama quando uma area fica longa demais sem heading.

Regra pratica:

- Use H2 para grandes topicos.
- Use H3 para partes menores dentro de um H2.
- Adicione um novo H3 antes de passar de 250 palavras.
- Nunca deixe um bloco passar de 300 palavras.

Cada H3 deve cobrir uma ideia especifica. Se a ideia tiver duas partes, divida em dois H3s.

## Como Corrigir Paragraph Length

Yoast recomenda paragrafos abaixo de 150 palavras. Acima disso, o texto fica mais dificil de escanear, especialmente no celular.

Um bom paragrafo cobre uma ideia especifica. Ele comeca com uma frase central e depois explica, exemplifica ou conecta essa ideia ao tema.

Ruim:

```text
Um paragrafo longo tenta explicar varias ideias ao mesmo tempo, mistura contexto, exemplo, resultado e proximo passo, e faz o leitor trabalhar demais para entender onde uma parte termina e outra comeca.
```

Melhor:

```text
Um bom paragrafo cobre uma ideia por vez. Ele comeca com a frase principal e desenvolve esse ponto com clareza.

Se a ideia crescer demais, divida o texto. Use outro paragrafo para exemplo, resultado ou proximo passo.
```

Regra pratica:

- 2 a 5 frases por paragrafo.
- 60 a 85 palavras como alvo.
- 120 palavras como limite interno.
- 150 palavras como limite maximo.

## Como Usar Transition Words

Yoast recomenda transition words em pelo menos 30% das frases. Use 35% como meta interna.

Transition words mostram a relacao entre ideias. Elas ajudam o leitor a entender se uma frase traz causa, contraste, exemplo, consequencia ou resumo.

Categorias uteis:

- Causa e efeito: therefore, as a result, so, because.
- Clarificacao: in other words, to clarify.
- Contraste: however, but, on the other hand.
- Exemplo: for example, for instance.
- Enfase: most importantly, above all.
- Adicao: also, in addition, besides that.
- Tempo ou sequencia: after that, meanwhile, subsequently.
- Similaridade: similarly, likewise.
- Resumo: in short, to sum it up.

Nao force transition words em toda frase. Use onde elas deixam o caminho mais claro.

## Como Reduzir Word Complexity

Yoast Premium considera complexo um texto com muitos termos longos, incomuns ou dificeis. A meta e manter complex words abaixo de 10%. Use abaixo de 8% como margem de seguranca.

Troque palavras longas por alternativas simples quando o significado continuar igual.

Exemplos:

```text
utilize -> use
approximately -> about
assistance -> help
purchase -> buy
additional -> extra
individuals -> people
```

Mantenha termos tecnicos quando eles forem importantes para o tema. Nesse caso, explique o termo em linguagem simples logo depois.

## Passo A Passo De Revisao

1. Leia a estrutura de headings.
2. Corte qualquer bloco longo.
3. Quebre frases com mais de 20 palavras.
4. Reescreva passivas em voz ativa.
5. Varie o inicio das frases.
6. Divida paragrafos acima de 120 palavras.
7. Adicione transition words para melhorar o fluxo.
8. Substitua palavras complexas quando houver alternativa simples.
9. Rode o texto no Yoast.
10. Corrija qualquer alerta vermelho ou laranja antes de entregar.

## Regra Final

O blog post so esta pronto quando o texto passa nos checks:

- passive voice
- consecutive sentences
- subheading distribution
- sentence length
- paragraph length
- transition words
- word complexity
