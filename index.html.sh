#!/bin/bash

cat <<EOF
<html>
<body>
<h1>Public repo for Mailu helm chart</h1>
<h2>Installation</h2>
<p>
<pre>
helm repo add mailu https://mailu.github.io/helm-charts/
helm install mailu/mailu
</pre>
</p>
<h2>Available versions</h2>
<ul>
EOF

ls mailu-*.tgz | sed -n 's/^.*mailu-\(.*\)\.tgz$/\1/p' | sort -ur | while read VERSION; do
    echo "<li><a href=\"mailu-${VERSION}.tgz\">${VERSION}</a></li>"
done

cat <<EOF
</ul>
</body>
</html>
EOF
