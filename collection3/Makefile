COLLECTD_NAME := collectd-5.5.0
PKG_FILE := $(COLLECTD_NAME).tar.bz2
TARGET ?= $(HOME)/collection3

.PHONY: all

all: $(TARGET)/lighttpd.conf

$(PKG_FILE):
	wget -c "https://collectd.org/files/$(PKG_FILE)"
	sha256sum -c "$(PKG_FILE).sha"

$(COLLECTD_NAME): $(PKG_FILE)
	tar jxf "$<" --touch

$(TARGET): $(COLLECTD_NAME)
	cp -r "$</contrib/collection3" "$@"

$(TARGET)/lighttpd.conf: lighttpd.conf.sh $(TARGET)
	./$< "$(TARGET)" > $@
