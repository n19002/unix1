    if [ -d "$1" ]; then
        find  "$1" -type f -type d | wc -l
        echo "$file=>"
        echo "$directory=>"
        for file in $( ls "$1")
        do

            #引数が指定されていない場合は以下のヘルプを表示
            使い方: 062703.sh DIRPATH
            DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
            DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定

 done

else
    # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi


