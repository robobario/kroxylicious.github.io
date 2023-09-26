# Kroxylicous.io Site

## What?

This is the repo containing the kroxylicious.io landing page

## Key Files
- [static/index.html](!OLD_static/index.html) - main page
- [styles/sass/mystyles.scss](!OLD_styles/sass/mystyles.scss) - configuring CSS with kroxy colours
- [build.sh](build.sh) - script to build site for development
- [.github/workflows/generate-pages.yml](.github/workflows/generate-pages.yml) - github pages deployment

## Development

Built with node 18

Running `build.sh` will build the CSS and copy everything from
static to a `build` directory that you can view in browser.

There is a github action that builds and deploys the HTML/CSS
to the `gh-pages` branch on push to `main`.
