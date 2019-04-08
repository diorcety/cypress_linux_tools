#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

TMPDIR=$(mktemp -d)
cp cyhostboot ${TMPDIR}
cp $1 ${TMPDIR}
makeself ${TMPDIR} firmware-updater "Firmware updater" ./cyhostboot -f $(basename $1) -k A0782205F047
rm -rf ${TMPDIR}
