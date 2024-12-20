install: install-nvim install-bash install-zsh install-bash-extra\
		install-keybindings install-git install-fonts install-vim

install-git:
	rm -rf ~/.gitconfig ~/.git-templates ~/.gitattributes
	rm -rf ~/.config/git
	ln -s `pwd`/git ~/.config/git
	./git/install-git-completion

install-hg:
	rm -rf ~/.hgrc ~/.hgignore
	ln -s `pwd`/hg/hgrc ~/.hgrc
	ln -s `pwd`/hg/hgignore ~/.hgignore

install-bash:
	rm -rf ~/.bash_profile ~/.bashrc ~/.prompt
	ln -s `pwd`/bash/bash_profile ~/.bash_profile
	ln -s `pwd`/bash/bash_profile ~/.bashrc
	ln -s `pwd`/bash/prompt ~/.prompt

install-zsh:
	rm -rf ~/.zshrc ~/.zshenv
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	rm -rf ~/.config/starship.toml
	ln -s `pwd`/zsh/starship.toml ~/.config/starship.toml
	rm -rf ~/fzf.zsh
	ln -s `pwd`/zsh/fzf.zsh ~/.fzf.zsh

install-bash-extra:
	rm -rf ~/.ackrc ~/.aliases ~/.functions ~/.tmux.conf
	ln -s `pwd`/bash/ackrc ~/.ackrc
	ln -s `pwd`/bash/tmux.conf ~/.tmux.conf
	ln -s `pwd`/bash/aliases ~/.aliases
	ln -s `pwd`/bash/functions ~/.functions

install-nvim:
	rm -rf ~/.config/nvim
	mkdir -p ~/.config
	ln -s `pwd`/nvim ~/.config/nvim

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc

install-keybindings:
	rm -f ~/Library/KeyBindings/DefaultKeyBinding.dict
	mkdir -p ~/Library/KeyBindings
	cp `pwd`/osx/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict

install-fonts:
	cp `pwd`/fonts/* ~/Library/Fonts/

install-homebrew:
	./homebrew/brew.sh
	./homebrew/cask.sh

install-osx:
	rm -rf ~/Library/Preferences/org.herf.Flux.plist
	ln -s `pwd`/osx/flux/org.herf.Flux.plist ~/Library/Preferences/org.herf.Flux.plist

install-psql:
	rm -rf ~/.psqlrc
	ln -s `pwd`/psql/psqlrc ~/.psqlrc

install-sqlite:
	rm -rf ~/.sqliterc
	ln -s `pwd`/sqlite/sqliterc ~/.sqliterc

install-node:
	rm -rf ~/.nvm
	./node/install.sh

install-python:
	rm -rf ~/.pyenv
	./python/install.sh

install-alacritty:
	rm -rf ~/.config/alacritty
	ln -s `pwd`/alacritty ~/.config/alacritty
