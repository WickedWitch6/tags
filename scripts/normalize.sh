for name
do
    jq -f ./normalize.jq "$name.json" | dos2unix > temp.json
    mv temp.json "$name.json"
done
