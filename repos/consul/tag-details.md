<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.0.6`](#consul106)
-	[`consul:latest`](#consullatest)

## `consul:1.0.6`

```console
$ docker pull consul@sha256:6ffe55dcc1000126a6e874b298fe1f1b87f556fb344781af60681932e408ec6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:1.0.6` - linux; amd64

```console
$ docker pull consul@sha256:21e67b49c92a2d2d62b46bb7c054cbe05470c7dc05263384ede11506a39914f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14477522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4915f05e270fdb302322ac0f440e392c07d7e0ca154a2a4f28a781b57cabfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 09 Feb 2018 20:07:14 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 09 Feb 2018 20:07:14 GMT
ENV CONSUL_VERSION=1.0.6
# Fri, 09 Feb 2018 20:07:14 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 09 Feb 2018 20:07:15 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 09 Feb 2018 20:07:45 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 09 Feb 2018 20:07:56 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 09 Feb 2018 20:07:56 GMT
VOLUME [/consul/data]
# Fri, 09 Feb 2018 20:08:08 GMT
EXPOSE 8300/tcp
# Fri, 09 Feb 2018 20:08:08 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 09 Feb 2018 20:08:08 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 09 Feb 2018 20:08:09 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 09 Feb 2018 20:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 20:08:09 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbc494a6b46e2592670addd0e4a9c4852a5c53d4aea98b143cf43a5e899f407`  
		Last Modified: Fri, 09 Feb 2018 20:08:36 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3c36af70934d20b74e8025e648c8a1b98a92875c09225e08ed3ed07cf4f907`  
		Last Modified: Fri, 09 Feb 2018 20:08:38 GMT  
		Size: 12.4 MB (12408907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97646d0da173646bfaadfb064dbf33619fe5fec119461a21f96792f060642fe8`  
		Last Modified: Fri, 09 Feb 2018 20:08:37 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fbdb3d38cbbdb769f16513ed99d33d93911b7c6877b9a4e9a18fa6fad8331e`  
		Last Modified: Fri, 09 Feb 2018 20:08:35 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:6ffe55dcc1000126a6e874b298fe1f1b87f556fb344781af60681932e408ec6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:21e67b49c92a2d2d62b46bb7c054cbe05470c7dc05263384ede11506a39914f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14477522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4915f05e270fdb302322ac0f440e392c07d7e0ca154a2a4f28a781b57cabfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 09 Feb 2018 20:07:14 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 09 Feb 2018 20:07:14 GMT
ENV CONSUL_VERSION=1.0.6
# Fri, 09 Feb 2018 20:07:14 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 09 Feb 2018 20:07:15 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 09 Feb 2018 20:07:45 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 09 Feb 2018 20:07:56 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 09 Feb 2018 20:07:56 GMT
VOLUME [/consul/data]
# Fri, 09 Feb 2018 20:08:08 GMT
EXPOSE 8300/tcp
# Fri, 09 Feb 2018 20:08:08 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 09 Feb 2018 20:08:08 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 09 Feb 2018 20:08:09 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 09 Feb 2018 20:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 20:08:09 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbc494a6b46e2592670addd0e4a9c4852a5c53d4aea98b143cf43a5e899f407`  
		Last Modified: Fri, 09 Feb 2018 20:08:36 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3c36af70934d20b74e8025e648c8a1b98a92875c09225e08ed3ed07cf4f907`  
		Last Modified: Fri, 09 Feb 2018 20:08:38 GMT  
		Size: 12.4 MB (12408907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97646d0da173646bfaadfb064dbf33619fe5fec119461a21f96792f060642fe8`  
		Last Modified: Fri, 09 Feb 2018 20:08:37 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fbdb3d38cbbdb769f16513ed99d33d93911b7c6877b9a4e9a18fa6fad8331e`  
		Last Modified: Fri, 09 Feb 2018 20:08:35 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
