# This line tells the system to use the Bash shell to interpret the script.
#!/bin/bash

# This line exit immediately if any command exits with a non-zero status.
set -e

# This line print the message
echo "Running database migrations"

# This line run the command in the shells 
yarn migrate 

echo "Seeding database"
yarn seed

echo "Starting server"
yarn start