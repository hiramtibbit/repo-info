## `consul:latest`

```console
$ docker pull consul@sha256:b59a3cfe0a3b61ae0a17e3779d98c9e7e62cef1d4841359e4a04e50cd3a4cb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
