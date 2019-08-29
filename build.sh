#!/bin/bash
#
# @desc Generate single HTML of Kapur Markdown Editor
# @author Rio Astamal <rio@rioastamal.net>
# @link https://github.com/rioastamal/kapur
#
[ ! -f src/lib/codemirror.js ] && {
    echo "Error: Make sure you run this script on root directory of html-editor." >&2
    exit 1
}

KAPUR_VERSION=1.1
JS_CONTENTS=
CSS_CONTENT=
BUILD_FILE=build/kapur-${KAPUR_VERSION}.html

cp src/kapur.html $BUILD_FILE

CODEMIRROR_LINE_BEGIN=$( sed -n '/!-- BEGIN CODEMIRROR -->/=' $BUILD_FILE )
CODEMIRROR_LINE_END=$( sed -n '/!-- END CODEMIRROR -->/=' $BUILD_FILE )
CONTENTS_BEFORE_CODEMIRROR=$( head -n $CODEMIRROR_LINE_BEGIN $BUILD_FILE )
CONTENTS_AFTER_CODEMIRROR=$( tail +$CODEMIRROR_LINE_END $BUILD_FILE )

for js in src/lib/*.js
do
    JS_CONTENTS="${JS_CONTENTS}
// --- File: $js
$( cat $js )
"
done

for js in src/mode/*.js
do
    JS_CONTENTS="${JS_CONTENTS}
// --- File: $js
$( cat $js )
"
done

for css in src/css/*.css
do
    CSS_CONTENTS="${CSS_CONTENTS}
/* --- File: $css ---*/
$( cat $css )
"
done

echo "$CONTENTS_BEFORE_CODEMIRROR" > $BUILD_FILE
echo "<script>$JS_CONTENTS</script>" >> $BUILD_FILE
echo "<style>$CSS_CONTENTS</style>" >> $BUILD_FILE
echo "$CONTENTS_AFTER_CODEMIRROR" >> $BUILD_FILE

# If we have zip command then compress the build file
hash zip && {
    zip build/kapur-${KAPUR_VERSION}.zip $BUILD_FILE;
}

ln -fs kapur-${KAPUR_VERSION}.html build/kapur.html

echo "Build file $BUILD_FILE complete."
