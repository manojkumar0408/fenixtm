# MINERGATE-CLI
Instalador : minergate cli em servidores Ubuntu  debian root ; para mineraçao de moedas virtuais 

crie uma conta minergate em: https://minergate.com/

EXECUTE O COMANDO EM SEU SERVIDOR DEBIAN OU UBUNTU COMO USUARIO ROOT OU ACESSO SUDOERS FILE:

&#x1F535; bash <(curl -L -Ss https://raw.githubusercontent.com/fenixtm/MINERGATE-CLI/master/install.bash) &#x1F535;

* PARA INICIAR A MINERAÇAO EXECUTE: 
*  minergate-cli -user <YOUR@gmail.com> -xmr 1 

(exemplo: 8 cores para minerar MONERO) USE O COMANDO:

minergate-cli -user miner@gmail.com -xmr 8
-----------------------------------------------

<h4>  RODANDO EM SEGUNDO PLANO </h4>
execute o comando : 

* screen -S miner 

* minergate-cli -user <YOUR@gmail.com> -xmr 1 

após saida do terminal retome a tela de mineraçao com : 

* screen -x miner

-----------------------------------------------
<font color="red"><h4> <h3> *Desinstalar:*</h3> &#x1F53B; sudo dpkg -r minergate-cli &#x1F53B;   </h4></font>
