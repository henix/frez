JETTY_VERSION := 9.2.7.v20150116
JETTY_NAME := jetty-distribution-$(JETTY_VERSION)
GZFILE := $(JETTY_NAME).tar.gz
CWD := $(PWD)
TARGET ?= $(HOME)/jetty9

.PHONY: all

all: $(TARGET)

$(GZFILE):
	wget -c -O $(GZFILE) "https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/$(JETTY_VERSION)/$(JETTY_NAME).tar.gz"
	sha1sum -c $(GZFILE).sha1

$(JETTY_NAME): $(GZFILE)
	tar -xf $< --touch

$(TARGET): $(JETTY_NAME)
	mkdir -p $@/webapps
	install -v -m 664 start.ini $@
	printf "#!/bin/sh\ni=1\nexec java -Xmx1g -XX:MinHeapFreeRatio=10 -XX:+HeapDumpOnOutOfMemoryError -Djetty.jmxrmiport=8\$${i}90 -jar %s jetty.port=8\$${i}80\n" "$(CWD)/$(JETTY_NAME)/start.jar" > $@/start.sh
	chmod +x $@/start.sh
