#config de vagrantfile guardada, vagrant init <distro> y arranca
#vagrant up --virtualbox provider
#vagrant ssh
#lo que tiene que hacer la vm cuando levanta
sudo apt-get update -y
sudo apt-get install git git-review
git config --global user.name SolKuczala
git config --global user.email sol.kuczala@gmail.com
git config --global gitreview.username SolKuczala
sudo apt-get -y update
git clone https://github.com/openstack/devstack.git
cd devstack
cp samples/local.conf .
echo "[[local|localrc]]

ADMIN_PASSWORD=nomoresecret
DATABASE_PASSWORD=stackdb
RABBIT_PASSWORD=stackqueue
SERVICE_PASSWORD=$ADMIN_PASSWORD
LOGFILE=$DEST/logs/stack.sh.log
LOGDAYS=2

SYSLOG=False
LOG_COLOR=False
HOST_IP=127.0.0.1

enable_plugin manila https://opendev.org/openstack/manila
LIBS_FROM_GIT=python-manilaclient
" > local.conf
./stack
#esperar una hora
