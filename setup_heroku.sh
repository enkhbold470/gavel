#!/bin/bash
# Setup script for Heroku deployment

# Install Heroku Redis add-on
echo "Adding Heroku Redis add-on..."
heroku addons:create heroku-redis:hobby-dev

# Install Heroku Postgres add-on
echo "Adding Heroku Postgres add-on..."
heroku addons:create heroku-postgresql:hobby-dev

echo "Setup complete! Your app should now have the required add-ons."
echo "Make sure to commit and push your code changes."
