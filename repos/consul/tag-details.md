<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.2.1`](#consul121)
-	[`consul:latest`](#consullatest)

## `consul:1.2.1`

```console
$ docker pull consul@sha256:72c164f31ef155b397f7ea81263bc8dce147a7b0489b493f4b558990fe2d8a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2.1` - linux; amd64

```console
$ docker pull consul@sha256:00083786ccf77fac42f565525947aa20aee7e4a70560b12f2739f883d021b146
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18736553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915e3829a3cdab669b08fe532700acbb31a07eb84d6e569fd733b252ea6e0b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:37:33 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 12 Jul 2018 21:19:41 GMT
ENV CONSUL_VERSION=1.2.1
# Thu, 12 Jul 2018 21:19:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 12 Jul 2018 21:19:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 12 Jul 2018 21:19:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 12 Jul 2018 21:19:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 12 Jul 2018 21:19:52 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Jul 2018 21:19:52 GMT
VOLUME [/consul/data]
# Thu, 12 Jul 2018 21:19:52 GMT
EXPOSE 8300/tcp
# Thu, 12 Jul 2018 21:19:52 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 12 Jul 2018 21:19:53 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 12 Jul 2018 21:19:53 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 12 Jul 2018 21:19:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jul 2018 21:19:53 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d095810cb1a08e757ee84a7a3104657a07b36d82cff94f6e28935ec274fe56`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950384e6796201bdb27b021052c119c8a87e0c5ea305427dffdc6e925c29ada1`  
		Last Modified: Thu, 12 Jul 2018 21:20:20 GMT  
		Size: 16.6 MB (16629776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3f821cba5ada04840b22a77e304291134af12e37d2f46174603be1a5c3998a`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3445822d3d2c7fac0ad864e2ea44e933ab34ecbc748590b47d49a302702303`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d068c336a1c797868d98b907c0ec20bf07dffb672d91d5298e935aa53e82ef60`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b93e788602ce6fb4d16d591793d62145e13ef2248b5b853d7baf3a4d830f62e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16731342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf21ddd67c8aaa80a7dea667cab67d3126a80febe88a988eaf1f8ec8d93ecbad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Sat, 12 May 2018 08:39:33 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 13 Jul 2018 08:39:48 GMT
ENV CONSUL_VERSION=1.2.1
# Fri, 13 Jul 2018 08:39:49 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 13 Jul 2018 08:39:52 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 13 Jul 2018 08:40:04 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 13 Jul 2018 08:40:06 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 13 Jul 2018 08:40:09 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Jul 2018 08:40:10 GMT
VOLUME [/consul/data]
# Fri, 13 Jul 2018 08:40:11 GMT
EXPOSE 8300/tcp
# Fri, 13 Jul 2018 08:40:12 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 13 Jul 2018 08:40:13 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 13 Jul 2018 08:40:14 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 13 Jul 2018 08:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jul 2018 08:40:16 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c6d7d6fd5c8afc6df1857d735a11bcd4e90037b6b5d4f660199f68a419ae0c`  
		Last Modified: Fri, 13 Jul 2018 08:40:42 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f414eff8eb2e10ee130a5bc3fdcafa1406499009063b96ce9db570f07354be`  
		Last Modified: Fri, 13 Jul 2018 08:40:49 GMT  
		Size: 14.7 MB (14739083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d741b77c369ff5348276b2d82538f5ac49da7e7c7066f7c82b8b69bf1decd8`  
		Last Modified: Fri, 13 Jul 2018 08:40:43 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03b3222a10f475792821420c7cc71de6e84a6ad44ab59a1e0600a36815c0cd9`  
		Last Modified: Fri, 13 Jul 2018 08:40:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec62c2c7450a02dc33bdb99c2ca67a77b7a1483f9ad639c0c1e1a56adf09ea6`  
		Last Modified: Fri, 13 Jul 2018 08:40:44 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.1` - linux; 386

```console
$ docker pull consul@sha256:bec97f8a0e87021c587ccde15ec0e33b16e809f8dc46b19db0183053630f4380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17345304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949057145decf19d43e9b07f7875e7945e02c1a3a06ec31751719b0afa7ce2b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 07:13:33 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 13 Jul 2018 10:38:58 GMT
ENV CONSUL_VERSION=1.2.1
# Fri, 13 Jul 2018 10:38:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 13 Jul 2018 10:38:59 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 13 Jul 2018 10:39:10 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 13 Jul 2018 10:39:11 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 13 Jul 2018 10:39:12 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Jul 2018 10:39:12 GMT
VOLUME [/consul/data]
# Fri, 13 Jul 2018 10:39:12 GMT
EXPOSE 8300/tcp
# Fri, 13 Jul 2018 10:39:12 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 13 Jul 2018 10:39:13 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 13 Jul 2018 10:39:13 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 13 Jul 2018 10:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jul 2018 10:39:13 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ba2fd30b0ba3a1b278071e7b0d67a5f632f175ddec455016ed9bd02dbe2b38`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2912115c4bab7602de36c2b0c0e12b1d07b6ceca4e978e0ebc4f2c4c41c5abfc`  
		Last Modified: Fri, 13 Jul 2018 10:39:36 GMT  
		Size: 15.2 MB (15215691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c9bd121194f983a3ed3928d41e08a064bd2ff36d72cfd4023b5015e0c8e5af`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e84fe5b9b9ba56d185d5eb8fc32ba85a6c319ee5d949a0850870a62d81f00b6`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62082e11665b6b3533705f5665ddc106cb2cb98abf62ece355e3f3cc9754a878`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:72c164f31ef155b397f7ea81263bc8dce147a7b0489b493f4b558990fe2d8a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:00083786ccf77fac42f565525947aa20aee7e4a70560b12f2739f883d021b146
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18736553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915e3829a3cdab669b08fe532700acbb31a07eb84d6e569fd733b252ea6e0b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:37:33 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 12 Jul 2018 21:19:41 GMT
ENV CONSUL_VERSION=1.2.1
# Thu, 12 Jul 2018 21:19:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 12 Jul 2018 21:19:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 12 Jul 2018 21:19:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 12 Jul 2018 21:19:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 12 Jul 2018 21:19:52 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Jul 2018 21:19:52 GMT
VOLUME [/consul/data]
# Thu, 12 Jul 2018 21:19:52 GMT
EXPOSE 8300/tcp
# Thu, 12 Jul 2018 21:19:52 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 12 Jul 2018 21:19:53 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 12 Jul 2018 21:19:53 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 12 Jul 2018 21:19:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jul 2018 21:19:53 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d095810cb1a08e757ee84a7a3104657a07b36d82cff94f6e28935ec274fe56`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950384e6796201bdb27b021052c119c8a87e0c5ea305427dffdc6e925c29ada1`  
		Last Modified: Thu, 12 Jul 2018 21:20:20 GMT  
		Size: 16.6 MB (16629776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3f821cba5ada04840b22a77e304291134af12e37d2f46174603be1a5c3998a`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3445822d3d2c7fac0ad864e2ea44e933ab34ecbc748590b47d49a302702303`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d068c336a1c797868d98b907c0ec20bf07dffb672d91d5298e935aa53e82ef60`  
		Last Modified: Thu, 12 Jul 2018 21:20:13 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b93e788602ce6fb4d16d591793d62145e13ef2248b5b853d7baf3a4d830f62e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16731342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf21ddd67c8aaa80a7dea667cab67d3126a80febe88a988eaf1f8ec8d93ecbad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Sat, 12 May 2018 08:39:33 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 13 Jul 2018 08:39:48 GMT
ENV CONSUL_VERSION=1.2.1
# Fri, 13 Jul 2018 08:39:49 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 13 Jul 2018 08:39:52 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 13 Jul 2018 08:40:04 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 13 Jul 2018 08:40:06 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 13 Jul 2018 08:40:09 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Jul 2018 08:40:10 GMT
VOLUME [/consul/data]
# Fri, 13 Jul 2018 08:40:11 GMT
EXPOSE 8300/tcp
# Fri, 13 Jul 2018 08:40:12 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 13 Jul 2018 08:40:13 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 13 Jul 2018 08:40:14 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 13 Jul 2018 08:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jul 2018 08:40:16 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c6d7d6fd5c8afc6df1857d735a11bcd4e90037b6b5d4f660199f68a419ae0c`  
		Last Modified: Fri, 13 Jul 2018 08:40:42 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f414eff8eb2e10ee130a5bc3fdcafa1406499009063b96ce9db570f07354be`  
		Last Modified: Fri, 13 Jul 2018 08:40:49 GMT  
		Size: 14.7 MB (14739083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d741b77c369ff5348276b2d82538f5ac49da7e7c7066f7c82b8b69bf1decd8`  
		Last Modified: Fri, 13 Jul 2018 08:40:43 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03b3222a10f475792821420c7cc71de6e84a6ad44ab59a1e0600a36815c0cd9`  
		Last Modified: Fri, 13 Jul 2018 08:40:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec62c2c7450a02dc33bdb99c2ca67a77b7a1483f9ad639c0c1e1a56adf09ea6`  
		Last Modified: Fri, 13 Jul 2018 08:40:44 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:bec97f8a0e87021c587ccde15ec0e33b16e809f8dc46b19db0183053630f4380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17345304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949057145decf19d43e9b07f7875e7945e02c1a3a06ec31751719b0afa7ce2b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 07:13:33 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Fri, 13 Jul 2018 10:38:58 GMT
ENV CONSUL_VERSION=1.2.1
# Fri, 13 Jul 2018 10:38:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 13 Jul 2018 10:38:59 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 13 Jul 2018 10:39:10 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 13 Jul 2018 10:39:11 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 13 Jul 2018 10:39:12 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Jul 2018 10:39:12 GMT
VOLUME [/consul/data]
# Fri, 13 Jul 2018 10:39:12 GMT
EXPOSE 8300/tcp
# Fri, 13 Jul 2018 10:39:12 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 13 Jul 2018 10:39:13 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 13 Jul 2018 10:39:13 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 13 Jul 2018 10:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jul 2018 10:39:13 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ba2fd30b0ba3a1b278071e7b0d67a5f632f175ddec455016ed9bd02dbe2b38`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2912115c4bab7602de36c2b0c0e12b1d07b6ceca4e978e0ebc4f2c4c41c5abfc`  
		Last Modified: Fri, 13 Jul 2018 10:39:36 GMT  
		Size: 15.2 MB (15215691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c9bd121194f983a3ed3928d41e08a064bd2ff36d72cfd4023b5015e0c8e5af`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e84fe5b9b9ba56d185d5eb8fc32ba85a6c319ee5d949a0850870a62d81f00b6`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62082e11665b6b3533705f5665ddc106cb2cb98abf62ece355e3f3cc9754a878`  
		Last Modified: Fri, 13 Jul 2018 10:39:30 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
