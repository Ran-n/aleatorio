#! /bin/sh
# -----------------------------------------
#+ Autor:	Ran#
#+ Creado:	13/08/2021 10:50:11
#+ Editado:	13/08/2021 12:10:11
# -----------------------------------------

porcentaxe() {
    awk -v a="$1" -v b="$2" 'BEGIN {printf (a/b)*100}'
}

# -----------------------------------------

# se non mete a v10riale 1 co nome do ficheiro fora
# de meter máis v10riables das precisas da igual porque no no mira
[ -z ${1+x} ] && echo 'Erro: Especifica o arquivo' && exit 0

fich='.d100.temp'

# tan só conserv10r caracteres con sentido
# crease un ficheiro temporal para non modificar o ficheiro dado
cat $1 | tr '[:upper:]' '[:lower:]' | sed "s/[^0-9abcdefghkmnprstvwxyz,„;.:-_+*=÷ƒØ()¡!¿?'\"«»⌐¬^~&$€£¥¢@#%‰∞ßΓπΣµτφΩδε∩█▲■|§þ☻♥♦♣♠¶♪♫○•⌂♂♀↔]//g" > $fich

vtotal=$(wc -c $fich | cut -d' ' -f1)
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
v10=$(grep -o a $fich | wc -l)
v11=$(grep -o b $fich | wc -l)
v12=$(grep -o c $fich | wc -l)
v13=$(grep -o d $fich | wc -l)
v14=$(grep -o e $fich | wc -l)
v15=$(grep -o f $fich | wc -l)
v16=$(grep -o g $fich | wc -l)
v17=$(grep -o h $fich | wc -l)
v18=$(grep -o k $fich | wc -l)
v19=$(grep -o m $fich | wc -l)
v20=$(grep -o n $fich | wc -l)
v21=$(grep -o p $fich | wc -l)
v22=$(grep -o r $fich | wc -l)
v23=$(grep -o r $fich | wc -l)
v24=$(grep -o t $fich | wc -l)
v25=$(grep -o v $fich | wc -l)
v26=$(grep -o w $fich | wc -l)
v27=$(grep -o x $fich | wc -l)
v28=$(grep -o y $fich | wc -l)
v29=$(grep -o z $fich | wc -l)
v30=$(grep -o , $fich | wc -l)
v31=$(grep -o „ $fich | wc -l)
v32=$(grep -o \; $fich | wc -l)
v33=$(grep -o "\." $fich | wc -l)
v34=$(grep -o : $fich | wc -l)
v35=$(grep -o - $fich | wc -l)
v36=$(grep -o _ $fich | wc -l)
v37=$(grep -o + $fich | wc -l)
v38=$(grep -o \* $fich | wc -l)
v39=$(grep -o \= $fich | wc -l)
v40=$(grep -o ÷ $fich | wc -l)
v41=$(grep -o ƒ $fich | wc -l)
v42=$(grep -o Ø $fich | wc -l)
v43=$(grep -o \( $fich | wc -l)
v44=$(grep -o \) $fich | wc -l)
v45=$(grep -o ¡ $fich | wc -l)
v46=$(grep -o \! $fich | wc -l)
v47=$(grep -o ‼ $fich | wc -l)
v48=$(grep -o ¿ $fich | wc -l)
v49=$(grep -o ? $fich | wc -l)
v50=$(grep -o \' $fich | wc -l)
v51=$(grep -o \" $fich | wc -l)
v52=$(grep -o « $fich | wc -l)
v53=$(grep -o » $fich | wc -l)
v54=$(grep -o ⌐ $fich | wc -l)
v55=$(grep -o ¬ $fich | wc -l)
v56=$(grep -o ^ $fich | wc -l)
v57=$(grep -o ~ $fich | wc -l)
v58=$(grep -o \& $fich | wc -l)
v59=$(grep -o $ $fich | wc -l)
v60=$(grep -o € $fich | wc -l)
v61=$(grep -o £ $fich | wc -l)
v62=$(grep -o ¥ $fich | wc -l)
v63=$(grep -o ¢ $fich | wc -l)
v64=$(grep -o @ $fich | wc -l)
v65=$(grep -o \# $fich | wc -l)
v66=$(grep -o % $fich | wc -l)
v67=$(grep -o ‰ $fich | wc -l)
v68=$(grep -o ∞ $fich | wc -l)
v69=$(grep -o ß $fich | wc -l)
v70=$(grep -o Γ $fich | wc -l)
v71=$(grep -o π $fich | wc -l)
v72=$(grep -o Σ $fich | wc -l)
v73=$(grep -o µ $fich | wc -l)
v74=$(grep -o τ $fich | wc -l)
v75=$(grep -o φ $fich | wc -l)
v76=$(grep -o Ω $fich | wc -l)
v77=$(grep -o δ $fich | wc -l)
v78=$(grep -o ε $fich | wc -l)
v79=$(grep -o ∩ $fich | wc -l)
v80=$(grep -o █ $fich | wc -l)
v81=$(grep -o ▲ $fich | wc -l)
v82=$(grep -o ■ $fich | wc -l)
v83=$(grep -o \| $fich | wc -l)
v84=$(grep -o § $fich | wc -l)
v85=$(grep -o þ $fich | wc -l)
v86=$(grep -o ☻ $fich | wc -l)
v87=$(grep -o ♥ $fich | wc -l)
v88=$(grep -o ♦ $fich | wc -l)
v89=$(grep -o ♣ $fich | wc -l)
v90=$(grep -o ♠ $fich | wc -l)
v91=$(grep -o ¶ $fich | wc -l)
v92=$(grep -o ♪ $fich | wc -l)
v93=$(grep -o ♫ $fich | wc -l)
v94=$(grep -o ○ $fich | wc -l)
v95=$(grep -o • $fich | wc -l)
v96=$(grep -o ⌂ $fich | wc -l)
v97=$(grep -o ♂ $fich | wc -l)
v98=$(grep -o ♀ $fich | wc -l)
v99=$(grep -o ↔ $fich | wc -l)

# eliminase o ficheiro temporal
rm $fich

echo ''
echo -n 'Porcentaxes ['$((100/100))'%]'; echo -n '\t'; echo 'Veces ['$vtotal']'
echo -n '0: '; porcentaxe $v0 $vtotal; echo -n '\t\t'; echo '0: '$v0
echo -n '1: '; porcentaxe $v1 $vtotal; echo -n '\t\t'; echo '1: '$v1
echo -n '2: '; porcentaxe $v2 $vtotal; echo -n '\t\t'; echo '2: '$v2
echo -n '3: '; porcentaxe $v3 $vtotal; echo -n '\t\t'; echo '3: '$v3
echo -n '4: '; porcentaxe $v4 $vtotal; echo -n '\t\t'; echo '4: '$v4
echo -n '5: '; porcentaxe $v5 $vtotal; echo -n '\t\t'; echo '5: '$v5
echo -n '6: '; porcentaxe $v6 $vtotal; echo -n '\t\t'; echo '6: '$v6
echo -n '7: '; porcentaxe $v7 $vtotal; echo -n '\t\t'; echo '7: '$v7
echo -n '8: '; porcentaxe $v8 $vtotal; echo -n '\t\t'; echo '8: '$v8
echo -n '9: '; porcentaxe $v9 $vtotal; echo -n '\t\t'; echo '9: '$v9
echo -n 'A: '; porcentaxe $v10 $vtotal; echo -n '\t\t'; echo 'A: '$v10
echo -n 'B: '; porcentaxe $v11 $vtotal; echo -n '\t\t'; echo 'B: '$v11
echo -n 'C: '; porcentaxe $v12 $vtotal; echo -n '\t\t'; echo 'C: '$v12
echo -n 'D: '; porcentaxe $v13 $vtotal; echo -n '\t\t'; echo 'D: '$v13
echo -n 'E: '; porcentaxe $v14 $vtotal; echo -n '\t\t'; echo 'E: '$v14
echo -n 'F: '; porcentaxe $v15 $vtotal; echo -n '\t\t'; echo 'F: '$v15
echo -n 'G: '; porcentaxe $v16 $vtotal; echo -n '\t\t'; echo 'G: '$v16
echo -n 'H: '; porcentaxe $v17 $vtotal; echo -n '\t\t'; echo 'H: '$v17
echo -n 'K: '; porcentaxe $v18 $vtotal; echo -n '\t\t'; echo 'K: '$v18
echo -n 'M: '; porcentaxe $v19 $vtotal; echo -n '\t\t'; echo 'M: '$v19
echo -n 'N: '; porcentaxe $v20 $vtotal; echo -n '\t\t'; echo 'N: '$v20
echo -n 'P: '; porcentaxe $v21 $vtotal; echo -n '\t\t'; echo 'P: '$v21
echo -n 'R: '; porcentaxe $v22 $vtotal; echo -n '\t\t'; echo 'R: '$v22
echo -n 'S: '; porcentaxe $v23 $vtotal; echo -n '\t\t'; echo 'S: '$v23
echo -n 'T: '; porcentaxe $v24 $vtotal; echo -n '\t\t'; echo 'T: '$v24
echo -n 'V: '; porcentaxe $v25 $vtotal; echo -n '\t\t'; echo 'V: '$v25
echo -n 'W: '; porcentaxe $v26 $vtotal; echo -n '\t\t'; echo 'W: '$v26
echo -n 'X: '; porcentaxe $v27 $vtotal; echo -n '\t\t'; echo 'X: '$v27
echo -n 'Y: '; porcentaxe $v28 $vtotal; echo -n '\t\t'; echo 'Y: '$v28
echo -n 'Z: '; porcentaxe $v29 $vtotal; echo -n '\t\t'; echo 'Z: '$v29
echo -n ',: '; porcentaxe $v30 $vtotal; echo -n '\t\t'; echo ',: '$v30
echo -n '„: '; porcentaxe $v31 $vtotal; echo -n '\t\t'; echo '„: '$v31
echo -n ';: '; porcentaxe $v32 $vtotal; echo -n '\t\t'; echo ';: '$v32
echo -n '.: '; porcentaxe $v33 $vtotal; echo -n '\t\t'; echo '.: '$v33
echo -n ':: '; porcentaxe $v34 $vtotal; echo -n '\t\t'; echo ':: '$v34
echo -n '-: '; porcentaxe $v35 $vtotal; echo -n '\t\t'; echo '-: '$v35
echo -n '_: '; porcentaxe $v36 $vtotal; echo -n '\t\t'; echo '_: '$v36
echo -n '+: '; porcentaxe $v37 $vtotal; echo -n '\t\t'; echo '+: '$v37
echo -n '*: '; porcentaxe $v38 $vtotal; echo -n '\t\t'; echo '*: '$v38
echo -n '=: '; porcentaxe $v39 $vtotal; echo -n '\t\t'; echo '=: '$v39
echo -n '÷: '; porcentaxe $v40 $vtotal; echo -n '\t\t'; echo '÷: '$v40
echo -n 'ƒ: '; porcentaxe $v41 $vtotal; echo -n '\t\t'; echo 'ƒ: '$v41
echo -n 'Ø: '; porcentaxe $v42 $vtotal; echo -n '\t\t'; echo 'Ø: '$v42
echo -n '(: '; porcentaxe $v43 $vtotal; echo -n '\t\t'; echo '(: '$v43
echo -n '): '; porcentaxe $v44 $vtotal; echo -n '\t\t'; echo '): '$v44
echo -n '¡: '; porcentaxe $v45 $vtotal; echo -n '\t\t'; echo '¡: '$v45
echo -n '!: '; porcentaxe $v46 $vtotal; echo -n '\t\t'; echo '!: '$v46
echo -n '‼: '; porcentaxe $v47 $vtotal; echo -n '\t\t'; echo '‼: '$v47
echo -n '¿: '; porcentaxe $v48 $vtotal; echo -n '\t\t'; echo '¿: '$v48
echo -n '?: '; porcentaxe $v49 $vtotal; echo -n '\t\t'; echo '?: '$v49
echo -n "': "; porcentaxe $v50 $vtotal; echo -n '\t\t'; echo "': "$v50
echo -n '": '; porcentaxe $v51 $vtotal; echo -n '\t\t'; echo '": '$v51
echo -n '«: '; porcentaxe $v52 $vtotal; echo -n '\t\t'; echo '«: '$v52
echo -n '»: '; porcentaxe $v53 $vtotal; echo -n '\t\t'; echo '»: '$v53
echo -n '⌐: '; porcentaxe $v54 $vtotal; echo -n '\t\t'; echo '⌐: '$v54
echo -n '¬: '; porcentaxe $v55 $vtotal; echo -n '\t\t'; echo '¬: '$v55
echo -n '^: '; porcentaxe $v56 $vtotal; echo -n '\t\t'; echo '^: '$v56
echo -n '~: '; porcentaxe $v57 $vtotal; echo -n '\t\t'; echo '~: '$v57
echo -n '&: '; porcentaxe $v58 $vtotal; echo -n '\t\t'; echo '&: '$v58
echo -n '$: '; porcentaxe $v59 $vtotal; echo -n '\t\t'; echo '$: '$v59
echo -n '€: '; porcentaxe $v60 $vtotal; echo -n '\t\t'; echo '€: '$v60
echo -n '£: '; porcentaxe $v61 $vtotal; echo -n '\t\t'; echo '£: '$v61
echo -n '¥: '; porcentaxe $v62 $vtotal; echo -n '\t\t'; echo '¥: '$v62
echo -n '¢: '; porcentaxe $v63 $vtotal; echo -n '\t\t'; echo '¢: '$v63
echo -n '@: '; porcentaxe $v64 $vtotal; echo -n '\t\t'; echo '@: '$v64
echo -n '#: '; porcentaxe $v65 $vtotal; echo -n '\t\t'; echo '#: '$v65
echo -n '%: '; porcentaxe $v66 $vtotal; echo -n '\t\t'; echo '%: '$v66
echo -n '‰: '; porcentaxe $v67 $vtotal; echo -n '\t\t'; echo '‰: '$v67
echo -n '∞: '; porcentaxe $v68 $vtotal; echo -n '\t\t'; echo '∞: '$v68
echo -n 'ß: '; porcentaxe $v69 $vtotal; echo -n '\t\t'; echo 'ß: '$v69
echo -n 'Γ: '; porcentaxe $v70 $vtotal; echo -n '\t\t'; echo 'Γ: '$v70
echo -n 'π: '; porcentaxe $v71 $vtotal; echo -n '\t\t'; echo 'π: '$v71
echo -n 'Σ: '; porcentaxe $v72 $vtotal; echo -n '\t\t'; echo 'Σ: '$v72
echo -n 'µ: '; porcentaxe $v73 $vtotal; echo -n '\t\t'; echo 'µ: '$v73
echo -n 'τ: '; porcentaxe $v74 $vtotal; echo -n '\t\t'; echo 'τ: '$v74
echo -n 'φ: '; porcentaxe $v75 $vtotal; echo -n '\t\t'; echo 'φ: '$v75
echo -n 'Ω: '; porcentaxe $v76 $vtotal; echo -n '\t\t'; echo 'Ω: '$v76
echo -n 'δ: '; porcentaxe $v77 $vtotal; echo -n '\t\t'; echo 'δ: '$v77
echo -n 'ε: '; porcentaxe $v78 $vtotal; echo -n '\t\t'; echo 'ε: '$v78
echo -n '∩: '; porcentaxe $v79 $vtotal; echo -n '\t\t'; echo '∩: '$v79
echo -n '█: '; porcentaxe $v80 $vtotal; echo -n '\t\t'; echo '█: '$v80
echo -n '▲: '; porcentaxe $v81 $vtotal; echo -n '\t\t'; echo '▲: '$v81
echo -n '■: '; porcentaxe $v82 $vtotal; echo -n '\t\t'; echo '■: '$v82
echo -n '|: '; porcentaxe $v83 $vtotal; echo -n '\t\t'; echo '|: '$v83
echo -n '§: '; porcentaxe $v84 $vtotal; echo -n '\t\t'; echo '§: '$v84
echo -n 'þ: '; porcentaxe $v85 $vtotal; echo -n '\t\t'; echo 'þ: '$v85
echo -n '☻: '; porcentaxe $v86 $vtotal; echo -n '\t\t'; echo '☻: '$v86
echo -n '♥: '; porcentaxe $v87 $vtotal; echo -n '\t\t'; echo '♥: '$v87
echo -n '♥: '; porcentaxe $v88 $vtotal; echo -n '\t\t'; echo '♥: '$v88
echo -n '♣: '; porcentaxe $v89 $vtotal; echo -n '\t\t'; echo '♣: '$v89
echo -n '♠: '; porcentaxe $v90 $vtotal; echo -n '\t\t'; echo '♠: '$v90
echo -n '¶: '; porcentaxe $v91 $vtotal; echo -n '\t\t'; echo '¶: '$v91
echo -n '♪: '; porcentaxe $v92 $vtotal; echo -n '\t\t'; echo '♪: '$v92
echo -n '♫: '; porcentaxe $v93 $vtotal; echo -n '\t\t'; echo '♫: '$v93
echo -n '○: '; porcentaxe $v94 $vtotal; echo -n '\t\t'; echo '○: '$v94
echo -n '•: '; porcentaxe $v95 $vtotal; echo -n '\t\t'; echo '•: '$v95
echo -n '⌂: '; porcentaxe $v96 $vtotal; echo -n '\t\t'; echo '⌂: '$v96
echo -n '♂: '; porcentaxe $v97 $vtotal; echo -n '\t\t'; echo '♂: '$v97
echo -n '♀: '; porcentaxe $v98 $vtotal; echo -n '\t\t'; echo '♀: '$v98
echo -n '↔: '; porcentaxe $v99 $vtotal; echo -n '\t\t'; echo '↔: '$v99
echo ''

# -----------------------------------------
