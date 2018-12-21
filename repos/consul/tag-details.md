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
$ docker pull consul@sha256:f254002c237d325218a6097f97c2ca116af8a5e23580ebc508c6266f15345461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:0.9.4` - linux; amd64

```console
$ docker pull consul@sha256:63cd9a7ef64817048b38d15d79b0a0440832c3ddc87d92af27a026673a2e3f5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13370078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cde50961f9bcaa9aa64463ca2ff8d60482b7e798d62027ffd1615be57f8522a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:49:42 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 00:49:42 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 21 Dec 2018 00:49:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 00:49:43 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 00:49:48 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 00:49:49 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 00:49:50 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 00:49:50 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 00:49:50 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 00:49:50 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 00:49:51 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 00:49:51 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:49:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:49:51 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd91ce949c43009f689207acc6215c2c084a6138916c67dd4a41c34b76e8b91a`  
		Last Modified: Fri, 21 Dec 2018 00:51:05 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ec266c38f687e2a5d95d96772dfd7f55aacd3ca6be17d32f0ef2b93e2c6c1e`  
		Last Modified: Fri, 21 Dec 2018 00:51:09 GMT  
		Size: 11.3 MB (11259697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386c1ff40daa98e79a575c72e9629001cb02739dc3554b978a5218d1edb5695`  
		Last Modified: Fri, 21 Dec 2018 00:51:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac79559eaa15a26833a715c49d73bfef91707d69f2dab237d4de9d40a6ac743`  
		Last Modified: Fri, 21 Dec 2018 00:51:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f199cfae95b791bb49231f07abca9573bafcf20195f6c3290827d3a9085400d9`  
		Last Modified: Fri, 21 Dec 2018 00:51:05 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:ad7dc94f69ab8491031c45b5014ff0bac38113355ba3e749bb584dcad359e1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12718645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f9848555a1a5333d848108b981acdbcc81ca6b57fcfed432e891c1ac80ead8`
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
# Fri, 21 Dec 2018 09:20:04 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 21 Dec 2018 09:20:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 09:20:06 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 09:20:13 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 09:20:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 09:20:15 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:20:16 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 09:20:16 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 09:20:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 09:20:17 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 09:20:17 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 09:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:20:18 GMT
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
	-	`sha256:ff4355489c2c7277f31ebfade5a375ded6131b115de6d87a80d72ee3e50ae60e`  
		Last Modified: Fri, 21 Dec 2018 09:21:44 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2777261bb0b32344d33d0fa54da0049c36154178ce4eb109d3167fbd8e5d54c`  
		Last Modified: Fri, 21 Dec 2018 09:21:48 GMT  
		Size: 10.7 MB (10664677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064a5b99e941bf3da1258b3bf5d05711b5c4ef5a850729a8a65498d8afd7afbb`  
		Last Modified: Fri, 21 Dec 2018 09:21:44 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30998174b83c9cf19297c6b3afa3646fdf212e972b067cd8b6680af64a7d88`  
		Last Modified: Fri, 21 Dec 2018 09:21:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480bfba80107ce6840a1c52b400972d1abb4337d63f9d46b5e04ddf8cd7cb3d3`  
		Last Modified: Fri, 21 Dec 2018 09:21:44 GMT  
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

### `consul:0.9.4` - linux; 386

```console
$ docker pull consul@sha256:2b3c1a4995020dcd46e90cfddb4c98cf60e735ff76bed926c861529b9f9bcc47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13025356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d899e1d694dea554d8f6df513d75697a11c7a29bc7da0c84c601c7c7169dbc`
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
# Thu, 20 Dec 2018 11:38:25 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 20 Dec 2018 11:38:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 11:38:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 11:38:31 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 11:38:32 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 11:38:33 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 11:38:33 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 11:38:33 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 11:38:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 11:38:33 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 11:38:34 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 11:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 11:38:34 GMT
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
	-	`sha256:496ac3fefccf20993035131bb3c6577cdc9b284b90ded5dd3f49a7a476074e50`  
		Last Modified: Thu, 20 Dec 2018 11:39:24 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9dfb31319973bb502f6fd5ad0928a8029fa248ef5ec45480b3230f3acc15cf`  
		Last Modified: Thu, 20 Dec 2018 11:39:26 GMT  
		Size: 10.9 MB (10852934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19422e8c2884dfada49b126cdbde1dbf491e03878112927fbee5923d70deca2f`  
		Last Modified: Thu, 20 Dec 2018 11:39:24 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073109fcfb82b2d5006e6a75f660e79d72333856348e4502463ed0f9120fc6dc`  
		Last Modified: Thu, 20 Dec 2018 11:39:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f28090ee06b6db060d0ce63a1c4f3eae99af94e225654cbdd1ebcbe70ac482`  
		Last Modified: Thu, 20 Dec 2018 11:39:24 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0.8`

```console
$ docker pull consul@sha256:2f442c9f838911baf3d9e906a7934d985a294aff4781c0ea8d64189668056181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.0.8` - linux; amd64

```console
$ docker pull consul@sha256:fe499b74f3f220e10adb60defe87036cf85ba5a1ebd8975909630dc96436b8bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15384751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7751941c13994240bcc2b6c991b266a4d4bb5085a39c51296b925f49dceb8be1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:49:42 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 00:49:54 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 21 Dec 2018 00:49:54 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 00:49:55 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 00:50:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 00:50:01 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 00:50:02 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 00:50:02 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 00:50:02 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 00:50:02 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 00:50:03 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 00:50:03 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:50:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:50:03 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6c7d87573728c8d4d4c1583f4cf808f53a1f6416946fb858164d95ffd1956e`  
		Last Modified: Fri, 21 Dec 2018 00:51:13 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6c080b722eab5a2c802a2bce49ff64bf22598ce39dd5a400bb11ff5610e823`  
		Last Modified: Fri, 21 Dec 2018 00:51:16 GMT  
		Size: 13.3 MB (13274373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593a6e311371587b685f6bc51a5f0bf64d409783b543e94329d57047f49ee7fe`  
		Last Modified: Fri, 21 Dec 2018 00:51:12 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c93c2b6958351f5eb8d43ffaf0eebbb2944476b5c73a8679a5c85e0683efeb8`  
		Last Modified: Fri, 21 Dec 2018 00:51:12 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd93687f368c499368b57fe5ae26654a9dfa4aac1c2d2548766caf02b856b95`  
		Last Modified: Fri, 21 Dec 2018 00:51:14 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm variant v6

```console
$ docker pull consul@sha256:5de274f7a155a558769b742813e41687e61d7819dffed26899384771417b1516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14901178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d6e53fa59581f06cbb97ade8af049e7b9298b41b04a1295853d9730c2ee1e5`
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
# Fri, 21 Dec 2018 09:20:24 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 21 Dec 2018 09:20:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 09:20:25 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 09:20:32 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 09:20:34 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 09:20:35 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:20:35 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 09:20:35 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 09:20:36 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 09:20:36 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 09:20:36 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 09:20:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:20:37 GMT
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
	-	`sha256:71780698b48e09a77d2e2bd70227292c837e1c71c5cc3ccafe21c624addb3616`  
		Last Modified: Fri, 21 Dec 2018 09:21:52 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232f9e8ca31f3dffa22e037ad7863857e9a91be7c233f25876fd6c97e64bd3ce`  
		Last Modified: Fri, 21 Dec 2018 09:21:56 GMT  
		Size: 12.8 MB (12847203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ecff73d2858848e7cc948c6234b432d8f451710e66c7beed90bc69f6c9deb9`  
		Last Modified: Fri, 21 Dec 2018 09:21:52 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a76fd19e4cfcc767015bde010acc75a4754666c91a9ee75e13afa23164e809`  
		Last Modified: Fri, 21 Dec 2018 09:21:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfd1a7ecb0183519c134022035503eacdcc9707fd1437f8de5673d4e4d43952`  
		Last Modified: Fri, 21 Dec 2018 09:21:54 GMT  
		Size: 1.7 KB (1684 bytes)  
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

### `consul:1.0.8` - linux; 386

```console
$ docker pull consul@sha256:e3bfc232c916659d071cd48ca75df9331e4e92092ea2c6b9597ada3e1ca3fe3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15247514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4eb5d6c25d1886fc6e04f82c5caea3dc1277050d180031dd6e07afe98f60681`
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
# Thu, 20 Dec 2018 11:38:37 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 20 Dec 2018 11:38:37 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 11:38:38 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 11:38:44 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 11:38:44 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 11:38:45 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 11:38:45 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 11:38:45 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 11:38:46 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 11:38:46 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 11:38:46 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 11:38:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 11:38:46 GMT
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
	-	`sha256:c7c9558bfc5e3f6234da548dc44a5e7cde6f660db74a7cd25e8759fff7cf4ce1`  
		Last Modified: Thu, 20 Dec 2018 11:39:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9fef806fe58d50fed436ee74d9f0b8535a81cda2f1522c8e68b036763d68b3`  
		Last Modified: Thu, 20 Dec 2018 11:39:32 GMT  
		Size: 13.1 MB (13075096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92c7b90d78938d9ee1b0cd638eeb9024f7e001c326b98ba802d941c7f108304`  
		Last Modified: Thu, 20 Dec 2018 11:39:29 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac40feb46f95951dbc5b246019cf538847586db3607ca841169a99f22591c40`  
		Last Modified: Thu, 20 Dec 2018 11:39:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa81478a88b52c523408d3c24d54cb8e41bdeeeabfdc640e6008dd6efbfab28`  
		Last Modified: Thu, 20 Dec 2018 11:39:29 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1.1`

```console
$ docker pull consul@sha256:a1e5bf177a77832ec0e37ad74f33d129eb402b8e8194253406ff306f5e32d3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.1.1` - linux; amd64

```console
$ docker pull consul@sha256:5d67c0ca3df86098046f7a50a5730d1256b85801cda8d98a6f09672b615b15f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16850710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea2f2d5ce4acddd8e2086b8a82d36f74a9cb1e6f903bc67e137125d00a942ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:49:42 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 00:50:07 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 21 Dec 2018 00:50:08 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 00:50:09 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 00:50:16 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 00:50:17 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 00:50:18 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 00:50:18 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 00:50:18 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 00:50:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 00:50:19 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 00:50:19 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:50:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b09f058b1eee56b2af5914e5395418aea276397492f58554134dbe28e48f31`  
		Last Modified: Fri, 21 Dec 2018 00:51:19 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9467265f5be1ae3be5444bd64aa8360ea705f38ba5f1940a5a1bd91bb7822205`  
		Last Modified: Fri, 21 Dec 2018 00:51:23 GMT  
		Size: 14.7 MB (14740334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f311beadda73934e9afe57c054d4759d7c4acfc659684b7d08b19d5d9284bd40`  
		Last Modified: Fri, 21 Dec 2018 00:51:19 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26a5a4ee56032500b6ae69b2b969fda3459fc26c8df839671c2b2e7dba8b36d`  
		Last Modified: Fri, 21 Dec 2018 00:51:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de07f6b44f1df17e219294efa2a75fa59684dd2071e74eda121312c13ab406f`  
		Last Modified: Fri, 21 Dec 2018 00:51:19 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:38aa4247fb6841e131e67f4cb7b8a4c996a620b5a06bd5a10ad5e4cf17a9104d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16364684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a64715dc923181b2f288594a7f7c1c39f0f25136fe41fe658449e552c50a54`
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
# Fri, 21 Dec 2018 09:20:41 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 21 Dec 2018 09:20:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 09:20:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 09:20:49 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 09:20:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 09:20:52 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:20:52 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 09:20:53 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 09:20:53 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 09:20:53 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 09:20:54 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 09:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:20:55 GMT
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
	-	`sha256:2c0a11e896936be1d7f25b88427257538128e8701b484a3004167221658e5b6d`  
		Last Modified: Fri, 21 Dec 2018 09:22:00 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b32fb4d81f5e348331cafcee332555ee455552787af573c343ba4945a6a63c`  
		Last Modified: Fri, 21 Dec 2018 09:22:06 GMT  
		Size: 14.3 MB (14310716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d3a6dc257ade78152dc60085b2935574c20ee09b79145ae4d3b40cab457f4f`  
		Last Modified: Fri, 21 Dec 2018 09:22:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab04208f9bf390e615b282f6cdc5c283f66a7d87460009a8f411de2a5f85e28`  
		Last Modified: Fri, 21 Dec 2018 09:22:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f755a75e241e461806e4ec030c05608a6ea3537c492c88635a6b82785b5eed2`  
		Last Modified: Fri, 21 Dec 2018 09:22:00 GMT  
		Size: 1.7 KB (1682 bytes)  
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

### `consul:1.1.1` - linux; 386

```console
$ docker pull consul@sha256:bc4b2d002004e40b649ab845b1ffeb413880fcd15186999347239b8dc5b31490
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16719632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785cfc715c2ba33e8d9b9e5f7e48b1153206dbcc34bdd77ca7685106630253de`
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
# Thu, 20 Dec 2018 11:38:50 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 20 Dec 2018 11:38:50 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 11:38:51 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 11:38:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 11:38:57 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 11:38:58 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 11:38:58 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 11:38:58 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 11:38:59 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 11:38:59 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 11:38:59 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 11:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 11:38:59 GMT
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
	-	`sha256:5aec4acbd6bbcdc4c412b5ee94af6135b0516265bfb1cc7de1c3cd2fb161ce2e`  
		Last Modified: Thu, 20 Dec 2018 11:39:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a30a14374a37fecc91139d66b9abc0debce4e7e1ea50daa0fe36f063cdc5f4`  
		Last Modified: Thu, 20 Dec 2018 11:39:38 GMT  
		Size: 14.5 MB (14547210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bec3d7c186ec24524775ab3a921e84bee4ee79b0b467c2a42c87f26632762fa`  
		Last Modified: Thu, 20 Dec 2018 11:39:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f92c37437d6c25b39de5afe2d1c3de813b6f3fa0d01a6c2971cb722238881df`  
		Last Modified: Thu, 20 Dec 2018 11:39:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b94ddc6c4151683dc182ceeb78214ec4918b4452811d5f2d8949b62d79877b`  
		Last Modified: Thu, 20 Dec 2018 11:39:35 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2.4`

```console
$ docker pull consul@sha256:a9537e02a26ec165f97cc61452babc3785bad617143c3e42df0cc7643f4c913d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2.4` - linux; amd64

```console
$ docker pull consul@sha256:01948702ade388a2a29994ddd3a2c7eeeead7a871ff6c85cf6caed858f3317f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27148971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d8bceaba6643c008a81cd134a8f5eb6593ee1999d9b1eb975ace7256a55a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:49:42 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 00:50:25 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 21 Dec 2018 00:50:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 00:50:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 00:50:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 00:50:36 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 00:50:37 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 00:50:37 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 00:50:37 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 00:50:37 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 00:50:38 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 00:50:38 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:50:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:50:38 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e702c26c468e1196a53be2e7f48ae3c776c8837303371a0422c1c206627de7`  
		Last Modified: Fri, 21 Dec 2018 00:51:26 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e844b6419e40829f5db202a684e9d393a30bb567b6a85b8db07d331a440c25e8`  
		Last Modified: Fri, 21 Dec 2018 00:51:33 GMT  
		Size: 25.0 MB (25038591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525a9ee3f6ff1c73aa96287aefb1eb87ef1849b45844a7c094ebecdd1bb45aa`  
		Last Modified: Fri, 21 Dec 2018 00:51:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8cf96a093e6cc45a08229765b74fc52df5306f42374a9daa21a3c079ff2aae`  
		Last Modified: Fri, 21 Dec 2018 00:51:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ed59ed160133be1c81d1375ba455293f16190d67b3645537484f9e3ae0fbc`  
		Last Modified: Fri, 21 Dec 2018 00:51:26 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:4b6ff96e2f1490b0d2e6b30a2639bd4a33c23236fe371d220117f583b83b22c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26319468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddde27c84955463f09faa45ec371faeea61f8112a44dfeac8293e1fb0be8f454`
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
# Fri, 21 Dec 2018 09:20:58 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 21 Dec 2018 09:20:58 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 09:21:00 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 09:21:09 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 09:21:11 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 09:21:12 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:21:12 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 09:21:13 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 09:21:13 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 09:21:14 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 09:21:14 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 09:21:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:21:15 GMT
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
	-	`sha256:c5fc7a21f92f2733160d6b6a860bcf4c7c322f2bba35ca8020379025f745541e`  
		Last Modified: Fri, 21 Dec 2018 09:22:09 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088285e29bc97ed21e67a9801f6670c235febc52bba065b379971bfca87b31b3`  
		Last Modified: Fri, 21 Dec 2018 09:22:19 GMT  
		Size: 24.3 MB (24265497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574d0337b234d13621d02ccdf3af7f60d43659d7b9ddd38825b5fb7a7b11a2ae`  
		Last Modified: Fri, 21 Dec 2018 09:22:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f82b0f92285ac227db1c0f87f611a53fb3b4f7f3b62942f92ae92edbd16255`  
		Last Modified: Fri, 21 Dec 2018 09:22:09 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe0514025eca60430fc597c4f64933e13fb54658d13b86d3500eb7e9ca4dc5b`  
		Last Modified: Fri, 21 Dec 2018 09:22:09 GMT  
		Size: 1.7 KB (1684 bytes)  
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

### `consul:1.2.4` - linux; 386

```console
$ docker pull consul@sha256:ad0a8bef2d4a85a14f94633006f2237851c9c3bd687ab61f8f0e2b0dc0e7c954
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26861516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e02babd30e96e19d2e81a904a351559ada4062ad6382afe54f028e0194b136`
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
# Thu, 20 Dec 2018 11:39:02 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 20 Dec 2018 11:39:02 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 20 Dec 2018 11:39:03 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 20 Dec 2018 11:39:10 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 20 Dec 2018 11:39:11 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 20 Dec 2018 11:39:11 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Dec 2018 11:39:11 GMT
VOLUME [/consul/data]
# Thu, 20 Dec 2018 11:39:12 GMT
EXPOSE 8300
# Thu, 20 Dec 2018 11:39:12 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 20 Dec 2018 11:39:12 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 20 Dec 2018 11:39:12 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 11:39:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 11:39:13 GMT
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
	-	`sha256:07fd8089c549ded98ed766854ce76005c8bd4cf10f549f3b00ac60cc3f137562`  
		Last Modified: Thu, 20 Dec 2018 11:39:41 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1650b119a1803da7b3d9582cc644b4435f3925f0dc3aa86b328b78da5c26200e`  
		Last Modified: Thu, 20 Dec 2018 11:39:48 GMT  
		Size: 24.7 MB (24689090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ad06d8a7e6782c30121bf8f0bb5a79d961bce02950fef5215d9505ade5eb9c`  
		Last Modified: Thu, 20 Dec 2018 11:39:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fab8bbcf160c444a79f5a1cebfae2c063bb59fe5e7d016b98b7bd54d76ff10`  
		Last Modified: Thu, 20 Dec 2018 11:39:41 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08da69ae70606b9e0cfd347fa43e3b770f3cdb32ecf459f9c04a38824783a3c1`  
		Last Modified: Thu, 20 Dec 2018 11:39:41 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4.0`

```console
$ docker pull consul@sha256:e624cc830d4bbd1bcb40a19fb2f2e008c317c9b64e93fddacb67695238eb96f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4.0` - linux; amd64

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

### `consul:1.4.0` - linux; arm variant v6

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
$ docker pull consul@sha256:e624cc830d4bbd1bcb40a19fb2f2e008c317c9b64e93fddacb67695238eb96f5
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
