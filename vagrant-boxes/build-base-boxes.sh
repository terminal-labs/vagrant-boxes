mkdir -p scripts

bash build-json-files.sh

yasha yasha-templates/bash-scripts/build-base-boxes.sh.template -o scripts/build-base-boxes.sh

bash scripts/build-base-boxes.sh
