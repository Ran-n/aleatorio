#! /bin/sh
# -----------------------------------------
#+ Autor:	Ran#
#+ Creado:	12/08/2021 15:46:17
#+ Editado:	12/08/2021 15:59:25
# -----------------------------------------

porcentaxe() {
    awk -v a="$1" -v b="$2" 'BEGIN {printf (a/b)*100}'
}

# -----------------------------------------

# se non mete a variale 1 co nome do ficheiro fora
# de meter máis variables das precisas da igual porque no no mira
[ -z ${1+x} ] && echo 'Erro: Especifica o arquivo' && exit 0

fich=$1

vtotal=$(wc -c $fich | cut -d' ' -f1)
v0=$(grep -o 0 $fich | wc -l)
v1=$(grep -o 1 $fich | wc -l)
v2=$(grep -o 2 $fich | wc -l)
v3=$(grep -o 3 $fich | wc -l)

echo ''
echo -n 'Porcentaxes ['$((100/4))'%]'; echo -n '\t'; echo 'Veces ['$vtotal']'
echo -n '0: '; porcentaxe $v0 $vtotal; echo -n '\t\t'; echo '0: '$v0
echo -n '1: '; porcentaxe $v1 $vtotal; echo -n '\t\t'; echo '1: '$v1
echo -n '2: '; porcentaxe $v2 $vtotal; echo -n '\t\t'; echo '2: '$v2
echo -n '3: '; porcentaxe $v3 $vtotal; echo -n '\t\t'; echo '3: '$v3
echo ''

# -----------------------------------------
