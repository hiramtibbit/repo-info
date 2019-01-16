<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:1.0.2`](#vault102)
-	[`vault:latest`](#vaultlatest)

## `vault:1.0.2`

```console
$ docker pull vault@sha256:327e84ddcde3757e71a2011714e5fc03fb77310271ec4c53ee23922766e45cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:1.0.2` - linux; amd64

```console
$ docker pull vault@sha256:a233ac3c7a0866959de7865f3ef382448aa9f814c0e96f6139d5b35589126a24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39124471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4f5e18452b83f330b9e5b805c874818f0f2f3d25ba0776ece42889687f0d13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Wed, 16 Jan 2019 21:26:09 GMT
ENV VAULT_VERSION=1.0.2
# Wed, 16 Jan 2019 21:26:10 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 16 Jan 2019 21:26:18 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 16 Jan 2019 21:26:19 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 16 Jan 2019 21:26:19 GMT
VOLUME [/vault/logs]
# Wed, 16 Jan 2019 21:26:19 GMT
VOLUME [/vault/file]
# Wed, 16 Jan 2019 21:26:19 GMT
EXPOSE 8200
# Wed, 16 Jan 2019 21:26:20 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Wed, 16 Jan 2019 21:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Jan 2019 21:26:20 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29997a5d0a6c91f769415b451f94706f80990b220b19db7862bc88d38382c3`  
		Last Modified: Wed, 16 Jan 2019 21:26:28 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05e28f9632beddbb5a6b4b5ce585cc4949a0e27d7a68a0bbbc2d790f8e9ca78`  
		Last Modified: Wed, 16 Jan 2019 21:26:34 GMT  
		Size: 36.9 MB (36914252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1c80386687239a266ac3cea28abcf98c9703a1b73e6c5a4604ab91d3d42866`  
		Last Modified: Wed, 16 Jan 2019 21:26:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47627963a892e36b7162802afc15775573889cc4a7c7783d67e0d0f317c0549a`  
		Last Modified: Wed, 16 Jan 2019 21:26:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:1fe0c0b482c458ee3f8953299eb77c1c7d8c1f71db13c45109c5acdb40bc76a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:a80e01caaa439c25d7e0b04fca6d5ec1cc8b93ed8217fc6084a5489f3efcb118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (39048007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afec97cfa8b3e6945be120946b9dc32eb07533e6c98707fd769b77fb64fb12b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:47:02 GMT
ENV VAULT_VERSION=1.0.1
# Fri, 21 Dec 2018 00:47:03 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 21 Dec 2018 00:47:11 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 21 Dec 2018 00:47:12 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 21 Dec 2018 00:47:13 GMT
VOLUME [/vault/logs]
# Fri, 21 Dec 2018 00:47:13 GMT
VOLUME [/vault/file]
# Fri, 21 Dec 2018 00:47:13 GMT
EXPOSE 8200
# Fri, 21 Dec 2018 00:47:13 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:47:15 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212f40d6b4509fcf9b183aafb5457b7ab2bab7067571cac4dc0954b351cf0d19`  
		Last Modified: Fri, 21 Dec 2018 00:47:25 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3009ff512547220a3d1993d37d3fa74acd26896f1a00e0cfcef5abefff1f65e`  
		Last Modified: Fri, 21 Dec 2018 00:47:34 GMT  
		Size: 36.8 MB (36837784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8862af4a2e31085f15fade65b46498bf02ab4f1c532600cd2e9fbc5598b2a92`  
		Last Modified: Fri, 21 Dec 2018 00:47:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dae74736fd4975b77f63d57c1c1b585e4d2ee2ece35e54d123b1522d320d80`  
		Last Modified: Fri, 21 Dec 2018 00:47:25 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:d6561087ebee772942534d69e533b2d3d0a8b210c7073f53a5638ebda837fd1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36915670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76463466b8cf7d630faceeb6ea29083be0fe7b3dd805f5e12689d88e7bbe28dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:11 GMT
ENV VAULT_VERSION=1.0.1
# Fri, 21 Dec 2018 12:13:21 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 21 Dec 2018 12:14:07 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 21 Dec 2018 12:14:18 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 21 Dec 2018 12:14:20 GMT
VOLUME [/vault/logs]
# Fri, 21 Dec 2018 12:14:21 GMT
VOLUME [/vault/file]
# Fri, 21 Dec 2018 12:14:23 GMT
EXPOSE 8200
# Fri, 21 Dec 2018 12:14:25 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 12:14:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:28 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735ef1438a33ffc09753cdfab05bead16b99a343ee7f93d4e87bda128cff0d08`  
		Last Modified: Fri, 21 Dec 2018 12:14:40 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776bad97dd8db80c45dfcd328392aaf63bbbcf49383cb83eef3fff03d1f31ac9`  
		Last Modified: Fri, 21 Dec 2018 12:15:09 GMT  
		Size: 34.8 MB (34766451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92478bc2a423055b0712ab9963dc5116034111a11278960ef5393c4d8cee69e`  
		Last Modified: Fri, 21 Dec 2018 12:14:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a65025a27e9d151fd392d17521f25f43ebf3c5e3266dab7db9e824be731d18`  
		Last Modified: Fri, 21 Dec 2018 12:14:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:147598ed1f6176393504a95a3d3908de3e71636d2590245c0a6bee8cc6e6dc0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36552147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae0b8696ed929544d75638ab020cdf9b6b37185faa6cc5d93964b1c67f84c53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:59:28 GMT
ENV VAULT_VERSION=1.0.1
# Fri, 21 Dec 2018 09:59:31 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 21 Dec 2018 09:59:46 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 21 Dec 2018 09:59:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 21 Dec 2018 09:59:49 GMT
VOLUME [/vault/logs]
# Fri, 21 Dec 2018 09:59:50 GMT
VOLUME [/vault/file]
# Fri, 21 Dec 2018 09:59:51 GMT
EXPOSE 8200
# Fri, 21 Dec 2018 09:59:52 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 09:59:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:59:54 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab229efb6921ea7031fdf78ee15ad33af657a91d9b0a05b26327d13d0bf980e`  
		Last Modified: Fri, 21 Dec 2018 10:00:06 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549664781269302f790280d943c104f5e7f30bccdb2a4b2b29c16b406112936d`  
		Last Modified: Fri, 21 Dec 2018 10:00:19 GMT  
		Size: 34.4 MB (34448933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed46e063e9797c6e2ab7a9125a001363720337cd34bff12db951423ad2b12c1`  
		Last Modified: Fri, 21 Dec 2018 10:00:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67192a3987770c8266b63d0afe2fc2960ff9c06b4cc662bfe49a83d978a68e64`  
		Last Modified: Fri, 21 Dec 2018 10:00:05 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:b81c62576af9ff7859ea23505ce7a3f1d70b130fdb79cb3dc51e2b48cc40b73e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38052169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca930ee5fb73c2a7a26e49e40f90eb0e2e6316601624ab2d0b5fcbc57f0dc6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 16:59:10 GMT
ENV VAULT_VERSION=1.0.1
# Fri, 21 Dec 2018 16:59:10 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 21 Dec 2018 16:59:18 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 21 Dec 2018 16:59:19 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 21 Dec 2018 16:59:19 GMT
VOLUME [/vault/logs]
# Fri, 21 Dec 2018 16:59:19 GMT
VOLUME [/vault/file]
# Fri, 21 Dec 2018 16:59:19 GMT
EXPOSE 8200
# Fri, 21 Dec 2018 16:59:20 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 16:59:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:59:20 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd4d99fc84a23030ab3ad1fbc01ae36cc428d52e3b156f74581b8905ab7c568`  
		Last Modified: Fri, 21 Dec 2018 16:59:28 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8812b367c23c7b0c1c2e62894629007ba984dcd758d56d2572ecd2ae8807d2`  
		Last Modified: Fri, 21 Dec 2018 16:59:35 GMT  
		Size: 35.8 MB (35777230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0be2351b63e1a453c3720322936b441e056feee8094306f138f2cf2bf9f9a5`  
		Last Modified: Fri, 21 Dec 2018 16:59:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03009e924e3f05aed0b7069816f7a927a8add5eff142140977df19c0043175fa`  
		Last Modified: Fri, 21 Dec 2018 16:59:28 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
