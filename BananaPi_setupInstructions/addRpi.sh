sudo chmod 777 -R /usr/local/lib/python3.8
cd /
git clone https://github.com/LeMaker/RPi.GPIO_BP -b bananapro
sudo apt-get update
sudo apt-get install python-dev
cd /RPi.GPIO_BP
python setup.py install                 
sudo python setup.py install