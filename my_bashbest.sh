#HashBang usando o Bash

#!/usr/bin/env bash


header="#!/usr/bin/env bash
# --------------------------------------------------------
# Script    : my_bestbash.sh
# Descrição : Best Example of NWScript version!
# Versão    : 0.1
# Autor     : Lord Griffo <griffoderuppell@gmail.com>
# Data      : 02/jan/2022
# Licença   : GNU/GPL V3.0
# --------------------------------------------------------
# Uso:
# --------------------------------------------------------
"

#Variavel Editor=? (definir qual Editor/I.D.E quer usar!)

editor=nano


#Testar se usuário passou o número certo de
#Argumentos... (1 argumento)

[[ $# -ne 1 ]] && echo "Epa! Eu Preciso de *um* nome de arquivo!" && exit 1


#Testar se Arquivo já existe....

[[ -f $1 ]] && echo "Epa! Arquivo ja existe! Saindo!" && exit 1


#Colocar o Enviroment na hashbang ((Executar no pré-shell)

echo "$header" > $1
chmod +x $1
editor $1

exit 0
