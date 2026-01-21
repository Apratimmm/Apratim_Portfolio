#!/bin/bash

# Simple and robust build script
echo "=== Starting Build ==="

# 1. Install Node.js dependencies
echo "Installing dependencies..."
npm install

# 2. Build Tailwind CSS
echo "Building Tailwind..."
# Generate the output.css directly into the static folder
npx tailwindcss -i ./static/css/input.css -o ./static/css/output.css --minify

echo "Checking static files..."
ls -R static

echo "=== Build Complete ==="
