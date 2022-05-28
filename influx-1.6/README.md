# Grafana UI Time Series Monitoring with InfluxDB 2.0 and Telegraf
# Grafana + TIG-stack 

Run the complete TIG stack plus grafana using docker compose.  This uses the latest versions of each individual docker image.

- [telegraf](https://hub.docker.com/_/telegraf/)
- [influxdb](https://hub.docker.com/_/influxdb/) 
- [grafana/grafana](https://hub.docker.com/r/grafana/grafana/)

## Usage
Start all the images as follows:

    # Start all images in the background
    $ docker-compose up -d
 
### Check that Grafana UI 
Open your browser to the link below:

    curl http://localhost:3000

    username: admin
    password: admin 

### Check that InfluxDB works:

Run this curl command, if no errors occur InfluxDB is running:

    curl http://localhost:8086/ping

    