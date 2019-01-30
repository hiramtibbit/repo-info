## `consul:latest`

```console
$ docker pull consul@sha256:3af30afb9142b590fc40cfd84f1b048301e0809e2d2a4f93baddb754ef876d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:382be7707cadffe059a63b9bb4aae21afaa7374fb435a2d4d904a7748044c3e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38338295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f62bf8e0639a9ee4eca77de976496e06e88b9bcc7229d1c15c0772a853d84a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:49:42 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 29 Jan 2019 22:19:34 GMT
ENV CONSUL_VERSION=1.4.2
# Tue, 29 Jan 2019 22:19:34 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 29 Jan 2019 22:19:35 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 29 Jan 2019 22:19:42 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 29 Jan 2019 22:19:43 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 29 Jan 2019 22:19:44 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 29 Jan 2019 22:19:44 GMT
VOLUME [/consul/data]
# Tue, 29 Jan 2019 22:19:44 GMT
EXPOSE 8300
# Tue, 29 Jan 2019 22:19:45 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Tue, 29 Jan 2019 22:19:45 GMT
EXPOSE 8500 8600 8600/udp
# Tue, 29 Jan 2019 22:19:45 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 29 Jan 2019 22:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Jan 2019 22:19:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b937366852762cd78228f95ecc0ad677a27cfa41ac53b3b406e84327a9758360`  
		Last Modified: Tue, 29 Jan 2019 22:19:56 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baced917e251f9b223521251e2bfaa3463e9251650e2561e805965bbc5a3e122`  
		Last Modified: Tue, 29 Jan 2019 22:20:03 GMT  
		Size: 36.2 MB (36227913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb94d4890e9a859210802cc1d7f2b65ad91287fe5b4861c04875b1bea1a238e`  
		Last Modified: Tue, 29 Jan 2019 22:19:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a7237afb1b853f98e45cfcc45b9f366cdd18092dec138062a51a81d7e4b2a4`  
		Last Modified: Tue, 29 Jan 2019 22:19:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea58f205d89e85be979d9b8b81aef2a6f6b52af715c9fd44aa7215154e25c935`  
		Last Modified: Tue, 29 Jan 2019 22:19:56 GMT  
		Size: 1.7 KB (1680 bytes)  
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
