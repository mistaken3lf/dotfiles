# dotfiles

#### Vim Setup
- Clone this repo
- Install vim-plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- Change directory into the dotfiles folder, and copy the vimrc into your home directory: `cp vimrc ~/.vimrc`
- Copy the .vim directory to your home directory: `cp -r .vim ~`
- Open vim and then run `:PlugInstall` to install all plugins

#### Tmux Setup
- Copy the tmux config to your home directory: `cp tmux.conf ~/.tmux.conf`
