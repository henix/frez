PKG_FILE := javamelody-1.49.0.zip

.PHONY: all install

all: javamelody.jar jrobin-1.5.9.1.jar

$(PKG_FILE):
	wget -c http://javamelody.googlecode.com/files/$(PKG_FILE)
	sha1sum -c $(PKG_FILE).sha1

javamelody.jar: $(PKG_FILE)
	unzip -n $< $@
	touch $@

jrobin-1.5.9.1.jar: $(PKG_FILE)
	unzip -n $< $@
	touch $@

install:
	cp -u javamelody.jar $(TARGET)/WEB-INF/lib/
	cp -u jrobin-1.5.9.1.jar $(TARGET)/WEB-INF/lib/
