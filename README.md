# Dockerfile for building a Social Engineer Toolkit (SET) container

It is based on the phocean/msf image to provide integration with Metasploit.

# Build

```
docker build -t phocean/set .
```

# Run

```
docker run --rm -it --net=host -v /home/phocean/.msf4:/root/.msf4:Z -v /tmp/msf:/tmp/data:Z --name=set phocean/set
```
