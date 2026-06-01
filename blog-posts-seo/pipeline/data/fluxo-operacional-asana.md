# Fluxo Operacional - Asana

Fonte: `Templates Operacionais - Asana.pdf`

O PDF aponta para dois templates principais:

- Write Blog Post: https://www.notion.so/Write-Blog-Post-35d5fd8730d880ba9d48c017dd47437c?source=copy_link
- Featured Image for Blog Post: https://www.notion.so/Featured-Image-for-Blog-Post-35d5fd8730d880419cf9ebec43d3d257?source=copy_link

## Fluxo Geral

1. Coletar inputs do blog post.
2. Escrever e otimizar o artigo.
3. Gerar featured image.
4. Revisar SEO e readability.
5. Validar links internos e externos.
6. Entregar o post final com SEO output e imagens sugeridas.

## Regra De Outbound Links

Todos os links externos devem:

- abrir em uma nova janela/aba
- usar `target="_blank"` quando entregues em HTML
- usar `rel="noopener noreferrer"` por seguranca
- apontar para fontes autoritativas
- funcionar no momento da entrega

Formato recomendado em HTML:

```html
<a href="https://example.gov/page" target="_blank" rel="noopener noreferrer">anchor text</a>
```

## Validacao De Links Quebrados

Antes de entregar o blog post:

1. Abrir cada outbound link.
2. Confirmar que a pagina carrega.
3. Confirmar que a pagina ainda fala sobre o tema citado.
4. Confirmar que nao e concorrente direto.
5. Confirmar que o link final nao redireciona para erro, pagina generica ou homepage irrelevante.

Se um link estiver quebrado:

1. Copiar o tema ou titulo da fonte original.
2. Pesquisar no Google por uma fonte equivalente.
3. Priorizar `.gov`, `.edu` ou organizacoes oficiais do setor.
4. Escolher o resultado mais proximo do assunto original.
5. Substituir o link quebrado pelo novo link.
6. Registrar a troca no checklist ou nas observacoes de entrega.

## Regra Final

Nenhum blog post deve ser entregue com outbound link quebrado ou sem configuracao para abrir em nova janela quando o formato de entrega permitir HTML.

