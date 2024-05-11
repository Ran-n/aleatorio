#! /bin/sh
# ---------------------------------------------
#+ Autor:	Ran#
#+ Creado:	15/07/2021 11:49:58
#+ Editado:	12/08/2021 16:10:06
# ---------------------------------------------

# axuda
[ $1 = ? ] && {
    echo Axuda:
    echo Dous argumentos requiridos
    echo 1º '>' o tipo de documento a tratar
    echo m → Moedas
    echo d4  → Dados con 4 caras
    echo d20 → Dados con 20 caras
    echo ''
    echo 2º '>' o nome do documento
}

# se non se especifican dúas variables exactamente saca erro
[ $# -eq 2 ] || {
    echo Erro: Fai falla unha primeira variable explicando o tipo de arquivo e unha segunda co nome do arquivo en cuestión 
    exit 0
}

# segundo o valor da primeira variable un comando ou outro
case $1 in
    m)
        echo $(cat $2 | tr '[:upper:]' '[:lower:]' | sed 's/[^xo]//g') > $2
        ;;
    d4)
        echo $(cat $2 | sed 's/4/0/g' | sed 's/[^0123]//g') > $2
        ;;
    d20)
        echo $(cat $2 | tr '[:upper:]' '[:lower:]' | sed 's/[^0-9abcdefghkm]//g') > $2
        ;;
    *)
        echo Indica o tipo de arquivo
        echo m → Moedas
        echo d4  → Dados de 4 caras
        echo d20 → Dados 20 caras
        ;;
esac

# ---------------------------------------------
