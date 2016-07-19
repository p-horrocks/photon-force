#!/bin/bash
#
#
DIR=$1
BASE=$(ls ${1}/*.drl | head -n1)
BASE=$(basename ${BASE} .drl)

# Strip layer name from filenames
for ext in gbl gbs gbo gbr gtl gts gto ; do
    mv ${DIR}/${BASE}-*.${ext} ${DIR}/${BASE}.${ext}
done

# Rename the PCB edge file
mv ${DIR}/${BASE}.gbr ${DIR}/${BASE}.gml

# Rename the drill file
mv ${DIR}/${BASE}.drl ${DIR}/${BASE}.txt

# zip everything up
zip ${DIR}/${BASE}.zip ${DIR}/${BASE}.g?? ${DIR}/${BASE}.txt
