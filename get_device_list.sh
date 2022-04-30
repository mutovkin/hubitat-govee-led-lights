#!/usr/bin/env bash

# Get the list of devices connected to the API key

API_KEY=$1

if [ -z "$API_KEY" ]; then
    echo "API key is not set as the first argument"
    exit 1
fi

# Trim API key
API_KEY=$(echo $API_KEY | sed 's/^ *//g' | sed 's/ *$//g')


curl -s \
    -X GET \
    -H "Govee-API-Key: ${API_KEY}" \
    https://developer-api.govee.com/v1/devices | jq