all:
	stow --verbose --target=$$HOME --restow */
	./install.sh
delete:
	stow --verbose --target=$$HOME --delete */
min:
	stow --verbose --target=$$HOME --restow aliases vim
	./install.sh
