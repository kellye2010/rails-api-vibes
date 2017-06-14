#!/bin/bash
# Not needed, unless you are trying to get all of the playlists of all users
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/playlists"
TOKEN="BAhJIiVkNGQ3NDc1ZTQ4YzYxYTEyYmJjMGJmZjY5OWY2YzVjNwY6BkVG--4ffcbf23fc3108a44e01fbe968e3eb34e5fbbeb3"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
