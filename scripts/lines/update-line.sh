#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lines/1"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "line": {
      "text": "Hey jim"
    }
  }'

echo
