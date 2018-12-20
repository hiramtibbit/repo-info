<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:0.9.4`](#consul094)
-	[`consul:1.0.8`](#consul108)
-	[`consul:1.1.1`](#consul111)
-	[`consul:1.2.4`](#consul124)
-	[`consul:1.4.0`](#consul140)
-	[`consul:latest`](#consullatest)

## `consul:0.9.4`

```console
$ docker pull consul@sha256:c20a1cc922292af74cdf0f9677ff4c09dbbe1da0ad4a9e177c6efa98c455a76a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `consul:0.9.4` - linux; amd64

```console
$ docker pull consul@sha256:423fbb46d73662b276b05ea1f87d176d984efe088fc1c0a8ca0de2dd9cefb590
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13370115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82a9e8c5cb82fd1f0b339cb11d003bd3fb02d1d4545c3a0aceb136c0ae7be4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Mon, 19 Nov 2018 21:19:33 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 19 Dec 2018 18:19:21 GMT
ENV CONSUL_VERSION=0.9.4
# Wed, 19 Dec 2018 18:19:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 19 Dec 2018 18:19:22 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 19 Dec 2018 18:19:28 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 19 Dec 2018 18:19:28 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 19 Dec 2018 18:19:29 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 19 Dec 2018 18:19:29 GMT
VOLUME [/consul/data]
# Wed, 19 Dec 2018 18:19:29 GMT
EXPOSE 8300
# Wed, 19 Dec 2018 18:19:30 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 19 Dec 2018 18:19:30 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 19 Dec 2018 18:19:30 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 19 Dec 2018 18:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:19:30 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be052157e653504c54c1efd8ce5cb375caf6f143ab09cd42ae0966c541a535d`  
		Last Modified: Wed, 19 Dec 2018 18:20:28 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31449e79ab943ee06f770e32651449a55854b1d63e3341d54dab383e35fce04`  
		Last Modified: Wed, 19 Dec 2018 18:20:32 GMT  
		Size: 11.3 MB (11259711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457b814557af58111b3aea90b13c8c0b9642ba9f8b03c1e147424f490361948b`  
		Last Modified: Wed, 19 Dec 2018 18:20:28 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cb3a10308e6c8fd058ed5d26365543e3b6e0646bb176bbf58a6905580953bd`  
		Last Modified: Wed, 19 Dec 2018 18:20:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769226a245f797a318b34fbb39d61d860465f43d4206f85f17707392a34e576d`  
		Last Modified: Wed, 19 Dec 2018 18:20:28 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:e276b0d8c11837627f353544e4223e26f577cc28e4e49d956b4b741b47e24386
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12719259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a0021615f45e8f51ef48fd7753a24b39f052c2b36bbedb94aa4be490c3dc1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 08:49:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 08:49:21 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 20 Dec 2018 08:49:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 08:49:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 08:49:31 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 08:49:32 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 08:49:33 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 08:49:34 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 08:49:34 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 08:49:34 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 08:49:35 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 08:49:35 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 08:49:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 08:49:36 GMT
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
	-	`sha256:1fc6e88e3e56fa792aa0f6bc68d4fd1a4c80b3b4616cd0d66ac690fa940782cc`  
		Last Modified: Thu, 20 Dec 2018 08:50:50 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80efc2ee8d4a432cceb4d26ce55676e83b43e5c6e3c8626e71d32a9108586ccc`  
		Last Modified: Thu, 20 Dec 2018 08:50:53 GMT  
		Size: 10.7 MB (10664696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806ad2f848ee498a0eaee9d4f38cab843be53a3508628a309d59d9acbebf1989`  
		Last Modified: Thu, 20 Dec 2018 08:50:49 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b2553445a4afc578ac8972cd897ccc79907e572e3ec3b16e0ab1798757a01a`  
		Last Modified: Thu, 20 Dec 2018 08:50:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005ac3cb89f9042d12d5827de43fe50fddcc62d27f87a2b95b8a27690dd9607e`  
		Last Modified: Thu, 20 Dec 2018 08:50:50 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:0b7c63e5259081fd80ab346f24a1989060d09dde169c8e984cd57a270cbfbb89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12522961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35aa0e103603fa6af563801cec8b7f061808ef243a6908edc86181a67a0ae5bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 09:41:44 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 09:39:27 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 20 Dec 2018 09:39:27 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 09:39:30 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 09:39:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 09:39:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 09:39:49 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 09:39:49 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 09:39:50 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 09:39:51 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 09:39:52 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 09:39:53 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 09:39:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:39:54 GMT
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
	-	`sha256:70b336780733f7a6eb8979fb86fff8907c26ab9f88cc62a34702a20d96526d83`  
		Last Modified: Thu, 20 Dec 2018 09:41:53 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2533fc021f5727622218e2e8208ee78b81de4648108ae45cbc0a19ddaf9f93`  
		Last Modified: Thu, 20 Dec 2018 09:41:57 GMT  
		Size: 10.5 MB (10520384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d984107da26f90a418672af92fd6739353c459f886350e87cd2cce4be14fcf71`  
		Last Modified: Thu, 20 Dec 2018 09:41:53 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693f3263b140603ce59ed0db09d4d7f6be71646e283d96eb5b467239bdaf033a`  
		Last Modified: Thu, 20 Dec 2018 09:41:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d18c2f6707c726f3c27668a1e243aa40e4119cafc1f1dd30e64f7b33f0f5eb7`  
		Last Modified: Thu, 20 Dec 2018 09:41:53 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0.8`

```console
$ docker pull consul@sha256:c66048e50c7a5d50c731823b192e30d4315c06fa63ee02f984761959fedf8434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `consul:1.0.8` - linux; amd64

```console
$ docker pull consul@sha256:dfc5196add3cd08c21bcd9442b61c61070a37b3bb89714012100eea31f6a8cad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15384818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e1776cf2de8436e4de17a863a242d1c553974c39c2722db7575c44fd29992c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Mon, 19 Nov 2018 21:19:33 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 19 Dec 2018 18:19:34 GMT
ENV CONSUL_VERSION=1.0.8
# Wed, 19 Dec 2018 18:19:34 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 19 Dec 2018 18:19:35 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 19 Dec 2018 18:19:40 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 19 Dec 2018 18:19:41 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 19 Dec 2018 18:19:41 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 19 Dec 2018 18:19:42 GMT
VOLUME [/consul/data]
# Wed, 19 Dec 2018 18:19:42 GMT
EXPOSE 8300
# Wed, 19 Dec 2018 18:19:42 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 19 Dec 2018 18:19:42 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 19 Dec 2018 18:19:42 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 19 Dec 2018 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:19:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b0529bb03f016fe74040f8f9a72bf72c9bfd7cc9173d3b787650f872d7672f`  
		Last Modified: Wed, 19 Dec 2018 18:20:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721466874498e952db5b39be10d321e9f0e63549316427b42307e41aa03bb717`  
		Last Modified: Wed, 19 Dec 2018 18:20:40 GMT  
		Size: 13.3 MB (13274415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd403ec2de5191efaf32e2c6bc0859b21c0b88ab79b6bc9571c9ed65ead40e6`  
		Last Modified: Wed, 19 Dec 2018 18:20:35 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f23fa0b56d5224c63616e7b0f9323c886a6cb76a6407bf8fbf3b2408665e579`  
		Last Modified: Wed, 19 Dec 2018 18:20:35 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374e6a0a8f49aeb5d953f38a8d37183f83ca81a0626285d81be03604b8f6818e`  
		Last Modified: Wed, 19 Dec 2018 18:20:35 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm variant v6

```console
$ docker pull consul@sha256:0e060cdf5c6400b1a39450945d02e910b852bd840360bc673d743c6eed6524b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14901756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb96d0faa25128f6677064fd9b4b34a4d756a33d8952233a9fa82d416ec300d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 08:49:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 08:49:42 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 20 Dec 2018 08:49:42 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 08:49:43 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 08:49:51 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 08:49:53 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 08:49:54 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 08:49:55 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 08:49:55 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 08:49:56 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 08:49:56 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 08:49:56 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 08:49:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 08:49:57 GMT
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
	-	`sha256:10df881c8e507b7466b33fa4b3a385e57848dfae02b51d8b11c7ff6f561ea478`  
		Last Modified: Thu, 20 Dec 2018 08:50:57 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d35f2547cf57833262ef831feefb13e5db899849e9ef60101a191c4a6b75d7`  
		Last Modified: Thu, 20 Dec 2018 08:51:02 GMT  
		Size: 12.8 MB (12847197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb912ddecd98b368a2914f6a33c57ce4bb667f6b9b2aa441bc976931ef10294c`  
		Last Modified: Thu, 20 Dec 2018 08:50:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38411fddb43a098ea8fcbc0b7b1315d1671ace9b331e0dc17974ede6cc999cf1`  
		Last Modified: Thu, 20 Dec 2018 08:50:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed123226a0589feb7f924016b20ebbb8a4ee6f9c0f7182c7b34fd3ad7cb6de4a`  
		Last Modified: Thu, 20 Dec 2018 08:50:57 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:db680486c12e1b9f4e03e67f980bd0be348965978dedbf822373cacbc7ab452d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14670264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbae6e39bd9f6f3bc91869bdda31fa3caa43f08af3b95dbf557e3f3823f10f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 09:41:44 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 09:39:58 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 20 Dec 2018 09:39:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 09:40:02 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 09:40:22 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 09:40:24 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 09:40:26 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 09:40:27 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 09:40:27 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 09:40:28 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 09:40:29 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 09:40:29 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 09:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:40:30 GMT
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
	-	`sha256:a282265cd924a357ccbbbcfee2879e3ddfaa7295a2e69f28350ba61803fc5010`  
		Last Modified: Thu, 20 Dec 2018 09:42:03 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f16bb3ac601113e27b900b0029ca882c10d1bc9148a8bc8f2a7fc0e18b5622`  
		Last Modified: Thu, 20 Dec 2018 09:42:08 GMT  
		Size: 12.7 MB (12667682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cf72bd8cd5dd12a452fb1cf56a8bcdc88272a2cf9c4e3f88750e09d5ad88b6`  
		Last Modified: Thu, 20 Dec 2018 09:42:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c6f531848ff10f60edceb5c1da0acc2f39df17027db7db555c89e74615e19d`  
		Last Modified: Thu, 20 Dec 2018 09:42:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42def8028f443ef459ffc57d6d119da332c4fce9213c00c42e2d28048da8ccd9`  
		Last Modified: Thu, 20 Dec 2018 09:42:03 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1.1`

```console
$ docker pull consul@sha256:844174ac76e6a92981689512c265e0b92faed506e6c9cd8f9832d4f8034067f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `consul:1.1.1` - linux; amd64

```console
$ docker pull consul@sha256:259d7f28490bee0a46568970d74d0abb73dbe094eeaaea8b238b9777f9802ddb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16850739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a564f77be62e0458ae27cb874694bbce76c3119aa9c10bd11d95b591d495a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Mon, 19 Nov 2018 21:19:33 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 19 Dec 2018 18:19:46 GMT
ENV CONSUL_VERSION=1.1.1
# Wed, 19 Dec 2018 18:19:46 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 19 Dec 2018 18:19:47 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 19 Dec 2018 18:19:52 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 19 Dec 2018 18:19:53 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 19 Dec 2018 18:19:54 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 19 Dec 2018 18:19:54 GMT
VOLUME [/consul/data]
# Wed, 19 Dec 2018 18:19:54 GMT
EXPOSE 8300
# Wed, 19 Dec 2018 18:19:54 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 19 Dec 2018 18:19:54 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 19 Dec 2018 18:19:54 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 19 Dec 2018 18:19:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:19:55 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3af3502c891699056ea2b4aaaee10e8fca3d62b0db2a6ee8d14b1cf5aa0489`  
		Last Modified: Wed, 19 Dec 2018 18:20:43 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7eb85f40841e5a714fb41be9289a444a5e78444aa4aa746c66f10ede58f7dd`  
		Last Modified: Wed, 19 Dec 2018 18:20:46 GMT  
		Size: 14.7 MB (14740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694eaa4fdb6c8f0d2cc7a59f22b2c36b85a48c1bb279ebd8477554a726cc3f8`  
		Last Modified: Wed, 19 Dec 2018 18:20:43 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88215e2b049785935f3549574e5e6091b45af246bf5e808f7f738c4e4d1d425`  
		Last Modified: Wed, 19 Dec 2018 18:20:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56b856cd6e98ca32527ff40a61836a294d47de5d8e0e1cfa6c6980c1876dfd8`  
		Last Modified: Wed, 19 Dec 2018 18:20:44 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:52f7d8cf6168d362635c7f83fce9c76e85f304f8db717c0e188353b1b9f22a15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16365289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79a1867812f93ac4a38a0eb79b23a0eea85a7fed325846e72482111145a9f09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 08:49:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 08:50:02 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 20 Dec 2018 08:50:03 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 08:50:04 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 08:50:12 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 08:50:13 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 08:50:14 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 08:50:14 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 08:50:15 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 08:50:15 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 08:50:15 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 08:50:16 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 08:50:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 08:50:17 GMT
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
	-	`sha256:f3ccfb2a46565fff47db91018c901e82a3459b88817685b83a98ffdaa9d4ed84`  
		Last Modified: Thu, 20 Dec 2018 08:51:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9634c1f7334f7893fa996ba11ab50b698fcb6f1b4f9345814517024b434f89d`  
		Last Modified: Thu, 20 Dec 2018 08:51:12 GMT  
		Size: 14.3 MB (14310725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091802c6392cee55b45741e59dbd80ef8da532f6a67d8af1f9c3a1b8625c56ec`  
		Last Modified: Thu, 20 Dec 2018 08:51:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b37dc3310ee725abff02e093f2e417f8d83aebdc9934b8b9327f3c4a193f360`  
		Last Modified: Thu, 20 Dec 2018 08:51:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfc951ba18f21b486ff8fbfc00430b2ecd645b472dc4368c2dc52a5b6a53a88`  
		Last Modified: Thu, 20 Dec 2018 08:51:07 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:ac804c5813928b0452ef384489f2b71c47651366b9cafffcff469237c66ea85a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16106522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1410233ce334bf171fee8adff4cfb1fd1d193807057d1f07d26fa9e14b911f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 09:41:44 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 09:40:36 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 20 Dec 2018 09:40:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 09:40:38 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 09:40:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 09:40:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 09:41:01 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 09:41:01 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 09:41:02 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 09:41:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 09:41:03 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 09:41:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 09:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:41:05 GMT
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
	-	`sha256:deaf8d0efca830e0146c1e31924770dfd7d51ae1c3eeeb1a4f468738c064fa4b`  
		Last Modified: Thu, 20 Dec 2018 09:42:14 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69065f0befdddc27e2a54fc19f1766dddb8187d0237e9044b3adcc8132655e2a`  
		Last Modified: Thu, 20 Dec 2018 09:42:20 GMT  
		Size: 14.1 MB (14103940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abef815d28a42a1338f16a71c7900be57c35221043be2f273d809ac52899b32d`  
		Last Modified: Thu, 20 Dec 2018 09:42:14 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a362a6979b31b7fcc9e5ff0a4382f244a828398f7f0f870c388c30afee580d35`  
		Last Modified: Thu, 20 Dec 2018 09:42:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a90c02a83197f8388631671cb273bdbc19a7fb490d0f9c37e5efa145f428e0`  
		Last Modified: Thu, 20 Dec 2018 09:42:14 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2.4`

```console
$ docker pull consul@sha256:a6b528d220a2cf5d0bf7ce056a9ef924ba7b78573ccc222a40db7027f86bce8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `consul:1.2.4` - linux; amd64

```console
$ docker pull consul@sha256:f0e960ee8870158ff0b92c270a3ed8803490f58e29fb9e73618dddcfec2aa779
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27148978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee71789e1d43cb830859cb04bde2863d6aa035589765796067d213252643584a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Mon, 19 Nov 2018 21:19:33 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 19 Dec 2018 18:19:58 GMT
ENV CONSUL_VERSION=1.2.4
# Wed, 19 Dec 2018 18:19:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 19 Dec 2018 18:19:59 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 19 Dec 2018 18:20:06 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 19 Dec 2018 18:20:07 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 19 Dec 2018 18:20:08 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 19 Dec 2018 18:20:08 GMT
VOLUME [/consul/data]
# Wed, 19 Dec 2018 18:20:08 GMT
EXPOSE 8300
# Wed, 19 Dec 2018 18:20:08 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 19 Dec 2018 18:20:09 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 19 Dec 2018 18:20:09 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 19 Dec 2018 18:20:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:20:09 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61413cf3f8ab7f900162f19b9e998af1c2be439071772b92d55e990ca671e48`  
		Last Modified: Wed, 19 Dec 2018 18:20:49 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46babdb9426b9505ed09f2fb8fd84d50a4fac480cb74370c7bf04b2a9b35d1c2`  
		Last Modified: Wed, 19 Dec 2018 18:20:55 GMT  
		Size: 25.0 MB (25038572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305a8931196f6ac89085ef019714ce16c73d3b0dc5fd9d285cd56402a4bf4244`  
		Last Modified: Wed, 19 Dec 2018 18:20:49 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59e707e9f081f2949bd79872aaaa3fc328645a8fc48ce9f997ca2b1a5fac3c8`  
		Last Modified: Wed, 19 Dec 2018 18:20:49 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df35f2d313ff486a11717e059e2fa3479a20bcd7a9c900064fd34d873a9d4a3`  
		Last Modified: Wed, 19 Dec 2018 18:20:49 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:a78e6996f553b2c0cef52af0b58a269aca28aeabf08792a4abfdcf2612b81331
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26320053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad7b6222a7090cb605e519e1df8ce03143749be50a68706195b0889d16e60c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 08:49:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 08:50:20 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 20 Dec 2018 08:50:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 08:50:22 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 08:50:31 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 08:50:32 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 08:50:34 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 08:50:34 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 08:50:34 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 08:50:35 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 08:50:35 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 08:50:36 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 08:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 08:50:36 GMT
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
	-	`sha256:17105ce80e34e4e52dd32ab44fce8bc548fdf93c61350b4abb71a03329f70f03`  
		Last Modified: Thu, 20 Dec 2018 08:51:16 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d252e9525df2da81ad59a2a0c325de6619e41951067d4d5dc5129a3ca7af0d63`  
		Last Modified: Thu, 20 Dec 2018 08:51:26 GMT  
		Size: 24.3 MB (24265493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578abe8fba4ca4febd1774aa31df13a9b1111f46d0e08965ae68fdd8eba91bb4`  
		Last Modified: Thu, 20 Dec 2018 08:51:17 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e618edb3345fc59cddf973a434e1b56798bf328445de51b6cc106c7a7a0a7f8`  
		Last Modified: Thu, 20 Dec 2018 08:51:16 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9fc1167c312e949c27d682bb66870fc5885286d64620e918f7c02cfc3a16fd`  
		Last Modified: Thu, 20 Dec 2018 08:51:16 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:e4a75e227ae758226706c1d649a3a8c44578164a1875a8faa87a2c6554b84bc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25877786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a835ea664e5b29712f894cd84c59156ebe68953a2896ec218e74aacd685710`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 09:41:44 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 20 Dec 2018 09:41:11 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 20 Dec 2018 09:41:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 09:41:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 09:41:26 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 09:41:28 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 09:41:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 09:41:32 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 09:41:33 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 09:41:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 09:41:34 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 09:41:35 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 09:41:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:41:36 GMT
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
	-	`sha256:b36262a5909dee475452bd7df1f321c16f5e3c89482f18c1bd91cf22d8a1e3dc`  
		Last Modified: Thu, 20 Dec 2018 09:42:26 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a819aa793b1d5f94c7558d4a3e9702ccec45461c3f7cfd7249306f222b099b4c`  
		Last Modified: Thu, 20 Dec 2018 09:42:37 GMT  
		Size: 23.9 MB (23875206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d58cf6c33b508bfb25b87ecc19c53c02764c4ac85b3fcbfe0ed8a0c25ac8b2`  
		Last Modified: Thu, 20 Dec 2018 09:42:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f894dac79c9e7d8482b9940c88c8613c6f7ff2ee17ae5c6806d53266c0e868`  
		Last Modified: Thu, 20 Dec 2018 09:42:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8292ff2e8d2d475aae36e72cc836fa5fa573dc7d48fef1d98006a508e826840f`  
		Last Modified: Thu, 20 Dec 2018 09:42:26 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4.0`

```console
$ docker pull consul@sha256:eb39173d00ce0efe6f586042e1f9f3b24741468285210074a84b9b1a9dbe13ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4.0` - linux; amd64

```console
$ docker pull consul@sha256:65a5762a8770ee1880839335655698ea7885f0469692cc7672f61ed98186a5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37809404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a92470333baadb25c5101e921e8dc598c7ebc51081ab5e0a0cb67f08c37bac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Mon, 19 Nov 2018 21:19:33 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Mon, 19 Nov 2018 21:20:01 GMT
ENV CONSUL_VERSION=1.4.0
# Mon, 19 Nov 2018 21:20:01 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Mon, 19 Nov 2018 21:20:02 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Mon, 19 Nov 2018 21:20:08 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Mon, 19 Nov 2018 21:20:09 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Mon, 19 Nov 2018 21:20:23 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Mon, 19 Nov 2018 21:20:36 GMT
VOLUME [/consul/data]
# Mon, 19 Nov 2018 21:20:37 GMT
EXPOSE 8300/tcp
# Mon, 19 Nov 2018 21:20:37 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Mon, 19 Nov 2018 21:20:37 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Mon, 19 Nov 2018 21:20:38 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Mon, 19 Nov 2018 21:20:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 21:20:38 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f76ca124f95c500c5d084c9ac98c387569482bf2db4fbb73ba741edd95771`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227eae9794cce91bc690a3e1309b511e33419e3deeaf97b4dc61720a90d81c4f`  
		Last Modified: Mon, 19 Nov 2018 21:21:51 GMT  
		Size: 35.7 MB (35699000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c3e329071d8e5f0be35a17cc963c2a50883ef432156463c4d0bba3c8f81e3e`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f349f9b2750b56bc4c837a0375bcb46b8278125e96681a6a9cd5159b3322c59f`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00140fc5dc863bcb0ea3aea281f8b9b3389b51b3552db436b1c9f37b7b55535`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.0` - linux; arm variant v6

```console
$ docker pull consul@sha256:0e3fc9e3403360c077e0af477ab455fbc2281093927b223d87cc81b31d8ececb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35793284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a2e7731930abfc0eb303f7926216382266441ccba500c2752978f95d6a86b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 08:49:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 20 Nov 2018 08:49:50 GMT
ENV CONSUL_VERSION=1.4.0
# Tue, 20 Nov 2018 08:49:50 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 20 Nov 2018 08:49:51 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 20 Nov 2018 08:50:01 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 20 Nov 2018 08:50:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 20 Nov 2018 08:50:03 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 20 Nov 2018 08:50:04 GMT
VOLUME [/consul/data]
# Tue, 20 Nov 2018 08:50:04 GMT
EXPOSE 8300/tcp
# Tue, 20 Nov 2018 08:50:04 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 20 Nov 2018 08:50:05 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 20 Nov 2018 08:50:05 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Nov 2018 08:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 08:50:06 GMT
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
	-	`sha256:b50fcf9b687cb28a98bce1edc52e29b949f691fed498e1eee109f05feaa23065`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51899d1122e3aea1fbca7d7fe0088ab1833d4aeed2c36ae6ba2c5c51bd98535e`  
		Last Modified: Tue, 20 Nov 2018 08:50:43 GMT  
		Size: 33.7 MB (33738720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272af78c555003895eb26b8afb583c2a5399f4e353f1fbac46fe15e8aad7fdf3`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db383b3fc61d1652a7c9f368715973dbb10f6e85aa61f5563eafe31e4376da`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f9a50ab9a8850bdd0391669d7113a29a1b3150da9f59f571634b1d8e9a4aa`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.0` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:4a49a00fd6ca8ba4c0bfad3d15139d09854df57625d468f3dd26640ce21a42de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35360557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be24e524f557bc410c6c401277e97f821c29dcc01db608e33404a139fd130094`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 09:41:44 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 20 Nov 2018 09:42:23 GMT
ENV CONSUL_VERSION=1.4.0
# Tue, 20 Nov 2018 09:42:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 20 Nov 2018 09:42:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 20 Nov 2018 09:42:40 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 20 Nov 2018 09:42:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 20 Nov 2018 09:42:43 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 20 Nov 2018 09:42:44 GMT
VOLUME [/consul/data]
# Tue, 20 Nov 2018 09:42:45 GMT
EXPOSE 8300/tcp
# Tue, 20 Nov 2018 09:42:46 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 20 Nov 2018 09:42:47 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 20 Nov 2018 09:42:48 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Nov 2018 09:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 09:42:50 GMT
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
	-	`sha256:bf04e29df0cc8f301a158d54e9f925fe75db0c46775487a385955eeced9f1803`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483664d282f98675988b90de56e347634780315fab4082ef4dea8e766bf8e9b5`  
		Last Modified: Tue, 20 Nov 2018 09:43:39 GMT  
		Size: 33.4 MB (33357980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd03692ab67028cbbb49bf5fa0954b8c9423958fae0f8fd7c61dc67a937ed6e`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d03df5ba8edf4e33ba3d19547acb24e5b0ac980cdf2f6f0668c517036f716e7`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c5a9c1df3f577cc8dd15e8dbcd77c7c23469763864936285bfa094679627a4`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.0` - linux; 386

```console
$ docker pull consul@sha256:2fdf3aa2558c5d37dfcefea885fbc2c30fb04697828dc47cec78193a04083361
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36945906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c888982022b64ce4886a36cebdfcad4ba95c00e245ae7030211880669d36751`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 11:39:02 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 20 Nov 2018 11:39:28 GMT
ENV CONSUL_VERSION=1.4.0
# Tue, 20 Nov 2018 11:39:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 20 Nov 2018 11:39:29 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 20 Nov 2018 11:39:37 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 20 Nov 2018 11:39:38 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 20 Nov 2018 11:39:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 20 Nov 2018 11:39:38 GMT
VOLUME [/consul/data]
# Tue, 20 Nov 2018 11:39:39 GMT
EXPOSE 8300/tcp
# Tue, 20 Nov 2018 11:39:39 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 20 Nov 2018 11:39:39 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 20 Nov 2018 11:39:39 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Nov 2018 11:39:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:39:40 GMT
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
	-	`sha256:8ac3dc232b9125b70a9661026ed51bb18950406597cf295970d96643197f4d62`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468eb9bc19a90ff435a4c4f1b908384d44ed7ff0497e60a662a0e11c3495c787`  
		Last Modified: Tue, 20 Nov 2018 11:40:40 GMT  
		Size: 34.8 MB (34773485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c5cdc76e3d45825db6a3556d1a7da93aca9d9d6f1de7baf43b2e7c473b0e02`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077e4a73a33b7033cdba8e9f5ee258b6db558c130f27dde552e17c97e50c4119`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40468b9ae765af267bb8f58ad3e3121eeb03cf9f3a4d79fc7c9aa9d01d0531b9`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:eb39173d00ce0efe6f586042e1f9f3b24741468285210074a84b9b1a9dbe13ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:65a5762a8770ee1880839335655698ea7885f0469692cc7672f61ed98186a5ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37809404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a92470333baadb25c5101e921e8dc598c7ebc51081ab5e0a0cb67f08c37bac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Mon, 19 Nov 2018 21:19:33 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Mon, 19 Nov 2018 21:20:01 GMT
ENV CONSUL_VERSION=1.4.0
# Mon, 19 Nov 2018 21:20:01 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Mon, 19 Nov 2018 21:20:02 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Mon, 19 Nov 2018 21:20:08 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Mon, 19 Nov 2018 21:20:09 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Mon, 19 Nov 2018 21:20:23 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Mon, 19 Nov 2018 21:20:36 GMT
VOLUME [/consul/data]
# Mon, 19 Nov 2018 21:20:37 GMT
EXPOSE 8300/tcp
# Mon, 19 Nov 2018 21:20:37 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Mon, 19 Nov 2018 21:20:37 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Mon, 19 Nov 2018 21:20:38 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Mon, 19 Nov 2018 21:20:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 21:20:38 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f76ca124f95c500c5d084c9ac98c387569482bf2db4fbb73ba741edd95771`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227eae9794cce91bc690a3e1309b511e33419e3deeaf97b4dc61720a90d81c4f`  
		Last Modified: Mon, 19 Nov 2018 21:21:51 GMT  
		Size: 35.7 MB (35699000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c3e329071d8e5f0be35a17cc963c2a50883ef432156463c4d0bba3c8f81e3e`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f349f9b2750b56bc4c837a0375bcb46b8278125e96681a6a9cd5159b3322c59f`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00140fc5dc863bcb0ea3aea281f8b9b3389b51b3552db436b1c9f37b7b55535`  
		Last Modified: Mon, 19 Nov 2018 21:21:44 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:0e3fc9e3403360c077e0af477ab455fbc2281093927b223d87cc81b31d8ececb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35793284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a2e7731930abfc0eb303f7926216382266441ccba500c2752978f95d6a86b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 08:49:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 20 Nov 2018 08:49:50 GMT
ENV CONSUL_VERSION=1.4.0
# Tue, 20 Nov 2018 08:49:50 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 20 Nov 2018 08:49:51 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 20 Nov 2018 08:50:01 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 20 Nov 2018 08:50:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 20 Nov 2018 08:50:03 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 20 Nov 2018 08:50:04 GMT
VOLUME [/consul/data]
# Tue, 20 Nov 2018 08:50:04 GMT
EXPOSE 8300/tcp
# Tue, 20 Nov 2018 08:50:04 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 20 Nov 2018 08:50:05 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 20 Nov 2018 08:50:05 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Nov 2018 08:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 08:50:06 GMT
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
	-	`sha256:b50fcf9b687cb28a98bce1edc52e29b949f691fed498e1eee109f05feaa23065`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51899d1122e3aea1fbca7d7fe0088ab1833d4aeed2c36ae6ba2c5c51bd98535e`  
		Last Modified: Tue, 20 Nov 2018 08:50:43 GMT  
		Size: 33.7 MB (33738720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272af78c555003895eb26b8afb583c2a5399f4e353f1fbac46fe15e8aad7fdf3`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db383b3fc61d1652a7c9f368715973dbb10f6e85aa61f5563eafe31e4376da`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f9a50ab9a8850bdd0391669d7113a29a1b3150da9f59f571634b1d8e9a4aa`  
		Last Modified: Tue, 20 Nov 2018 08:50:34 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:4a49a00fd6ca8ba4c0bfad3d15139d09854df57625d468f3dd26640ce21a42de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35360557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be24e524f557bc410c6c401277e97f821c29dcc01db608e33404a139fd130094`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 09:41:44 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 20 Nov 2018 09:42:23 GMT
ENV CONSUL_VERSION=1.4.0
# Tue, 20 Nov 2018 09:42:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 20 Nov 2018 09:42:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 20 Nov 2018 09:42:40 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 20 Nov 2018 09:42:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 20 Nov 2018 09:42:43 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 20 Nov 2018 09:42:44 GMT
VOLUME [/consul/data]
# Tue, 20 Nov 2018 09:42:45 GMT
EXPOSE 8300/tcp
# Tue, 20 Nov 2018 09:42:46 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 20 Nov 2018 09:42:47 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 20 Nov 2018 09:42:48 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Nov 2018 09:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 09:42:50 GMT
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
	-	`sha256:bf04e29df0cc8f301a158d54e9f925fe75db0c46775487a385955eeced9f1803`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483664d282f98675988b90de56e347634780315fab4082ef4dea8e766bf8e9b5`  
		Last Modified: Tue, 20 Nov 2018 09:43:39 GMT  
		Size: 33.4 MB (33357980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd03692ab67028cbbb49bf5fa0954b8c9423958fae0f8fd7c61dc67a937ed6e`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d03df5ba8edf4e33ba3d19547acb24e5b0ac980cdf2f6f0668c517036f716e7`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c5a9c1df3f577cc8dd15e8dbcd77c7c23469763864936285bfa094679627a4`  
		Last Modified: Tue, 20 Nov 2018 09:43:28 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:2fdf3aa2558c5d37dfcefea885fbc2c30fb04697828dc47cec78193a04083361
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36945906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c888982022b64ce4886a36cebdfcad4ba95c00e245ae7030211880669d36751`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Tue, 20 Nov 2018 11:39:02 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 20 Nov 2018 11:39:28 GMT
ENV CONSUL_VERSION=1.4.0
# Tue, 20 Nov 2018 11:39:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 20 Nov 2018 11:39:29 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 20 Nov 2018 11:39:37 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 20 Nov 2018 11:39:38 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 20 Nov 2018 11:39:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 20 Nov 2018 11:39:38 GMT
VOLUME [/consul/data]
# Tue, 20 Nov 2018 11:39:39 GMT
EXPOSE 8300/tcp
# Tue, 20 Nov 2018 11:39:39 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 20 Nov 2018 11:39:39 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 20 Nov 2018 11:39:39 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Nov 2018 11:39:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Nov 2018 11:39:40 GMT
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
	-	`sha256:8ac3dc232b9125b70a9661026ed51bb18950406597cf295970d96643197f4d62`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468eb9bc19a90ff435a4c4f1b908384d44ed7ff0497e60a662a0e11c3495c787`  
		Last Modified: Tue, 20 Nov 2018 11:40:40 GMT  
		Size: 34.8 MB (34773485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c5cdc76e3d45825db6a3556d1a7da93aca9d9d6f1de7baf43b2e7c473b0e02`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077e4a73a33b7033cdba8e9f5ee258b6db558c130f27dde552e17c97e50c4119`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40468b9ae765af267bb8f58ad3e3121eeb03cf9f3a4d79fc7c9aa9d01d0531b9`  
		Last Modified: Tue, 20 Nov 2018 11:40:29 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
