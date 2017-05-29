#'/bin/bash
#Script de instalaçao automatica Minegate-cli
#Feito Por FENIX
pacote=$(dpkg --get-selections | grep minergate-cli  ) 
if [ -n "$pacote" ] ; then 
echo "O minergate-cli ja esta instalado"
else
echo "O MINERGATE-CLI NAO ESTA INSTALADO"
echo "Iniciando Instalaçao"
sleep 5
sudo apt-get update && wget https://minergate.com/download/deb-cli -O minergate-cli.deb && sudo dpkg -i minergate-cli.deb
fi
