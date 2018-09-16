#!/usr/bin/env bash

set -e

handle-dir() {
  dir=$1

  echo "Handling: $dir"
  helm package "$dir" -d docs
}

while read -r dir; do
  if [[ $dir = "." ]]; then continue; fi
  handle-dir "$dir"
done <<< "$(find . -type dir -maxdepth 1 | grep -v .git | grep -v docs)"

index=docs/index.html
echo "Helm Charts: <br>" > "$index"
find ./docs -type file -name "*.tgz" | xargs -I file basename file | awk '{print $1 " <br>"}' >> "$index"

helm repo index docs
