for name
do
    jq . "$name.json" | dos2unix > temp.json
    mv temp.json "$name.json"
done
