# Grafana 8.5.4 and Influxdb 2.2 Monitoring stack
This repo is for spinning up grafana 8.x and connecting to influxdbv2.2 

-- kuberentes files were created but have not been tested 
-- to run the old instance of grafana and influxdb v.1.x 
-- cd into tig-stack-1.8 
-- run docker-compose up -d from there 

#### Spinning up the stack 
 To spin up the entire stack you can run the following 

```
docker-compose up -d 
```

# Variables 
 Variables for the entire stack can be found in the configuration.env file 
 

#### Datasources
 YAML files for setting up the following grafana features can be found in this dir: 
  grafana/provisioning
  
- ACCESS-CONTROL:  
- DASHBOARDS:  a list of yaml written dashboards are available for testing in provisioning/dashboards dir
- DATASOURCES/DATABASES:  Influxdb v2.2 config files can be found in the provisioning/datasources dir
     (flux.yml is being used as the query language for influxdb 2.0)
- NOTIFIERS: the notifiers can be added in provisioning/notifiers dir. 
    (currently there is a slack.yml example)
file used for configuring slack notifications.
- PLUGINS: 
 

### Check that Grafana UI 
Open your browser to the link below:

    http://localhost:3000

    username: admin
    password: admin 

### Check that InfluxDB works:

Run this curl command, if no errors occur InfluxDB is running:
    http://localhost:8086/ping

     