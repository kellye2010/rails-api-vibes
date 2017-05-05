#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/playlists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "title": "a sample title"
    }
  }'

echo

# curl http://localhost:4741/posts \
# --include \
# --request POST \
# --header "Content-Type: application/json" \
# --data '{
#     "playlist": {
#       "title": "a sample title"
      # "body": "a sample body"
#     }
#   }'
