<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.3.0`](#consul130)
-	[`consul:latest`](#consullatest)

## `consul:1.3.0`

```console
$ docker pull consul@sha256:03e1e0d04176d41bb6625539051bf090facafdcb4489ec7d94592549464d2f70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:1.3.0` - linux; amd64

```console
$ docker pull consul@sha256:dd480a8a744f041f62910887408e0014fecf14998df62b485bbe6b3b3a758a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37368687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7f56f4c1661740c61f1e9be968f57ee986a69ab200e6370c9061daf9caa1b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:44:30 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 11 Oct 2018 21:19:28 GMT
ENV CONSUL_VERSION=1.3.0
# Thu, 11 Oct 2018 21:19:28 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 11 Oct 2018 21:19:29 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 11 Oct 2018 21:19:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 11 Oct 2018 21:19:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 11 Oct 2018 21:19:41 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 11 Oct 2018 21:19:41 GMT
VOLUME [/consul/data]
# Thu, 11 Oct 2018 21:19:41 GMT
EXPOSE 8300/tcp
# Thu, 11 Oct 2018 21:19:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 11 Oct 2018 21:19:41 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 11 Oct 2018 21:19:42 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 11 Oct 2018 21:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 Oct 2018 21:19:42 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7aac70b57512e31abdf11e66d270f34b05f19c9ce577a59f7da8d03bda6f2e`  
		Last Modified: Thu, 11 Oct 2018 21:19:54 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f52d46f01788e9a25684593004cbc6e0a98809ad072a1625a8738358d8b9bf`  
		Last Modified: Thu, 11 Oct 2018 21:20:00 GMT  
		Size: 35.3 MB (35258284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481d874551806e3affc983550d97704a08104ec7dedaf0e08ff9a6cde5792382`  
		Last Modified: Thu, 11 Oct 2018 21:19:54 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4b1838727df495cd2b41020485fc6d75bc29e479f78c2ed39a8670b9bc435c`  
		Last Modified: Thu, 11 Oct 2018 21:19:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d7944760284f90e7bc4e6c451fa4b180518e5cffe2bb0333e63dfafd8c2b84`  
		Last Modified: Thu, 11 Oct 2018 21:19:54 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:03e1e0d04176d41bb6625539051bf090facafdcb4489ec7d94592549464d2f70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:dd480a8a744f041f62910887408e0014fecf14998df62b485bbe6b3b3a758a0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37368687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7f56f4c1661740c61f1e9be968f57ee986a69ab200e6370c9061daf9caa1b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:44:30 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 11 Oct 2018 21:19:28 GMT
ENV CONSUL_VERSION=1.3.0
# Thu, 11 Oct 2018 21:19:28 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 11 Oct 2018 21:19:29 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 11 Oct 2018 21:19:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 11 Oct 2018 21:19:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 11 Oct 2018 21:19:41 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 11 Oct 2018 21:19:41 GMT
VOLUME [/consul/data]
# Thu, 11 Oct 2018 21:19:41 GMT
EXPOSE 8300/tcp
# Thu, 11 Oct 2018 21:19:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 11 Oct 2018 21:19:41 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 11 Oct 2018 21:19:42 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 11 Oct 2018 21:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 Oct 2018 21:19:42 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7aac70b57512e31abdf11e66d270f34b05f19c9ce577a59f7da8d03bda6f2e`  
		Last Modified: Thu, 11 Oct 2018 21:19:54 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f52d46f01788e9a25684593004cbc6e0a98809ad072a1625a8738358d8b9bf`  
		Last Modified: Thu, 11 Oct 2018 21:20:00 GMT  
		Size: 35.3 MB (35258284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481d874551806e3affc983550d97704a08104ec7dedaf0e08ff9a6cde5792382`  
		Last Modified: Thu, 11 Oct 2018 21:19:54 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4b1838727df495cd2b41020485fc6d75bc29e479f78c2ed39a8670b9bc435c`  
		Last Modified: Thu, 11 Oct 2018 21:19:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d7944760284f90e7bc4e6c451fa4b180518e5cffe2bb0333e63dfafd8c2b84`  
		Last Modified: Thu, 11 Oct 2018 21:19:54 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
