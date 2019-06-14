#!/bin/bash

echo -e "\nstart backup.sh : `date`"
if [ ! -e $BACKP_DIR ]; then
    err "Backup directory is not found: dirname = "$BACKP_DIR
fi

# バックアップ処理
echo start zip : `date`
if [ -d $TARGET_DIR ]; then
# echo tmp --directory="${TARGET_DIR}" --use-compress-program=gzip --warning=no-file-changed -cpf ${BACKUP_DIR/${BACKUP_FILE_NAME} ./
tmp--directory="${TARGET_DIR}" --use-compress-program=gzip --warning=no-file-changed -cpf ${BACKUP_DIR}/${BACKUP_FILE_NAME} ./
if [ $? -eq 0] || [ $? -eq 1]; then
    echo Backup ended : `date`
else 
    err "Something wrong in making backup files : `date`"
fi
else
    err "Target directory is not found: dirname ="$TARGET_DIR
fi
