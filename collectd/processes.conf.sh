#!/bin/sh
cat <<EOF
LoadPlugin processes
<Plugin processes>
EOF

for p in $PROCESSES; do
	echo "	Process \"$p\""
done

cat <<EOF
</Plugin>
EOF
