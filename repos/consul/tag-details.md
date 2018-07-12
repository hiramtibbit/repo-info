<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.2.1`](#consul121)
-	[`consul:latest`](#consullatest)

## `consul:1.2.1`

```console
$ docker pull consul@sha256:22ee022af3b0ca62f0f84f42b5e71bdd4ba6f438227424b257ea208bb720b748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `consul:latest`

```console
$ docker pull consul@sha256:22ee022af3b0ca62f0f84f42b5e71bdd4ba6f438227424b257ea208bb720b748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
