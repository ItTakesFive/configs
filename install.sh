#!/bin/sh

git submodule update --init

TARGET=${HOME}

if [ -d ${TARGET}/.vim_runtime ]; then
    mv ${TARGET}/.vim_runtime ${TARGET}/.vim_runtime.bkp
fi

if [ -f ${TARGET}/.tmux.conf ]; then
    mv ${TARGET}/.tmux.conf ${TARGET}/.tmux.conf.bkp
fi

if [ -f ${TARGET}/.tmux.conf.local ]; then
    mv ${TARGET}/.tmux.conf.local ${TARGET}/.tmux.conf.local.bkp
fi

ln -s $(pwd)/vimrc ${TARGET}/.vim_runtime
ln -s $(pwd)/tmux/.tmux.conf ${TARGET}/
cp -f $(pwd)/tmux/.tmux.conf.local ${TARGET}/

if [ ! -e vimrc/my_configs.vim/my_configs.vim ]; then
    cd vimrc
    ln -s ../my_configs.vim .
    cd ..
fi

for plugin in `ls plugins`
do
    if [ ! -e vimrc/source_non_forked/${plugin} ]; then
        cd vimrc/sources_non_forked
        ln -s ../../plugins/${plugin} .
        cd ../../
    fi
done

sh vimrc/install_awesome_vimrc.sh
