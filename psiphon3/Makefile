.PHONY: all

all: psi_client.py psi_api.py psi_ssh_connection.py SocksiPy/socks.py ssh

REPO := https://bitbucket.org/psiphon/psiphon-circumvention-system/raw/default

psi_client.py:
	wget $(REPO)/pyclient/$@

psi_api.py:
	wget $(REPO)/pyclient/$@

psi_ssh_connection.py:
	wget $(REPO)/pyclient/$@
	sed -i -e 's|\./ssh|./ssh -F /dev/null|' $@

SocksiPy/socks.py:
	mkdir -p SocksiPy
	cd SocksiPy ; wget $(REPO)/pyclient/$@

ossh.tar.gz:
	wget $(REPO)/Server/3rdParty/$@

ossh/ssh: ossh.tar.gz
	mkdir -p ossh
	cd ossh ; tar xf ../$< && ./configure && make

ssh: ossh/ssh
	cp $< $@
