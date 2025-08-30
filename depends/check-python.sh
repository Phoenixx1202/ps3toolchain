#!/bin/sh
# check-python.sh by Naomi Peori (naomi@peori.ca)

## Check for python.
( python3 --version || python3 -V ) 1>/dev/null 2>&1 || { echo "ERROR: Install python before continuing."; exit 1; }

## Check for python-config
pyprefix=$(python3-config --prefix)
[ $? -eq 0 ] || { echo "ERROR: Install python-dev before continuing."; exit 1; }

## Check for python header files
( ls -1d "${pyprefix}"/include/python3.*/Python.h || ls -1d /opt/local/include/python3.*/Python.h ) 1>/dev/null 2>&1 || [ -f "$PYINSTALLDIR/include/Python.h" ] || { echo "ERROR: Install python3-dev before continuing."; exit 1; }
