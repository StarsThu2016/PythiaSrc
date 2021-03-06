#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Error: Invalid number of parameters"
	echo "create_experiment.sh REP CORES"
	exit 1
fi

REP=$1
shift
CORES=$1

SCRIPT_DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

var1=0
for SUITE in parsec spec_fp spec_int; do
    for BMARK in `cat "${SCRIPT_DIR}/manifests/${SUITE}_benchmarks"`; do
        ((var1++));
         var2=0;
	    for SUITE2 in parsec spec_fp spec_int; do
            for BMARK2 in `cat "${SCRIPT_DIR}/manifests/${SUITE2}_benchmarks"`; do
                ((var2++))
                if (($var1 <= $var2))
                then
                    echo "${SUITE} ${BMARK} ${CORES} ${SUITE2} ${BMARK2} ${CORES} ${REP}"
                fi
	        done
        done
    done
done
