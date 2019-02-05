# Drone-Kontena-Plugin
A drone plugin used for kontena deployments.

[![Build Status](https://drone.quving.com/api/badges/Quving/drone-plugin-kontena/status.svg)](https://drone.quving.com/Quving/drone-plugin-kontena)

<img src="https://i.imgur.com/B05KJOE.png" width="250"/> <img src="https://i.imgur.com/pAUfyq2.png" width="100"/> <img src="https://i.imgur.com/8uWbpgZ.png" width="250"/>


## What's in this repository?
This repository provides a plugin for [Kontena-Deployment](https://www.kontena.io/classic) on [Drone-Ci](https://google.com). Kontena is developer friendly container platform for docker orchestration. Working on any cloud, easy to set up, simple to use.



## Example configuration

### Drone v0.8.*
```
pipeline:
  publish:
    image: plugins/docker
    repo: pingu/deptifree
    tags: latest
    secrets: [ docker_username, docker_password ]
    when:
      status: [ success ]
      branch: [ master, develop ]
  deploy:
    image: pingu/drone-plugin-kontena:latest
    secrets: [ kontena_token, kontena_url, kontena_grid ]
    kontena_stack: mykontenastackname
    kontena_file: scripts/production/kontena.yml
    when:
      status: [ success ]
      branch: [ master ]
      
```
