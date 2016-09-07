#!/bin/sh

TARGET=${HOME}

if [ -e ${TARGET}/.vim_runtime ]; then
    unlink ${TARGET}/.vim_runtime
fi

if [ -e ${TARGET}/.tmux.conf ]; then
    unlink ${TARGET}/.tmux.conf
fi


if [ -e vimrc/my_configs.vim/my_configs.vim ]; then
    cd vimrc
    unlink my_configs.vim
    cd ..
fi

for plugin in `ls plugins`
do
    if [ -e vimrc/sources_non_forked/${plugin} ]; then
        cd vimrc/sources_non_forked
        unlink ${plugin}
        cd ../../
    fi
done
