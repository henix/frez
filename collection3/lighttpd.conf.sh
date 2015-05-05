#!/bin/sh
cat <<EOF
server.document-root = "$1"
server.port = 8888

dir-listing.activate = "disable"

mimetype.assign = (
  ".css" => "text/css"
)

server.modules += ( "mod_cgi" )

cgi.execute-x-only = "enable"
cgi.assign = ( ".cgi" => "" )

index-file.names = ( "bin/index.cgi" )
EOF
