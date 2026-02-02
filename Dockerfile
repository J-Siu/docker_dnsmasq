FROM alpine:edge

LABEL version="2.92-r0"
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="dnsmasq"
LABEL usage="https://github.com/J-Siu/docker_dnsmasq/blob/master/README.md"
LABEL description="Docker - dnsmasq"
LABEL blog="[Linux IPv6 Router How To](//johnsiu.com/blog/linux-router/)"

COPY docker-compose.yml env /
RUN apk --no-cache add ca-certificates ca-certificates-bundle tzdata dnsmasq=2.92-r0

CMD ["dnsmasq","--no-daemon"]
