#!/bin/bash

# Install Python dependencies
pip install -r requirements.txt

# Install Node dependencies and build Tailwind CSS
npm install
npm run build:css

# Collect static files
python manage.py collectstatic --noinput
