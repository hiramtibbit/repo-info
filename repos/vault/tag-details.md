<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:1.1.0`](#vault110)
-	[`vault:latest`](#vaultlatest)

## `vault:1.1.0`

```console
$ docker pull vault@sha256:b2871c8ab8479471ae3a965d5f089b2729628025449d1c0a17141510bbb446a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:1.1.0` - linux; amd64

```console
$ docker pull vault@sha256:087819d0a9ef43fb312581b1fc2e115babfa2272a18cc7d309c13151b6c658dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39159760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377f405729fb5d6d8e042f04ff8ff35058de4caaf6620e23c54c5fcae74c93ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 22:59:55 GMT
ENV VAULT_VERSION=1.1.0
# Wed, 20 Mar 2019 22:59:56 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 20 Mar 2019 23:00:05 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 20 Mar 2019 23:00:06 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 20 Mar 2019 23:00:06 GMT
VOLUME [/vault/logs]
# Wed, 20 Mar 2019 23:00:06 GMT
VOLUME [/vault/file]
# Wed, 20 Mar 2019 23:00:07 GMT
EXPOSE 8200
# Wed, 20 Mar 2019 23:00:07 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 20 Mar 2019 23:00:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 23:00:07 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbe256ee752dd70a508baa5dc8b826c5b2dd97019dd2cb336e8884a97b74a83`  
		Last Modified: Wed, 20 Mar 2019 23:00:16 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04edac52af20d686223de047d39dd16f0d72dea2017b7d6dadd7c12284df097`  
		Last Modified: Wed, 20 Mar 2019 23:00:24 GMT  
		Size: 36.9 MB (36949359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2aac19326b44c459a934acd0ff04024a1fcc291aecc93d8a7ae587c9fd9413`  
		Last Modified: Wed, 20 Mar 2019 23:00:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d421a5ce313db1577412aaedc544df56dfb308b1ff343f4cc6d4471f2057c31`  
		Last Modified: Wed, 20 Mar 2019 23:00:16 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.0` - linux; arm variant v6

```console
$ docker pull vault@sha256:5a5843d228dbf59ec3ad53813b855b99afacb23d48db9307ffb4aafefde106f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37052611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9a47e3ebe4e11e5f683e79fd381c5a99641c64c7c67a19a269cce8a677464`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Thu, 21 Mar 2019 07:53:35 GMT
ENV VAULT_VERSION=1.1.0
# Thu, 21 Mar 2019 07:53:36 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 21 Mar 2019 07:53:47 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 21 Mar 2019 07:53:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 21 Mar 2019 07:53:50 GMT
VOLUME [/vault/logs]
# Thu, 21 Mar 2019 07:53:50 GMT
VOLUME [/vault/file]
# Thu, 21 Mar 2019 07:53:51 GMT
EXPOSE 8200
# Thu, 21 Mar 2019 07:53:51 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Mar 2019 07:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Mar 2019 07:53:52 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015c47854e79b4682d544adc8ce5f3e45a30dc677d3047791a1777fefda6a643`  
		Last Modified: Thu, 21 Mar 2019 07:54:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b053e7e4d3195216f820a7ed7f723718037cc1d6f3559df2187b1f0033dfeacb`  
		Last Modified: Thu, 21 Mar 2019 07:54:14 GMT  
		Size: 34.9 MB (34903202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb4d6ab7a36db93d40deb7f8caffeae89e85f6e2219eb7dce40ebf56834b69c`  
		Last Modified: Thu, 21 Mar 2019 07:54:03 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867f01be8f001db7e7577d23e554363d8392fa001ac934946a76d862ebc51079`  
		Last Modified: Thu, 21 Mar 2019 07:54:03 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.0` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:b018fe841c8ef97cf7ff054672974e14dd9a01502531bf29bcf48992ddb04ef2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36673820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecb2538e56725a452817ea2e0c7843924288b6dc20095499432115455beea98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Thu, 21 Mar 2019 09:49:34 GMT
ENV VAULT_VERSION=1.1.0
# Thu, 21 Mar 2019 09:49:37 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 21 Mar 2019 09:49:53 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 21 Mar 2019 09:49:55 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 21 Mar 2019 09:49:56 GMT
VOLUME [/vault/logs]
# Thu, 21 Mar 2019 09:49:57 GMT
VOLUME [/vault/file]
# Thu, 21 Mar 2019 09:49:58 GMT
EXPOSE 8200
# Thu, 21 Mar 2019 09:49:59 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Mar 2019 09:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Mar 2019 09:50:01 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f1227771ad4c6c932caf35000138df23cfae47650f850126ecc096a465c79c`  
		Last Modified: Thu, 21 Mar 2019 09:50:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1733609fda6c308728e1fa3631fd631fe951d762dd6cd659879bb0f5120c704`  
		Last Modified: Thu, 21 Mar 2019 09:50:27 GMT  
		Size: 34.6 MB (34570628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f613944a3e4a6dd28e4d8fda772b77ec831591714f43fbd0303691f0c1a15d9`  
		Last Modified: Thu, 21 Mar 2019 09:50:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536a92120b86aa3559bb4d1dab9ab7ecca36b295108ce933a54d60bc9c785a7b`  
		Last Modified: Thu, 21 Mar 2019 09:50:15 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.0` - linux; 386

```console
$ docker pull vault@sha256:02f87bbd94b1b1b0c08f9a92b9e0001f0c17fbeba8ad0bfa3ff31636b0bc50f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38204434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ad432e072a5bddf56705f85d9354029cd00b1fd07a3f12c48674b2b720652e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Thu, 21 Mar 2019 12:05:52 GMT
ENV VAULT_VERSION=1.1.0
# Thu, 21 Mar 2019 12:05:53 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 21 Mar 2019 12:06:01 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 21 Mar 2019 12:06:02 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 21 Mar 2019 12:06:02 GMT
VOLUME [/vault/logs]
# Thu, 21 Mar 2019 12:06:03 GMT
VOLUME [/vault/file]
# Thu, 21 Mar 2019 12:06:03 GMT
EXPOSE 8200
# Thu, 21 Mar 2019 12:06:03 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Mar 2019 12:06:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Mar 2019 12:06:03 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10620b5995858d1f42697cf7d910eb842a3f0ac5ab70095bee10139e9c15256`  
		Last Modified: Thu, 21 Mar 2019 12:06:10 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e7fb2738b12e430bbc9132f02ff14fc94220ad4e1857434aab7d9abf4846f`  
		Last Modified: Thu, 21 Mar 2019 12:06:17 GMT  
		Size: 35.9 MB (35929183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90804754cabbfed4f0d1271f4f5fea9fc28d1716bffa6ce0773af0450a14912`  
		Last Modified: Thu, 21 Mar 2019 12:06:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4865b0d005e7725ed1ba44d90be33c40f552437f81fec3a6b9d1d502ac6855d8`  
		Last Modified: Thu, 21 Mar 2019 12:06:10 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:b2871c8ab8479471ae3a965d5f089b2729628025449d1c0a17141510bbb446a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:087819d0a9ef43fb312581b1fc2e115babfa2272a18cc7d309c13151b6c658dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39159760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377f405729fb5d6d8e042f04ff8ff35058de4caaf6620e23c54c5fcae74c93ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Wed, 20 Mar 2019 22:59:55 GMT
ENV VAULT_VERSION=1.1.0
# Wed, 20 Mar 2019 22:59:56 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 20 Mar 2019 23:00:05 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 20 Mar 2019 23:00:06 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 20 Mar 2019 23:00:06 GMT
VOLUME [/vault/logs]
# Wed, 20 Mar 2019 23:00:06 GMT
VOLUME [/vault/file]
# Wed, 20 Mar 2019 23:00:07 GMT
EXPOSE 8200
# Wed, 20 Mar 2019 23:00:07 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 20 Mar 2019 23:00:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Mar 2019 23:00:07 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbe256ee752dd70a508baa5dc8b826c5b2dd97019dd2cb336e8884a97b74a83`  
		Last Modified: Wed, 20 Mar 2019 23:00:16 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04edac52af20d686223de047d39dd16f0d72dea2017b7d6dadd7c12284df097`  
		Last Modified: Wed, 20 Mar 2019 23:00:24 GMT  
		Size: 36.9 MB (36949359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2aac19326b44c459a934acd0ff04024a1fcc291aecc93d8a7ae587c9fd9413`  
		Last Modified: Wed, 20 Mar 2019 23:00:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d421a5ce313db1577412aaedc544df56dfb308b1ff343f4cc6d4471f2057c31`  
		Last Modified: Wed, 20 Mar 2019 23:00:16 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:5a5843d228dbf59ec3ad53813b855b99afacb23d48db9307ffb4aafefde106f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37052611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9a47e3ebe4e11e5f683e79fd381c5a99641c64c7c67a19a269cce8a677464`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Thu, 21 Mar 2019 07:53:35 GMT
ENV VAULT_VERSION=1.1.0
# Thu, 21 Mar 2019 07:53:36 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 21 Mar 2019 07:53:47 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 21 Mar 2019 07:53:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 21 Mar 2019 07:53:50 GMT
VOLUME [/vault/logs]
# Thu, 21 Mar 2019 07:53:50 GMT
VOLUME [/vault/file]
# Thu, 21 Mar 2019 07:53:51 GMT
EXPOSE 8200
# Thu, 21 Mar 2019 07:53:51 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Mar 2019 07:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Mar 2019 07:53:52 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015c47854e79b4682d544adc8ce5f3e45a30dc677d3047791a1777fefda6a643`  
		Last Modified: Thu, 21 Mar 2019 07:54:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b053e7e4d3195216f820a7ed7f723718037cc1d6f3559df2187b1f0033dfeacb`  
		Last Modified: Thu, 21 Mar 2019 07:54:14 GMT  
		Size: 34.9 MB (34903202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb4d6ab7a36db93d40deb7f8caffeae89e85f6e2219eb7dce40ebf56834b69c`  
		Last Modified: Thu, 21 Mar 2019 07:54:03 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867f01be8f001db7e7577d23e554363d8392fa001ac934946a76d862ebc51079`  
		Last Modified: Thu, 21 Mar 2019 07:54:03 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:b018fe841c8ef97cf7ff054672974e14dd9a01502531bf29bcf48992ddb04ef2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36673820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecb2538e56725a452817ea2e0c7843924288b6dc20095499432115455beea98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Thu, 21 Mar 2019 09:49:34 GMT
ENV VAULT_VERSION=1.1.0
# Thu, 21 Mar 2019 09:49:37 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 21 Mar 2019 09:49:53 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 21 Mar 2019 09:49:55 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 21 Mar 2019 09:49:56 GMT
VOLUME [/vault/logs]
# Thu, 21 Mar 2019 09:49:57 GMT
VOLUME [/vault/file]
# Thu, 21 Mar 2019 09:49:58 GMT
EXPOSE 8200
# Thu, 21 Mar 2019 09:49:59 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Mar 2019 09:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Mar 2019 09:50:01 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f1227771ad4c6c932caf35000138df23cfae47650f850126ecc096a465c79c`  
		Last Modified: Thu, 21 Mar 2019 09:50:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1733609fda6c308728e1fa3631fd631fe951d762dd6cd659879bb0f5120c704`  
		Last Modified: Thu, 21 Mar 2019 09:50:27 GMT  
		Size: 34.6 MB (34570628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f613944a3e4a6dd28e4d8fda772b77ec831591714f43fbd0303691f0c1a15d9`  
		Last Modified: Thu, 21 Mar 2019 09:50:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536a92120b86aa3559bb4d1dab9ab7ecca36b295108ce933a54d60bc9c785a7b`  
		Last Modified: Thu, 21 Mar 2019 09:50:15 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:02f87bbd94b1b1b0c08f9a92b9e0001f0c17fbeba8ad0bfa3ff31636b0bc50f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38204434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ad432e072a5bddf56705f85d9354029cd00b1fd07a3f12c48674b2b720652e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Thu, 21 Mar 2019 12:05:52 GMT
ENV VAULT_VERSION=1.1.0
# Thu, 21 Mar 2019 12:05:53 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 21 Mar 2019 12:06:01 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 21 Mar 2019 12:06:02 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 21 Mar 2019 12:06:02 GMT
VOLUME [/vault/logs]
# Thu, 21 Mar 2019 12:06:03 GMT
VOLUME [/vault/file]
# Thu, 21 Mar 2019 12:06:03 GMT
EXPOSE 8200
# Thu, 21 Mar 2019 12:06:03 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Mar 2019 12:06:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Mar 2019 12:06:03 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10620b5995858d1f42697cf7d910eb842a3f0ac5ab70095bee10139e9c15256`  
		Last Modified: Thu, 21 Mar 2019 12:06:10 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459e7fb2738b12e430bbc9132f02ff14fc94220ad4e1857434aab7d9abf4846f`  
		Last Modified: Thu, 21 Mar 2019 12:06:17 GMT  
		Size: 35.9 MB (35929183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90804754cabbfed4f0d1271f4f5fea9fc28d1716bffa6ce0773af0450a14912`  
		Last Modified: Thu, 21 Mar 2019 12:06:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4865b0d005e7725ed1ba44d90be33c40f552437f81fec3a6b9d1d502ac6855d8`  
		Last Modified: Thu, 21 Mar 2019 12:06:10 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
