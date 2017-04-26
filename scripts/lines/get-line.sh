#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lines/1"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

echo
