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
#tocar el local.conf
local.conf
./stack 
#esperar una hora
