MAVEN_VERSION := 3.2.1
MAVEN_NAME := apache-maven-$(MAVEN_VERSION)
PKG_FILE := $(MAVEN_NAME)-bin.tar.gz
TARGET ?= $(HOME)/maven

.PHONY: all

all: $(TARGET)

$(PKG_FILE):
	aria2c -s3 http://mirrors.ibiblio.org/apache/maven/maven-3/$(MAVEN_VERSION)/binaries/$(PKG_FILE) http://mirrors.hust.edu.cn/apache/maven/maven-3/$(MAVEN_VERSION)/binaries/$(PKG_FILE) http://mirror.bit.edu.cn/apache/maven/maven-3/$(MAVEN_VERSION)/binaries/$(PKG_FILE)
	sha1sum -c $(PKG_FILE).sha1

$(MAVEN_NAME): $(PKG_FILE)
	tar xf $< --touch

$(TARGET): $(MAVEN_NAME)
	mv $< $@
