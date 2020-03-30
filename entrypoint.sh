#!/bin/sh

curl --get "https://smsapi.free-mobile.fr/sendmsg" \
  --data-urlencode "user=${INPUT_FREEMOBILE_ID}" \
  --data-urlencode "pass=${INPUT_FREEMOBILE_TOKEN}" \
  --data-urlencode "msg=${INPUT_MESSAGE}"
