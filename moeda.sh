#! /bin/sh
# ----------------------------------------------
#+ Autor:	Ran#
#+ Creado:	14/07/2021 19:05:52
#+ Editado:	15/07/2021 12:12:12
# ----------------------------------------------

porcentaxe() {
    awk -v a="$1" -v b="$2" 'BEGIN {printf (a/b)*100}'
}

# ----------------------------------------------

# se non mete a variale 1 co nome do ficheiro fora
# de meter máis variables das precisas da igual porque no no mira
[ -z ${1+x} ] && echo 'Erro: Especifica o arquivo' && exit 0

fich='.moeda.temp'

# tan só conservar caracteres con sentido
# crease un ficheiro temporal para non modificar o ficheiro dado
cat $1 | tr '[:upper:]' '[:lower:]' | sed 's/[^ox]//g' > $fich

vtotal=$(wc -c $fich | cut -d' ' -f1)
vo=$(grep -o o $fich | wc -l)
vx=$(grep -o x $fich | wc -l)

# eliminase o ficheiro temporal
rm $fich

echo ''
echo -n 'Porcentaxe ['$((100/2))'%]'; echo -n '\t'; echo 'Veces ['$vtotal']'
echo -n 'cara: '; porcentaxe $vo $vtotal; echo -n '\t\t'; echo 'cara: '$vo
echo -n 'cruz: '; porcentaxe $vx $vtotal; echo -n '\t\t'; echo 'cruz: '$vx
echo ''

# ----------------------------------------------
