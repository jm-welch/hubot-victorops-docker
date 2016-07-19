# hubot-victorops-docker

VictorOps-integrated Hubot using Docker and [Docker-Compose](https://docs.docker.com/compose/). Steps below assume that both are installed and working.

## Instructions

1. Clone the repository
2. Edit `docker-compose.yml` and set the `HUBOT_VICTOROPS_KEY` value to the key found in **Settings > Integrations > Hubut** in VictorOps
3. If you have any custom scripts that rely on the REST Endpoint for Alert ingestion or the [VictorOps API](https://portal.victorops.com/public/api-docs.html), add those values and uncomment the line.
4. If you plan to use the GIS or YouTube plugins, generate those API keys and uncomment the lines
5. Copy any custom scripts to the `./scripts` directory
6. Run `docker-compose build` to build your image
7. Run `docker-compose up` to stand it up. (If you don't want the log stream running, use `docker-compose up -d`)
