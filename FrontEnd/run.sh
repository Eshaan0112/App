#!/bin/bash

# Start the front-end server
pip install -r requirements.txt
echo "COMPILING TYPESCRIPT"
npx tsc homePage.ts
echo "STARTING FRONT-END SERVER"
npx http-server &

# Wait for the front-end server to start
sleep 10

# Start the back-end server
echo "STARTING BACK-END SERVER"
echo "URL to start uploading: https://eshaan0112.github.io/App/display.html"
python3 back_end.py

