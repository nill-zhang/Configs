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


#with clang support
mkdir -p ~/ycm_temp/llvm_root_dir
curl -O http://releases.llvm.org/3.9.0/clang+llvm-3.9.0-x86_64-fedora23.tar.xz
tar -C ycm_temp/llvm_root_dir -xJf clang+llvm-3.9.0-x86_64-fedora23.tar.xz
cd ~/ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir/clang+llvm-3.9.0-x86_64-fedora23 . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core
