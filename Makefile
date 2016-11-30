install: install-nvim install-bash install-keybindings install-git

install-git:
		rm -rf ~/.gitconfig ~/.git-templates
		ln -s `pwd`/git/gitconfig ~/.gitconfig
		ln -s `pwd`/git/git-templates ~/.git-templates

install-bash:
		rm -rf ~/.bash_profile ~/.aliases ~/.functions ~/.prompt
		ln -s `pwd`/bash/bash_profile ~/.bash_profile
		ln -s `pwd`/bash/aliases ~/.aliases
		ln -s `pwd`/bash/functions ~/.functions
		ln -s `pwd`/bash/prompt ~/.prompt

install-nvim:
		rm -rf ~/.config/nvim
		ln -s `pwd`/nvim ~/.config/nvim

install-keybindings:
		rm -f ~/Library/KeyBindings/DefaultKeyBinding.dict
		mkdir -p ~/Library/KeyBindings
		cp `pwd`/osx/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
