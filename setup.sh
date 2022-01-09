cd ~
git clone https://github.com/shubhamkulkarni01/CSFiles .setup_files

ln -s -f ~/.setup_files/.bashrc ~/.bashrc
ln -s -f ~/.setup_files/.bash_aliases ~/.bash_aliases
ln -s -f ~/.setup_files/.gitconfig ~/.gitconfig
ln -s -f ~/.setup_files/.print_time ~/.print_time
ln -s -f ~/.setup_files/.condarc ~/.condarc
ln -s -f ~/.setup_files/.vim ~/.vim
ln -s -f ~/.setup_files/.vimrc ~/.vimrc

mkdir -p ~/.config/powerline-shell
ln -s -f ~/.setup_files/config.json ~/.config/powerline-shell/config.json

curl -o miniconda.sh -L https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
rm miniconda.sh

bash -c "pip install powerline-shell"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
