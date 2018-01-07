# Hugo Theme RevealJS

[![CircleCI](https://circleci.com/gh/RealOrangeOne/hugo-theme-revealjs.svg?style=svg)](https://circleci.com/gh/RealOrangeOne/hugo-theme-revealjs)

Use [Hugo](https://gohugo.io) to create slideshow presentations, powered by [reveal.js](https://revealjs.com/#/).

![Screenshot](https://github.com/RealOrangeOne/hugo-theme-revealjs/blob/master/images/screenshot.png?raw=true)

Visit [the nelify site](https://hugo-theme-revealjs.netlify.com/) for an example and usage instructions. 

## Configuration
- `params.reveal_theme`: css theme name for revealjs (default: `night`)
- `params.hljs_theme`: css theme name for highlight.js (default: `monokai_sublime`)
- `params.revealjs`: configuration options passed directly to `Reveal.initialise`. ([default](data/reveal_defaults.yml))

### Optimisation
RevealJS is a single-page application, meaning the only required file is `index.html`. As all static assets are loaded from `cdnjs`, there's very little that needs to be rendered. 

By default, no dedicate pages / sections are rendered. To reduce the output to only the required files, add this to your sites config:

```yaml
disableKinds:
    - "sitemap"

outputs:
    home:
        - "html"
```
