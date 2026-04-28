# 📝 Content Management Guide

This guide covers all aspects of managing content in the Open Guide to Kanban project, including content creation, front matter configuration, attribution, and translation management.

## 🌐 Live Sites

- **Production**: [kanbanguides.org](https://kanbanguides.org) - **Live production site**
- **Preview**: [red-pond-0d8225910-preview.centralus.2.azurestaticapps.net](https://red-pond-0d8225910-preview.centralus.2.azurestaticapps.net/) - **Test your content changes**

## Content Structure Overview

### File Organization

The site hosts two guides, each with versioned releases:

```text
site/content/
├── _index.md                          # Homepage
├── open-guide-to-kanban/
│   ├── _index.md                     # Guide section index (English)
│   ├── _index.es-419.md              # Guide section index (Spanish LA)
│   ├── 2025.7/                       # Current versioned release
│   │   ├── index.md             # English content
│   │   ├── index.es-419.md      # Spanish (Latin America)
│   │   ├── index.ja.md          # Japanese
│   │   └── index.{lang}.md      # Other languages
│   ├── history/                      # Archived versions
│   └── translations/                 # Translation index pages
└── the-kanban-guide/
    ├── _index.md
    ├── 2025.5/                       # Current versioned release
    ├── 2020.12/                      # Historical versions
    ├── 2020.7/
    ├── history/
    └── translations/
```

### Language Handling

- **Default Language**: English (`index.md`)
- **Translations**: Language-specific files (`index.{lang}.md`) within the same version directory
- **Content Loading**: Default language content is used as fallback for missing translations
- **Active languages**: `en`, `ja`, `es-419`, `es-ES`, `fa`, `pl` (controlled in `hugo.production.yaml`)

## Front Matter Configuration

### Core Fields

All content pages should include these basic front matter fields:

```yaml
---
title: "Page Title"
description: "SEO-optimized page description"
keywords:
  - keyword1
  - keyword2
  - keyword3
date: 2025-06-11T09:00:00Z
slug: "page-slug"
type: "page-type"
lang: "en"
weight: 10
draft: false
---
```

### Attribution / Contributions

Creators, contributors, and reviewers are **not** stored in content front matter. They are managed in per-guide YAML data files:

```text
site/data/contributions/
├── open-guide-to-kanban.yml
└── the-kanban-guide.yml
```

Each entry in these files has the structure:

```yaml
- name: John Coleman
  githubUsername: ViralGoodAgile
  url: https://www.linkedin.com/in/johnanthonycoleman/
  contributions:
    - "2025.7"      # version strings this person contributed to
  role: creator     # creator | contributor | reviewer | translator
  founder: true
  weight: 1
```

**Image resolution priority**: `image` URL → `gravatarHash` → `githubUsername` (GitHub avatar) → default avatar.

#### Generating a Gravatar Hash

```bash
# SHA256 of the lowercase, trimmed email address
echo -n "email@example.com" | sha256sum
```

#### Translator entries

Translators are also in the same data files with `role: translator` and a `language` field:

```yaml
- name: María García
  language: es-419
  githubUsername: mariagarcia
  contributions:
    - "2025.7"
  role: translator
  weight: 100
```

### Image Priority System

The system attempts to load profile images in this priority order:

1. **`image`** - Direct URL to profile image (highest priority)
2. **`gravatarHash`** - SHA256 hash for Gravatar service
3. **`githubUsername`** - GitHub username for GitHub avatar API
4. **Default avatar** - System fallback if none available

#### Generating Gravatar Hash

```bash
# Generate SHA256 hash of lowercase, trimmed email
echo -n "email@example.com" | sha256sum
```

## Content Creation Workflow

### 1. Creating New Content

Content lives inside the versioned subdirectory for each guide:

```bash
# Edit the English content for the Open Guide to Kanban
nano site/content/open-guide-to-kanban/2025.7/index.md

# Add a new translation
cp site/content/open-guide-to-kanban/2025.7/index.md \
   site/content/open-guide-to-kanban/2025.7/index.es-419.md
```

### 2. Front Matter Template

Use this template for new content pages:

```yaml
---
title: "Your Page Title"
description: "SEO-optimized description under 160 characters"
keywords:
  - kanban
  - flow
  - agile
date: 2025-06-11T09:00:00Z
slug: "url-friendly-slug"
type: "guide"
lang: "en"
weight: 10
draft: false
---
```

> Creators, contributors, and translators are managed in `site/data/contributions/`, not in content front matter.

### 3. Content Guidelines

#### Writing Style

- **Clear and concise** language appropriate for Kanban practitioners
- **Present tense** for most content
- **Active voice** preferred over passive voice
- **Consistent terminology** throughout the guide

#### Markdown Standards

- Use semantic heading hierarchy (`# H1 → ## H2 → ### H3`)
- Include descriptive alt text for images
- Use relative links for internal references
- Follow proper markdown formatting

#### SEO Optimization

- Unique, descriptive titles under 60 characters
- Meta descriptions under 160 characters
- Relevant keywords without stuffing
- Proper heading structure for content hierarchy

## Translation Management

### Creating Translations

1. **Copy base structure** from English version within the same version directory
2. **Translate all content** including front matter fields (`title`, `description`, `keywords`)
3. **Update `lang` field** to the target language code (e.g., `es-419`, `ja`)
4. **Add translator attribution** to the guide's data file in `site/data/contributions/`

### Translation Example

**English** (`site/content/open-guide-to-kanban/2025.7/index.md`):

```yaml
---
title: Open Guide to Kanban - In the Context of Knowledge Work
description: Community-driven reference for Kanban in knowledge work
lang: en
---
```

**Spanish Latin America** (`site/content/open-guide-to-kanban/2025.7/index.es-419.md`):

```yaml
---
title: Guía Abierta de Kanban - En el Contexto del Trabajo del Conocimiento
description: Referencia comunitaria para Kanban en el trabajo del conocimiento
lang: es-419
---
```

Translator credit goes in `site/data/contributions/open-guide-to-kanban.yml`.

### Translation Quality Standards

- **Accuracy**: Maintain meaning and intent of original content
- **Consistency**: Use consistent terminology across all translated content
- **Cultural Adaptation**: Adapt examples and references for target culture
- **Technical Precision**: Preserve technical Kanban terminology
- **Formatting**: Maintain markdown structure and formatting

## Content Validation

### Pre-Publication Checklist

#### Front Matter Validation

- [ ] All required fields present (`title`, `description`, `date`, `lang`)
- [ ] Creators/contributors only in default language (`index.md`)
- [ ] Translators only in translated pages (`index.{lang}.md`)
- [ ] Valid image URLs or proper hash values
- [ ] Consistent language codes

#### Content Quality

- [ ] Proper markdown formatting
- [ ] Working internal and external links
- [ ] Descriptive alt text for images
- [ ] Consistent heading hierarchy
- [ ] Spelling and grammar check

#### Content SEO

- [ ] Title under 60 characters
- [ ] Description under 160 characters
- [ ] Relevant keywords included
- [ ] Proper slug format

### Testing Content

1. **Local Testing**:

   ```bash
   hugo serve --source site --config hugo.yaml,hugo.local.yaml
   ```

2. **Preview Environment**: Test on [preview site](https://red-pond-0d8225910-preview.centralus.2.azurestaticapps.net/)

3. **Multi-language Testing**: Verify content displays correctly in all supported languages

## Troubleshooting

### Common Issues

#### Attribution Not Displaying

- **Problem**: Creators/contributors not showing on translated pages
- **Solution**: Ensure they're only defined in `index.md` (default language)

#### Image Not Loading

- **Problem**: Profile image not displaying
- **Solution**: Check image priority order and validate URLs/hashes

#### Translation Missing

- **Problem**: Content falling back to English
- **Solution**: Verify language-specific file exists and front matter is correct

### Debug Commands

```bash
# Check Hugo configuration
hugo config

# Validate content with drafts
hugo serve -D --verbose

# Build and check for errors
hugo --verbose
```

## Best Practices

### Content Organization

1. **Consistent Structure**: Maintain same organization across all languages
2. **Regular Updates**: Keep all language versions synchronized
3. **Version Control**: Use descriptive commit messages for content changes
4. **Collaborative Review**: Have content reviewed by subject matter experts

### Attribution Management

1. **Accurate Information**: Verify all profile links and contact information
2. **Permission**: Ensure consent before adding someone's attribution
3. **Regular Updates**: Keep profile information current
4. **Consistent Formatting**: Follow established patterns for all attributions

### Performance Optimization

1. **Image Optimization**: Use appropriate image sizes and formats
2. **Content Length**: Balance comprehensive coverage with page load performance
3. **Link Validation**: Regularly check for broken internal and external links
4. **SEO Maintenance**: Monitor and update meta information as needed

---

🔙 **Back to**: [Documentation Home](./README.md)  
➡️ **Next**: [Development Guide](./development.md) | [Configuration Reference](./configuration.md)
