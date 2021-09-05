#!/bin/bash
# run with
# qsub -l nodes=1:ppn=2 -d . get_openbabel.sh
cd $HOME
git clone https://github.com/openbabel/openbabel
cd openbabel/
mkdir build
git checkout cbd4db4
cd build
cmake -DCMAKE_INSTALL_PREFIX=$HOME/openbabel-install -DBoost_INCLUDE_DIR=$HOME/boost_1_77_0-install/include ..
make
make install
