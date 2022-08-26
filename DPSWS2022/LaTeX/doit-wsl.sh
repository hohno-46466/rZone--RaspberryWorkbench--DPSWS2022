#!/bin/sh
nkf -w main.tex > main-utf8.tex
echo
# echo "Note: 最後にくっついているコメントを削除あるいは直上にある \begin{comment}..\end{comment} の中に入れること"
# sleep 1
# vi main-utf8.tex

# function open() {
#   cmd.exe /c start $(wslpath -w  $(pwd)/$1)
# }

platex dpsws2022-RaspberryWorkbench.tex && platex dpsws2022-RaspberryWorkbench.tex && platex dpsws2022-RaspberryWorkbench.tex \
&& dvipdfmx dpsws2022-RaspberryWorkbench.dvi \
&& cmd.exe /c start $(wslpath -w $(pwd)/dpsws2022-RaspberryWorkbench.pdf)
