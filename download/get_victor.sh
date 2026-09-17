#! /usr/bin/env bash

if   [[ "$OSTYPE" == "linux-gnu"* ]]; then OS=linux
elif [[ "$OSTYPE" == "darwin"*    ]]; then OS=mac
elif [[ "$OSTYPE" == "cygwin"     ]]; then echo >&2 "Error: unsupported OS."; exit 1
elif [[ "$OSTYPE" == "msys"       ]]; then echo >&2 "Error: unsupported OS."; exit 1
elif [[ "$OSTYPE" == "freebsd"*   ]]; then echo >&2 "Error: unsupported OS."; exit 1
else echo >&2 "Error: unknown OS."; exit 1; fi

curl -L -C - --insecure https://fenglab.chpc.utah.edu/download/VICTOR_$OS.tgz > VICTOR_$OS.tgz
