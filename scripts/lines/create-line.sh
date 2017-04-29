#!/bin/bash

TOKEN=BAhJIiU0ODQ2OWE4NTQzMjA0MDc0MzU4NWI3ZDFhODBiMjNmYwY6BkVG--8c379184dceabc2f5e24c79e44a0b8ef460b125e

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
