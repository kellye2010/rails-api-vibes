#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"NoraYellow"'",
      "password": "'"1"'",
      "password_confirmation": "'"1"'"
    }
  }'

echo


# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/sign-in"
# EMAIL="yourname@yahoo.com"
# PASSWORD="yourpassword"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "'"${EMAIL}"'",
#       "password": "'"${PASSWORD}"'",
#       "password_confirmation": "'"${PASSWORD}"'"
#     }
#   }'
#
# echo
