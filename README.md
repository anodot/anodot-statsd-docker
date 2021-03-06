anodot-statsd-docker
====================

statsd service with anodot backend that send metrics via anodot API  

### Usage
- `docker pull anodot/anodot-statsd`
- `docker run -d -e "ANODOT_API_TOKEN=YOUR_API_TOKEN" -p 8125:8125/udp -p 8126:8126 anodot/anodot-statsd`

#### Git

- Clone the repo
- `docker build -t anodot-statsd .`
- `docker run -d -e "ANODOT_API_TOKEN=YOUR_API_TOKEN" -p 8125:8125/udp -p 8126:8126 anodot-statsd`

#### [Docker Hub](https://hub.docker.com/r/anodot/anodot-statsd/) 


for more details about statsd-anodot-backend  refer to [anodot statsd backend](https://www.npmjs.com/package/statsd-anodot-backend)

##### More environment variables 
- STATSD_PORT : change the default statsd port e.g. -e "STATSD_PORT=8225"
- ANODOT_HOST : change the default anodot service api entry point e.g. -e "ANODOT_HOST=https://api.anodot.com"

```
