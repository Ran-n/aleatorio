#! /bin/sh
# -----------------------------------------
#+ Autor:	Ran#
#+ Creado:	14/07/2021 13:43:04
#+ Editado:	14/07/2021 20:54:42
# -----------------------------------------

porcentaxe() {
    awk -v a="$1" -v b="$2" 'BEGIN {print (a/b)*100}'
}

# -----------------------------------------

v20=$(wc -c "$1" | cut -d' ' -f1)
v0=$(grep -o 0 $1 | wc -l)
v1=$(grep -o 1 $1 | wc -l)
v2=$(grep -o 2 $1 | wc -l)
v3=$(grep -o 3 $1 | wc -l)
v4=$(grep -o 4 $1 | wc -l)
v5=$(grep -o 5 $1 | wc -l)
v6=$(grep -o 6 $1 | wc -l)
v7=$(grep -o 7 $1 | wc -l)
v8=$(grep -o 8 $1 | wc -l)
v9=$(grep -o 9 $1 | wc -l)
va=$(grep -o a $1 | wc -l)
vb=$(grep -o b $1 | wc -l)
vc=$(grep -o c $1 | wc -l)
vd=$(grep -o d $1 | wc -l)
ve=$(grep -o e $1 | wc -l)
vf=$(grep -o f $1 | wc -l)
vg=$(grep -o g $1 | wc -l)
vh=$(grep -o h $1 | wc -l)
vk=$(grep -o k $1 | wc -l)
vm=$(grep -o m $1 | wc -l)

echo ''
echo 'Veces 0: '$v0
echo 'Veces 1: '$v1
echo 'Veces 2: '$v2
echo 'Veces 3: '$v3
echo 'Veces 4: '$v4
echo 'Veces 5: '$v5
echo 'Veces 6: '$v6
echo 'Veces 7: '$v7
echo 'Veces 8: '$v8
echo 'Veces 9: '$v9
echo 'Veces A: '$va
echo 'Veces B: '$vb
echo 'Veces C: '$vc
echo 'Veces D: '$vd
echo 'Veces E: '$ve
echo 'Veces F: '$vf
echo 'Veces G: '$vg
echo 'Veces H: '$vh
echo 'Veces K: '$vk
echo 'Veces M: '$vm
echo 'Veces total: '$v20

echo ''
echo 'Porcentaxes'
echo -n '0: '; porcentaxe $v0 $v20
echo -n '1: '; porcentaxe $v1 $v20
echo -n '2: '; porcentaxe $v2 $v20
echo -n '3: '; porcentaxe $v3 $v20
echo -n '4: '; porcentaxe $v4 $v20
echo -n '5: '; porcentaxe $v5 $v20
echo -n '6: '; porcentaxe $v6 $v20
echo -n '7: '; porcentaxe $v7 $v20
echo -n '8: '; porcentaxe $v8 $v20
echo -n '9: '; porcentaxe $v9 $v20
echo -n 'A: '; porcentaxe $va $v20
echo -n 'B: '; porcentaxe $vb $v20
echo -n 'C: '; porcentaxe $vc $v20
echo -n 'D: '; porcentaxe $vd $v20
echo -n 'E: '; porcentaxe $ve $v20
echo -n 'F: '; porcentaxe $vf $v20
echo -n 'G: '; porcentaxe $vg $v20
echo -n 'H: '; porcentaxe $vh $v20
echo -n 'K: '; porcentaxe $vk $v20
echo -n 'M: '; porcentaxe $vm $v20

# -----------------------------------------
