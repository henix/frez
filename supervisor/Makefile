.PHONY: install

install:
	install -vd /var/log/supervisor
	install -v supervisord.conf /etc/
	install -v supervisord.yum /etc/rc.d/init.d/supervisord
	chkconfig --add supervisord
