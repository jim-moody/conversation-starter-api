#!/bin/bash

TOKEN=BAhJIiVmODJkNjRlODJmY2FhODJhZGZlZjA0YTVhYTc3MmE3ZgY6BkVG--b66375efadfba195904fb6c1aa24f3088423b8fd

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lines"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "line": {
      "text": "Hey whats up"
    }
  }'

echo
