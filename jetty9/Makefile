JETTY_NAME := jetty-distribution-9.2.2.v20140723
GZFILE := $(JETTY_NAME).tar.gz
CWD := $(PWD)
TARGET ?= $(HOME)/jetty9

.PHONY: all

all: $(TARGET)

$(GZFILE):
	wget -c -O $(GZFILE) "http://eclipse.org/downloads/download.php?file=/jetty/stable-9/dist/$(GZFILE)&r=1"
	sha1sum -c $(GZFILE).sha1

$(JETTY_NAME): $(GZFILE)
	tar -xf $< --touch
	sed -i -f jmx-remote.sed $(JETTY_NAME)/etc/jetty-jmx-remote.xml

$(TARGET): $(JETTY_NAME)
	mkdir -p $@
	cd $@ ;\
	java -jar $(CWD)/$(JETTY_NAME)/start.jar --add-to-start=server,http,deploy,jsp,jstl,logging,jmx-remote
	printf "#!/bin/sh\ni=1\nexec java -Xmx1g -XX:MinHeapFreeRatio=10 -XX:+HeapDumpOnOutOfMemoryError -jar %s jetty.port=8\$${i}80 jetty.jmxrmiport=8\$${i}90\n" "$(CWD)/$(JETTY_NAME)/start.jar" > $@/start.sh
	chmod +x $@/start.sh
