git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/.vim/bundle/youcompleteme
python3 install.py --all

/bin/sh dotfilesLink.sh

:source %
:PluginInstall
