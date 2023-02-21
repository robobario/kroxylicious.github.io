SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd $SCRIPT_DIR/styles
npm install
npm run css-build
cp -R $SCRIPT_DIR/static $SCRIPT_DIR/build
cp css/mystyles.css $SCRIPT_DIR/build
