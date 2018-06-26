## `consul:latest`

```console
$ docker pull consul@sha256:6293821b092cad164f9d93137297b6e08085ee44a191bf4aa4cf329dda8fc5cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:a7f061b4684460d0833d40bfb7003fad9a090d7c18a96ebf9a6d87dd15ff0e05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17469153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:974816e8d39aeb895da0cf3f6270c58c3abd780dbb113c38048330021f768d6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 26 Jun 2018 17:19:26 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Tue, 26 Jun 2018 17:19:26 GMT
ENV CONSUL_VERSION=1.2.0
# Tue, 26 Jun 2018 17:19:26 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 26 Jun 2018 17:19:27 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 26 Jun 2018 17:19:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 26 Jun 2018 17:19:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 26 Jun 2018 17:19:39 GMT
VOLUME [/consul/data]
# Tue, 26 Jun 2018 17:19:39 GMT
EXPOSE 8300/tcp
# Tue, 26 Jun 2018 17:19:39 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 26 Jun 2018 17:19:46 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 26 Jun 2018 17:19:46 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 26 Jun 2018 17:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 17:19:47 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02d2819f7e66e51ada7d7fa7356d053fa110e465d5863e62291b496a5cdaf45`  
		Last Modified: Tue, 26 Jun 2018 17:20:03 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abaa8025dac493c09bc0e82b2f93767008a7e52d38672d968535090bd6514377`  
		Last Modified: Tue, 26 Jun 2018 17:20:09 GMT  
		Size: 15.4 MB (15400541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1594e014718f827cb80e654fd2984041ea6ac012e2359703806ee03cf75900c4`  
		Last Modified: Tue, 26 Jun 2018 17:20:04 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586af1cddea52887599e1796af7196a1fd4358df94671aeec9b4e2b48393770`  
		Last Modified: Tue, 26 Jun 2018 17:20:03 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
