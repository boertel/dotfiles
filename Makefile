install: install-nvim install-bash install-keybindings install-git\
		install-fonts install-vim

install-git:
	rm -rf ~/.gitconfig ~/.git-templates ~/.gitattributes
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitattributes ~/.gitattributes
	ln -s `pwd`/git/git-templates ~/.git-templates
	./git/install-git-completion

install-hg:
	rm -rf ~/.hgrc ~/.hgignore
	ln -s `pwd`/hg/hgrc ~/.hgrc
	ln -s `pwd`/hg/hgignore ~/.hgignore

install-bash:
	rm -rf ~/.bash_profile ~/.aliases ~/.functions ~/.prompt ~/.tmux.conf ~/.bashrc
	ln -s `pwd`/bash/bash_profile ~/.bash_profile
	ln -s `pwd`/bash/bash_profile ~/.bashrc
	ln -s `pwd`/bash/aliases ~/.aliases
	ln -s `pwd`/bash/functions ~/.functions
	ln -s `pwd`/bash/prompt ~/.prompt
	ln -s `pwd`/bash/tmux.conf ~/.tmux.conf

install-bash-extra:
	rm -rf ~/.ackrc
	ln -s `pwd`/bash/ackrc ~/.ackrc

install-nvim:
	rm -rf ~/.config/nvim
	mkdir -p ~/.config/nvim
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
