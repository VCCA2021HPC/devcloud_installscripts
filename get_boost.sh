#!/bin/bash
cd $HOME
wget https://downloads.sourceforge.net/project/boost/boost/1.77.0/boost_1_77_0.tar.gz
tar -xf boost_1_77_0.tar.gz
cd boost_1_77_0/
./bootstrap.sh --prefix=$HOME/boost_1_77_0-install
./b2 --build-dir=$HOME/boost_1_77_0-build toolset=gcc-9.3.0 stage address-model=64 
./b2 install --prefix=$HOME/boost_1_77_0-install --toolset=gcc-9.3.0 --build-type=complete --layout=versioned address-model=64 
./b2 --build-dir=$HOME/boost_1_77_0-build toolset=gcc-9.3.0 stage link=static address-model=64 
./b2 install --prefix=$HOME/boost_1_77_0-install --toolset=gcc-9.3.0 --build-type=complete --layout=versioned link=static address-model=64 
