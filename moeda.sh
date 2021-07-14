#! /bin/sh
# ----------------------------------------------
#+ Autor:	Ran#
#+ Creado:	14/07/2021 19:05:52
#+ Editado:	14/07/2021 19:21:47
# ----------------------------------------------

porcentaxe() {
    awk -v a="$1" -v b="$2" 'BEGIN {print (a/b)*100}'
}

# ----------------------------------------------

vtotal=$(wc -c "$1" | cut -d' ' -f1)
vo=$(grep -o o $1 | wc -l)
vx=$(grep -o x $1 | wc -l)

echo ''
echo 'Veces cara: '$vo
echo 'Veces cruz: '$vx
echo 'Veces total: '$vtotal

echo ''
echo -n 'Porcentaxe cara: '; porcentaxe $vo $vtotal
echo -n 'Porcentaxe cruz: '; porcentaxe $vx $vtotal

# ----------------------------------------------
