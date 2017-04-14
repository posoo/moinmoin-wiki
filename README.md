# MoinMoin WIKI
Docker image with the [Moinmoin Wiki Engine](https://moinmo.in/)(Version: 1.9.9), uwsgi, nginx and self signed SSL.

## Usage

## Local Building

1. Clone this repository
```shell
git clone git@github.com:posoo/moinmoin-wiki.git
```
2. Build image
```shell
docker build --rm=true -t posoo/moinmoin-wiki ./moinmoin-wiki
```
3. Start the container
  - Interactive mode
  ```shell
  sudo docker run -it -p 443:443 -p 80:80 --name moinomin_wiki posoo/moinmoin-wiki
  ```
  - Detached mode (Daemon, runing as a backgroud process)
  ```shell
  sudo docker run -d -p 443:443 -p 80:80 --name moinomin_wiki posoo/moinmoin-wiki
  ```
  - Detached mode (With the custom Self-Signed SSL info)
  ```shell
  docker run -d -p 443:443 -p 80:80 -e domain=seanlin.xyz -e country=CN \
  -e state=Yunnan -e locality=Kunming -e organization=Posoo \
  --name moinomin_wiki posoo/moinmoin
  ```

## Access the website

Access the url `https://localhost:80`

Default superuser is `mmAdmin`, you activate him by creating a new user named `mmAdmin` and set your prefered password.

The pages are mounted as volume, so you can take backup of the system from the host.
