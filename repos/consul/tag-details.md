<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.4.3`](#consul143)
-	[`consul:latest`](#consullatest)

## `consul:1.4.3`

**does not exist** (yet?)

## `consul:latest`

```console
$ docker pull consul@sha256:237395f416538120c0445e007a3155968cc6db2c916b33aa6e9e21ce1b8bd6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:4b758d1bca644db797865e3654bcd4b402a8610ef189e0a9fd4bbc5261f186d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38338309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5811022a71cd9f7f5ec4ec9b959c6196f4af658de0b17047c8c8d278beac511`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:15:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 31 Jan 2019 00:15:25 GMT
ENV CONSUL_VERSION=1.4.2
# Thu, 31 Jan 2019 00:15:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 31 Jan 2019 00:15:26 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 31 Jan 2019 00:15:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 31 Jan 2019 00:15:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 31 Jan 2019 00:15:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 00:15:38 GMT
VOLUME [/consul/data]
# Thu, 31 Jan 2019 00:15:38 GMT
EXPOSE 8300
# Thu, 31 Jan 2019 00:15:38 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 31 Jan 2019 00:15:38 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 31 Jan 2019 00:15:38 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 31 Jan 2019 00:15:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:15:39 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15690f471720f37b94c5957c0f1c7ddb1732a798ea27c1a21b038bba0eb67f4`  
		Last Modified: Thu, 31 Jan 2019 00:15:45 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc49ef703a3023dea31c25bcf7cced9c99b24a1dc20899591588b0087038c500`  
		Last Modified: Thu, 31 Jan 2019 00:15:52 GMT  
		Size: 36.2 MB (36227910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628f52b2e9dd2906b8c0dc2cc6dcb5e94b1643ba83646e0ac30151cc02b5d41a`  
		Last Modified: Thu, 31 Jan 2019 00:15:45 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15d91296f9eb02ef253396260796d295e1a145d781f0eb22ea599cf370c446d`  
		Last Modified: Thu, 31 Jan 2019 00:15:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae42aedb9dbee7ca379a8c41c71197c8e78fd1b6a1da100c6c31a58feb3ad48e`  
		Last Modified: Thu, 31 Jan 2019 00:15:46 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:5a4cd4bebbf5e2e3b55fef95f53126742982943bb0fb197397117b5ab06a4c42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36316567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c0d6170b5c0c214ee7a31159d4b7201eba3f1c66fc39675a0001319511aab1`
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
# Wed, 30 Jan 2019 08:49:45 GMT
ENV CONSUL_VERSION=1.4.2
# Wed, 30 Jan 2019 08:49:46 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 30 Jan 2019 08:49:47 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 30 Jan 2019 08:49:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 30 Jan 2019 08:50:00 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 30 Jan 2019 08:50:02 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 30 Jan 2019 08:50:02 GMT
VOLUME [/consul/data]
# Wed, 30 Jan 2019 08:50:02 GMT
EXPOSE 8300
# Wed, 30 Jan 2019 08:50:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 30 Jan 2019 08:50:03 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 30 Jan 2019 08:50:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 30 Jan 2019 08:50:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Jan 2019 08:50:04 GMT
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
	-	`sha256:9018366252620ca695b29acbabb0658440a11efe59717b94be857180b0cce34e`  
		Last Modified: Wed, 30 Jan 2019 08:50:17 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661ae78ad64593d148172878d87d6ac7f7f38453a42197ff9dd04d3160259c12`  
		Last Modified: Wed, 30 Jan 2019 08:50:27 GMT  
		Size: 34.3 MB (34262592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1050c410d496027e246487efb17e8cb1c5bf63eae08496086b22077ecf86f9e`  
		Last Modified: Wed, 30 Jan 2019 08:50:17 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60bd399d459842faab32b4c86f3518703c289cf0060993a8caa82eb5afadb2`  
		Last Modified: Wed, 30 Jan 2019 08:50:17 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5c30e5733b8f736193b548ae0a91e9cebf5ed444143c3da4b3442c3c51225`  
		Last Modified: Wed, 30 Jan 2019 08:50:17 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:ffff65b60978301303972a44e9f02562c15526cbaafe960db8a6d02c352bf881
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35861828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35bb20e462d843ebce8feab11272737889bb29e020d1787cb2d388443402f4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:59:29 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 30 Jan 2019 09:40:11 GMT
ENV CONSUL_VERSION=1.4.2
# Wed, 30 Jan 2019 09:40:12 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 30 Jan 2019 09:40:14 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 30 Jan 2019 09:40:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 30 Jan 2019 09:40:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 30 Jan 2019 09:40:41 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 30 Jan 2019 09:40:42 GMT
VOLUME [/consul/data]
# Wed, 30 Jan 2019 09:40:43 GMT
EXPOSE 8300
# Wed, 30 Jan 2019 09:40:44 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 30 Jan 2019 09:40:45 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 30 Jan 2019 09:40:46 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 30 Jan 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Jan 2019 09:40:48 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e62c19334627314617ff21bbd702510025fa0f511dfec54bdf6d987fa0718b`  
		Last Modified: Wed, 30 Jan 2019 09:41:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85915eec84eb1051751b18ca4624dad88eb86a4eb9097a2849d34a3af7a15529`  
		Last Modified: Wed, 30 Jan 2019 09:41:16 GMT  
		Size: 33.9 MB (33859250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d499e9939e79d6ec46d2f0d6e5698d2d5b7ab880c9678fcf15de4b7ad9fc448a`  
		Last Modified: Wed, 30 Jan 2019 09:41:04 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62cabd2d938b81a1d338761a30071ee196086166a17f209272a432830a3fb55`  
		Last Modified: Wed, 30 Jan 2019 09:41:04 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddd80524b02a8fb52a9a07df2f2537e78004b3340a311d462cb8729f022a95f`  
		Last Modified: Wed, 30 Jan 2019 09:41:05 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:1ce472dedf34539593d804656763441610be00609f901c2354faf92bde6e3ed1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37554860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c9af41254b185fa59c5f26550a251d75852e0dbd21e9a939047f8ec6335c32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 30 Jan 2019 11:38:41 GMT
ENV CONSUL_VERSION=1.4.2
# Wed, 30 Jan 2019 11:38:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 30 Jan 2019 11:38:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 30 Jan 2019 11:38:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 30 Jan 2019 11:38:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 30 Jan 2019 11:38:52 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 30 Jan 2019 11:38:52 GMT
VOLUME [/consul/data]
# Wed, 30 Jan 2019 11:38:52 GMT
EXPOSE 8300
# Wed, 30 Jan 2019 11:38:52 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 30 Jan 2019 11:38:52 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 30 Jan 2019 11:38:53 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 30 Jan 2019 11:38:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Jan 2019 11:38:53 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114bde9fc48f973c62b2a8fe21be346ff5316e798925638ea182b9c3bf7262a9`  
		Last Modified: Wed, 30 Jan 2019 11:39:04 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65dd61bafd1c375984dec4aee65d573212e238c125bdeea2b598a1d7f7203ca`  
		Last Modified: Wed, 30 Jan 2019 11:39:11 GMT  
		Size: 35.4 MB (35382436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c2e87aee0f9d8c55521a957b05513500aa7186220131680e8fb7b697d34286`  
		Last Modified: Wed, 30 Jan 2019 11:39:04 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7930178fc4a5cbdb87b302bbc89165705aa8c8688051239ae8e2b70413814eca`  
		Last Modified: Wed, 30 Jan 2019 11:39:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a946ebc972271fee3c60a2c47c4b4f5898fd6b68884c3b22d49c5e51d76c5eba`  
		Last Modified: Wed, 30 Jan 2019 11:39:04 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
