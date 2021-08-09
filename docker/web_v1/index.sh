#!/bin/sh

INFO_ENV=$(export)
INFO_RESOLV=$(cat /etc/resolv.conf)
INFO_HOSTS=$(cat /etc/hosts)

cat <<EOF > /usr/share/nginx/html/index.html
<h3>Environment</h3>
<pre>$INFO_ENV</pre>
<h3>DNS resolvers info</h3>
<pre>$INFO_RESOLV</pre>
<h3>Static hosts info</h3>
<pre>$INFO_HOSTS</pre>
<h3>Version = 2<h3>
</body>
</html>
EOF
