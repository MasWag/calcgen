#!/bin/sh
#############################################
##
##  正負の数の四則演算問題自動生成スクリプト
##
#############################################


if [ $# != 1 ] ; then
    echo "usage:$0 [num]"; 2>&1
    exit;
fi

echo "\begin{itemize}"

for t in $(seq 1 $1);do
a=$((10*$RANDOM/32797 + 1));
b=$(( $a + (10*$RANDOM/32797 + 1)));
c=$(( (10*$RANDOM/32797 + 2) ));

    case $((9*$RANDOM/32797)) in
	0 )
	    echo " \item \$ - $b + $a \times ( - $c ) \$ ";;
	1 ) 
	    echo " \item $ $b - $a \times $c $ ";;
	2 ) 
	    echo " \item $ (  $a - $b ) \div $c $ ";;
	3 ) 
	    echo " \item $ ( - $b + $a ) \div $c $ ";;
	4 ) 
	    echo " \item $ ( $a - $b ) \times $c $ ";;
	5 ) 
	    echo " \item $ ( - $b + $a ) \times $c $ ";;
	6 ) 
	    echo " \item $ ( $a + $b ) \times ( -$c )$ ";;
	7 ) 
	    echo " \item $ ( - $a - $b ) \div $c $ ";;
	8 )
	    echo " \item $ - $b + $a \times  $c $ ";;
    esac
done;

echo "\end{itemize}"
