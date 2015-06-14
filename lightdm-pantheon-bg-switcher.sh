#/bin/bash

BG_DIR="/home/commun/.lightdm-bg/"
BG_DEST_DIR="/usr/share/backgrounds/"
BG_DEST_NAME="elementaryos-default"

BG_COUNT=$(ls ${BG_DIR} | wc -l)
declare -a BG_LIST=($(ls ${BG_DIR}))

NEXT_BG_INDEX=$(($RANDOM % ${BG_COUNT}))
NEXT_BG=${BG_LIST[${NEXT_BG_INDEX}]}

rm -f ${BG_DEST_DIR}${BG_DEST_NAME}
cp ${BG_DIR}${NEXT_BG} ${BG_DEST_DIR}${BG_DEST_NAME}
