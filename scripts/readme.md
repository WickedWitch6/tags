# Scripts For Manipulating Tag Data

## deploy.sh
Runs `prepare.sh` then runs netlify, which deploys the data in `../dist/` to netlify's servers. This step depends on `../netlify.toml` and `../.netlify/state.json`.

## prepare.sh
Compacts `DM_metadata.json` and `DW_metadata.json` using `jq` and puts the result in `../dist`.

## clean.sh
Deletes `../dist/`

## pull.sh
Copies `$name` from `../data` into `.` so it can be modified.

## push.sh
Copies the -- presumably modified -- `$name` back from `.` into `../data`.

## diff.sh
Uses `jq` to compute and display the semantic differences between each `$name.json` and `../$name.json`

## normalize.sh 
Runs `normalize.jq` on each `$name.json`, overwriting the old `$name.json`. `normalize.jq`, adds a `tags` attribute if the passage is missing one, downcases every tag, and removes any duplicate passages.