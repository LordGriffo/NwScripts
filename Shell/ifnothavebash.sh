#Se não tem Bash Instalado! (muito raro)
#!/usr/bin/env sh

#Testar se usuário passou o número certo de
#Argumentos... (1 argumento)

[[ $# -ne 1 ]] && echo "Epa! Eu Preciso de *um* nome de arquivo!" && exit 1


#Testar se Arquivo já existe....

[[ -f $1 ]] && echo "Epa! Arquivo ja existe! Saindo!" && exit 1


#Colocar o Enviroment na hashbang ((Executar no pré-shell)

echo '#!/usr/bin/env sh' > $1
chmod +x $1
nano $1
