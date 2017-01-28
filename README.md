YouCompleteMe is not working in .vimrc

Manual Solution:
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
yum install cmake gcc-c++ automake kernel-devel python-devel python3-devel
./install.py

#Using Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim/bundle
:PluginInstall(inside Vim)
yum install cmake gcc-c++ automake kernel-devel python-devel python3-devel
cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core
#for go support
cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/gocode
go build
