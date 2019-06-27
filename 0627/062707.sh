#!/bin/bash

cd $HOME/rep/unix1/
git status
while :
do
# git log/oneline/oneline--name-onlyの選択画面
echo '1) git log'
echo '2) git log --oneline'
echo '3) git log --oneline--name-only'
echo '*) exit'
echo -n 'select?(1/2/3/*):'
read select
echo $select
case "$select" in
    # git log 選択
     1)
         git log
         break
         ;;
    # git log oneline 選択
     2)
        git log --oneline
        ;;
 
    # git log --oneline --name-only 選択
     3)
        git log --oneline --name-only
        ;;
     *)
         echo 'end...'
         exit 0
         ;;
esac
done
