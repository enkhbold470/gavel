#!/bin/bash
set -e

# Install uv
pip install uv

# Install Python dependencies using uv
uv pip install -r requirements.txt

# Install pnpm
npm install -g pnpm

# Install frontend dependencies
pnpm install

# Build frontend assets
pnpm run build

# Deploy to Heroku
git add .
git commit -m "Update dependencies and fix Markup import"
git push heroku main
