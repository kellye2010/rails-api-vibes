#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
ID="2"
TOKEN="BAhJIiVkNGQ3NDc1ZTQ4YzYxYTEyYmJjMGJmZjY5OWY2YzVjNwY6BkVG--4ffcbf23fc3108a44e01fbe968e3eb34e5fbbeb3"
ID="7"
NEWTITLE="Some New Title"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "playlists": {
      "id": "'"${ID}"'",
      "title": "'"${NEWTITLE}"'"
    }
  }'

echo
