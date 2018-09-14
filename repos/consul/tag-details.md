<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.2.3`](#consul123)
-	[`consul:latest`](#consullatest)

## `consul:1.2.3`

```console
$ docker pull consul@sha256:e8ecea60b6e2150b46e2d70017135e85ea60bc617008d03855a71b8f05bf4517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `consul:1.2.3` - linux; amd64

```console
$ docker pull consul@sha256:a925e3319d7cde2744a10d39a82913fe6400531a8a624e622b5aecad36cc2072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27143855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafd45008e6741d117f7ec33f72138eff83f7f3cf563c8b07e970db147b01a80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:44:30 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 13 Sep 2018 17:19:53 GMT
ENV CONSUL_VERSION=1.2.3
# Thu, 13 Sep 2018 17:19:53 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 13 Sep 2018 17:19:53 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 13 Sep 2018 17:20:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 13 Sep 2018 17:20:01 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 13 Sep 2018 17:20:01 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 13 Sep 2018 17:20:01 GMT
VOLUME [/consul/data]
# Thu, 13 Sep 2018 17:20:02 GMT
EXPOSE 8300/tcp
# Thu, 13 Sep 2018 17:20:02 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 13 Sep 2018 17:20:07 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 13 Sep 2018 17:20:07 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 13 Sep 2018 17:20:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Sep 2018 17:20:07 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a5690d0f0987e00ac80f30e1eed10dd2dac999351cb8f62da657581cbee994`  
		Last Modified: Thu, 13 Sep 2018 17:20:22 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5f5d8ce6d812b247302f38c9dce4b40d59a5d0bfd4b944b753396c61fc9bfd`  
		Last Modified: Thu, 13 Sep 2018 17:20:28 GMT  
		Size: 25.0 MB (25033453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fa26dbc4b3c33817144ec087979a3d52fcc01ed269bdc9d9ebc25cba02bb2`  
		Last Modified: Thu, 13 Sep 2018 17:20:21 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d8bc295167f2da698d62fae39145883b722e2661469c4bd85e5c9749e225c5`  
		Last Modified: Thu, 13 Sep 2018 17:20:22 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762829db4d34f003ca43a238e0e0caa139f3001c2dd80af9f8a2c08bdb556555`  
		Last Modified: Thu, 13 Sep 2018 17:20:21 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.3` - linux; 386

```console
$ docker pull consul@sha256:d28941d771f24afa7e1f2396677a000ff3822baabcb3fd5f4d35e9046c1dbd19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26858022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dae9a518a276514e3ba71f7799fecd11d8dc4011426514cc6d54e5d0c63176`
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
# Fri, 14 Sep 2018 10:38:33 GMT
ENV CONSUL_VERSION=1.2.3
# Fri, 14 Sep 2018 10:38:33 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 14 Sep 2018 10:38:34 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 14 Sep 2018 10:38:41 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 14 Sep 2018 10:38:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 14 Sep 2018 10:38:43 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Sep 2018 10:38:43 GMT
VOLUME [/consul/data]
# Fri, 14 Sep 2018 10:38:43 GMT
EXPOSE 8300/tcp
# Fri, 14 Sep 2018 10:38:43 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 14 Sep 2018 10:38:44 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 14 Sep 2018 10:38:44 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 14 Sep 2018 10:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Sep 2018 10:38:44 GMT
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
	-	`sha256:d91c24605eb2ef6c14bf34c346a8072d9b7debfd8c812fa076f43a166ea47724`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48be43c657bc7ea18128baceebba21687778666448d89ce629dc85bfae08173`  
		Last Modified: Fri, 14 Sep 2018 10:39:03 GMT  
		Size: 24.7 MB (24685600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bdd5b32c06ef0af1fef57111fd8925d8c7d3a8372424c90549225bc6cf67d`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b950483b971e02d94eb777795a9a32c4c49ec793c40ee3525a26e76ee09f5d62`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacfab3fdf9139e29ae0c66867919fdacbef3014e5957e90d9c62f2c4d2d0c82`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:e8ecea60b6e2150b46e2d70017135e85ea60bc617008d03855a71b8f05bf4517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:a925e3319d7cde2744a10d39a82913fe6400531a8a624e622b5aecad36cc2072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27143855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafd45008e6741d117f7ec33f72138eff83f7f3cf563c8b07e970db147b01a80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:44:30 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Thu, 13 Sep 2018 17:19:53 GMT
ENV CONSUL_VERSION=1.2.3
# Thu, 13 Sep 2018 17:19:53 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 13 Sep 2018 17:19:53 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 13 Sep 2018 17:20:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 13 Sep 2018 17:20:01 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 13 Sep 2018 17:20:01 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 13 Sep 2018 17:20:01 GMT
VOLUME [/consul/data]
# Thu, 13 Sep 2018 17:20:02 GMT
EXPOSE 8300/tcp
# Thu, 13 Sep 2018 17:20:02 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 13 Sep 2018 17:20:07 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 13 Sep 2018 17:20:07 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 13 Sep 2018 17:20:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Sep 2018 17:20:07 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a5690d0f0987e00ac80f30e1eed10dd2dac999351cb8f62da657581cbee994`  
		Last Modified: Thu, 13 Sep 2018 17:20:22 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5f5d8ce6d812b247302f38c9dce4b40d59a5d0bfd4b944b753396c61fc9bfd`  
		Last Modified: Thu, 13 Sep 2018 17:20:28 GMT  
		Size: 25.0 MB (25033453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fa26dbc4b3c33817144ec087979a3d52fcc01ed269bdc9d9ebc25cba02bb2`  
		Last Modified: Thu, 13 Sep 2018 17:20:21 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d8bc295167f2da698d62fae39145883b722e2661469c4bd85e5c9749e225c5`  
		Last Modified: Thu, 13 Sep 2018 17:20:22 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762829db4d34f003ca43a238e0e0caa139f3001c2dd80af9f8a2c08bdb556555`  
		Last Modified: Thu, 13 Sep 2018 17:20:21 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:d28941d771f24afa7e1f2396677a000ff3822baabcb3fd5f4d35e9046c1dbd19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26858022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dae9a518a276514e3ba71f7799fecd11d8dc4011426514cc6d54e5d0c63176`
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
# Fri, 14 Sep 2018 10:38:33 GMT
ENV CONSUL_VERSION=1.2.3
# Fri, 14 Sep 2018 10:38:33 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 14 Sep 2018 10:38:34 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 14 Sep 2018 10:38:41 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 14 Sep 2018 10:38:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 14 Sep 2018 10:38:43 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Sep 2018 10:38:43 GMT
VOLUME [/consul/data]
# Fri, 14 Sep 2018 10:38:43 GMT
EXPOSE 8300/tcp
# Fri, 14 Sep 2018 10:38:43 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 14 Sep 2018 10:38:44 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 14 Sep 2018 10:38:44 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 14 Sep 2018 10:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Sep 2018 10:38:44 GMT
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
	-	`sha256:d91c24605eb2ef6c14bf34c346a8072d9b7debfd8c812fa076f43a166ea47724`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48be43c657bc7ea18128baceebba21687778666448d89ce629dc85bfae08173`  
		Last Modified: Fri, 14 Sep 2018 10:39:03 GMT  
		Size: 24.7 MB (24685600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bdd5b32c06ef0af1fef57111fd8925d8c7d3a8372424c90549225bc6cf67d`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b950483b971e02d94eb777795a9a32c4c49ec793c40ee3525a26e76ee09f5d62`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacfab3fdf9139e29ae0c66867919fdacbef3014e5957e90d9c62f2c4d2d0c82`  
		Last Modified: Fri, 14 Sep 2018 10:38:56 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
