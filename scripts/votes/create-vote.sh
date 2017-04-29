#!/bin/bash

TOKEN=BAhJIiUxNWIyOTRiZjg5NzQ0YTNlZTM0ODM1YjBlMmUzMGNiMAY6BkVG--8427db7753aa023d1322864607a002e7b845911a

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/votes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "vote": {
      "line_id": 62,
      "value": -1
    }
  }'

echo
