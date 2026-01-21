#!/bin/bash

# Vercel Build Script for Django + Tailwind CSS

echo "Installing Python dependencies..."
pip install -r requirements.txt

echo "Installing Node dependencies..."
npm install

echo "Building Tailwind CSS..."
npm run build:css

echo "Collecting Django static files..."
python manage.py collectstatic --noinput --clear

echo "Build completed successfully!"
