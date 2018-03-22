mkdir -p bash-scripts

bash build-json-files.sh

yasha yasha-templates/bash-templates/build-all.sh.template -o bash-scripts/build-all.sh

bash bash-scripts/build-all.sh
