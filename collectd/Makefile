SUBCONFS := processes.conf tcpconns.conf
TARGETS := collectd.conf $(SUBCONFS)

all: $(TARGETS)

%.conf: %.conf.sh config.sh
	eval "env $$(tr '\n' ' ' < config.sh) ./$<" > $@

ABSPATHS := $(patsubst %,"$$PWD/%",$(SUBCONFS))

install:
	ln -s "$$PWD/collectd.conf" /etc/collectd/collectd.conf
	ln -s -t /etc/collectd/collectd.conf.d $(ABSPATHS)
