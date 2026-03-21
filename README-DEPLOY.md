# PTL Signal — Deploy & Update Guide

## To deploy changes

```bash
cd ~/Desktop/ptl-signal && git add . && git commit -m "update" && git push
```

Or use the deploy script:

```bash
./deploy.sh
./deploy.sh "your commit message"
```

## To add a blog post

Create a new `.astro` file in `src/pages/blog/`

## To add an episode

Edit `src/pages/episodes.astro`
