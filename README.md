## Prerequisite
### [`docker-ce`](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1)
To check if you have docker installed.
```
$ docker --version
Docker version 18.06.1-ce, build e68fc7a
```

If not, do
```
sudo apt-get update
sudo apt-get install  \
  apt-transport-https \
  ca-certificates     \
  curl                \
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
```

## Get the repo
```
git clone git@github.com:kittcar/devcontainer.git 
```
## Build the container
```
cd devcontainer
source devsetup.sh
docker-compose build
```
`devsetup.sh` exports environment variables for graphics forwarding.

## Run the container
```
docker-compose run devcontainer bash
root@24cf9780bc57:~#
```

## Test graphics forwarding
```
root@24cf9780bc57:~# xeyes
```
You should see some eyes pop up, which confirms that the naive X11 forwarding is working.
