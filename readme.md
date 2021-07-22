# Project Havana

## Installation

1. Ensure the base image for your Dockerfile matches the CUDA version on the host.
2. Download and extract the [latest release of ethminer](https://github.com/ethereum-mining/ethminer/releases) and place the ethminer executable and kernels folder in the working directory when building the Dockerfile.
3. Enter your address and worker name in the docker-compose.yaml.
4. put the crontab into your crontab, and the script in the correct location.
