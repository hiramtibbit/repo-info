## `consul:latest`

```console
$ docker pull consul@sha256:f911c43da6abad9c4d172ce58dec66c6742093a87ccfc419874f58dd7a1a0eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:6c0f356d5abc518eb76d85a3b65f2d4de0a71c35ba528ec13f20623c3d4deafb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37809542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c1d4ed11dad0b92209250f10a03fdc5179a664561ce26ad0b15883c0687ba9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:49:42 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 00:50:42 GMT
ENV CONSUL_VERSION=1.4.0
# Fri, 21 Dec 2018 00:50:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 00:50:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 00:50:52 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 00:50:53 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 00:50:54 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 00:50:54 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 00:50:55 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 00:50:55 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 00:50:55 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 00:50:55 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:50:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:50:56 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88bd7eadd456fa09016dd9540426f54fbbb93a69036699695f8f613ed9ae3ae`  
		Last Modified: Fri, 21 Dec 2018 00:51:37 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dbf0c150e42a8980a64b9b7b183a88cc6ccc512097d1d07bd4d3203371d5ec`  
		Last Modified: Fri, 21 Dec 2018 00:51:46 GMT  
		Size: 35.7 MB (35699163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5970b88ac92cc1e51e6bc1bf392c521450efb049c00979b1357048a8db6232e8`  
		Last Modified: Fri, 21 Dec 2018 00:51:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9572188abf3d0a48192bad8c572d23f1bd882f8d94ee25d0638beaac52e5ed`  
		Last Modified: Fri, 21 Dec 2018 00:51:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9119e44a3cca9ab0116f1bfa1b3e0fbc188b85fdcad304985a4497075e8b6bdf`  
		Last Modified: Fri, 21 Dec 2018 00:51:36 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:44ba3603e0bf24cca4ec8f307ff711096d3b9fdfda623cf06f5cf04302629c51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35792829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722e23e1945bdf0b3a2228654eeb307f514e0cc96d63545d42e9e3b3b38e1e37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:20:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 09:21:18 GMT
ENV CONSUL_VERSION=1.4.0
# Fri, 21 Dec 2018 09:21:18 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 09:21:20 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 09:21:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 09:21:31 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 09:21:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:21:32 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 09:21:33 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 09:21:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 09:21:34 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 09:21:34 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 09:21:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:21:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebef5311f9fa24504d11ce60540e9f2aa8244cb93fef4c985d116011c3d049cb`  
		Last Modified: Fri, 21 Dec 2018 09:22:23 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e157d03d87ada0945eb3ee52bc290964fcde117326a13f1d37b955dbb0b53c`  
		Last Modified: Fri, 21 Dec 2018 09:22:33 GMT  
		Size: 33.7 MB (33738859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2829198fbfc353b3c5d11fbcea6fc5af56e63bd2869d3162b37becc2f653994b`  
		Last Modified: Fri, 21 Dec 2018 09:22:23 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8947997c0e9fde0cd0f4e48b865c518db1635a04c9efc138bb75f6811724cb44`  
		Last Modified: Fri, 21 Dec 2018 09:22:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9fa916ea04604b0f4f54eb4d36720f464a958155bc2a4659e04d1d38d592f2`  
		Last Modified: Fri, 21 Dec 2018 09:22:23 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:60e8f474bf77dcb902d2d4bcf9aa8fb101e2d90df7e1f3ba8cfc19660d7a6e67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35360704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b2df2352f944d231046047f266494f80d9e0ae6a2d9a954cdac8966508d4d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:59:29 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 10:01:28 GMT
ENV CONSUL_VERSION=1.4.0
# Fri, 21 Dec 2018 10:01:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 10:01:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 10:01:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 10:01:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 10:02:01 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:02:02 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 10:02:03 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 10:02:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 10:02:04 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 10:02:05 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 10:02:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:07 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81832fd08cebc5488c88f3e72cdeb0655a4a455dd0282401dfee934389e00b51`  
		Last Modified: Fri, 21 Dec 2018 10:03:16 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c0f761a439398d87400722dc285f50b699a5140bf973eb23afb60597b0a9e3`  
		Last Modified: Fri, 21 Dec 2018 10:03:32 GMT  
		Size: 33.4 MB (33358126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6158dc4a59b28b6c5d64c2f192baed04b8c84a2a93f31f373a186717a3f11a`  
		Last Modified: Fri, 21 Dec 2018 10:03:16 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9f7d8401f869c2f1ccb3e980eec11831de9c3d655bcdff075a64a6ca07231a`  
		Last Modified: Fri, 21 Dec 2018 10:03:16 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b0c75d6341afbe0415047df53042d79d7582464426ed5a5f53d908d78f387f`  
		Last Modified: Fri, 21 Dec 2018 10:03:16 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:325fc9b13e12283e98b27304d3118eac44a5f4295b6b561865f293a7668b9f98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36946056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a56ec9f8060e9c5fdd86f900919b75a380539c9ece1b96875cc04840a1f5cda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:45:50 GMT
ENV CONSUL_VERSION=1.4.0
# Fri, 21 Dec 2018 15:45:50 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:51 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:46:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:46:00 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:46:00 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:46:00 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:46:00 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:46:00 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:46:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:46:01 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49328ae6a9db2d5eb7e740f82fa306a0a4a55ff0f429bdeae1eb4b50c852e796`  
		Last Modified: Fri, 21 Dec 2018 15:46:36 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a890176474e15dc76c0849f0a7089e8ecca85aac3fda4df4f603e1a01a6ecbd`  
		Last Modified: Fri, 21 Dec 2018 15:46:42 GMT  
		Size: 34.8 MB (34773636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bdfe72f0844fb08c6a60af590f6685dc41d0f4782062aa668288e7d1470d73`  
		Last Modified: Fri, 21 Dec 2018 15:46:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdb41449886c8340af6450727b47375459eafbba38ad340183db5ea789ae98c`  
		Last Modified: Fri, 21 Dec 2018 15:46:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d65861a478e4395940f5ff9f050e1b31b9f6de941783d7705b54ed0806d2e0`  
		Last Modified: Fri, 21 Dec 2018 15:46:36 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
