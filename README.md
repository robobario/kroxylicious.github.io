# Kroxylicous.io Site

## What?

This is the repo containing the kroxylicious.io website. The site runs on Jekyll, so you'll need to ensure you have the [prerequisites](https://jekyllrb.com/docs/) installed to try it locally.

## Key Files
- [Gemfile](Gemfile) - required ruby gems for building and serving the site
- [_config.yml](_config.yml) - Jekyll configuration for building the site
- [_sass/kroxylicious.scss](_sass/kroxylicious.scss) - configuring CSS with kroxy colours
- [.github/workflows/jekyll-gh-pages.yml](.github/workflows/jekyll-gh-pages.yml) - workflow for building and deploying to GitHub Pages

## Development

Built with Jekyll and Bootstrap 5

There is a GitHub action that builds and deploys the HTML/CSS
to the `gh-pages` branch on push to `main`.

We don't use the Bootstrap 5 ruby gem here, as it runs on a
`dart-sass` implementation that's incompatible with the one Jekyll uses.

### Running Locally

To run the site locally, you'll first need to update the [Gemfile](Gemfile) by uncommenting the `jekyll` gem on line 10 and commenting out the `github-pages` gem on line 15.

You'll then need to download the Bootstrap 5 Sass sources, which can be done with the following commands:

```bash
wget "https://github.com/twbs/bootstrap/archive/v5.3.2.zip" # download the full Bootstrap 5 sources (including JS)
unzip v5.3.2.zip -d ./_sass # unpack the sources into the _sass/ directory
mkdir ./_sass/bootstrap # make a directory to put the Bootstrap 5 Sass sources into
mv ./_sass/bootstrap-5.3.2/scss ./_sass/bootstrap/scss # move the sources to your new directory
rm -r ./_sass/bootstrap-5.3.2 # delete all the other Bootstrap sources (i.e. except the Sass ones, which we moved)
rm v5.3.2.zip # delete the downloaded zip
```

Then install the site's prerequisites by running this:

```bash
bundle install
```

You can then run the site with this command (don't close the terminal once you've run this, or the process serving the site will terminate):

```bash
bundle exec jekyll serve
```