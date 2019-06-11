#!/bin/bash

function cont(){
 echo -n 'continue?(y/n)' 
read yesno
while :
do
if [ $yesno = 'n' ]; then
echo 'end...'
 exit
fi
 echo 'continue...'
 cd $HOME/rep/unix1/
 git status
 cont
 # git add/commit/pushの選択画面
 echo '1) git add -i'
 echo '2) git commit'
 echo '3) git push'
 echo '*) exit'
 echo -n 'select?(1/2/3/*)'
 read select
case $select in
exit
 if [ $select = '1' ]; then
git add -i
git status
elif [ $select = '2' ]; then
 echo -n 'comment:'
 read comment
 git commit -m  "$comment"
git log --oneline
#git push 選択
elif [ $select = '3' ]; then
git push
fi
echo 'end...'
