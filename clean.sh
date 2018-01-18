#!/usr/bin/env bash
confirm () {
	local msg=$1
	local expected=$2
	read -r -p "$msg ($expected): " response
	if [[ ${response} != ${expected} ]];then
		echo 'Aborted'
		exit 0
	fi
}

confirm 'WARNING: This will clear all Elasticsearch data. Continue?' 'y'
docker-compose rm --force --stop
rm -rf ~/ElasticSearchData/*
