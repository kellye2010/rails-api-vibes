#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/delete-playlist"
# curl "${API}${URL_PATH}/${ID}" \
#   --include \
#   --request DELETE \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN"
#
# echo

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/playlists"
TOKEN="BAhJIiVkNGQ3NDc1ZTQ4YzYxYTEyYmJjMGJmZjY5OWY2YzVjNwY6BkVG--4ffcbf23fc3108a44e01fbe968e3eb34e5fbbeb3"
ID="1"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json"
  --header "Authorization: Token token=$TOKEN"

echo
