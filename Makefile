all:
	stow --verbose --target=$$HOME --restow */
	./install.sh
delete:
	stow --verbose --target=$$HOME --delete */