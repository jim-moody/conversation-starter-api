#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/votes/1"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"


echo
