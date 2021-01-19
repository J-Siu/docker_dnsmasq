FROM alpine:edge

LABEL version="2.83-r0"
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="dnsmasq"
LABEL usage="https://github.com/J-Siu/docker_dnsmasq/blob/master/README.md"
LABEL description="Docker - dnsmasq"

RUN apk --no-cache add ca-certificates ca-certificates-bundle tzdata
RUN apk --no-cache add dnsmasq=2.83-r0

COPY docker-compose.yml env /

CMD ["dnsmasq","--no-daemon"]
