# Step 5: Geração de Imagem em Destaque

**Agent:** gerador-imagem

## Objetivo

Gerar imagem ultra-realista 794x529px e defini-la como featured image no WordPress.

## Input

- Post URL de: `pipeline/data/post-url.txt`
- Post title (será extraído da URL ou meta)

## Processo

1. **Gerar imagem** usando prompt EXATA:
   ```
   Create an ultra-realistic, high-quality featured image for a blog post.
   Blog Post Title: [INSERT TITLE HERE]
   
   Requirements:
   - Horizontal (landscape format)
   - NO text, words, letters, or typography
   - Look like a real photograph (not AI, not illustration, not cartoon)
   - Natural lighting, realistic textures, authentic environments
   - Scene must visually represent the blog topic
   - Avoid overly dramatic or artificial elements
   - Clean, professional composition for website
   - Subtle depth of field (background slightly blurred) for realism
   
   Style: Modern, clean, natural look with slight cinematic feel (but realistic)
   No filters that make it look edited or fake
   ```

2. **Redimensionar para 794x529 pixels** (CRÍTICO - não é flexível)

3. **Upload no WordPress** media library

4. **Criar alt text** otimizado para SEO:
   - Inclua keyword principal
   - Inclua localização (se aplicável)
   - Descrição breve

5. **Definir como featured image** no post

6. **Verificar no post live** que aparece corretamente

## Output

Salvar imagem em: `pipeline/data/featured-image.webp`

## Próximo Passo

Step 6: Interlinks nos Posts Antigos do Cluster
