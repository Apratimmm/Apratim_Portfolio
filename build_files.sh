#!/bin/bash

# Comprehensive build script for Vercel
echo "=== Starting Vercel Build ==="

# 1. Install Node.js dependencies & Build Tailwind
echo "Installing Node.js dependencies..."
npm install

echo "Building Tailwind CSS..."
# Explicitly use the local tailwindcss binary
./node_modules/.bin/tailwindcss -i ./static/css/input.css -o ./static/css/output.css --minify

# 2. Try to run collectstatic (to support WhiteNoise)
# We install minimal dependencies needed for collectstatic during the static build step
echo "Installing Python dependencies for collectstatic..."
pip install django whitenoise pillow

echo "Collecting static files..."
mkdir -p staticfiles
python manage.py collectstatic --noinput --clear

echo "Checking staticfiles directory..."
ls -R staticfiles

echo "=== Build Complete ==="
