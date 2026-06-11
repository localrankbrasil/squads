# Step 6: Interlinks nos Posts Antigos do Cluster

**Agent:** criador-interlinks

**CHECKPOINT FINAL:** Usuário confirma que cluster está completo

## Objetivo

Atualizar posts antigos do cluster com backlinks para o novo post publicado, criando a "web" de interlinks.

## Input

- Post URL publicado de: `pipeline/data/post-url.txt`
- Post title (será extraído da URL)
- Lista de posts antigos do cluster de: `pipeline/data/current-input.json`

## Processo

Para cada post antigo no cluster:

1. **Acessar** o post no WordPress
2. **Localizar** as 4 seções do body (após H2s)
3. **Adicionar "Related Articles"** com o novo post:
   ```html
   <!-- wp:paragraph -->
   <p><strong>Related Articles:</strong><br><a href="[new-post-url]">[new-post-title]</a></p>
   <!-- /wp:paragraph -->
   ```

4. **Distribuir links evenly** através das 4 seções
5. **Verificar** que links foram adicionados corretamente

## Regras de Placement

✅ **Colocar em:** Final de cada seção do body (após parágrafo)
❌ **NÃO colocar em:** Intro, Conclusion, FAQs

## Output

- Todos os posts antigos atualizados com backlink
- Relatório de interlinks criados
- Posts verificados no frontend

## Checkpoint Final

Mostrar ao usuário:
- Número de posts atualizados
- Links adicionados por seção
- Screenshots dos posts atualizados

**CLUSTER ESTÁ COMPLETO! 🎉**
