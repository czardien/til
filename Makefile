install:
	chmod +x ./til.sh
	chmod +x ./til-new.sh
	chmod +x ./til-ls.sh
	chmod +x ./til-rm.sh
	ln -sf $(shell pwd)/til.sh $(HOME)/.local/bin/til.sh
	ln -sf $(shell pwd)/til-new.sh $(HOME)/.local/bin/til-new.sh
	ln -sf $(shell pwd)/til-ls.sh $(HOME)/.local/bin/til-ls.sh
	ln -sf $(shell pwd)/til-rm.sh $(HOME)/.local/bin/til-rm.sh

all: install
