#!/bin/sh
############################
##
## 計算プリント自動生成スクリプト
##
############################


if [ $# != 1 ] && [ $# != 2 ]; then 
    echo "usage:$0  sort num";
    exit;
fi

if [ $1 == "-h" ] || [ $1 == "-help" ]; then
    cat << EOS
計算問題自動生成スクリプト
========================
使い方:$0  種類 個数

種類
------------------------------
問題の種類の番号と内容の対応は以下の様になっています。
1:正負の数の四則演算
EOS
    exit;
fi

cat <<EOS
\documentclass{jsarticle}
\setlength{\topmargin}{-25mm}
\setlength{\textheight}{254mm}
\usepackage{setspace}
\usepackage{multicol}
\begin{document}
EOS

case $1 in
    1)
	echo "\section*{正負の数計算問題}";;
esac

cat << EOS
\begin{multicols}{2}
\begin{spacing}{2}
EOS

case $1 in
    1)
	./calcgen1.sh $2;;
esac

cat << EOS
\end{spacing}
\end{multicols}
\end{document}
EOS
