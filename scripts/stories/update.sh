#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/stories/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "story": {
      "title": "'"{$TITLE}"'"
    }
  }'

#\
# --header "Authorization: Token token=$TOKEN"-

echo
