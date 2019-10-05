#!/bin/bash

# EXPOSE 3000

# CMD ["bash","-cl","./entrypoint.sh"]

## Add a script to be executed every time the container starts.
set -e

cd myapps/backend/myrailsapi/

sudo chmod -R 777 *

rake db:create

rake db:migrate

bundle exec rails s -p 3000 -b '0.0.0.0'
