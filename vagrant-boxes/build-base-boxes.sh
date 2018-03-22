mkdir -p bash-scripts

bash build-json-files.sh

yasha yasha-templates/bash-templates/build-base-boxes.sh.template -o bash-scripts/build-base-boxes.sh

bash bash-scripts/build-base-boxes.sh
