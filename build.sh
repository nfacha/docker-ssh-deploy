#!/bin/bash
docker build -t facha/docker-ssh-deploy .
docker push facha/docker-ssh-deploy
