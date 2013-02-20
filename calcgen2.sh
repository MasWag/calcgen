#!/bin/sh
#############################################
##
##  文字と式の計算問題自動生成スクリプト
##
#############################################


if [ $# != 1 ] ; then
    echo "usage:$0 [num]"; 2>&1
    exit;
fi

echo "\begin{itemize}"

for t in $(seq 1 $1);do
a=$((10*$RANDOM/32797 + 2));
b=$(( $a + (5*$RANDOM/32797 + 1)));
c=$(( (10*$RANDOM/32797 + 2) ));
d=$(( $c + (5*$RANDOM/32797 + 1)));

    case $((8*$RANDOM/32797)) in
	0 )
	    echo " \item \$ $a a + $c b + $b a +  $d b \$ ";;
	1 ) 
	    echo " \item $ $b x- $a y + $c y +$d x $ ";;
	2 ) 
	    echo " \item $ -$a a + $d b - $b a  + $c b $ ";;
	3 ) 
	    echo " \item $ - $b x + $a y - $c x - $d y $ ";;
	4 ) 
	    echo " \item $ ( $a b - $b b) \times $c a $ ";;
	5 ) 
	    echo " \item $ ( - $b b+ $a a) \times $c a $ ";;
	6 ) 
	    echo " \item $ ( $a a + $b a) \times ( -$c  b)$ ";;
	7 ) 
	    echo " \item $ ( - $a a - $b b) \div $c b$ ";;
    esac
done;

echo "\end{itemize}"
