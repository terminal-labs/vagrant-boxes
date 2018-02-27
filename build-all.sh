mkdir -p scripts

bash build-json-files.sh

yasha yasha-templates/bash-scripts/build-all.sh.template -o scripts/build-all.sh

bash scripts/build-all.sh
