# mqtt-broker

## Scripts
### run.sh
The ```run.sh``` command will automatically check the architecture of the target system and start the mqtt-broker container based on a docker image adapted for this particular architecture.

## docker run command

### x86 based systems

``` 
docker run -p 1883:1883 \
           --restart="always" \
           --name mqtt-broker \
           -d \
           ansi/mosquitto:latest
```
### RaspberryPi and Arm based systems
``` 
docker run -p 1883:1883 \
           --restart="always" \
           --name mqtt-broker \
           -d \
           openenergy/rpi-mosquitto:latest
```
