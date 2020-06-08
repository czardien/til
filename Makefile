install:
	chmod +x ./til.sh
	chmod +x ./til-new.sh
	chmod +x ./til-ls.sh
	chmod +x ./til-rm.sh
	chmod +x ./til-git.sh
	ln -sf $(shell pwd)/til.sh $(HOME)/.local/bin/til
	ln -sf $(shell pwd)/til-new.sh $(HOME)/.local/bin/til-new
	ln -sf $(shell pwd)/til-ls.sh $(HOME)/.local/bin/til-ls
	ln -sf $(shell pwd)/til-rm.sh $(HOME)/.local/bin/til-rm
	ln -sf $(shell pwd)/til-git.sh $(HOME)/.local/bin/til-git

all: install
