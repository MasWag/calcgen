#!/bin/sh
############################
##
## 計算プリント自動生成スクリプト
##
############################


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
echo "正負の数計算問題";;
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
