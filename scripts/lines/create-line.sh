#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lines"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "line": {
      "user_id": 1,
      "text": "Hey whats up"
    }
  }'

echo
