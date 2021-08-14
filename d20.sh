#! /bin/sh
# -----------------------------------------
#+ Autor:	Ran#
#+ Creado:	14/07/2021 13:43:04
#+ Editado:	14/08/2021 10:23:04
# -----------------------------------------

porcentaxe() {
    awk -v a="$1" -v b="$2" 'BEGIN {printf (a/b)*100}'
}

# -----------------------------------------

# se non mete a variale 1 co nome do ficheiro fora
# de meter máis variables das precisas da igual porque no no mira
[ -z ${1+x} ] && echo 'Erro: Especifica o arquivo' && exit 0

fich='.d20.temp'

# tan só conservar caracteres con sentido
# elimina as liñas que comecen por # e en branco
# crease un ficheiro temporal para non modificar o ficheiro dado
sed '/^#/d' $1 | sed '/^$/d' | tr '[:upper:]' '[:lower:]' | sed 's/[^0-9abcdefghkm]//g' > $fich

v20=$(wc -c $fich | cut -d' ' -f1)
v0=$(grep -o 0 $fich | wc -l)
v1=$(grep -o 1 $fich | wc -l)
v2=$(grep -o 2 $fich | wc -l)
v3=$(grep -o 3 $fich | wc -l)
v4=$(grep -o 4 $fich | wc -l)
v5=$(grep -o 5 $fich | wc -l)
v6=$(grep -o 6 $fich | wc -l)
v7=$(grep -o 7 $fich | wc -l)
v8=$(grep -o 8 $fich | wc -l)
v9=$(grep -o 9 $fich | wc -l)
va=$(grep -o a $fich | wc -l)
vb=$(grep -o b $fich | wc -l)
vc=$(grep -o c $fich | wc -l)
vd=$(grep -o d $fich | wc -l)
ve=$(grep -o e $fich | wc -l)
vf=$(grep -o f $fich | wc -l)
vg=$(grep -o g $fich | wc -l)
vh=$(grep -o h $fich | wc -l)
vk=$(grep -o k $fich | wc -l)
vm=$(grep -o m $fich | wc -l)

# eliminase o ficheiro temporal
rm $fich

echo ''
echo -n 'Porcentaxes ['$((100/20))'%]'; echo -n '\t'; echo 'Veces ['$v20']'
echo -n '0: '; porcentaxe $v0 $v20; echo -n '\t\t'; echo '0: '$v0
echo -n '1: '; porcentaxe $v1 $v20; echo -n '\t\t'; echo '1: '$v1
echo -n '2: '; porcentaxe $v2 $v20; echo -n '\t\t'; echo '2: '$v2
echo -n '3: '; porcentaxe $v3 $v20; echo -n '\t\t'; echo '3: '$v3
echo -n '4: '; porcentaxe $v4 $v20; echo -n '\t\t'; echo '4: '$v4
echo -n '5: '; porcentaxe $v5 $v20; echo -n '\t\t'; echo '5: '$v5
echo -n '6: '; porcentaxe $v6 $v20; echo -n '\t\t'; echo '6: '$v6
echo -n '7: '; porcentaxe $v7 $v20; echo -n '\t\t'; echo '7: '$v7
echo -n '8: '; porcentaxe $v8 $v20; echo -n '\t\t'; echo '8: '$v8
echo -n '9: '; porcentaxe $v9 $v20; echo -n '\t\t'; echo '9: '$v9
echo -n 'A: '; porcentaxe $va $v20; echo -n '\t\t'; echo 'A: '$va
echo -n 'B: '; porcentaxe $vb $v20; echo -n '\t\t'; echo 'B: '$vb
echo -n 'C: '; porcentaxe $vc $v20; echo -n '\t\t'; echo 'C: '$vc
echo -n 'D: '; porcentaxe $vd $v20; echo -n '\t\t'; echo 'D: '$vd
echo -n 'E: '; porcentaxe $ve $v20; echo -n '\t\t'; echo 'E: '$ve
echo -n 'F: '; porcentaxe $vf $v20; echo -n '\t\t'; echo 'F: '$vf
echo -n 'G: '; porcentaxe $vg $v20; echo -n '\t\t'; echo 'G: '$vg
echo -n 'H: '; porcentaxe $vh $v20; echo -n '\t\t'; echo 'H: '$vh
echo -n 'K: '; porcentaxe $vk $v20; echo -n '\t\t'; echo 'K: '$vk
echo -n 'M: '; porcentaxe $vm $v20; echo -n '\t\t'; echo 'M: '$vm
echo ''

# -----------------------------------------
