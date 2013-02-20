#!/bin/sh
#############################################
##
##  一次方程式の計算問題自動生成スクリプト
##
#############################################


if [ $# != 1 ] ; then
    echo "usage:$0 [num]"; 2>&1
    exit;
fi

echo "\begin{itemize}"

for t in $(seq 1 $1);do
a=$((20*$RANDOM/32797 - 10));
b=$((10*$RANDOM/32797 + 1));
c=$(( (20*$RANDOM/32797 - 10) ));

if [ $a -eq 1 ] ; then
    a=""
elif [ $a -eq -1 ] ; then
    a="-"
elif [ $a -eq 0 ] ; then
    a=10
fi
if [ $c -eq 0 ] ; then
    c=10
fi

    case $((4*$RANDOM/32797)) in
	0 )
	    echo " \item \$ $a x + $b = $c \$ ";;
	1 ) 
	    echo " \item $ $a x- $b = $c \$ ";;
	2 ) 
	    if [ $c -eq 1 ] ; then
		c=""
	    elif [ $c -eq -1 ] ; then
		c="-"
	    fi
	    echo " \item $ $a x+ $b = $c x  \$ ";;
	3 ) 
	    if [ $c -eq 1 ] ; then
		c=""
	    elif [ $c -eq -1 ] ; then
		c="-"
	    fi
	    echo " \item $ $a x - $b = $c x \$ ";;
    esac
done;

echo "\end{itemize}"
