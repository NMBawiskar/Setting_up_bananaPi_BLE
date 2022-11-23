sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock

sudo apt-get update

sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev
sudo apt-get install zlib1g-dev
cd /opt
sudo wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
sudo tar xzf Python-3.8.12.tgz
cd Python-3.8.12
sudo ./configure --enable-optimizations
sudo make altinstall
echo "=============================1.  Python3.8 Installation Done ========================================"

cd /
sudo apt-get remove python3-pip
sudo apt-get install python3-pip
pip3.8 install pyserial==3.5
echo "=============================2.  Pyserial Installation Done ========================================"

sudo chmod 755 /usr/
sudo apt-get update -y
sudo apt-get install -y freetds-dev
sudo apt install unixodbc-dev
pip3.8 install pymssql==2.2.5
echo "=============================3.  pymssql Installation Done ========================================"
echo "Adding USER to dialout group for Serial communication......."
sudo adduser $USER dialout 

echo "Changing permission of ttys0 port......."
cd /dev
sudo chown pi ttyS0

echo "Changing python3.8 folder permission......."
sudo chmod 777 -R /usr/local/bin/python3.8
cd /home/pi/
echo "=============================4.  Set permissions  Done ========================================"
git clone https://github.com/LeMaker/RPi.GPIO_BP -b bananapro
sudo apt-get update
sudo apt-get install python-dev
cd /home/pi/RPi.GPIO_BP
python3.8 setup.py install     
           
echo "=============================5.  Rpi.GPIO_BP installation Done ========================================"
sudo python3.8 setup.py install
pip3.8 install psutil==5.9.4
pip3.8 install path==16.5.0
echo "=============================6.  psutil and path libraries installation Done ========================================"
echo "==================== INSTALLATION COMPLETE !!!!!!!! ==========================================="