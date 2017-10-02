# Initial Update and Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# NTFSFix for External HDD connection
sudo apt-get install ntfs-3g -y
# Vim
sudo apt-get install vim -y
# GIT
sudo apt-get install git -y
sudo apt-get install git-core -y
# ZSH Shell
sudo apt-get install zsh
zsh
curl -L http://install.ohmyz.sh | sh
which zsh
chsh -s 'which zsh'
# ExFAT Extenal HDD
sudo apt-get install exfat-fuse exfat-utils -y

# Features of ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sed -e 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/1' ~/.zshrc

# Google Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-get install -f
sudo apt-get install thefuck -y
echo 'export PATH=$HOME/bin:/usr/local/bin:$PATH' | tee -a ~/.zshrc
echo 'eval $(thefuck --alias)' | tee -a ~/.zshrc
echo "alias fuck-it='export THEFUCK_REQUIRE_CONFIRMATION=False; fuck; export THEFUCK_REQUIRE_CONFIRMATION=True'" | tee -a ~/.zshrc
sed 's/ZSH_THEME*/ZSH_THEME="dpoggi"/1' ~/.zshrc
source ~/.zshrc

# Python Essentials
sudo apt-get install python-pip python-dev python3-dev -y
sudo apt-get install libmysqlclient-dev -y
sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev libssl-dev -y
sudo easy_install greenlet -y
sudo easy_install gevent -y

#Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update -y
sudo apt-get install oracle-java8-installer -y
sudo update-alternatives --config java
echo 'JAVA_HOME="/usr/lib/jvm/java-8-oracle"' | sudo tee -a /etc/environment
source /etc/environment
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' | tee -a ~/.zshrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' | tee -a ~/.zshrc


# Mysql 5.6
sudo add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe'
sudo apt-get update -y
sudo apt install mysql-server-5.6 -y
sudo apt install mysql-client-5.6 -y
sudo /etc/init.d/mysql start

# Pip for KraftlyDWH
pip install --upgrade pip
pip install --user virtualenvwrapper
mkdir ~/.virtualenvs
echo 'export WORKON_HOME=$HOME/.virtualenvs' | tee -a  ~/.zshrc
echo 'export PROJECT_HOME=$HOME/Projects' | tee -a ~/.zshrc
echo 'export VIRTUALENVWRAPPER_SCRIPT=~/.local/bin/virtualenvwrapper.sh' | tee -a ~/.zshrc
echo 'source ~/.local/bin/virtualenvwrapper.sh' | tee -a ~/.zshrc
source ~/.zshrc
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_SCRIPT=~/.local/bin/virtualenvwrapper.sh
source ~/.local/bin/virtualenvwrapper.sh
mkvirtualenv kraftly_dwh --python=/usr/bin/python3
workon kraftly_dwh


# MOngoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update -y
sudo apt-get install -y mongodb-org
sudo service mongod start

# PostgreSQL
sudo apt-get update -y
sudo apt-get install postgresql postgresql-contrib -y

# Vim Awesome
git clone https://github.com/chxuan/vimplus.git
cd ./vimplus
sudo ./install.sh


sudo apt-get install htop
# vlc
sudo apt update
sudo apt install vlc
