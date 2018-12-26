#! /bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt-get install mercurial -y
sudo apt-get install build-essential python3 python-dev python3-dev python-distlib python-setuptools python-pip python3-pip python-wheel libzmq-dev libgdal-dev -y
sudo apt-get scratch

cd $HOME
git clone https://github.com/davidramirezm30/OrangePi.GPIO
cd OrangePi.GPIO/
sudo python setup.py install

cd $HOME
git clone https://github.com/davidramirezm30/orangepi_PC_gpio_pyH3
cd orangepi_PC_gpio_pyH3/
sudo python setup.py install

cd $HOME
git clone https://github.com/davidramirezm30/scratch-orangepi
sudo chmod -R 777 scratch-orangepi
sudo cp scratch-orangepi /opt
cd /opt/scratch-orangepi
sudo cp -r 'Scratch Projects' $HOME/Documentos
sudo cp scratchgpio.desktop $HOME/Escritorio

sudo rm -rf OrangePi.GPIO/
sudo rm -rf orangepi_PC_gpio_pyH3/
sudo chmod -R 777 OrangePi-config/
sudo rm -rf OrangePi-config/


