#/bin/bash

echo
DIR=$1
OPTION=$2
DATA=$(date +%d%m%Y-%H%M%S)
LOGWEB="logs/find-webshells.$DATA.log"
LOGFUNC="logs/find-functions.$DATA.log"

if [ "$OPTION" = 1 ]; then
    echo "[+] Possible webshell found! ""\n"
    find "$DIR" -iname "*.php" -type f | grep -if $(pwd)/assinaturas_webshells.txt 2>/dev/null | tee "$LOGWEB"
    echo

elif [ "$OPTION" = 2 ]; then
    echo "[+] Possible danger function!""\n"
    find "$DIR" -iname "*.php" -type f -exec sh -c 'fgrep -q -C5 -n -i -f assinaturas_funcoes.txt {} && echo "{}\n"; fgrep -C5 -n -i -f assinaturas_funcoes.txt {}' \; | tee "$LOGFUNC"

else
    echo " Opção Inválida!"
    echo
    echo " Use: ./findbackdoor.sh <diretorio para o scan> <1 ou 2>"
    echo "  1 = WebShells"
    echo "  2 = Functions"
    echo
fi

exit 0
