# Heroku Deployment Fix

This guide will help you fix the Flask Markup import error and Redis connection issues when deploying to Heroku.

## Issue Fixed
1. Flask Markup import error - Moved from Flask to markupsafe in newer Flask versions
2. Application context issue in initialize.py
3. Redis connection for Celery workers

## How to deploy

1. Make sure you have the Heroku CLI installed and are logged in
2. Run the setup script to add the required add-ons:
   ```
   ./setup_heroku.sh
   ```
3. Commit and push the changes to Heroku:
   ```
   git add .
   git commit -m "Fix Markup import and app context issues"
   git push heroku master
   ```

## Manual Setup

If you prefer to set up manually:

1. Add Redis add-on:
   ```
   heroku addons:create heroku-redis:hobby-dev
   ```

2. Add Postgres add-on:
   ```
   heroku addons:create heroku-postgresql:hobby-dev
   ```

3. Restart the app:
   ```
   heroku restart
   ```

## Troubleshooting

If you encounter more issues, check the logs:
```
heroku logs --tail
```

If Redis connection issues persist, make sure the REDIS_URL environment variable is properly set on Heroku. 
