#!/bin/bash

set -euo pipefail

export SERVER_FULLNAME="${1:-prod.db.faims.edu.au}" # dev, alpha, testing, selenium
cp groundwater.json faims3-temp-notebook-migrator/testnotebook.json
cp groundwater.json faims3-temp-notebook-migrator/
cd faims3-temp-notebook-migrator
echo "Load Groundwater ${SERVER_FULLNAME}"
bash loadNotebook.sh $SERVER_FULLNAME "Macquarie Groundwater -- Vegetation Notebook September 2022" "groundwater.json" "groundwater"