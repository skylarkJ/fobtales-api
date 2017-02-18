#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/stories"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "story": {
      "title": "'"{$TITLE}"'"

    }
  }'

echo
