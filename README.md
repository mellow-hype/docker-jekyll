# docker-jekyll
Jekyll in a Docker

## Usage
Clone the repo and run ```docker build``` in the main directory.

```
docker build -t jekyll .
```
After the build finishes, you should be able to pass commands using ```docker run``` or with the shell script provided. 
This script can be used like so:
```
jekyll.sh <image> <jekyll_cmds>
```
This will mount the $PWD to /jekyll in the container with port 4000 forwarded

To use serve:
```
jekyll.sh <image> serve -H 0.0.0.0
```

