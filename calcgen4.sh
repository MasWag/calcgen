#!/bin/sh
#############################################
##
##  二元連立一次方程式の計算問題自動生成スクリプト
##
#############################################

genParams() 
{
    x=$((20*$RANDOM/32797 - 10));
    y=$((20*$RANDOM/32797 - 10));
    
    a=$((10*$RANDOM/32797 + 1));
    b=$((10*$RANDOM/32797 + 1));
    
    d=$((10*$RANDOM/32797 + 1));
    e=$((10*$RANDOM/32797 + 1));
    
    dispa=$a
    dispb=$b
    dispd=$d
    dispe=$e
    
    if [ $(($a * $d)) -eq $(($b * $e)) ] ; then
	b=$(($b+1));
    fi
    
    if [ $dispa -eq 1 ] ; then
	dispa=""
    fi
    
    if [ $dispb -eq 1 ] ; then
	dispb=""
    fi
    
    if [ $dispd -eq 1 ] ; then
	dispd=""
    fi
    
    if [ $dispe -eq 1 ] ; then
	dispe=""
    fi  
}

if [ $# != 1 ] ; then
    echo "usage:$0 [num]"; 2>&1
    exit;
fi

for t in $(seq 1 $1);do
c=100
f=100

    case $((6*$RANDOM/32797)) in
	0 )
	    until [ $c -le 10 -a $c -gt -10 ] && [ $f -le 10 -a $f -gt -10 ] ; do
		genParams;
		c=$(( $a * ($x) + $b * ($y) ));
		f=$(( $d * ($x) + $e * ($y) ));
	    done
	    echo "\begin{eqnarray*}\begin{cases}"
	    echo " $dispa x + $dispb y = $c & \\\\ "
	    echo " $dispd x + $dispe y = $f & "
	    echo "\end{cases}\end{eqnarray*}";;
	1 )
	    until [ $c -le 10 -a $c -gt -10 ] && [ $f -le 10 -a $f -gt -10 ] ; do
		genParams;
		c=$(( $a * ($x) - $b * ($y) ));
		f=$(( $d * ($x) + $e * ($y) ))
	    done
	    echo "\begin{eqnarray*}\begin{cases}"
	    echo " $dispa x - $dispb y = $c & \\\\ "
	    echo " $dispd x + $dispe y = $f & "
	    echo "\end{cases}\end{eqnarray*}";;
	2 )
	    until [ $c -le 10 -a $c -gt -10 ] && [ $f -le 10 -a $f -gt -10 ] ; do
		genParams;
		c=$(( -$a * ($x) + $b * ($y) ))
		f=$(( $d * ($x) + $e * ($y) ))
	    done
	    echo "\begin{eqnarray*}\begin{cases}"
	    echo " -$dispa x + $dispb y = $c  & \\\\ "
	    echo " $dispd x + $dispe y = $f & "
	    echo "\end{cases}\end{eqnarray*}";;
	3 )
	    until [ $c -le 10 -a $c -gt -10 ] && [ $f -le 10 -a $f -gt -10 ] ; do
		genParams;
		c=$(( $a * ($x) + $b * ($y) ))
		f=$(( -$d * ($x) + $e * ($y) ))
	    done
	    echo "\begin{eqnarray*}\begin{cases}"
	    echo " $dispa x + $dispb y = $c & \\\\ "
	    echo " -$dispd x + $dispe y = $f  & "
	    echo "\end{cases}\end{eqnarray*}";;
	4 )
	    until [ $c -le 10 -a $c -gt -10 ] && [ $f -le 10 -a $f -gt -10 ] ; do
		genParams;
		c=$(( -$a * ($x) + $b * ($y) ))
		f=$(( $d * ($x) - ($e) * ($y) ))
	    done
	    echo "\begin{eqnarray*}\begin{cases}"
	    echo " -$dispa x + $dispb y = $c & \\\\ "
	    echo " $dispd x - $dispe y = $f & "
	    echo "\end{cases}\end{eqnarray*}";;
	5 )
	    until [ $c -le 10 -a $c -gt -10 ] && [ $f -le 10 -a $f -gt -10 ] ; do
		genParams;
		c=$(( (-$a) * ($x) + $b * ($y) ))
		f=$(( (-$d) * ($x) + $e * ($y) ))
	    done
	    echo "\begin{eqnarray*}\begin{cases}"
	    echo " -$dispa x + $dispb y = $c & \\\\ "
	    echo " -$dispd x + $dispe y = $f & "
	    echo "\end{cases}\end{eqnarray*}";;
    esac
done;
