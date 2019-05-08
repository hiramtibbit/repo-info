<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:0.9`](#consul09)
-	[`consul:0.9.4`](#consul094)
-	[`consul:1.0`](#consul10)
-	[`consul:1.0.8`](#consul108)
-	[`consul:1.1`](#consul11)
-	[`consul:1.1.1`](#consul111)
-	[`consul:1.2`](#consul12)
-	[`consul:1.2.4`](#consul124)
-	[`consul:1.3`](#consul13)
-	[`consul:1.3.1`](#consul131)
-	[`consul:1.4`](#consul14)
-	[`consul:1.4.4`](#consul144)
-	[`consul:1.5`](#consul15)
-	[`consul:1.5.0`](#consul150)
-	[`consul:latest`](#consullatest)

## `consul:0.9`

```console
$ docker pull consul@sha256:36791b3bec8bc9c6c0887444fdbb845907b9ae8f53f15e2223c7e0b8e5f48022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:0.9` - linux; amd64

```console
$ docker pull consul@sha256:1e21e1daebed470b17480f8d2f36320d9030f32b1dd314a4ef347b0f98ad7dfe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14537861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4f90c1df6fbfa5a94f89294b48d5f1d8ae12903ab79432da52b1b5d6181fc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:54 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 26 Apr 2019 21:40:54 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:55 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:59 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:59 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:59 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:00 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:00 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:00 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:00 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b72bb738c66c59ca23384ad28968bee28297b14d9545554cb7944fd70467d4f`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348c02ea84663e6c0ef0387d6c8c7bd20d92013c7bbaf425635980a8e44ee01b`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 11.8 MB (11777617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3295d5ab4484a9df6cb432108389a2d6a34afc8cc53490cb551ca0e5623e1322`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26686f04d7e0592d3e475969de7a459facb25c14416a080af1fada0313539d8c`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee7a99d3cb6a756d8ad23671db5df2b42115f011fc7c2d8a0a79a0ea6259340`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; arm variant v6

```console
$ docker pull consul@sha256:c4eec2d7c297133c92ef3c7e2eaf29bd2bd2467a61a47e38ffb98c8bdc707071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13708662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7f02aaed3e69eb72873eaed7384cb06d080d86b933198fa2f65d61cb8a610b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:39 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 26 Apr 2019 21:41:39 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:45 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:47 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:48 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:48 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:48 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:49 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:49 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:49 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:50 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198347bf20c03f261e7eab35165fb27b421051c413f01e157a23cecc1566a682`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceae2cf8d664a197313ad451d8c2417f03ffee7f8c9a5520d4116f2f4f5e91c8`  
		Last Modified: Fri, 26 Apr 2019 21:43:18 GMT  
		Size: 11.2 MB (11161925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f798865d0fae5e700fdf6d7aae08bd60f3f92d766a0c14aebe323b6f08b0cf1`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea079e48a582813b9efea4df6f3da6b444460cf996bcaf1172414aa0bb2a0c8`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f113e2bda976e9a8da9c4089410d014ad72803304a10fb3c6422342f92dee3ed`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:cf995f2c15d097ea921183f102a7e76e1f4bd2d26baca353c0e807cb83257330
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12523557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77bad2848dbc7ec637ac700ad8434ae892f1a200782f2d23b437d1830e05cae5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:41:43 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 25 Apr 2019 08:41:45 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:41:49 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:42:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:42:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:42:04 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:42:04 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:42:05 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:42:13 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:42:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:42:15 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:42:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:42:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fc655915e88a0b27dbb32354589d16d877f04f7d74373a59d3da5cebf50fd2`  
		Last Modified: Thu, 25 Apr 2019 08:43:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5210b9a00739e9e1c162c755dd0623514b38bf8f2800ea551617ecd2db5537`  
		Last Modified: Thu, 25 Apr 2019 08:43:34 GMT  
		Size: 10.5 MB (10521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0a4da191c81ed5bc4c24c600bcb63f7cceccd4cd3a88ec59c2057e16278b2`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37265a22d4be6f9aa4df26eaa17879b845bd0cb81f63b2f357faa5e09c394936`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52233e5203e235cd299c6fb7b42e54c44b723f7c2a807512efddc2d55cf62`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; 386

```console
$ docker pull consul@sha256:477d3a9e7c9d2c60b1ad6f07f83c1f448fa13a43cc180cf84c31a36a2ad29577
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14210830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9411b6a1c599764752e9681eca5c5425b4280e1683226b97d68dcd69a2b2f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:10 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 26 Apr 2019 21:41:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:11 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:15 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:15 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:16 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:17 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:17 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:17 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:17 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4a07538510af8b5cf230493d3231aa7c84403543ebbc0ce6679ca35f6b6fec`  
		Last Modified: Fri, 26 Apr 2019 21:42:21 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2056b36cf5eeb2792e6b48357bf40a432efa10c2619ab907c38e9f4c56ac89`  
		Last Modified: Fri, 26 Apr 2019 21:42:25 GMT  
		Size: 11.5 MB (11455436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc619e4fc9091e5ec10f1a8262f1473304225732cb7ba3dcbefb71a313107c7`  
		Last Modified: Fri, 26 Apr 2019 21:42:22 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6170caf3514e942921b562ff9053bac7cce48b9cf11f953c99a47732a6cfc6c`  
		Last Modified: Fri, 26 Apr 2019 21:42:22 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eae393bbf39460be75fa40e4c5c3958b9a43c5fdb5f632b1cd3514d7d44c3f`  
		Last Modified: Fri, 26 Apr 2019 21:42:22 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.9.4`

```console
$ docker pull consul@sha256:36791b3bec8bc9c6c0887444fdbb845907b9ae8f53f15e2223c7e0b8e5f48022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:0.9.4` - linux; amd64

```console
$ docker pull consul@sha256:1e21e1daebed470b17480f8d2f36320d9030f32b1dd314a4ef347b0f98ad7dfe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14537861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4f90c1df6fbfa5a94f89294b48d5f1d8ae12903ab79432da52b1b5d6181fc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:54 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 26 Apr 2019 21:40:54 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:55 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:59 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:59 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:59 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:00 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:00 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:00 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:00 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b72bb738c66c59ca23384ad28968bee28297b14d9545554cb7944fd70467d4f`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348c02ea84663e6c0ef0387d6c8c7bd20d92013c7bbaf425635980a8e44ee01b`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 11.8 MB (11777617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3295d5ab4484a9df6cb432108389a2d6a34afc8cc53490cb551ca0e5623e1322`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26686f04d7e0592d3e475969de7a459facb25c14416a080af1fada0313539d8c`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee7a99d3cb6a756d8ad23671db5df2b42115f011fc7c2d8a0a79a0ea6259340`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:c4eec2d7c297133c92ef3c7e2eaf29bd2bd2467a61a47e38ffb98c8bdc707071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13708662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7f02aaed3e69eb72873eaed7384cb06d080d86b933198fa2f65d61cb8a610b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:39 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 26 Apr 2019 21:41:39 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:45 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:47 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:48 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:48 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:48 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:49 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:49 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:49 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:50 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198347bf20c03f261e7eab35165fb27b421051c413f01e157a23cecc1566a682`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceae2cf8d664a197313ad451d8c2417f03ffee7f8c9a5520d4116f2f4f5e91c8`  
		Last Modified: Fri, 26 Apr 2019 21:43:18 GMT  
		Size: 11.2 MB (11161925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f798865d0fae5e700fdf6d7aae08bd60f3f92d766a0c14aebe323b6f08b0cf1`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea079e48a582813b9efea4df6f3da6b444460cf996bcaf1172414aa0bb2a0c8`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f113e2bda976e9a8da9c4089410d014ad72803304a10fb3c6422342f92dee3ed`  
		Last Modified: Fri, 26 Apr 2019 21:43:15 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:cf995f2c15d097ea921183f102a7e76e1f4bd2d26baca353c0e807cb83257330
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12523557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77bad2848dbc7ec637ac700ad8434ae892f1a200782f2d23b437d1830e05cae5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:41:43 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 25 Apr 2019 08:41:45 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:41:49 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:42:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:42:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:42:04 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:42:04 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:42:05 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:42:13 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:42:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:42:15 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:42:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:42:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fc655915e88a0b27dbb32354589d16d877f04f7d74373a59d3da5cebf50fd2`  
		Last Modified: Thu, 25 Apr 2019 08:43:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5210b9a00739e9e1c162c755dd0623514b38bf8f2800ea551617ecd2db5537`  
		Last Modified: Thu, 25 Apr 2019 08:43:34 GMT  
		Size: 10.5 MB (10521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0a4da191c81ed5bc4c24c600bcb63f7cceccd4cd3a88ec59c2057e16278b2`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37265a22d4be6f9aa4df26eaa17879b845bd0cb81f63b2f357faa5e09c394936`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52233e5203e235cd299c6fb7b42e54c44b723f7c2a807512efddc2d55cf62`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; 386

```console
$ docker pull consul@sha256:477d3a9e7c9d2c60b1ad6f07f83c1f448fa13a43cc180cf84c31a36a2ad29577
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14210830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9411b6a1c599764752e9681eca5c5425b4280e1683226b97d68dcd69a2b2f30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:10 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 26 Apr 2019 21:41:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:11 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:15 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:15 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:16 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:17 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:17 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:17 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:17 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4a07538510af8b5cf230493d3231aa7c84403543ebbc0ce6679ca35f6b6fec`  
		Last Modified: Fri, 26 Apr 2019 21:42:21 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2056b36cf5eeb2792e6b48357bf40a432efa10c2619ab907c38e9f4c56ac89`  
		Last Modified: Fri, 26 Apr 2019 21:42:25 GMT  
		Size: 11.5 MB (11455436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc619e4fc9091e5ec10f1a8262f1473304225732cb7ba3dcbefb71a313107c7`  
		Last Modified: Fri, 26 Apr 2019 21:42:22 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6170caf3514e942921b562ff9053bac7cce48b9cf11f953c99a47732a6cfc6c`  
		Last Modified: Fri, 26 Apr 2019 21:42:22 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eae393bbf39460be75fa40e4c5c3958b9a43c5fdb5f632b1cd3514d7d44c3f`  
		Last Modified: Fri, 26 Apr 2019 21:42:22 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0`

```console
$ docker pull consul@sha256:682fdb45c6a9930c1dc4bd95a453c085b18903c8c47c0be9ea687651f30fa78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.0` - linux; amd64

```console
$ docker pull consul@sha256:562ce71b346ebd24a397f7362b69f6f396126d19c048f666b8d78e5b0f3f16be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16552429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3738c37e89fb3a1789b2003ce33caa02c4ceb7be5bb0175b792d0dbb0bc2b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:43 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 26 Apr 2019 21:40:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:47 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:49 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:49 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:49 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:49 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:49 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:50 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:50 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462979ee1dfd79b36892d6852d2c6683d18516734e11da364a44fbc075fb813`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c7d26b551331eaa19e126025ffb21ed59a250961e9fd6758e948c1cc541fa8`  
		Last Modified: Fri, 26 Apr 2019 21:41:57 GMT  
		Size: 13.8 MB (13792188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e532018bb32c2720a00ca2edd5e7828b78bf7b625f773d76913a29509808565`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2ee1094c4dcf93c68281ceae9a2701cbfcc3fa7620be524559dfe3b87693c`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd047d59266e3db02210a850e2063f5f1a395d9e27224b343d46ef7cb4941838`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; arm variant v6

```console
$ docker pull consul@sha256:d292ae2bafc3427d03419172a27c5bc6db8f10bb49b6548108d19c462e247d4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15890199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3bda8e218ef76b140dd35abe0e19a6b3c03a834ddf4b863efaad6684fb51b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:24 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 26 Apr 2019 21:41:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:31 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:32 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:33 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:34 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:34 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:34 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:35 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:35 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:36 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858c8b359945a68081965ae91508122501fdb72282aba54209c7f14858543319`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41ef8f32b186212be3e9f116ddcbbe4be3ec70676ae8e967df6689a0db8b5b0`  
		Last Modified: Fri, 26 Apr 2019 21:43:05 GMT  
		Size: 13.3 MB (13343464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292b0eae50116b980056ccdb35a19ef25c46aec395ce3bd7ce8baacfff93eb4`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6093fb6661735737299c6bd5d54844c293ba79ee873c90de1df545ab2e9417d`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd103cdfb237e21e589b753fa2adf9dd32398a11c362a5ad827cc532a4722cf5`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:6615c5872759880566ca489eae1cb6c90de3c86fc0da3d8ba3d05841a06c377a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14670835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896275ee72b415c3f91e104961eba34fa640c20f99e5d759c5600977cf06cc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:40:54 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 25 Apr 2019 08:40:55 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:41:04 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:41:25 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:41:27 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:41:30 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:41:30 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:41:31 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:41:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:41:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:41:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:41:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:41:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904199c58dd7fcb22c2926099f5c506b7a21d10a5af06dad1b3968401c1db8b1`  
		Last Modified: Thu, 25 Apr 2019 08:43:16 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee7d0278a45e62b2fea7230e6b6e37923e64a2b9b9c6daecd9d1f718459c9e1`  
		Last Modified: Thu, 25 Apr 2019 08:43:21 GMT  
		Size: 12.7 MB (12668614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e55c8d8ec7069be3ffa95de70bf5de46232d1d83018c4a695d828f1c4a72a`  
		Last Modified: Thu, 25 Apr 2019 08:43:15 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908f478eeec02350a55cbe4b4ce5d14a32821dac35678be8d9839d2889bb5f6b`  
		Last Modified: Thu, 25 Apr 2019 08:43:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934d6273a82c220428f5aaec6199ee5a0ed36af5625b45842d4749f29207b01`  
		Last Modified: Thu, 25 Apr 2019 08:43:14 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; 386

```console
$ docker pull consul@sha256:519cc1fa95b98990b191a52b6c93c294d00cee1467161545361aa523067183fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16433487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60ad7a44c441ecee8c0fe50d9a68a84d569ff6ae18389884426024a67e40791`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:59 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 26 Apr 2019 21:40:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:00 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:04 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:05 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:06 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:06 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:06 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:06 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:06 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:06 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:07 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bcdebf3baa840fe04f9fe0527077f503c854bd73f9344de9f420e07c62c89f`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39104a0ce825e2b9692c34c22f1e87451ce7c63926410f52ad165fd853595f07`  
		Last Modified: Fri, 26 Apr 2019 21:42:18 GMT  
		Size: 13.7 MB (13678091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68d93d2bbebee710da6fcd6d5ca6cf5eafb8350047cfae91183e86666e5736c`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877f12f926c427ea181492780a7206317e559c12160bcbf590a312edb39ad0ca`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11ed48373c041e5d279fb6d2fffa1f441d187ddd0ed5c5fd5a8179b4edcdcbb`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0.8`

```console
$ docker pull consul@sha256:682fdb45c6a9930c1dc4bd95a453c085b18903c8c47c0be9ea687651f30fa78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.0.8` - linux; amd64

```console
$ docker pull consul@sha256:562ce71b346ebd24a397f7362b69f6f396126d19c048f666b8d78e5b0f3f16be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16552429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3738c37e89fb3a1789b2003ce33caa02c4ceb7be5bb0175b792d0dbb0bc2b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:43 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 26 Apr 2019 21:40:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:47 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:49 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:49 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:49 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:49 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:49 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:50 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:50 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462979ee1dfd79b36892d6852d2c6683d18516734e11da364a44fbc075fb813`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c7d26b551331eaa19e126025ffb21ed59a250961e9fd6758e948c1cc541fa8`  
		Last Modified: Fri, 26 Apr 2019 21:41:57 GMT  
		Size: 13.8 MB (13792188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e532018bb32c2720a00ca2edd5e7828b78bf7b625f773d76913a29509808565`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2ee1094c4dcf93c68281ceae9a2701cbfcc3fa7620be524559dfe3b87693c`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd047d59266e3db02210a850e2063f5f1a395d9e27224b343d46ef7cb4941838`  
		Last Modified: Fri, 26 Apr 2019 21:41:54 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm variant v6

```console
$ docker pull consul@sha256:d292ae2bafc3427d03419172a27c5bc6db8f10bb49b6548108d19c462e247d4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15890199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3bda8e218ef76b140dd35abe0e19a6b3c03a834ddf4b863efaad6684fb51b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:24 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 26 Apr 2019 21:41:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:31 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:32 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:33 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:34 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:34 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:34 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:35 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:35 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:36 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858c8b359945a68081965ae91508122501fdb72282aba54209c7f14858543319`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41ef8f32b186212be3e9f116ddcbbe4be3ec70676ae8e967df6689a0db8b5b0`  
		Last Modified: Fri, 26 Apr 2019 21:43:05 GMT  
		Size: 13.3 MB (13343464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292b0eae50116b980056ccdb35a19ef25c46aec395ce3bd7ce8baacfff93eb4`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6093fb6661735737299c6bd5d54844c293ba79ee873c90de1df545ab2e9417d`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd103cdfb237e21e589b753fa2adf9dd32398a11c362a5ad827cc532a4722cf5`  
		Last Modified: Fri, 26 Apr 2019 21:43:00 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:6615c5872759880566ca489eae1cb6c90de3c86fc0da3d8ba3d05841a06c377a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14670835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896275ee72b415c3f91e104961eba34fa640c20f99e5d759c5600977cf06cc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:40:54 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 25 Apr 2019 08:40:55 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:41:04 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:41:25 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:41:27 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:41:30 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:41:30 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:41:31 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:41:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:41:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:41:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:41:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:41:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904199c58dd7fcb22c2926099f5c506b7a21d10a5af06dad1b3968401c1db8b1`  
		Last Modified: Thu, 25 Apr 2019 08:43:16 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee7d0278a45e62b2fea7230e6b6e37923e64a2b9b9c6daecd9d1f718459c9e1`  
		Last Modified: Thu, 25 Apr 2019 08:43:21 GMT  
		Size: 12.7 MB (12668614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e55c8d8ec7069be3ffa95de70bf5de46232d1d83018c4a695d828f1c4a72a`  
		Last Modified: Thu, 25 Apr 2019 08:43:15 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908f478eeec02350a55cbe4b4ce5d14a32821dac35678be8d9839d2889bb5f6b`  
		Last Modified: Thu, 25 Apr 2019 08:43:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934d6273a82c220428f5aaec6199ee5a0ed36af5625b45842d4749f29207b01`  
		Last Modified: Thu, 25 Apr 2019 08:43:14 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; 386

```console
$ docker pull consul@sha256:519cc1fa95b98990b191a52b6c93c294d00cee1467161545361aa523067183fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16433487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60ad7a44c441ecee8c0fe50d9a68a84d569ff6ae18389884426024a67e40791`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:59 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 26 Apr 2019 21:40:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:00 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:04 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:05 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:06 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:06 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:06 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:06 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:06 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:06 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:07 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bcdebf3baa840fe04f9fe0527077f503c854bd73f9344de9f420e07c62c89f`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39104a0ce825e2b9692c34c22f1e87451ce7c63926410f52ad165fd853595f07`  
		Last Modified: Fri, 26 Apr 2019 21:42:18 GMT  
		Size: 13.7 MB (13678091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68d93d2bbebee710da6fcd6d5ca6cf5eafb8350047cfae91183e86666e5736c`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877f12f926c427ea181492780a7206317e559c12160bcbf590a312edb39ad0ca`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11ed48373c041e5d279fb6d2fffa1f441d187ddd0ed5c5fd5a8179b4edcdcbb`  
		Last Modified: Fri, 26 Apr 2019 21:42:14 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1`

```console
$ docker pull consul@sha256:598d919bfbe5c9a32257ee009c479d14df59f8f57dc6c9159648f8ca4cc2d705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.1` - linux; amd64

```console
$ docker pull consul@sha256:db14981d437c022f5713b497d06206f721eba877ed49a955b930a1784ef6514e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18019513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ec9d46d7050d24119f16cb84cd734d4580f256ea545094067763ccef64a3c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:32 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:40:32 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:33 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:38 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:38 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:38 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:39 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:39 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:39 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77f1f4267cd2a7bcf3ef019b11209048f5089896568571b2bebc96ff9cb943`  
		Last Modified: Fri, 26 Apr 2019 21:41:46 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dd4350bbcced8e52de6f7230cc64555c8626e4b3973fe3117210174f1acf23`  
		Last Modified: Fri, 26 Apr 2019 21:41:49 GMT  
		Size: 15.3 MB (15259271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bcc48daa2d4745901049e66d85b9be5d6d5ccbec9d07b8b49587e4bd2f473a`  
		Last Modified: Fri, 26 Apr 2019 21:41:47 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c85585213e6dd5d7ce5e27f41d43a108a7ad20040c804d466bc26b5d733e2`  
		Last Modified: Fri, 26 Apr 2019 21:41:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afef69a187d9ebf7b966199c12978b5738f42312ca49cb2ad8b97fbfb8a19aac`  
		Last Modified: Fri, 26 Apr 2019 21:41:46 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:4305f0d6494aab3921f186c43094996ef98d887249df30f5221291008e41ea82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17354803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b1389fb657404964ce0fd875b2123db3b2e0172435d0d2995362a41b21567e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:09 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:41:09 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:10 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:16 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:17 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:18 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:19 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:19 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:21 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de5742241f86d466ef580147ed3c8813e4858c44259f886a27d6c7d4545b712`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f3dac174a5e320edca8afe21e562452c150c4d3c2247d7a0ff918a86502f8c`  
		Last Modified: Fri, 26 Apr 2019 21:42:55 GMT  
		Size: 14.8 MB (14808066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86cb999a044f4a9e2017db835abc3be06126abc05739f1b60502a532980a694`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3569ef6c5cf802a22afa3c53f33048295eed055f326629722fa8572609f67c`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f7ac3cf3c8afac7ad277fcb8b65683f3bdc47f0dc623e5fc344e2b04fed849`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b427b22467137fd738a37c2664d2543a3ed49e7d7275d3bdc7302d71fc06c60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17335747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aba0fb32050a90540dd6dd979cc06628fa300342195331dc1b9d2345fde3378`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:39 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:41:39 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:49 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:50 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:53 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:54 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:54 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:55 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:56 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:56 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fc66f186ef4241cdff0dfe6165a29122dcd47996bb68121a17493938f164fe`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267c9da21ae6a907a5fbec2e1a08e9ddf9d0427c3b204b2f1b9daa69b94ef8b`  
		Last Modified: Fri, 26 Apr 2019 21:44:12 GMT  
		Size: 14.6 MB (14643736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11438db62bc7b2b9ddfcb736a962f3a5abba530fe240612320d634a85e410a83`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d3f85f3d47418d8bddadc786a134929da102eaa39bffdfdb812b69b457239`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23751cd2b0a5e7fc8ab19f28c87aa9515bfaa3e3610d7cff0f3b5271d2de1c52`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; 386

```console
$ docker pull consul@sha256:1697a9eafa316afcfc0b83dd151abe26f62e9269e7153102acc8043ad6eaf52d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17904831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6efdf788884d71247c0c76c02300f5fb9fa123710588249e5ed43c1bae12f89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:49 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:40:49 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:50 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:53 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:54 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:55 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:55 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:55 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:56 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:56 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:56 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:56 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940abe65f8f2ccd9feb45d44119ff18badc38b2b6b95a47fd8d8a533538a882a`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93381b95424aa82e3833c6aa41dffb1f35363253ac45e04027918f7c7138be68`  
		Last Modified: Fri, 26 Apr 2019 21:42:10 GMT  
		Size: 15.1 MB (15149441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849ecadb3be1c249dba41f77ca2f86ae08692ad9b3ad540e0f11651ce17c0505`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877ab72689d478c60eadec1e6dcde2078af15eddc26137eba84399ccf8a26e7d`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf2180be439cac0805d1575affc2232d751e5c75b28678d03ec4e549e5ba68c`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1.1`

```console
$ docker pull consul@sha256:598d919bfbe5c9a32257ee009c479d14df59f8f57dc6c9159648f8ca4cc2d705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.1.1` - linux; amd64

```console
$ docker pull consul@sha256:db14981d437c022f5713b497d06206f721eba877ed49a955b930a1784ef6514e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18019513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ec9d46d7050d24119f16cb84cd734d4580f256ea545094067763ccef64a3c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:32 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:40:32 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:33 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:38 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:38 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:38 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:39 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:39 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:39 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77f1f4267cd2a7bcf3ef019b11209048f5089896568571b2bebc96ff9cb943`  
		Last Modified: Fri, 26 Apr 2019 21:41:46 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dd4350bbcced8e52de6f7230cc64555c8626e4b3973fe3117210174f1acf23`  
		Last Modified: Fri, 26 Apr 2019 21:41:49 GMT  
		Size: 15.3 MB (15259271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bcc48daa2d4745901049e66d85b9be5d6d5ccbec9d07b8b49587e4bd2f473a`  
		Last Modified: Fri, 26 Apr 2019 21:41:47 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c85585213e6dd5d7ce5e27f41d43a108a7ad20040c804d466bc26b5d733e2`  
		Last Modified: Fri, 26 Apr 2019 21:41:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afef69a187d9ebf7b966199c12978b5738f42312ca49cb2ad8b97fbfb8a19aac`  
		Last Modified: Fri, 26 Apr 2019 21:41:46 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:4305f0d6494aab3921f186c43094996ef98d887249df30f5221291008e41ea82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17354803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b1389fb657404964ce0fd875b2123db3b2e0172435d0d2995362a41b21567e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:09 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:41:09 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:10 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:16 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:17 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:18 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:19 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:19 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:21 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de5742241f86d466ef580147ed3c8813e4858c44259f886a27d6c7d4545b712`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f3dac174a5e320edca8afe21e562452c150c4d3c2247d7a0ff918a86502f8c`  
		Last Modified: Fri, 26 Apr 2019 21:42:55 GMT  
		Size: 14.8 MB (14808066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86cb999a044f4a9e2017db835abc3be06126abc05739f1b60502a532980a694`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3569ef6c5cf802a22afa3c53f33048295eed055f326629722fa8572609f67c`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f7ac3cf3c8afac7ad277fcb8b65683f3bdc47f0dc623e5fc344e2b04fed849`  
		Last Modified: Fri, 26 Apr 2019 21:42:49 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b427b22467137fd738a37c2664d2543a3ed49e7d7275d3bdc7302d71fc06c60e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17335747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aba0fb32050a90540dd6dd979cc06628fa300342195331dc1b9d2345fde3378`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:39 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:41:39 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:49 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:50 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:53 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:54 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:54 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:55 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:56 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:56 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fc66f186ef4241cdff0dfe6165a29122dcd47996bb68121a17493938f164fe`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267c9da21ae6a907a5fbec2e1a08e9ddf9d0427c3b204b2f1b9daa69b94ef8b`  
		Last Modified: Fri, 26 Apr 2019 21:44:12 GMT  
		Size: 14.6 MB (14643736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11438db62bc7b2b9ddfcb736a962f3a5abba530fe240612320d634a85e410a83`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d3f85f3d47418d8bddadc786a134929da102eaa39bffdfdb812b69b457239`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23751cd2b0a5e7fc8ab19f28c87aa9515bfaa3e3610d7cff0f3b5271d2de1c52`  
		Last Modified: Fri, 26 Apr 2019 21:44:05 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; 386

```console
$ docker pull consul@sha256:1697a9eafa316afcfc0b83dd151abe26f62e9269e7153102acc8043ad6eaf52d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17904831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6efdf788884d71247c0c76c02300f5fb9fa123710588249e5ed43c1bae12f89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:49 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 26 Apr 2019 21:40:49 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:50 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:53 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:54 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:55 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:55 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:55 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:56 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:56 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:56 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:56 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940abe65f8f2ccd9feb45d44119ff18badc38b2b6b95a47fd8d8a533538a882a`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93381b95424aa82e3833c6aa41dffb1f35363253ac45e04027918f7c7138be68`  
		Last Modified: Fri, 26 Apr 2019 21:42:10 GMT  
		Size: 15.1 MB (15149441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849ecadb3be1c249dba41f77ca2f86ae08692ad9b3ad540e0f11651ce17c0505`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877ab72689d478c60eadec1e6dcde2078af15eddc26137eba84399ccf8a26e7d`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf2180be439cac0805d1575affc2232d751e5c75b28678d03ec4e549e5ba68c`  
		Last Modified: Fri, 26 Apr 2019 21:42:07 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2`

```console
$ docker pull consul@sha256:a3e3ee685f0dc52b0e045e6ef3efeacfe7da1ea1cc76c8b3760db444c9c49d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2` - linux; amd64

```console
$ docker pull consul@sha256:8360dab582d14f99a291c8db697cf93d2771a8d9c84b914a8e1e8286175cd203
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28316551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2c8aa4bc50a6e55d7b9daf1c166792008e8c82d4ba31bf066e9d6d4b7efcaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:20 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:40:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:26 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:27 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:27 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:28 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:28 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:29 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3dbda012928d790739e4b7190c1038aa5d5f8e67647216a81cfce1b45a9b33`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaea6433858fc4c06cb650181cc720d391f313b42e7a23ee066a472ef37725f3`  
		Last Modified: Fri, 26 Apr 2019 21:41:40 GMT  
		Size: 25.6 MB (25556309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cd86cbcd9d6fb8dd9a02bd4c22c8663da20f74934ade1f7ff7aec62ffa5372`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d7c2d645f8c55165d424bd1a6def56bcdc67a6def8d5b4574d33f4e5a385b8`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b83a11fc1cf8ac9c498b2025a97c950229015c446a1b711df018492fa398a4`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; arm variant v6

```console
$ docker pull consul@sha256:dc5fd4063cce745f2852abec3b8dd7268f9a64372ebe1b414f8e3cf39ac00740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27309168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28fd62a32c1d9826536f9ce4d7e5a6e448222c70ee961240a7b45291f53c513f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:51 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:40:51 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:52 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:01 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:03 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:03 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:03 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:04 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:04 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:05 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213a9b251c10aa165261893cd8586b7a2442506b1d3202aabfd2c0ff811d0aa8`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246bca92b2820faca5723ba696dd3935816662488b0500c46d9dc8f52fe9435a`  
		Last Modified: Fri, 26 Apr 2019 21:42:44 GMT  
		Size: 24.8 MB (24762430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bddebe3931d303281392156912189bcadb72051ce17d620b72d0fc61d3a6329`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242289b7d4cb166371fe2a100e950ccc0a2815d557627a53be91c169aa691d35`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6612e301a9ebb537237bf3fa734633ad87264f8af395962ab3afe90fd04187e`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:bfcc009e267a18caffe2104e95122c20201684fa7d4d9116c56ef4576a91fca5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27106591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709442f8056deb5a1b3dbae1d83fd071239186ebffc96fab99c0199c696f3f4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:11 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:41:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:24 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:26 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:28 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:29 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:29 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:31 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:32 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:34 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9e7bd288c97f13f95f1a0fcb8314f03dacc106fd14cefa5092a95ba265fe75`  
		Last Modified: Fri, 26 Apr 2019 21:43:45 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0b6df0db50ad3ed0076e7d632d1a3cd8b4a6acdc92704965a1c42effb5a26e`  
		Last Modified: Fri, 26 Apr 2019 21:43:57 GMT  
		Size: 24.4 MB (24414578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6810b161a069d1121def9e7534746b7a488de26951bfb60ee27460ed9c7242`  
		Last Modified: Fri, 26 Apr 2019 21:43:46 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8834b7365d5e11fb9fec7230f67620101065e89e525ba659c7e455ca7dc55d`  
		Last Modified: Fri, 26 Apr 2019 21:43:46 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e56b9124d4560c4065eb6292d8a15b9a525c323d246cae6230b8a81ea49e30`  
		Last Modified: Fri, 26 Apr 2019 21:43:45 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; 386

```console
$ docker pull consul@sha256:55d47fe6423996d2bfaf6a0e11d251a1f09b11cc655eeb45dcda5a3ceccd3422
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28047390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae885ba48131dec19b8a3e706b00a81c463bd57e772ce632bb8dd8e3db41a29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:36 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:40:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:42 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:43 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:44 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:44 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:44 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:45 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:45 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:45 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a92ac565d5356f53bf0c26c8aac3519e678c4b76e19395e1ade84c18aaf7bd`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c12749c68fbdcfee6c22db2b1a95b9456a0232dadbef0959a05a2f49614ebf`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 25.3 MB (25291994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df4112e407329b49556c13f3eea761d0e341ea57327f979c60d9d3e7fed3ac`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1efcee35470363dac024c0bdbd68de1869421c0ac6bf72ccbb0347b716218fb`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caadb9c36af21bc9fba35873e053c924ded2b9a3434ce4cbda00e51fda6c4b6`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2.4`

```console
$ docker pull consul@sha256:a3e3ee685f0dc52b0e045e6ef3efeacfe7da1ea1cc76c8b3760db444c9c49d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2.4` - linux; amd64

```console
$ docker pull consul@sha256:8360dab582d14f99a291c8db697cf93d2771a8d9c84b914a8e1e8286175cd203
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28316551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2c8aa4bc50a6e55d7b9daf1c166792008e8c82d4ba31bf066e9d6d4b7efcaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:20 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:40:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:26 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:27 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:27 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:28 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:28 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:29 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3dbda012928d790739e4b7190c1038aa5d5f8e67647216a81cfce1b45a9b33`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaea6433858fc4c06cb650181cc720d391f313b42e7a23ee066a472ef37725f3`  
		Last Modified: Fri, 26 Apr 2019 21:41:40 GMT  
		Size: 25.6 MB (25556309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cd86cbcd9d6fb8dd9a02bd4c22c8663da20f74934ade1f7ff7aec62ffa5372`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d7c2d645f8c55165d424bd1a6def56bcdc67a6def8d5b4574d33f4e5a385b8`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b83a11fc1cf8ac9c498b2025a97c950229015c446a1b711df018492fa398a4`  
		Last Modified: Fri, 26 Apr 2019 21:41:34 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:dc5fd4063cce745f2852abec3b8dd7268f9a64372ebe1b414f8e3cf39ac00740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27309168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28fd62a32c1d9826536f9ce4d7e5a6e448222c70ee961240a7b45291f53c513f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:51 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:40:51 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:52 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:01 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:03 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:03 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:03 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:04 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:04 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:05 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213a9b251c10aa165261893cd8586b7a2442506b1d3202aabfd2c0ff811d0aa8`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246bca92b2820faca5723ba696dd3935816662488b0500c46d9dc8f52fe9435a`  
		Last Modified: Fri, 26 Apr 2019 21:42:44 GMT  
		Size: 24.8 MB (24762430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bddebe3931d303281392156912189bcadb72051ce17d620b72d0fc61d3a6329`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242289b7d4cb166371fe2a100e950ccc0a2815d557627a53be91c169aa691d35`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6612e301a9ebb537237bf3fa734633ad87264f8af395962ab3afe90fd04187e`  
		Last Modified: Fri, 26 Apr 2019 21:42:35 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:bfcc009e267a18caffe2104e95122c20201684fa7d4d9116c56ef4576a91fca5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27106591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709442f8056deb5a1b3dbae1d83fd071239186ebffc96fab99c0199c696f3f4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:41:11 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:41:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:41:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:41:24 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:41:26 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:41:28 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:29 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:29 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:31 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:32 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:34 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9e7bd288c97f13f95f1a0fcb8314f03dacc106fd14cefa5092a95ba265fe75`  
		Last Modified: Fri, 26 Apr 2019 21:43:45 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0b6df0db50ad3ed0076e7d632d1a3cd8b4a6acdc92704965a1c42effb5a26e`  
		Last Modified: Fri, 26 Apr 2019 21:43:57 GMT  
		Size: 24.4 MB (24414578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6810b161a069d1121def9e7534746b7a488de26951bfb60ee27460ed9c7242`  
		Last Modified: Fri, 26 Apr 2019 21:43:46 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8834b7365d5e11fb9fec7230f67620101065e89e525ba659c7e455ca7dc55d`  
		Last Modified: Fri, 26 Apr 2019 21:43:46 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e56b9124d4560c4065eb6292d8a15b9a525c323d246cae6230b8a81ea49e30`  
		Last Modified: Fri, 26 Apr 2019 21:43:45 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; 386

```console
$ docker pull consul@sha256:55d47fe6423996d2bfaf6a0e11d251a1f09b11cc655eeb45dcda5a3ceccd3422
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28047390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae885ba48131dec19b8a3e706b00a81c463bd57e772ce632bb8dd8e3db41a29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:36 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 26 Apr 2019 21:40:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:42 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:43 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:44 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:44 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:44 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:45 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:45 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:45 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a92ac565d5356f53bf0c26c8aac3519e678c4b76e19395e1ade84c18aaf7bd`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c12749c68fbdcfee6c22db2b1a95b9456a0232dadbef0959a05a2f49614ebf`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 25.3 MB (25291994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df4112e407329b49556c13f3eea761d0e341ea57327f979c60d9d3e7fed3ac`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1efcee35470363dac024c0bdbd68de1869421c0ac6bf72ccbb0347b716218fb`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caadb9c36af21bc9fba35873e053c924ded2b9a3434ce4cbda00e51fda6c4b6`  
		Last Modified: Fri, 26 Apr 2019 21:41:55 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.3`

```console
$ docker pull consul@sha256:ecd5948df7d01ea36d4795dc7bbdc4f298c5f7185eb86aa8cc79d3b665124f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.3` - linux; amd64

```console
$ docker pull consul@sha256:1fc760deb91d9f5ae044a21f85b67ae63c363f8e102866878409751dc5ed95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38521946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb2d8fd78cdd498d3b3dff8e573d24863ef4b8591619180062b1e0a8f901b29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:07 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:08 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:08 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:14 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:15 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:16 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:16 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccc7eb70e6e7966ad027151f0193c20258970f1eca487da2f784cc6572a1f5`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615cfdb83da13897143cb0f83163ba3832575ebdd78a855f0f67df377b5224b3`  
		Last Modified: Fri, 26 Apr 2019 21:41:31 GMT  
		Size: 35.8 MB (35761701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5b58a8dbd912c952a446ceb9dec906b09b1b2505dc21f2922348c454d0dfc9`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f05a86309e7fa36a123e8c0359401fbfb7b0c12d7a7b2c24f98ecd57ae1908`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ffcaa427d3ad2c1af976cc2ebdfe9289934bbcb26d3906f0e23ba3607e572b`  
		Last Modified: Fri, 26 Apr 2019 21:41:25 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3` - linux; arm variant v6

```console
$ docker pull consul@sha256:9bdbcb7a4dec012afd6aad75db46ab2e53526d2082638b1287e8d9dd40468d64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36362098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2220bd2c21569f4397b2a29f127450576af77be0c61018f1dfc54aaec23447a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:25 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:39 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:41 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:42 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:42 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:42 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:42 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:43 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:44 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb813c1d53c8965453e4bba587172bcafe58217cee26489725c7c1c397e16708`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86ba76b587a25263744af00d25b9f27991be6e32f629412e7e999c3d70e6c64`  
		Last Modified: Fri, 26 Apr 2019 21:42:29 GMT  
		Size: 33.8 MB (33815361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec56233d58475b4379374970508f9aafe413eb651c33d6adc039d19d653f7b51`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac21bcbb9c1639a085111efc51441b978d10b3f398e537945ddfe4d4a8350c`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b296b091514562f2a6a66af16ffb6b7162e75f8627e97d4686381bab37fa46`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:2a94e5bb4a4f3d5cf45893a076f138407acf93a13872d58a65193134bced8a22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36178778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4818b796af87a077564187a1448a84e6baba1460471d28e45271cc8a095ddaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:42 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:45 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:56 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:59 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:00 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:01 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:02 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:03 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cd15414013fd2a3b251784903c776a37fc521323516f675bc70b784898e97f`  
		Last Modified: Fri, 26 Apr 2019 21:43:26 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b490df259b2aee3fcc81290cf92fa8f4ef4f72a9bd86985041afb09573b0c5a`  
		Last Modified: Fri, 26 Apr 2019 21:43:37 GMT  
		Size: 33.5 MB (33486767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d0103e382fa3e94f8d0919faaad164a73b47e7c6dbfcf974eb7a0754b2dfd`  
		Last Modified: Fri, 26 Apr 2019 21:43:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26686f04d7e0592d3e475969de7a459facb25c14416a080af1fada0313539d8c`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70cb9858780b7e0c9d1a68b804cb21605b3910dc998c7eadf6b7d4e7e741a99`  
		Last Modified: Fri, 26 Apr 2019 21:43:26 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3` - linux; 386

```console
$ docker pull consul@sha256:73ead0d863502890eedad3d2a460e8083fb0d1c621df9340776a7bdba0bc22f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37698101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3930726d44c2dcd272c12f6e679a24c49c5d267ff5bccf660f52f616163b04e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:23 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:24 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:30 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:31 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:32 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:32 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:32 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140b621a682b35e3f7489e8dfe8f132c5104b1ef3c3c5835cc1cb318dbb6819`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da178192a0023566e1e7963fd69a842f1e8d1bb98d4f0012950a5116d357da55`  
		Last Modified: Fri, 26 Apr 2019 21:41:47 GMT  
		Size: 34.9 MB (34942706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff861cfa146722451aa75c98c3e3dda8cb80c1128f66814ca944b1880ac10db`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b014f47647a9a275853c5f9e72ab9db928a2363d53c2777f9ec994a06435f0c`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e21d17f9526a2b865ea917c2ac1d79fabb9bf3f07b761bebc541fb6ba4166e`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.3.1`

```console
$ docker pull consul@sha256:ecd5948df7d01ea36d4795dc7bbdc4f298c5f7185eb86aa8cc79d3b665124f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.3.1` - linux; amd64

```console
$ docker pull consul@sha256:1fc760deb91d9f5ae044a21f85b67ae63c363f8e102866878409751dc5ed95a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38521946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb2d8fd78cdd498d3b3dff8e573d24863ef4b8591619180062b1e0a8f901b29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:07 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:08 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:08 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:14 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:15 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:16 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:16 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeccc7eb70e6e7966ad027151f0193c20258970f1eca487da2f784cc6572a1f5`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615cfdb83da13897143cb0f83163ba3832575ebdd78a855f0f67df377b5224b3`  
		Last Modified: Fri, 26 Apr 2019 21:41:31 GMT  
		Size: 35.8 MB (35761701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5b58a8dbd912c952a446ceb9dec906b09b1b2505dc21f2922348c454d0dfc9`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f05a86309e7fa36a123e8c0359401fbfb7b0c12d7a7b2c24f98ecd57ae1908`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ffcaa427d3ad2c1af976cc2ebdfe9289934bbcb26d3906f0e23ba3607e572b`  
		Last Modified: Fri, 26 Apr 2019 21:41:25 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:9bdbcb7a4dec012afd6aad75db46ab2e53526d2082638b1287e8d9dd40468d64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36362098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2220bd2c21569f4397b2a29f127450576af77be0c61018f1dfc54aaec23447a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:25 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:39 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:40 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:41 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:42 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:42 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:42 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:42 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:43 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:44 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb813c1d53c8965453e4bba587172bcafe58217cee26489725c7c1c397e16708`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86ba76b587a25263744af00d25b9f27991be6e32f629412e7e999c3d70e6c64`  
		Last Modified: Fri, 26 Apr 2019 21:42:29 GMT  
		Size: 33.8 MB (33815361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec56233d58475b4379374970508f9aafe413eb651c33d6adc039d19d653f7b51`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac21bcbb9c1639a085111efc51441b978d10b3f398e537945ddfe4d4a8350c`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b296b091514562f2a6a66af16ffb6b7162e75f8627e97d4686381bab37fa46`  
		Last Modified: Fri, 26 Apr 2019 21:42:20 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:2a94e5bb4a4f3d5cf45893a076f138407acf93a13872d58a65193134bced8a22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36178778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4818b796af87a077564187a1448a84e6baba1460471d28e45271cc8a095ddaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:42 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:45 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:56 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:59 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:41:00 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:41:01 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:41:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:41:02 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:41:03 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:41:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:41:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cd15414013fd2a3b251784903c776a37fc521323516f675bc70b784898e97f`  
		Last Modified: Fri, 26 Apr 2019 21:43:26 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b490df259b2aee3fcc81290cf92fa8f4ef4f72a9bd86985041afb09573b0c5a`  
		Last Modified: Fri, 26 Apr 2019 21:43:37 GMT  
		Size: 33.5 MB (33486767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d0103e382fa3e94f8d0919faaad164a73b47e7c6dbfcf974eb7a0754b2dfd`  
		Last Modified: Fri, 26 Apr 2019 21:43:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26686f04d7e0592d3e475969de7a459facb25c14416a080af1fada0313539d8c`  
		Last Modified: Fri, 26 Apr 2019 21:42:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70cb9858780b7e0c9d1a68b804cb21605b3910dc998c7eadf6b7d4e7e741a99`  
		Last Modified: Fri, 26 Apr 2019 21:43:26 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.1` - linux; 386

```console
$ docker pull consul@sha256:73ead0d863502890eedad3d2a460e8083fb0d1c621df9340776a7bdba0bc22f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37698101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3930726d44c2dcd272c12f6e679a24c49c5d267ff5bccf660f52f616163b04e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:23 GMT
ENV CONSUL_VERSION=1.3.1
# Fri, 26 Apr 2019 21:40:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:24 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:30 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:31 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:32 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:32 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:32 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0140b621a682b35e3f7489e8dfe8f132c5104b1ef3c3c5835cc1cb318dbb6819`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da178192a0023566e1e7963fd69a842f1e8d1bb98d4f0012950a5116d357da55`  
		Last Modified: Fri, 26 Apr 2019 21:41:47 GMT  
		Size: 34.9 MB (34942706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff861cfa146722451aa75c98c3e3dda8cb80c1128f66814ca944b1880ac10db`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b014f47647a9a275853c5f9e72ab9db928a2363d53c2777f9ec994a06435f0c`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e21d17f9526a2b865ea917c2ac1d79fabb9bf3f07b761bebc541fb6ba4166e`  
		Last Modified: Fri, 26 Apr 2019 21:41:41 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4`

```console
$ docker pull consul@sha256:bce60e9bf3e5bbbb943b13b870776354430eb19f83d9579d8a6d05f2ea69bccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4` - linux; amd64

```console
$ docker pull consul@sha256:d7d11532ba6ad96715ad1058b60a0b137be7940313ab65352b1e400cb99a0694
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39146111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c997447125031923539648cce2ad3bb1df4ca59417635b922217ae8338037d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:39:56 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:39:56 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:39:56 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:01 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:02 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:03 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:03 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3d1f90fc600f9477b3847f0764a20907722592f55d7fca5ed0ac07d8d6a261`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a756372895b248d40ad39c0eedea63e86c8b11802b3b07bac5228dbc5dfc8f`  
		Last Modified: Fri, 26 Apr 2019 21:41:18 GMT  
		Size: 36.4 MB (36385870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54efc599d7c786ff89bf087b3404b9dae526ea11af694cc535d00e6ee64def78`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d2c234fe14bb6a648482266c6f100234065b735642e86c6ed1cb95be7fb90f`  
		Last Modified: Fri, 26 Apr 2019 21:41:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf8018e609a64bbdd130afb5b0e91b1eb417a801883a3bc3257ca68ca06977a`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:f4d46f9a17bc0f1a86b8ec96ae8983c1a61f975d6ab4f6db0dcaf06c3c3ef55a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36941134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6b347c48b6e016475aaa9e6607e746ff08175b9bb419892fddcbbf30862042`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:04 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:05 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:13 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:15 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:17 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:17 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:18 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db36081f6b97f213cf82a3ba5c283095459e972ebe60849cd772005fb11db7f2`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a59f1b6dedcd4241e594785512d8f025b7d1ced43c81127849bb177eae2edb`  
		Last Modified: Fri, 26 Apr 2019 21:42:13 GMT  
		Size: 34.4 MB (34394397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f829e08cef0d8ba1389464f360977c2646425c3dd8614fc259aae2801585b0d`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f05a86309e7fa36a123e8c0359401fbfb7b0c12d7a7b2c24f98ecd57ae1908`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e9c9d96e187537c67f93ac3ecdefc7032a06f98ecdc71fcfd94dc202816957`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:07d5be3515254bba521faf7a0cd85ef9dd4a12d070cc9e8aebce12b1c2578b53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36758092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0b9d5ae7ac47b66662abc7393c0a2944da86d5ab4bc5e66a4e720894812215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:07 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:07 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:09 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:23 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:25 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:27 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:27 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:30 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a86cdada4c23a373b139a4b301358231f8231d02712c446d7ebad90bc87f2f`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726fd2a6e45bc0e58e582bfa6d63e1dcc043c4f9c624042bb532b1ab4c0e7858`  
		Last Modified: Fri, 26 Apr 2019 21:43:14 GMT  
		Size: 34.1 MB (34066079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbec09dfde152df059126168c1770001a0216809267bf3eb0aebd896f3b63e`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491957a5d104364d2879b5b439365bdfe02e4364e9b654f62bc6cfc2b8ba999d`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4108c14f1fc3d07ca9ba1dd64db76f36109f3ea0e0ccd96c2a6056276d9d32c`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; 386

```console
$ docker pull consul@sha256:cc3b9b9292a5a93c47200407d14eabc1af67cc280fc0fdfc13f736f4a4bd5818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38312326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc068268d1eefd9751cd02662c45bcedae6537dfcacca4e1e20804968d8fb8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:10 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:10 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:17 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:19 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c10f2f0e330d759a4bd2dfb5cfbaafb44ba501aec469e5e797da0ceb8ac40`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5486aa29c7409d2660e13f23533a4f3fc81b1c66a06027db4621ca662e62df52`  
		Last Modified: Fri, 26 Apr 2019 21:41:36 GMT  
		Size: 35.6 MB (35556933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859e0d23cb3550c97e9e57996a601e22f70a0d786f97ac29e902d86ae7892c1a`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e825a95a0f20550790b95d96c70d7e98c5546196d3f11f62cc04a27533b73`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac66ff81eeb5a756ad6c82baa6376928d98391ef6f045196f67802463b85cf15`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4.4`

```console
$ docker pull consul@sha256:bce60e9bf3e5bbbb943b13b870776354430eb19f83d9579d8a6d05f2ea69bccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4.4` - linux; amd64

```console
$ docker pull consul@sha256:d7d11532ba6ad96715ad1058b60a0b137be7940313ab65352b1e400cb99a0694
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39146111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c997447125031923539648cce2ad3bb1df4ca59417635b922217ae8338037d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:39:56 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:39:56 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:39:56 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:01 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:02 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:03 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:03 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3d1f90fc600f9477b3847f0764a20907722592f55d7fca5ed0ac07d8d6a261`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a756372895b248d40ad39c0eedea63e86c8b11802b3b07bac5228dbc5dfc8f`  
		Last Modified: Fri, 26 Apr 2019 21:41:18 GMT  
		Size: 36.4 MB (36385870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54efc599d7c786ff89bf087b3404b9dae526ea11af694cc535d00e6ee64def78`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d2c234fe14bb6a648482266c6f100234065b735642e86c6ed1cb95be7fb90f`  
		Last Modified: Fri, 26 Apr 2019 21:41:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf8018e609a64bbdd130afb5b0e91b1eb417a801883a3bc3257ca68ca06977a`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:f4d46f9a17bc0f1a86b8ec96ae8983c1a61f975d6ab4f6db0dcaf06c3c3ef55a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36941134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6b347c48b6e016475aaa9e6607e746ff08175b9bb419892fddcbbf30862042`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:04 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:05 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:13 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:15 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:17 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:17 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:18 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db36081f6b97f213cf82a3ba5c283095459e972ebe60849cd772005fb11db7f2`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a59f1b6dedcd4241e594785512d8f025b7d1ced43c81127849bb177eae2edb`  
		Last Modified: Fri, 26 Apr 2019 21:42:13 GMT  
		Size: 34.4 MB (34394397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f829e08cef0d8ba1389464f360977c2646425c3dd8614fc259aae2801585b0d`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f05a86309e7fa36a123e8c0359401fbfb7b0c12d7a7b2c24f98ecd57ae1908`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e9c9d96e187537c67f93ac3ecdefc7032a06f98ecdc71fcfd94dc202816957`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:07d5be3515254bba521faf7a0cd85ef9dd4a12d070cc9e8aebce12b1c2578b53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36758092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0b9d5ae7ac47b66662abc7393c0a2944da86d5ab4bc5e66a4e720894812215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:07 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:07 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:09 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:23 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:25 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:27 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:27 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:30 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a86cdada4c23a373b139a4b301358231f8231d02712c446d7ebad90bc87f2f`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726fd2a6e45bc0e58e582bfa6d63e1dcc043c4f9c624042bb532b1ab4c0e7858`  
		Last Modified: Fri, 26 Apr 2019 21:43:14 GMT  
		Size: 34.1 MB (34066079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbec09dfde152df059126168c1770001a0216809267bf3eb0aebd896f3b63e`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491957a5d104364d2879b5b439365bdfe02e4364e9b654f62bc6cfc2b8ba999d`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4108c14f1fc3d07ca9ba1dd64db76f36109f3ea0e0ccd96c2a6056276d9d32c`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.4` - linux; 386

```console
$ docker pull consul@sha256:cc3b9b9292a5a93c47200407d14eabc1af67cc280fc0fdfc13f736f4a4bd5818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38312326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc068268d1eefd9751cd02662c45bcedae6537dfcacca4e1e20804968d8fb8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:10 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:10 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:17 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:19 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c10f2f0e330d759a4bd2dfb5cfbaafb44ba501aec469e5e797da0ceb8ac40`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5486aa29c7409d2660e13f23533a4f3fc81b1c66a06027db4621ca662e62df52`  
		Last Modified: Fri, 26 Apr 2019 21:41:36 GMT  
		Size: 35.6 MB (35556933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859e0d23cb3550c97e9e57996a601e22f70a0d786f97ac29e902d86ae7892c1a`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e825a95a0f20550790b95d96c70d7e98c5546196d3f11f62cc04a27533b73`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac66ff81eeb5a756ad6c82baa6376928d98391ef6f045196f67802463b85cf15`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.5`

**does not exist** (yet?)

## `consul:1.5.0`

**does not exist** (yet?)

## `consul:latest`

```console
$ docker pull consul@sha256:bce60e9bf3e5bbbb943b13b870776354430eb19f83d9579d8a6d05f2ea69bccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:d7d11532ba6ad96715ad1058b60a0b137be7940313ab65352b1e400cb99a0694
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39146111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c997447125031923539648cce2ad3bb1df4ca59417635b922217ae8338037d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:39:56 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:39:56 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:39:56 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:01 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:02 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:03 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:03 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3d1f90fc600f9477b3847f0764a20907722592f55d7fca5ed0ac07d8d6a261`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a756372895b248d40ad39c0eedea63e86c8b11802b3b07bac5228dbc5dfc8f`  
		Last Modified: Fri, 26 Apr 2019 21:41:18 GMT  
		Size: 36.4 MB (36385870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54efc599d7c786ff89bf087b3404b9dae526ea11af694cc535d00e6ee64def78`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d2c234fe14bb6a648482266c6f100234065b735642e86c6ed1cb95be7fb90f`  
		Last Modified: Fri, 26 Apr 2019 21:41:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf8018e609a64bbdd130afb5b0e91b1eb417a801883a3bc3257ca68ca06977a`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:f4d46f9a17bc0f1a86b8ec96ae8983c1a61f975d6ab4f6db0dcaf06c3c3ef55a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36941134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6b347c48b6e016475aaa9e6607e746ff08175b9bb419892fddcbbf30862042`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:04 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:05 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:13 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:15 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:17 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:17 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:18 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db36081f6b97f213cf82a3ba5c283095459e972ebe60849cd772005fb11db7f2`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a59f1b6dedcd4241e594785512d8f025b7d1ced43c81127849bb177eae2edb`  
		Last Modified: Fri, 26 Apr 2019 21:42:13 GMT  
		Size: 34.4 MB (34394397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f829e08cef0d8ba1389464f360977c2646425c3dd8614fc259aae2801585b0d`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f05a86309e7fa36a123e8c0359401fbfb7b0c12d7a7b2c24f98ecd57ae1908`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e9c9d96e187537c67f93ac3ecdefc7032a06f98ecdc71fcfd94dc202816957`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:07d5be3515254bba521faf7a0cd85ef9dd4a12d070cc9e8aebce12b1c2578b53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36758092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0b9d5ae7ac47b66662abc7393c0a2944da86d5ab4bc5e66a4e720894812215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:07 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:07 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:09 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:23 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:25 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:27 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:27 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:30 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a86cdada4c23a373b139a4b301358231f8231d02712c446d7ebad90bc87f2f`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726fd2a6e45bc0e58e582bfa6d63e1dcc043c4f9c624042bb532b1ab4c0e7858`  
		Last Modified: Fri, 26 Apr 2019 21:43:14 GMT  
		Size: 34.1 MB (34066079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbec09dfde152df059126168c1770001a0216809267bf3eb0aebd896f3b63e`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491957a5d104364d2879b5b439365bdfe02e4364e9b654f62bc6cfc2b8ba999d`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4108c14f1fc3d07ca9ba1dd64db76f36109f3ea0e0ccd96c2a6056276d9d32c`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:cc3b9b9292a5a93c47200407d14eabc1af67cc280fc0fdfc13f736f4a4bd5818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38312326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc068268d1eefd9751cd02662c45bcedae6537dfcacca4e1e20804968d8fb8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:10 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:10 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:17 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:19 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c10f2f0e330d759a4bd2dfb5cfbaafb44ba501aec469e5e797da0ceb8ac40`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5486aa29c7409d2660e13f23533a4f3fc81b1c66a06027db4621ca662e62df52`  
		Last Modified: Fri, 26 Apr 2019 21:41:36 GMT  
		Size: 35.6 MB (35556933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859e0d23cb3550c97e9e57996a601e22f70a0d786f97ac29e902d86ae7892c1a`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e825a95a0f20550790b95d96c70d7e98c5546196d3f11f62cc04a27533b73`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac66ff81eeb5a756ad6c82baa6376928d98391ef6f045196f67802463b85cf15`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
