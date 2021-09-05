#!/bin/bash
cd $HOME
git clone https://github.com/HongjianLi/idock
cd idock
git checkout v2.x
export Boost_ROOT=$HOME/boost_1_77_0-install
sed -i 's/clang++/g++/' Makefile
make
