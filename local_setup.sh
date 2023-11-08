wget "https://github.com/twbs/bootstrap/archive/v5.3.2.zip" # download the full Bootstrap 5 sources (including JS)
unzip v5.3.2.zip -d ./_sass # unpack the sources into the _sass/ directory
mkdir ./_sass/bootstrap # make a directory to put the Bootstrap 5 Sass sources into
mv ./_sass/bootstrap-5.3.2/scss ./_sass/bootstrap/scss # move the sources to your new directory
rm -r ./_sass/bootstrap-5.3.2 # delete all the other Bootstrap sources (i.e. except the Sass ones, which we moved)
rm v5.3.2.zip # delete the downloaded zip