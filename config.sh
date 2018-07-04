#!/bin/bash
mkdir ~/msfthack
cd ~/msfthack
echo "cloning darknet"
git clone https://github.com/Iamnvincible/darknet.git
cd darknet
echo "starting make"
make
echo "cloning retinanet"
cd .. 
git clone https://github.com/fizyr/keras-retinanet.git
cd keras-retinanet 
pip install . --user
cd ~
mkdir .jupyter
cd .jupyter
wget https://raw.githubusercontent.com/Iamnvincible/jupyterconfig/master/jupyter_notebook_config.py
cd ~/msfthack
echo "starting jupyter notebook on port 9999"
jupyter notebook >jupyter.log 2>&1 &
echo "done"
