# APT Packages
sudo apt update
sudo apt upgrade
sudo apt install zsh -y # ZSH
sudo apt install build-essential cmake vim-nox python3-dev -y # for you complete me
sudo apt install mono-complete golang nodejs default-jdk npm -y # for you complete me

# Create Backups
mv ~/.config ~/.config.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.zshrc ~/.zshrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
# Move config files
cp ./config/.config ~/.config
cp ./config/vim/.vimrc ~/.vimrc
cp ./config/zsh/.zshrc ~/.zshrc
cp ./config/tmux/.tmux.conf ~/.tmux.conf

# Python Libraries

# For vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

# For ZSH
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh; sh install.sh # oh my zsh

# More stuff

# TODO
