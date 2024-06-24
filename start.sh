#!/bin/bash

set -e
export FLASK_APP=sizuka:create_app
gunicorn -w 4 -b 0.0.0.0:${PORT:-8080} sizuka:create_app &
python3 -m AnonXMusic
