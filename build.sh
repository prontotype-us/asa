#!/bin/sh

# Ugly hack to prepend shebang
coffee -o bin -c src
cp bin/asa.js bin/asa.js.tmp
echo "#!/usr/bin/env node" > bin/asa.js.tmp
cat bin/asa.js >> bin/asa.js.tmp
mv bin/asa.js.tmp bin/asa.js
