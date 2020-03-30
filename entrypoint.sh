#!/bin/sh

curl \
  --silent \
  --fail \
  --get \
  --data-urlencode "user=${INPUT_FREEMOBILE_ID}" \
  --data-urlencode "pass=${INPUT_FREEMOBILE_TOKEN}" \
  --data-urlencode "msg=${INPUT_MESSAGE}" \
  "https://smsapi.free-mobile.fr/sendmsg" \
  && echo "Notification has been sent." \
  || (echo "Notification has failed. Check your credentials."; exit 1)
