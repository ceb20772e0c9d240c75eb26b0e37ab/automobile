## NETWORK MONITORING HELPER
### mitmproxy docker container 
*$ docker pull mitmproxy/mitmproxy *
*$ docker run --rm -it [-v ~/.mitmproxy:/home/mitmproxy/.mitmproxy] -p 8080:8080 mitmproxy/mitmproxy*
*$ docker run --rm -it -p 8080:8080 mitmproxy/mitmproxy mitmdump*

https://hub.docker.com/r/mitmproxy/mitmproxy/
