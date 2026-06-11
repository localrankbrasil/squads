# Blog Post Writer Skill

## Step 1 - Collect Inputs

Before writing anything, ask the user for all required inputs in a single organized message.

Ask for:

- Language: the language the blog post should use.
- Title: the exact blog post title. This becomes the H1.
- Target Location: city and/or state for localization.
- Focus Keyword: the primary SEO keyword.
- Primary Internal Link for the introduction: URL and exact anchor text.
- Additional Internal Links for the body: one or more URL and anchor text pairs.
- Conclusion Internal Link: URL and exact anchor text.
- Client Info: business type, services, target audience, tone, differentiators, positioning, and anything useful for personalization.

If the user already provided enough information, proceed without blocking. Ask only for genuinely missing critical inputs that cannot be inferred from client context, repo context, or the brief.

Client context is mandatory. The post must be tailored to the specific client, service positioning, audience, service area, and tone. Naturally reference the client or business context when it helps the reader, but avoid promotional filler.

## Step 2 - Write The Blog Post

Write the full post in the specified language.

### Required Structure

- H1 must be the exact title provided.
- Introduction must have 3 paragraphs with no label and no "Introduction" heading.
- The body must have 4 main sections.
- Each main section must have 1 H2.
- Each H2 section must include 3 H3s.
- Each H3 must include 3 detailed paragraphs.
- Each H3 block must stay under 280 words.
- Conclusion must have an H2 labeled "Wrapping Up" or a topically relevant phrase.
- Never use "Conclusion" or "In Conclusion".
- Conclusion must have 2 paragraphs.
- The conclusion must appear before FAQs.
- FAQs must appear after the conclusion.

### Public Content vs Operational Notes

Separate public article content from delivery notes.

Public WordPress content includes:

- H1/title handled according to the publishing context.
- Introduction.
- Main body sections.
- Related Articles blocks.
- Conclusion.
- Yoast FAQ block.

Operational delivery notes include:

- Featured image prompt.
- Supporting image suggestions.
- SEO Output.
- Final checklist notes.

Do not publish operational notes as visible article content in WordPress.

## Yoast Readability Hard Limits

Treat readability as a mandatory editing phase, not a final glance. The post cannot be delivered while Yoast shows red or orange issues for passive voice, consecutive sentence starters, subheading distribution, sentence length, paragraph length, transition words, or word complexity.

If a draft produces these common failures, revise before delivery:

- Passive voice above 10%.
- Three or more consecutive sentences starting with the same word.
- Any text block above 300 words without a subheading.
- More than 25% of sentences over 20 words.
- Any paragraph above 150 words.
- Fewer than 30% of sentences using transition words.
- More than 10% complex words when Yoast Premium flags word complexity.

Safe internal targets:

- Passive voice: aim below 7%, never above 10%.
- Long sentences: aim below 20%, never above 25%.
- H3 blocks: aim for 220 to 250 words, never above 280.
- Paragraphs inside H3 blocks: aim for 60 to 85 words, never above 100.
- All paragraphs: aim below 120 words, never above 150.
- Transition words: aim for at least 35% of sentences, never below 30%.
- Complex words: aim below 8%, never above 10% when the check is available.
- Consecutive starters: zero repeated starters in adjacent sentences.

## Paragraph Depth Requirement

For client blog posts that require deeper prose, every public article paragraph must have at least 400 characters.

This applies to:

- introduction paragraphs
- body paragraphs
- conclusion paragraphs
- FAQ answers when they appear as visible paragraph text

Keep these depth rules compatible with Yoast:

- Each public paragraph should be at least 400 characters unless the client explicitly asks for shorter copy.
- No paragraph may exceed 150 words.
- Each H3 block must stay under 280 words.
- No block between headings may exceed 300 words.

If a paragraph is under 400 characters, deepen it with concrete cause, example, local detail, practical consequence, or contractor logic. Do not add filler.

### Passive Voice

Keep passive voice under 10%.

Use no more than 1 passive sentence per every 10 sentences. Prefer active constructions.

Revision method:

- Find "is/are/was/were/been/being" followed by a past participle.
- Ask who performs the action.
- Move that actor to the front of the sentence.
- Use a direct verb.
- If the actor is unknown or irrelevant, keep the passive sentence only when it improves clarity.

Common rewrites:

Passive: "The service is recommended for local businesses."

Active: "We recommend this service for local businesses."

Passive: "The page was optimized for search engines."

Active: "The SEO team optimized the page for search engines."

Passive: "The issue can be fixed with better headings."

Active: "Better headings can fix the issue."

Examples:

Passive: "The damage was caused by moisture."

Active: "Moisture caused the damage."

Passive: "The work was completed by the crew."

Active: "The crew completed the work."

### Sentence Length

Keep fewer than 25% of sentences over 20 words.

Aim for 10 to 16 words in most sentences. Never write two sentences over 20 words in a row. A paragraph should not contain more than one long sentence.

When a sentence uses "which," "because," "although," "while," or "however" in the middle, consider splitting it.

Revision method:

- Split one long idea into two sentences.
- Remove filler phrases.
- Replace long openings with direct subjects.
- Turn clauses after "which," "because," "although," and "while" into separate sentences when possible.
- Use transition words to keep flow after splitting.

Example:

Long: "When a business owner waits too long to improve local SEO, the website can lose visibility and miss leads that competitors capture every week."

Better: "Waiting too long to improve local SEO costs leads. Competitors capture that demand every week."

### Subheading Distribution

No block between headings may exceed 300 words.

Keep every H3 block under 280 words. Aim for three paragraphs of roughly 70 to 90 words each.

Never write a paragraph longer than 100 words inside an H3 block.

Revision method:

- Check every section from one heading to the next heading.
- If a block approaches 250 words, close the thought.
- If a block passes 280 words, add a new H3 or cut the section.
- Do not hide long sections under broad headings.
- Use H2s for major topics and H3s for smaller points inside them.

### Consecutive Sentence Starters

Never start two consecutive sentences with the same word.

Watch common starters such as "The", "This", "It", "You", "They", "When", "If", and "A".

Revision method:

- Read the first word of every sentence in each paragraph.
- Rewrite immediately if two adjacent sentences begin with the same word.
- Use a stronger subject, transition phrase, or reordered sentence.
- Avoid using the focus keyword as the starter in consecutive sentences.

Examples:

Repetitive: "The page needs clearer headings. The content also needs shorter sentences."

Better: "The page needs clearer headings. Shorter sentences also help readers move faster."

Repetitive: "You can improve the post with active voice. You can also add transition words."

Better: "You can improve the post with active voice. Transition words also make the copy flow."

### Paragraph Length

Keep every paragraph below 150 words.

Yoast gives an orange warning above 150 words and a red warning above 200 words. Use a stricter internal limit. Aim for 60 to 85 words in most paragraphs and never exceed 120 unless the paragraph truly needs it.

Revision method:

- Make each paragraph cover one specific idea.
- Start with a core sentence that summarizes the paragraph.
- Move supporting details into the next paragraph if the paragraph grows too long.
- Break long paragraphs by separating cause, example, result, or next step.
- Avoid deleting useful content only to shorten the paragraph. Improve the structure instead.

### Transition Words

Use transition words in at least 30% of sentences.

Aim for 35% or more to create a safety margin. Transition words help readers understand how ideas connect.

Use them to show:

- cause and effect: "therefore", "as a result", "so", "because"
- clarification: "in other words", "to clarify"
- contrast: "however", "but", "on the other hand"
- example: "for example", "for instance"
- emphasis: "most importantly", "above all"
- addition: "also", "in addition", "besides that"
- time or sequence: "after that", "meanwhile", "subsequently"
- similarity: "similarly", "likewise"
- summary: "in short", "to sum it up"

Do not force transition words into every sentence. Use them where they make the relationship between ideas clearer.

### Word Complexity

When Yoast Premium flags word complexity, keep complex words below 10%.

Aim below 8%. Replace uncommon or long words with simpler alternatives when the simpler word keeps the meaning.

Revision method:

- Replace jargon with plain language.
- Prefer common words over technical words unless the audience expects the term.
- Keep necessary industry terms when they are central to the topic.
- Explain unavoidable technical terms in simple language.

Examples:

Complex: "utilize"

Better: "use"

Complex: "approximately"

Better: "about"

Complex: "assistance"

Better: "help"

## Readability Revision Workflow

After drafting, run a dedicated readability pass before SEO polish.

### Pass 1 - Structure

Check headings first.

Every long idea needs a heading. Keep one clear H1, use H2s for main sections, and use H3s to break complex sections into smaller parts. Do not skip heading levels.

### Pass 2 - Sentence Length

Scan every sentence over 20 words.

Shorten or split most of them. Keep a long sentence only when it adds rhythm and the surrounding sentences are short.

### Pass 3 - Passive Voice

Scan for passive constructions.

Rewrite passive sentences into active sentences unless the actor is unknown or irrelevant.

### Pass 4 - Sentence Starters

Check the first word of every sentence in sequence.

No two adjacent sentences may start with the same word. Use synonyms, transition words, reordered sentence structure, or clearer subjects.

### Pass 5 - Paragraph Length And Flow

Each paragraph should start with the main idea, then explain it.

Keep every paragraph below 150 words. Split paragraphs that cover more than one idea.

### Pass 6 - Transition Words

Use transition words where they help the reader understand the relationship between ideas. Good options include "also", "however", "because", "therefore", "for example", "in most cases", "as a result", and "besides that".

At least 30% of sentences should include a transition word. Aim for 35%.

### Pass 7 - Word Complexity

Replace complex words with simpler words when possible.

Keep necessary technical terms only when the audience needs them. Explain them in plain language.

### Pass 8 - Final Yoast Gate

Do not deliver the post unless it should pass these Yoast thresholds:

- Passive voice below 10%.
- Long sentences below 25%.
- No consecutive sentence starter warning.
- No subheading distribution warning.
- Paragraphs below 150 words.
- Transition words in at least 30% of sentences.
- Complex words below 10% when the check is available.

## SEO And Keyword Optimization

Include the focus keyword in:

- first sentence when natural
- first paragraph no matter what
- H1
- SEO title
- meta description
- at least one H2
- multiple H3s when natural
- final paragraph

Keep keyword density around 0.5% to 2%.

Use synonyms and variations to avoid repetition.

The introduction must make the topic clear for new visitors. Use the focus keyword as early as possible, preferably in the first sentence. If that sounds forced, use it in the first paragraph. Do not open with a long anecdote that delays the topic.

Use an inverted pyramid structure in the introduction:

- start with the core point
- explain why it matters
- show what the reader will learn

Create:

- SEO title around 60 characters with the keyword near the beginning.
- Meta description between 120 and 156 characters, ideally 150 to 156, with the keyword.
- URL slug in lowercase, hyphenated, and keyword-based.

SEO title rules:

- align the SEO title with the H1
- make it clear enough to earn clicks
- avoid excessive separators, repetition, and keyword stuffing
- make sure it accurately reflects the page content
- include the brand only when useful

Heading rules:

- use one H1 only
- use H2s for main sections
- use H3s to divide H2 sections
- never skip heading levels
- avoid vague headings like "Introduction" or "More information"
- use the focus keyword in 30% to 75% of H2/H3 headings when natural
- use synonyms and related terms in other headings

## Internal Links

Use the primary link naturally in one of the 3 intro paragraphs with exact anchor text.

Use body links inside body sentences with exact anchor text. Never put links in headings.

Use the conclusion link naturally in the conclusion with exact anchor text.

Each internal URL can appear only once in the article.

Never repeat the primary introduction URL as an additional body link.

If the client provides a default body-link list, choose only links that fit the topic and exclude any URL already used as the primary introduction link.

Distribute body links evenly through the main body. Avoid paragraphs with multiple contextual internal links unless the paragraph is a dedicated related-content block.

When a topic uses a service URL as the primary introduction link, that same service URL must not appear again in the body or conclusion.

## Cluster Links

When the post belongs to a content cluster, add related cluster posts inside the main body only.

If the article is the first post in a brand-new cluster, do not add `Related Articles:` to that post and do not update older posts. Record that cluster links will start after a second related post exists.

Use this Gutenberg/HTML paragraph format:

```html
<!-- wp:paragraph -->
<p><strong>Related Articles:</strong><br><a href="https://example.com/first-article/">First Related Article Title</a><br><a href="https://example.com/second-article/">Second Related Article Title</a></p>
<!-- /wp:paragraph -->
```

Rules:

- label must be exactly `Related Articles:`
- links must appear one per line with `<br>`
- place the block at the end of a relevant body section, after that section's normal paragraphs
- never place related-content blocks in the introduction, conclusion, or FAQ section
- never place `Related Articles:` immediately after an H2 or H3
- keep only one `Related Articles:` block per section
- when updating old cluster posts, add the new backlink to an existing `Related Articles:` block when one exists
- never create two consecutive `Related Articles:` blocks in the same section
- after publishing a new cluster post, update old cluster posts with a backlink to the new post
- skip all cluster-link insertion when the post is the first article in a new cluster

### Uniform Cluster Placement

When a cluster has at least 3 posts, normalize the cluster across all relevant posts:

- New post: add one `Related Articles:` block at the end of the first main body section and one at the end of the second main body section.
- Older cluster posts: update them to follow the same pattern, with one `Related Articles:` block at the end of the first main body section and one at the end of the second main body section.
- Each block should point to a different related post when possible.
- Each post should link to the other cluster posts without linking to itself.
- Remove or relocate older cluster links that appear near the conclusion, FAQ section, or an inconsistent section.
- Validate the live/raw content after publishing: each post in the cluster should have exactly the intended number of `Related Articles:` blocks and backlinks.

## External Links

Include 5 authoritative external links from `.gov`, `.edu`, or official industry organizations.

Place them naturally throughout the body. Never place them as a list at the end.

Do not link to competitors.

All outbound links must be checked before delivery.

Rules:

- Open each outbound link and confirm the page loads.
- Confirm the page matches the claim or topic being cited.
- Confirm the source is not a direct competitor.
- If delivering HTML, set external links to open in a new tab with `target="_blank"` and `rel="noopener noreferrer"`.
- If a link is broken, search Google for the original topic or source title.
- Replace the broken link with the closest authoritative source.
- Prioritize `.gov`, `.edu`, and official industry organization pages.
- Do not replace broken links with generic homepages unless the homepage is the only relevant official source.

## Humanization And Anti-AI Writing

Write like a specialist explaining something to a regular person.

Use contractions when natural in the selected language. Be conversational. Add light personality when appropriate.

Allowed phrases include:

- "In most cases..."
- "What we usually see in [location]..."
- "A common mistake homeowners make is..."

Never use:

- "In today's world..."
- "Let's dive in..."
- "It's important to note..."
- "In conclusion..."
- "This comprehensive guide..."
- "Game-changer"
- "cutting-edge"
- "seamless"
- "robust"

## Formatting Hard Rules

Do not use:

- bullet points
- numbered lists
- tables
- dividers

The final blog post must use flowing prose paragraphs.

## Step 3 - Featured Image Generation

After the post, generate a featured image using this exact prompt. Replace `[INSERT TITLE HERE]` with the real title.

```text
Create an ultra-realistic, high-quality featured image for a blog post. Blog Post Title: [INSERT TITLE HERE]. Requirements: The image must be horizontal (landscape format). Do NOT include any text, words, letters, or typography in the image. The image should look like a real photograph - not AI-generated, not an illustration, not a cartoon. Use natural lighting, realistic textures, and authentic environments. The scene must visually represent the topic of the blog post based on the title provided. Avoid overly dramatic, surreal, or artificial elements. Composition should be clean and professional, suitable for a website featured image. If applicable, include subtle depth of field with the background slightly blurred for realism. Style guidelines: modern, clean, and natural look. Slight cinematic feel, but still realistic. No filters that make the image look edited or fake.
```

## Step 3b - Additional Image Suggestions

After the featured image, suggest 3 supporting images for the body.

For each image, provide:

- description of the image
- SEO alt text including the keyword and location

## Step 4 - SEO Output

Provide a clearly labeled block at the end with:

- Focus Keyword
- Meta Title around 60 characters
- Meta Description between 150 and 156 characters
- URL Slug

This block is an operational deliverable only. Do not publish it as visible WordPress article content.

## Step 5 - FAQs

Write 5 FAQs optimized for Google's People Also Ask box.

Rules:

- Questions must reflect real searches.
- Include keyword and location in questions.
- At least 3 questions must use the exact keyword.
- Answers must be clear, direct, practical, and 2 to 4 sentences.

### Yoast FAQ Block Requirement

When publishing to WordPress with Yoast, FAQs must use a Yoast FAQ block, not normal H3 headings and paragraphs.

Use Gutenberg/Yoast FAQ structure:

```html
<!-- wp:yoast/faq-block {"questions":[...]} -->
<div class="schema-faq wp-block-yoast-faq-block">
  <div class="schema-faq-section" id="faq-question-example">
    <strong class="schema-faq-question">Question text?</strong>
    <p class="schema-faq-answer">Answer text.</p>
  </div>
</div>
<!-- /wp:yoast/faq-block -->
```

After publishing, validate:

- `wp-block-yoast-faq-block` is present.
- 5 `schema-faq-section` elements are present.
- 5 `schema-faq-question` elements are present.
- `FAQPage` appears in Yoast schema.
- 5 Question schema nodes are present.

If these checks fail, the FAQ task is not complete.

## WordPress Publishing Requirements

When publishing to WordPress:

- If the WordPress theme renders the post title as the page H1, do not include a second visible H1 inside post content.
- Publish only public article content. Exclude SEO Output, image suggestions, and checklist notes from the visible post body.
- Configure title, slug, category, featured image, Yoast SEO title, Yoast meta description, and focus keyword.
- Validate the final URL after publishing.

Final live checks:

- Single visible H1.
- Yoast title/meta present.
- Canonical points to the final URL.
- Featured image present with SEO filename/title/alt/caption/description when available.
- Correct category present.
- External links open in a new tab with `rel="noopener noreferrer"` when HTML is used.
- Yoast FAQ block/schema present when FAQs are included.
- Related Articles placement matches the cluster rules.

## Step 6 - Final Quality Check

Before outputting, verify:

- focus keyword appears in first paragraph, final paragraph, H1, H2, H3s, and meta description
- focus keyword appears in the SEO title
- focus keyword appears in the introduction, preferably the first sentence
- meta title is around 60 characters
- meta description is 120 to 156 characters, ideally 150 to 156
- headings follow a logical H1/H2/H3 hierarchy
- focus keyword appears naturally in 30% to 75% of H2/H3 headings
- passive voice is under 10%
- fewer than 25% of sentences exceed 20 words
- every H3 block stays under 280 words
- no two consecutive sentences start with the same word
- every paragraph stays below 150 words
- every public paragraph has at least 400 characters when the client requires deeper prose
- transition words appear in at least 30% of sentences
- complex words stay below 10% when the check is available
- internal links use exact anchor text
- 5 authoritative external links are included
- outbound links work and open in a new tab when HTML is used
- broken outbound links are replaced with the closest authoritative source
- Yoast FAQ block and FAQPage schema are present when publishing to WordPress
- conclusion appears before FAQs
- SEO Output and Image Suggestions are not published as visible article content
- WordPress live URL has a single visible H1
- cluster posts are normalized with Related Articles at the end of section 1 and section 2 when the cluster has 3+ posts
- no bullets, numbered lists, tables, or dividers appear in the final blog post
- tone is natural, human, and conversational
