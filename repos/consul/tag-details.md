<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.2.2`](#consul122)
-	[`consul:latest`](#consullatest)

## `consul:1.2.2`

```console
$ docker pull consul@sha256:8603f0d1b2278364ecb7c11068a477b1ea648df735eda8791362063aba99656a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2.2` - linux; amd64

```console
$ docker pull consul@sha256:65b4f26f5f3028188857b5130f21355c2b013678f83cc03bbe9ef0266b3255a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21414213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1037aecbecbb198689c7c190a684e7c9fe4159b5f1b2d458d59b604c37281160`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:44:30 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Tue, 11 Sep 2018 22:44:30 GMT
ENV CONSUL_VERSION=1.2.2
# Tue, 11 Sep 2018 22:44:30 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 11 Sep 2018 22:44:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 11 Sep 2018 22:44:39 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 11 Sep 2018 22:44:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 11 Sep 2018 22:44:40 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:44:41 GMT
VOLUME [/consul/data]
# Tue, 11 Sep 2018 22:44:41 GMT
EXPOSE 8300/tcp
# Tue, 11 Sep 2018 22:44:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 11 Sep 2018 22:44:41 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 11 Sep 2018 22:44:42 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 11 Sep 2018 22:44:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:44:42 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cfb00081e23c50d7ebeda15cbc03fa59faf9fbea42c24bceeda5d8dc7d8561`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a92afe431c9f02d5e018102e000f18f005c03b80dea09eea04a4569b5ded2d7`  
		Last Modified: Tue, 11 Sep 2018 22:44:59 GMT  
		Size: 19.3 MB (19303811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87262d12c26bd82b902754ef2948ee0edb66f38f1e7da5a2bebe4e01dec369fd`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3144a0a0b402170d0f99bce305cf861909a33677868d3202047cfab923a0f800`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f48afb7673fb46dc587318659d7cf6ae9a32ec368f878ab7292bb80e3b05578`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.2` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:7dc10709f5fab62e18ee90f8b0545ce12c078001c1231e77c531b6e2fbc6c1df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20493637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4897792c6ac5957af4d45280ed6901a657047f6f262be1e4b9ba2a84f045eb10`
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
# Tue, 31 Jul 2018 08:42:15 GMT
ENV CONSUL_VERSION=1.2.2
# Tue, 31 Jul 2018 08:42:16 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 31 Jul 2018 08:42:18 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 31 Jul 2018 08:42:32 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 31 Jul 2018 08:42:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 31 Jul 2018 08:42:47 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 31 Jul 2018 08:42:48 GMT
VOLUME [/consul/data]
# Tue, 31 Jul 2018 08:42:49 GMT
EXPOSE 8300/tcp
# Tue, 31 Jul 2018 08:42:49 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 31 Jul 2018 08:42:50 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 31 Jul 2018 08:42:51 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 31 Jul 2018 08:42:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 08:42:52 GMT
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
	-	`sha256:1af5e28580ec7c8d064ab95119e5a4a31c5e6decee4fa72ad80f6253aded6054`  
		Last Modified: Tue, 31 Jul 2018 08:43:39 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163d462056884a4c2be0b1c8aecf3b659961723e2c0751568443ce2755e939e3`  
		Last Modified: Tue, 31 Jul 2018 08:43:47 GMT  
		Size: 18.5 MB (18501375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdd30461b708c49ce748fa487a66f0b5d25be3199e4bd88aaff85b0c3565d8b`  
		Last Modified: Tue, 31 Jul 2018 08:43:40 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2277af96cd570f3278754a3aa0f244bdd4bedd5dd62c190eb0747910b5a89d`  
		Last Modified: Tue, 31 Jul 2018 08:43:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692baa2eacd5350a3fe4b4e1ba88962af03dc9ffe4371195351d5acabf5d01fa`  
		Last Modified: Tue, 31 Jul 2018 08:43:39 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.2` - linux; 386

```console
$ docker pull consul@sha256:7ff6591d13072e5f0a2aaca6c02621ff3ca427aa20c8af1bcad6d735def5b8a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21250327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ebdab685d85501476768ab222d1d8e05a6c1bc55d734d6cb9a31d404121cdc`
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
# Wed, 12 Sep 2018 12:08:08 GMT
ENV CONSUL_VERSION=1.2.2
# Wed, 12 Sep 2018 12:08:08 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 12 Sep 2018 12:08:09 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 12 Sep 2018 12:08:15 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 12 Sep 2018 12:08:16 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 12 Sep 2018 12:08:17 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:08:17 GMT
VOLUME [/consul/data]
# Wed, 12 Sep 2018 12:08:17 GMT
EXPOSE 8300/tcp
# Wed, 12 Sep 2018 12:08:17 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 12 Sep 2018 12:08:17 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Wed, 12 Sep 2018 12:08:18 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Wed, 12 Sep 2018 12:08:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:08:18 GMT
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
	-	`sha256:45a452de2e7bb6604cc3e9ab65a3c610474757fa232003176cda670497c792cd`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e53d4239a7f261c2309b3b048582046a8aeb87805484b606c36943cceaa1843`  
		Last Modified: Wed, 12 Sep 2018 12:08:35 GMT  
		Size: 19.1 MB (19077908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a777099febde81925eb33e19b94215150768c9df743938c1ec4918b8de264d`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395db2a225a446878afb08785c304722f66fa5cd2a0a7f33f4bca17020e6e1a7`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71a5848411f4b29d487c2f5d951381afa73b7ab12a4ebf0f4b6a3d68f89b7a3`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:8603f0d1b2278364ecb7c11068a477b1ea648df735eda8791362063aba99656a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:65b4f26f5f3028188857b5130f21355c2b013678f83cc03bbe9ef0266b3255a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21414213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1037aecbecbb198689c7c190a684e7c9fe4159b5f1b2d458d59b604c37281160`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:44:30 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Tue, 11 Sep 2018 22:44:30 GMT
ENV CONSUL_VERSION=1.2.2
# Tue, 11 Sep 2018 22:44:30 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 11 Sep 2018 22:44:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 11 Sep 2018 22:44:39 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 11 Sep 2018 22:44:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 11 Sep 2018 22:44:40 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:44:41 GMT
VOLUME [/consul/data]
# Tue, 11 Sep 2018 22:44:41 GMT
EXPOSE 8300/tcp
# Tue, 11 Sep 2018 22:44:41 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 11 Sep 2018 22:44:41 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 11 Sep 2018 22:44:42 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 11 Sep 2018 22:44:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:44:42 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cfb00081e23c50d7ebeda15cbc03fa59faf9fbea42c24bceeda5d8dc7d8561`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a92afe431c9f02d5e018102e000f18f005c03b80dea09eea04a4569b5ded2d7`  
		Last Modified: Tue, 11 Sep 2018 22:44:59 GMT  
		Size: 19.3 MB (19303811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87262d12c26bd82b902754ef2948ee0edb66f38f1e7da5a2bebe4e01dec369fd`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3144a0a0b402170d0f99bce305cf861909a33677868d3202047cfab923a0f800`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f48afb7673fb46dc587318659d7cf6ae9a32ec368f878ab7292bb80e3b05578`  
		Last Modified: Tue, 11 Sep 2018 22:44:55 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:7dc10709f5fab62e18ee90f8b0545ce12c078001c1231e77c531b6e2fbc6c1df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20493637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4897792c6ac5957af4d45280ed6901a657047f6f262be1e4b9ba2a84f045eb10`
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
# Tue, 31 Jul 2018 08:42:15 GMT
ENV CONSUL_VERSION=1.2.2
# Tue, 31 Jul 2018 08:42:16 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 31 Jul 2018 08:42:18 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 31 Jul 2018 08:42:32 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 31 Jul 2018 08:42:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 31 Jul 2018 08:42:47 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 31 Jul 2018 08:42:48 GMT
VOLUME [/consul/data]
# Tue, 31 Jul 2018 08:42:49 GMT
EXPOSE 8300/tcp
# Tue, 31 Jul 2018 08:42:49 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 31 Jul 2018 08:42:50 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 31 Jul 2018 08:42:51 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 31 Jul 2018 08:42:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 08:42:52 GMT
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
	-	`sha256:1af5e28580ec7c8d064ab95119e5a4a31c5e6decee4fa72ad80f6253aded6054`  
		Last Modified: Tue, 31 Jul 2018 08:43:39 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163d462056884a4c2be0b1c8aecf3b659961723e2c0751568443ce2755e939e3`  
		Last Modified: Tue, 31 Jul 2018 08:43:47 GMT  
		Size: 18.5 MB (18501375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdd30461b708c49ce748fa487a66f0b5d25be3199e4bd88aaff85b0c3565d8b`  
		Last Modified: Tue, 31 Jul 2018 08:43:40 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2277af96cd570f3278754a3aa0f244bdd4bedd5dd62c190eb0747910b5a89d`  
		Last Modified: Tue, 31 Jul 2018 08:43:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692baa2eacd5350a3fe4b4e1ba88962af03dc9ffe4371195351d5acabf5d01fa`  
		Last Modified: Tue, 31 Jul 2018 08:43:39 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:7ff6591d13072e5f0a2aaca6c02621ff3ca427aa20c8af1bcad6d735def5b8a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21250327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ebdab685d85501476768ab222d1d8e05a6c1bc55d734d6cb9a31d404121cdc`
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
# Wed, 12 Sep 2018 12:08:08 GMT
ENV CONSUL_VERSION=1.2.2
# Wed, 12 Sep 2018 12:08:08 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 12 Sep 2018 12:08:09 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 12 Sep 2018 12:08:15 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 12 Sep 2018 12:08:16 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 12 Sep 2018 12:08:17 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:08:17 GMT
VOLUME [/consul/data]
# Wed, 12 Sep 2018 12:08:17 GMT
EXPOSE 8300/tcp
# Wed, 12 Sep 2018 12:08:17 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 12 Sep 2018 12:08:17 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Wed, 12 Sep 2018 12:08:18 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Wed, 12 Sep 2018 12:08:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:08:18 GMT
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
	-	`sha256:45a452de2e7bb6604cc3e9ab65a3c610474757fa232003176cda670497c792cd`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e53d4239a7f261c2309b3b048582046a8aeb87805484b606c36943cceaa1843`  
		Last Modified: Wed, 12 Sep 2018 12:08:35 GMT  
		Size: 19.1 MB (19077908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a777099febde81925eb33e19b94215150768c9df743938c1ec4918b8de264d`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395db2a225a446878afb08785c304722f66fa5cd2a0a7f33f4bca17020e6e1a7`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71a5848411f4b29d487c2f5d951381afa73b7ab12a4ebf0f4b6a3d68f89b7a3`  
		Last Modified: Wed, 12 Sep 2018 12:08:29 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
