MAVEN_VERSION := 3.2.1
MAVEN_NAME := apache-maven-$(MAVEN_VERSION)
PKG_FILE := $(MAVEN_NAME)-bin.tar.gz
TARGET ?= $(HOME)/maven

.PHONY: all

all: $(TARGET)

$(PKG_FILE):
	wget -c -O $(PKG_FILE) http://mirror.esocc.com/apache/maven/maven-3/$(MAVEN_VERSION)/binaries/$(PKG_FILE)
	sha1sum -c $(PKG_FILE).sha1

$(MAVEN_NAME): $(PKG_FILE)
	tar xf $< --touch

$(TARGET): $(MAVEN_NAME)
	mv $< $@
