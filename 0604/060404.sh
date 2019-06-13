if [ -d "$1" ]; then
    #ディレクトリ内のファイルが実行可能ファイル化チェックして
    #実行可能ファイルであれば表示
    for file in $(ls "$1")
    do
        #ファイルが実行ファイルであれば表示
        if [ ! -r "${1}/$file" ]; then
            echo "$file"
        fi
    done
else
    # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi
