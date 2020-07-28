

wget https://mirrors.huaweicloud.com/python/3.6.8/Python-3.6.8.tgz
tar xzf Python-3.6.8.tgz
sudo apt-get update
sudo apt-get install build-essential python-dev python-setuptools python-pip python-smbus -y
sudo apt-get install build-essential zlib1g-dev libbz2-dev libncursesw5-dev libgdbm-dev libc6-dev -y
sudo apt-get install zlib1g-dev libsqlite3-dev tk-dev -y
sudo apt-get install libssl-dev openssl -y
sudo apt-get install libffi-dev -y
sudo apt-get install bzip2-devel -y
sudo apt-get install zlib1g-dev -y
cd Python-3.6.8
sudo ./configure && sudo make && sudo make install
