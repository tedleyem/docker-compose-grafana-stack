#!/bin/bash
# script to build and spin up grafana app

# remove existing images if they exist locally 
#docker stop grafana influxdb telegraf
#docker rm grafana influxdb telegraf

#Build Grafana image with name grafana 
#docker build -f grafana/Dockerfile grafana/. --no-cache --tag grafana
#docker build -f grafana/Dockerfile --no-cache --tag grafana .
 
#Build Influxdb image with name influxdb 
#docker build -f influxdb/Dockerfile --no-cache --tag influxdb

#Build Telegraf image with name telegraf
#docker build -f telegraf/Dockerfile --no-cache --tag telegraf


# Run image with port 3000
#docker run --name grafana -p 3000:3000 -d grafana
#docker run --name grafana -p 3000:3000 -d influxdb
#docker run --name grafana -p 3000:3000 -d telegraf

# Bring down existing images with docker compose 
docker-compose down && sleep 7 
# Spin up docker images with docker compose 
docker-compose up -d 