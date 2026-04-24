# AGENTS.md — PTL Signal Project Rules

This file instructs AI agents (Claude, Copilot, etc.) on how to work in this repository.

## PTL Signal Blog

1. **`blog.astro` must dynamically generate the post list using `Astro.glob('./blog/*.astro')`.**
   Never manually add posts to the index. Every `.astro` file in `src/pages/blog/` must automatically appear, sorted by date descending.

2. **The homepage (`src/pages/index.astro`) latest posts section must also dynamically pull from the same source, showing the 3 most recent posts by date.**
   No hardcoded entries on any page.

3. **Every blog post frontmatter must include these exported fields:**
   ```js
   export const frontmatter = {
     title: "...",           // string
     description: "...",    // string — used as excerpt in blog cards
     image: "...",          // string — path like /blog/image.webp (empty string if none)
     date: "YYYY-MM-DD",    // ISO date string for sorting
     tags: ["Tag1"],        // array of strings — first tag is shown on blog card
     slug: "..."            // matches the filename without .astro
   };
   ```

4. **After every deployment, purge the Cloudflare cache for ptlsignal.com.**
   Zone ID: `af0899e74254507153fc7e528843d084`
   The `_headers` file in the project root sets cache-control headers for `/` and `/blog` to prevent stale pages.

5. **PTL Signal deploys automatically from GitHub pushes to the `ptl-signal-site` project on Cloudflare Pages.**
   Never use `npx wrangler pages deploy`. Just `git push` to `main`.

6. **The `ptl-signal` project on Cloudflare Pages is a legacy/test project.**
   Never deploy to it.

7. **Cloudflare zone ID for ptlsignal.com:** `af0899e74254507153fc7e528843d084`
