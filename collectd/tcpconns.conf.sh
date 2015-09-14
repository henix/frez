#!/bin/sh
cat <<EOF
LoadPlugin tcpconns
<Plugin tcpconns>
	ListeningPorts false
EOF

for p in $LOCALPORTS; do
	echo "	LocalPort \"$p\""
done

for p in $REMOTEPORTS; do
	echo "	RemotePort \"$p\""
done

cat <<EOF
</Plugin>
EOF
