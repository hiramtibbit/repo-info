<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.3.0`](#consul130)
-	[`consul:1.4.0-rc1`](#consul140-rc1)
-	[`consul:latest`](#consullatest)

## `consul:1.3.0`

```console
$ docker pull consul@sha256:e9311f8629f97dc143bd03bacad2851ce01a9abe67d9974f70dde67b2a4e8256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

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

### `consul:1.3.0` - linux; arm variant v6

```console
$ docker pull consul@sha256:811c9a725bccd4aa8b5ade3bbd7a487dfd101ec7ba9fadcc6f76ebb78832e0d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35367800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01565d94a6b7bb0f9e5767973abbc63c4d4251643ec4a99d93cde31477418d5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 07:52:49 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 12 Oct 2018 07:50:09 GMT
ENV CONSUL_VERSION=1.3.0
# Fri, 12 Oct 2018 07:50:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 12 Oct 2018 07:50:11 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 12 Oct 2018 07:50:20 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 12 Oct 2018 07:50:21 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 12 Oct 2018 07:50:22 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 12 Oct 2018 07:50:23 GMT
VOLUME [/consul/data]
# Fri, 12 Oct 2018 07:50:23 GMT
EXPOSE 8300/tcp
# Fri, 12 Oct 2018 07:50:23 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 12 Oct 2018 07:50:24 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 12 Oct 2018 07:50:24 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Oct 2018 07:50:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 07:50:25 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fceb3770c4d66f5d8752923aa0686db1f6ef2f6d36b9851ffe83f1e7579219de`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d31a87f9b23ab763f9eb5cd0c1601df3a7e6d5d84cac595bbb444ceac161c`  
		Last Modified: Fri, 12 Oct 2018 07:50:49 GMT  
		Size: 33.3 MB (33313239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34387113c69356fc48a93167f0554dd999255ad221b9888667c13ea992b9fcd9`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2ade8e7263892b42ffca52dc10f40b3ef7ce3984d0c594c7f6aa85727dfa9d`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0b3001596256e944f02c074120d8d7a3205c72c93efa351f4cf0ad8e6e126d`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.0` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b2dd30af4305d6629a2bb3e171b298188704406d76d1fe85b9dafa57d807bc2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34955338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587879d2c93294d58502dbfb668ab2639d121c4eaf4fd4948213b72681ed3baa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 08:53:02 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 12 Oct 2018 08:39:52 GMT
ENV CONSUL_VERSION=1.3.0
# Fri, 12 Oct 2018 08:39:53 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 12 Oct 2018 08:39:56 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 12 Oct 2018 08:40:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 12 Oct 2018 08:40:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 12 Oct 2018 08:40:47 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 12 Oct 2018 08:40:47 GMT
VOLUME [/consul/data]
# Fri, 12 Oct 2018 08:40:48 GMT
EXPOSE 8300/tcp
# Fri, 12 Oct 2018 08:40:49 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 12 Oct 2018 08:40:50 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 12 Oct 2018 08:40:50 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Oct 2018 08:41:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 08:41:03 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa9a716f848ae3d22be6b7d889186db516f1ca5434020de97bf9a0787fb9e30`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821164f62291cde4589067264d187f60290c7e78ffef2fb99043559efafe2ab6`  
		Last Modified: Fri, 12 Oct 2018 08:41:33 GMT  
		Size: 33.0 MB (32952760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a863a9bfbf60ef714a89c0f1dce2981a2c7c5cf904900348fdb166f11fcdc188`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4aab5a479a559f981eff2b334def7e81a5276740a9c87e95b0448695cff2d5`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baef0105b50507ed790377f2482a270d9b3dabc52f448f1f0059f48c64ae254d`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.0` - linux; 386

```console
$ docker pull consul@sha256:15268b5eca8e71d4add398171975933437e3d7b8bed2baa59ce8f317eb85c58c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36512132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a77228e1a16ce3f1ee1e292ce7fb95f90050d224d14c537887a302464c9256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:08:08 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 12 Oct 2018 10:39:12 GMT
ENV CONSUL_VERSION=1.3.0
# Fri, 12 Oct 2018 10:39:12 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 12 Oct 2018 10:39:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 12 Oct 2018 10:39:21 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 12 Oct 2018 10:39:21 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 12 Oct 2018 10:39:22 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 12 Oct 2018 10:39:22 GMT
VOLUME [/consul/data]
# Fri, 12 Oct 2018 10:39:22 GMT
EXPOSE 8300/tcp
# Fri, 12 Oct 2018 10:39:23 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 12 Oct 2018 10:39:23 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 12 Oct 2018 10:39:23 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Oct 2018 10:39:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 10:39:23 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d0ba929c46a9f5041e6de74db08bd044abf3a1f92c90f162e3473d2b4868be`  
		Last Modified: Fri, 12 Oct 2018 10:39:38 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315a8a7ab93da001efd14837f09a65122a36d3b37af2241b73160462def009b9`  
		Last Modified: Fri, 12 Oct 2018 10:39:44 GMT  
		Size: 34.3 MB (34339713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fbf14d5bb4f8724fa31b4405e6039992f99ff08f2a28de0ddf1682cb0e06bc`  
		Last Modified: Fri, 12 Oct 2018 10:39:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbaa30c04638db866b9e7db4b70e65939e6fc7ef68f8f968df6e53d1826440b`  
		Last Modified: Fri, 12 Oct 2018 10:39:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d753252b391b1c03c25b3e4415b6332d7ec88f68e27e1750aa05307b22ed09d`  
		Last Modified: Fri, 12 Oct 2018 10:39:38 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4.0-rc1`

```console
$ docker pull consul@sha256:b10318f23affff54ba30d250ecc7131dc949447ef992300be8086aea4e194a29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `consul:1.4.0-rc1` - linux; amd64

```console
$ docker pull consul@sha256:882bc6ce054f21ef9dc6ebecd11b1472eed1ece6e5147198d87fbf036e269465
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37801128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3056d529950e075dfe71c50a2c0493f3446fb47625f68e15652cbcdfbbeaa38f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:44:30 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 25 Oct 2018 01:05:51 GMT
ENV CONSUL_VERSION=1.4.0-rc1
# Thu, 25 Oct 2018 01:05:51 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Oct 2018 01:05:52 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Oct 2018 01:05:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Oct 2018 01:05:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Oct 2018 01:06:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Oct 2018 01:06:00 GMT
VOLUME [/consul/data]
# Thu, 25 Oct 2018 01:06:00 GMT
EXPOSE 8300/tcp
# Thu, 25 Oct 2018 01:06:00 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 25 Oct 2018 01:06:00 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 25 Oct 2018 01:06:01 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Oct 2018 01:06:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:06:01 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194e9f37d7ddb96a407bf444708215a52e3f5924c965882357cd1d2cb63dc228`  
		Last Modified: Thu, 25 Oct 2018 01:06:22 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5105897b2a274f5cb851298516ffb8a75578c67ba50b802e3f6db63b863e233`  
		Last Modified: Thu, 25 Oct 2018 01:06:28 GMT  
		Size: 35.7 MB (35690723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaef512b1dd8cc3642f9e17cc4e94061e6563e76c4f8911cfd08d2f7ec3d424`  
		Last Modified: Thu, 25 Oct 2018 01:06:22 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c2693ebd638a3f07dd7230634720a6219946c44004577e32b7d0e4f8c78f6d`  
		Last Modified: Thu, 25 Oct 2018 01:06:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b4564550cdb4fdcfff9b9e7c1fecaf28b99d2e0b738103b8b722ec72f02975`  
		Last Modified: Thu, 25 Oct 2018 01:06:23 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.0-rc1` - linux; arm variant v6

```console
$ docker pull consul@sha256:b346ffb46012627d228d296dc5a1da635f98d85a30d36c16f12eea49068e8544
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35789243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bf1a5af16b7159a682cfc1806546f1950d036c1dd5f3e20a6fe96ba2c14dac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 07:52:49 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 25 Oct 2018 07:49:29 GMT
ENV CONSUL_VERSION=1.4.0-rc1
# Thu, 25 Oct 2018 07:49:30 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Oct 2018 07:49:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Oct 2018 07:49:41 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Oct 2018 07:49:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Oct 2018 07:49:44 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Oct 2018 07:49:44 GMT
VOLUME [/consul/data]
# Thu, 25 Oct 2018 07:49:45 GMT
EXPOSE 8300/tcp
# Thu, 25 Oct 2018 07:49:45 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 25 Oct 2018 07:49:45 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 25 Oct 2018 07:49:46 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Oct 2018 07:49:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 07:49:47 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56427b9320bd9babe85940c70a6267a931a4944ada4ca3471aab65a8545fb537`  
		Last Modified: Thu, 25 Oct 2018 07:49:56 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9d465eebac3f37050164d379177d4630c1070a031d3b61ab9a0799db49dc18`  
		Last Modified: Thu, 25 Oct 2018 07:50:06 GMT  
		Size: 33.7 MB (33734680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e518ab21fe115f53d6449f9198afe31522e71d2129021bf801c902582024212`  
		Last Modified: Thu, 25 Oct 2018 07:49:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc0ec62637520b5fe4e41a9833654502e902c2109811a8af9cc9dcfa92150f`  
		Last Modified: Thu, 25 Oct 2018 07:49:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe425fb430ff4dfa6f9051bf5b34179452aaa5bc87f8291341287b1950109b0`  
		Last Modified: Thu, 25 Oct 2018 07:49:56 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:e9311f8629f97dc143bd03bacad2851ce01a9abe67d9974f70dde67b2a4e8256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

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

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:811c9a725bccd4aa8b5ade3bbd7a487dfd101ec7ba9fadcc6f76ebb78832e0d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35367800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01565d94a6b7bb0f9e5767973abbc63c4d4251643ec4a99d93cde31477418d5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 07:52:49 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 12 Oct 2018 07:50:09 GMT
ENV CONSUL_VERSION=1.3.0
# Fri, 12 Oct 2018 07:50:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 12 Oct 2018 07:50:11 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 12 Oct 2018 07:50:20 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 12 Oct 2018 07:50:21 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 12 Oct 2018 07:50:22 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 12 Oct 2018 07:50:23 GMT
VOLUME [/consul/data]
# Fri, 12 Oct 2018 07:50:23 GMT
EXPOSE 8300/tcp
# Fri, 12 Oct 2018 07:50:23 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 12 Oct 2018 07:50:24 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 12 Oct 2018 07:50:24 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Oct 2018 07:50:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 07:50:25 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fceb3770c4d66f5d8752923aa0686db1f6ef2f6d36b9851ffe83f1e7579219de`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d31a87f9b23ab763f9eb5cd0c1601df3a7e6d5d84cac595bbb444ceac161c`  
		Last Modified: Fri, 12 Oct 2018 07:50:49 GMT  
		Size: 33.3 MB (33313239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34387113c69356fc48a93167f0554dd999255ad221b9888667c13ea992b9fcd9`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2ade8e7263892b42ffca52dc10f40b3ef7ce3984d0c594c7f6aa85727dfa9d`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0b3001596256e944f02c074120d8d7a3205c72c93efa351f4cf0ad8e6e126d`  
		Last Modified: Fri, 12 Oct 2018 07:50:39 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b2dd30af4305d6629a2bb3e171b298188704406d76d1fe85b9dafa57d807bc2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34955338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587879d2c93294d58502dbfb668ab2639d121c4eaf4fd4948213b72681ed3baa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 08:53:02 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 12 Oct 2018 08:39:52 GMT
ENV CONSUL_VERSION=1.3.0
# Fri, 12 Oct 2018 08:39:53 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 12 Oct 2018 08:39:56 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 12 Oct 2018 08:40:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 12 Oct 2018 08:40:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 12 Oct 2018 08:40:47 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 12 Oct 2018 08:40:47 GMT
VOLUME [/consul/data]
# Fri, 12 Oct 2018 08:40:48 GMT
EXPOSE 8300/tcp
# Fri, 12 Oct 2018 08:40:49 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 12 Oct 2018 08:40:50 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 12 Oct 2018 08:40:50 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Oct 2018 08:41:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 08:41:03 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa9a716f848ae3d22be6b7d889186db516f1ca5434020de97bf9a0787fb9e30`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821164f62291cde4589067264d187f60290c7e78ffef2fb99043559efafe2ab6`  
		Last Modified: Fri, 12 Oct 2018 08:41:33 GMT  
		Size: 33.0 MB (32952760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a863a9bfbf60ef714a89c0f1dce2981a2c7c5cf904900348fdb166f11fcdc188`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4aab5a479a559f981eff2b334def7e81a5276740a9c87e95b0448695cff2d5`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baef0105b50507ed790377f2482a270d9b3dabc52f448f1f0059f48c64ae254d`  
		Last Modified: Fri, 12 Oct 2018 08:41:22 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:15268b5eca8e71d4add398171975933437e3d7b8bed2baa59ce8f317eb85c58c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36512132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a77228e1a16ce3f1ee1e292ce7fb95f90050d224d14c537887a302464c9256`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:08:08 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 12 Oct 2018 10:39:12 GMT
ENV CONSUL_VERSION=1.3.0
# Fri, 12 Oct 2018 10:39:12 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 12 Oct 2018 10:39:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 12 Oct 2018 10:39:21 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 12 Oct 2018 10:39:21 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 12 Oct 2018 10:39:22 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 12 Oct 2018 10:39:22 GMT
VOLUME [/consul/data]
# Fri, 12 Oct 2018 10:39:22 GMT
EXPOSE 8300/tcp
# Fri, 12 Oct 2018 10:39:23 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 12 Oct 2018 10:39:23 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 12 Oct 2018 10:39:23 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Oct 2018 10:39:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 10:39:23 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d0ba929c46a9f5041e6de74db08bd044abf3a1f92c90f162e3473d2b4868be`  
		Last Modified: Fri, 12 Oct 2018 10:39:38 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315a8a7ab93da001efd14837f09a65122a36d3b37af2241b73160462def009b9`  
		Last Modified: Fri, 12 Oct 2018 10:39:44 GMT  
		Size: 34.3 MB (34339713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fbf14d5bb4f8724fa31b4405e6039992f99ff08f2a28de0ddf1682cb0e06bc`  
		Last Modified: Fri, 12 Oct 2018 10:39:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbaa30c04638db866b9e7db4b70e65939e6fc7ef68f8f968df6e53d1826440b`  
		Last Modified: Fri, 12 Oct 2018 10:39:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d753252b391b1c03c25b3e4415b6332d7ec88f68e27e1750aa05307b22ed09d`  
		Last Modified: Fri, 12 Oct 2018 10:39:38 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
