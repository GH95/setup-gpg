#!/usr/bin/env bash

docker build -t gpginstall .
docker run -d gpginstall sleep infinity