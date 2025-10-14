#!/bin/bash
cmd=(docker run --network="host" -t -i --rm -u $(id -u ${USER}):$(id -g ${USER}) -v $(pwd):/data hcp/run_hcp_xnat:latest "$@")

echo "${cmd[@]}"
#"${cmd[@]}"
