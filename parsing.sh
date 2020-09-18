#!/bin/bash
if [ "$1" == "" ]
then
        echo "Parsing"
        echo "Exemplo de uso exemplo.com.br"
else
wget $1 
grep href index.html | cut -d "/" - f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > "$1.ip.txt"

for url in $(cat lista);
do host $url | grep "has address";
done

        echo "====================================================="
        echo "[+] Resolvendo URLs em: $1"
        echo "====================================================="
        echo "[+] Concluido: Salvando os resultados em: $1.ip.txt"
        echo "====================================================="
        echo "    Line            IP                ADDRESS        "
        echo "====================================================="
        cat lista
fi
