#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/playlists"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --data '{
#     "playlist": {
#       "title": "a sample title"
#     }
#   }'

echo
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/playlists"
TOKEN="BAhJIiVkNGQ3NDc1ZTQ4YzYxYTEyYmJjMGJmZjY5OWY2YzVjNwY6BkVG--4ffcbf23fc3108a44e01fbe968e3eb34e5fbbeb3"
TEXT="Some Playlist Title"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
     "playlist": {
       "title": "'"${TEXT}"'"
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
