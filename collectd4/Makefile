COLLECTD_NAME := collectd-4.10.9
PKG_FILE := $(COLLECTD_NAME).tar.bz2
TARGET ?= $(HOME)/collectd

.PHONY: all

all: $(TARGET)/etc/collectd.d

$(PKG_FILE):
	wget -c http://collectd.org/files/$(PKG_FILE)
	sha256sum -c $(PKG_FILE).sha256

$(COLLECTD_NAME): $(PKG_FILE)
	tar jxf $< --touch
	cd $@ ; \
	./configure --prefix=$(TARGET) --enable-java --enable-network
	which yacc
	which bison
	cd $@ ; \
	make -j3 all

$(TARGET): $(COLLECTD_NAME)
	cd $< ; \
	make install
	sed -e 's|\$$TARGET|$(TARGET)|g' collectd.conf > $@/etc/collectd.conf

$(TARGET)/etc/collectd.d: $(TARGET)
	mkdir $@
	sed -e 's|\$$TARGET|$(TARGET)|g' jmx.conf > $@/jmx.conf
	cp -u network.conf $@
