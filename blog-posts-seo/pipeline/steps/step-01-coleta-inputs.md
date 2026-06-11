# Step 1: Coleta Interativa de Inputs

**Agent:** coleta-inputs

## Objetivo

Coletar TODOS os inputs necessários para criar um blog post excelente, de forma conversacional e validada.

## Fluxo

O agente **coleta-inputs** fará perguntas conversacionais (não formulário) para obter:

### 1. Conteúdo e SEO
- **Título exato** do blog post (será H1)
- **Target location** (cidade/estado)
- **Focus keyword** para SEO
- **Primary internal link** (para introdução) + anchor text
- **Additional internal links** (para body) + anchor text
- **Conclusion link** + anchor text

### 2. Contexto do Cliente
- **GitHub repository** do cliente (com contexto completo)
- Business type, services, target audience, tone, diferenciadores

### 3. Informações de Cluster
- É um **novo cluster** ou **cluster existente**?
- Se existente: List de URLs dos posts já publicados neste cluster
- Se batch: Quantos posts serão criados?

### 4. Credenciais WordPress (para posterior publicação)
- WordPress URL
- Username/Email
- Password ou API token

## Output

Salvar todos os inputs estruturados em: `pipeline/data/current-input.json`

Exemplo:
```json
{
  "title": "Do Retaining Walls Need Drainage in Danbury, CT?",
  "target_location": "Danbury, Connecticut",
  "focus_keyword": "retaining wall drainage",
  "primary_link": {
    "url": "https://client.com/services/retaining-walls/",
    "anchor_text": "retaining wall services"
  },
  "additional_links": [...],
  "client_info": {...},
  "cluster": {
    "type": "existing",
    "published_posts": [...]
  },
  "wordpress": {...}
}
```

## Próximo Passo

Step 2: Redação do Blog Post
