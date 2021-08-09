#!/bin/sh

INFO_ENV=$(export)
INFO_RAM=$(free -m)
INFO_RESOLV=$(cat /etc/resolv.conf)
INFO_HOSTS=$(cat /etc/hosts)

cat <<EOF >> /app/index.html
<h3>Environment</h3>
<pre>$INFO_ENV</pre>
<h3>Memory info</h3>
<pre>$INFO_RAM</pre>
<h3>DNS resolvers info</h3>
<pre>$INFO_RESOLV</pre>
<h3>Static hosts info</h3>
<pre>$INFO_HOSTS</pre>
<h3>Version<h3>
<pre>2</pre>
</body>
</html>
EOF
