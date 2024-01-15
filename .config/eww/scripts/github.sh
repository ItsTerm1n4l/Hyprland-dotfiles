#!/bin/bash

NOTIFICATIONS="$(gh api notifications)"
COUNT="$(echo "$NOTIFICATIONS" | jq 'length')"

echo $COUNT
#echo '{"text": 0,"tooltip": "0 Notifications"}'
