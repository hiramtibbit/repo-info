## `consul:latest`

```console
$ docker pull consul@sha256:075cd002c7f6074d5fd6578a7f3d0e25c1d90d1204817ac0a7f66b8c267f6cc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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
