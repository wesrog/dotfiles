TZ='America/Los_Angeles'; export TZ
TRACKPAD_ID=`xinput list --id-only "CyPS/2 Cypress Trackpad"`
xinput set-button-map $TRACKPAD_ID 1 2 3 5 4 7 6
