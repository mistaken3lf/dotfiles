# dotfiles

#### Using oh-my-zsh
- Make sure zsh and curl is installed before installing oh-my-zsh. Run `apt-get update` then `apt-get install zsh curl`.
- Once zsh is instal run the following command: `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#### Vim setup
- Install vim-plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- Clone my dotfiles repo `git clone https://github.com/knipferrc/dotfiles.git`
- Change directory into the dotfiles folder and copy my vimrc to yours: `cp vimrc ~/.vimrc`
- Copy the .vim directory to your home directory: `cp .vim ~/`


