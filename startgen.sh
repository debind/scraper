#!/bin/bash

FILENAME=${1%.conf*}
FILENAME=${FILENAME}.adf
FILENAME=`echo $FILENAME | sed 's|/conf/|/roms/|g'`
sudo echo \#!/bin/bash > ./start.sh
sudo echo pushd "/opt/retropie/emulators/uae4all" >> ./start.sh
sudo echo /opt/retropie/supplementary/runcommand/runcommand.sh 0 \'./uae4all \"${FILENAME}\"\' \"uae4all\" >> ./start.sh
sudo echo popd >> ./start.sh
sudo chmod a+x ./start.sh && ./start.sh



#./start.sh

