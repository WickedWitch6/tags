./clean.sh
mkdir ../dist/
for name in DM_metadata DW_metadata
do
    jq . -c ../data/$name.json | dos2unix > ../dist/$name.json
done
