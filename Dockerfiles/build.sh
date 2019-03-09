#!/bin/bash
cd mediawiki
docker build --rm --tag local/mediawiki:latest .
cd ../mysql
docker build --rm --tag local/mysql:latest .
cd ..