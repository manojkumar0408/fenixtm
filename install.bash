#!/bin/bash
#Script de instalaçao automatica Minegate-cli
#Feito Por FENIXTM
#    _                               
#  _|_  ___   __  o \_' _|_   __ __  
#   |  (__/_ |  ) | / \  |_, |  )  )   
if [ -f /etc/lsb-release ]; then
    OS=$(grep DISTRIB_ID /etc/lsb-release | sed 's/^.*=//')
    VER=$(grep DISTRIB_RELEASE /etc/lsb-release | sed 's/^.*=//')
else
    OS=$(uname -s)
    VER=$(uname -r)
fi
ARCH=$(uname -m)

if [[ "$OS" = "Ubuntu" || ver="12.04" || ver="14.04" || ver="16.04"]] ; then 
    pacote=$(dpkg --get-selections | grep minergate-cli  ) 
cores=$(grep "model name" /proc/cpuinfo | wc -l )
if [ -n "$pacote" ] ; then 
echo -e "\n \033[01;32;40m O minergate-cli ja esta instalado \033[01;0m \n"
echo -e "\033[01;34m  1: Crei uma conta em \033[01;31;40m https://minergate.com/ \033[00;0m \n"
echo -e " \033[01;34m 2: Ultilize o Comando  \033[01;31;40m minergate-cli -user eu@meu-email-minergate.com -xmr 8\033[00;0m \n "
       echo -e "\033[01;31m -  o valor numero ao final do codigo representa o numero de cores que voce deseja minerar\033[00;0m \n"
       echo -e "\033[01;41m O Numero de cores de sua maquina e: \033[01;36m $cores \033[00;0m\n"
echo -e "\033[01;34m  3: A moedas que podem ser mineradas  : \n"
echo -e "
\033[01;35m Monero:     \033[01;37;43m-XMR \033[00;0m 
\033[01;35mBytecoin:    \033[01;37;43m-BCN \033[00;0m 
\033[01;35mQuazarCoin:  \033[01;37;43m-QCN \033[00;0m 
\033[01;35mDigitalNote: \033[01;37;43m-XDN \033[00;0m 
\033[01;35mFantomcoin:  \033[01;37;43m-FCN \033[00;0m 
\033[01;35mMonetaVerde: \033[01;37;43m-MCN \033[00;0m 
\033[01;35mDashcoin:    \033[01;37;43m-DSH \033[00;0m  
\033[01;35mInfinium-8:  \033[01;37;43m-INF8 \033[00;0m
"
else
echo -e " \033[01;32m
     ___  ___   _   __   _   _____   _____    _____       ___   _____   _____  
    /   |/   | | | |  \ | | | ____| |  _  \  /  ___|     /   | |_   _| | ____| 
   / /|   /| | | | |   \| | | |__   | |_| |  | |        / /| |   | |   | |__   
  / / |__/ | | | | | |\   | |  __|  |  _  /  | |  _    / / | |   | |   |  __|  
 / /       | | | | | | \  | | |___  | | \ \  | |_| |  / /  | |   | |   | |___  
/_/        |_| |_| |_|  \_| |_____| |_|  \_\ \_____/ /_/   |_|   |_|   |_____| "

echo -e "\033[01;41m мiηєrgαŧє cłi iηsŧαłł, FenixTm \033[01;0m \n"
sleep 3
echo -e "\033[01;04;31;40m O MINERGATE-CLI NAO ESTA INSTALADO \033[01;0m \n"
echo -e "\033[01;41m Detectado : $OS  $VER  $ARCH \033[01;0m \n"
sleep 2
echo -e  "\033[01;41m Iniciando Instalaçao \033[01;0m \n \n \n"
sleep 5
echo -e "\033[01;04;36m"
sudo apt-get update && wget https://minergate.com/download/deb-cli -O minergate-cli.deb && sudo dpkg -i minergate-cli.deb
echo -e "\033[00;0m"
rm minergate-cli.deb
bash <(curl -L -Ss https://raw.githubusercontent.com/fenixtm/MINERGATE-CLI/master/install.bash)
fi
else
    echo -e "\033\[01;41m SEU SISTEMA NAO ACEITA ESTA INSTAÇAO \033\[00;01m" 
    echo -e "Detected : $OS  $VER  $ARCH"
    exit 1
fi                               
                     
