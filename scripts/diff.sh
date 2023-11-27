for name
do
    echo $'\n'"$name"$'\n'---
    jd "../data/$name.json" "$name.json"
done
