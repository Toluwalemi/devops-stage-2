#! /usr/bin/env bash

echo "Running prestart.sh script..."
echo "Current working directory:" && pwd
echo "Listing contents of current directory:" && ls -la

# Let the DB start
python ./app/backend_pre_start.py

# Run migrations
alembic upgrade head

# Create initial data in DB
python ./app/initial_data.py
