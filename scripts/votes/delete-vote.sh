#!/bin/bash
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/votes/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"


echo
