#! /usr/bin/env bash

curl -L -C - --insecure https://fenglab.chpc.utah.edu/download/pkg_linux.tgz | tar xz

CURRENT_PATH=`pwd`
sed "s;/path/to/pkg;$CURRENT_PATH/pkg;g" pkg/PROVEAN/bin/provean.sh > get_pkg_inst.tmp && mv get_pkg_inst.tmp pkg/PROVEAN/bin/provean.sh
chmod +x pkg/PROVEAN/bin/provean.sh
rm -f get_pkg_inst.tmp
