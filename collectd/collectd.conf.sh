#!/bin/sh
cat <<EOF
Hostname "$HOST_NAME"

LoadPlugin syslog
<Plugin syslog>
	LogLevel info
</Plugin>

LoadPlugin load
LoadPlugin cpu
LoadPlugin contextswitch
LoadPlugin memory
LoadPlugin swap
LoadPlugin interface

LoadPlugin rrdtool
<Plugin rrdtool>
	DataDir "/var/lib/collectd/rrd"
</Plugin>

Include "/etc/collectd/collectd.conf.d/*.conf"
EOF
