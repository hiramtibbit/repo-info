## `consul:latest`

```console
$ docker pull consul@sha256:7dfb7b05f045a6b0d7ac9e613ad620f426c31e8e817d293e82d52946ab8e1f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:c86d1d80844285488addae08169cdbff8df4cd63ec3db7803686df47e75cf933
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22633502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ba92b70e9ff0a122116dd90053c1aab193b6e6cd7a215243d3c57e8e2c745c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:37:33 GMT
MAINTAINER Preetha Appan <preetha@hashicorp.com> (@preetapan)
# Mon, 30 Jul 2018 17:19:50 GMT
ENV CONSUL_VERSION=1.2.2
# Mon, 30 Jul 2018 17:19:50 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Mon, 30 Jul 2018 17:19:51 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Mon, 30 Jul 2018 17:20:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Mon, 30 Jul 2018 17:20:01 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Mon, 30 Jul 2018 17:20:02 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Mon, 30 Jul 2018 17:20:02 GMT
VOLUME [/consul/data]
# Mon, 30 Jul 2018 17:20:02 GMT
EXPOSE 8300/tcp
# Mon, 30 Jul 2018 17:20:02 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Mon, 30 Jul 2018 17:20:03 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Mon, 30 Jul 2018 17:20:03 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Mon, 30 Jul 2018 17:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Jul 2018 17:20:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d347e0aa907cb893619e8716d922f165d153e528645b45fc8abe293e0af528bf`  
		Last Modified: Mon, 30 Jul 2018 17:20:28 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca74c4d0946ceb3a272ede900b6afc126cd7239bd6ffcd09478bd96758cbe3c`  
		Last Modified: Mon, 30 Jul 2018 17:20:37 GMT  
		Size: 20.5 MB (20526719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2a54c81aea6d7d9355706ab967aa2268e77e2b15f1d45d8d82e74db3beb2ff`  
		Last Modified: Mon, 30 Jul 2018 17:20:28 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec00a5bd5ecf56cf3d5c286a552fa61311a2e4fec8f001ec988deb322d3a6843`  
		Last Modified: Mon, 30 Jul 2018 17:20:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db135194b9f82d898779de656af145502c0ecac6a834b187a1f33cb8020b9de`  
		Last Modified: Mon, 30 Jul 2018 17:20:28 GMT  
		Size: 1.7 KB (1681 bytes)  
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
$ docker pull consul@sha256:b99459eb11fd095cd96169e05745c236f2f0566c9f91f2ac43b0ddbfd3b8bfae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21207294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464e78e5217793baffccbf59acb513db46078056dc610dcc1d8e9a60db70a462`
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
# Tue, 31 Jul 2018 10:39:21 GMT
ENV CONSUL_VERSION=1.2.2
# Tue, 31 Jul 2018 10:39:21 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 31 Jul 2018 10:39:22 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 31 Jul 2018 10:39:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 31 Jul 2018 10:39:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 31 Jul 2018 10:39:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 31 Jul 2018 10:39:38 GMT
VOLUME [/consul/data]
# Tue, 31 Jul 2018 10:39:38 GMT
EXPOSE 8300/tcp
# Tue, 31 Jul 2018 10:39:38 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Tue, 31 Jul 2018 10:39:39 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Tue, 31 Jul 2018 10:39:39 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Tue, 31 Jul 2018 10:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 10:39:39 GMT
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
	-	`sha256:2342dceca6dbc38a38a1bb3779392f13f6c781e265310dc758b4ff58698ffc8a`  
		Last Modified: Tue, 31 Jul 2018 10:40:16 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f306f638e8d52cd49dab670fdc85d3d9b07dfa951a34df3e29db6789532afb`  
		Last Modified: Tue, 31 Jul 2018 10:40:24 GMT  
		Size: 19.1 MB (19077673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9c872cb5a4c6d87d7871631839cf5caaec83f84526d696a0ee3efb97582ce`  
		Last Modified: Tue, 31 Jul 2018 10:40:16 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bceafcbff20d806358958066f6722a9f867fd80ee8078513ec4fd6d3d23687b`  
		Last Modified: Tue, 31 Jul 2018 10:40:16 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc183abfa4c9fb37e0b7b81ed43327b188b401ac83e3ffb1936310e100f6543`  
		Last Modified: Tue, 31 Jul 2018 10:40:16 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
