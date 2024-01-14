#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Current directory: $(pwd)"
ls -l ./bin
echo "Executing './bin/rails server'"
./bin/rails server

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean