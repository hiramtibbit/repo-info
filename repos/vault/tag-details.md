<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:1.1.1`](#vault111)
-	[`vault:latest`](#vaultlatest)

## `vault:1.1.1`

```console
$ docker pull vault@sha256:a76907deb38bbf1b7c43290bf6d8a47e869dd14e5e2020ba2da8cdfe13144941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

### `vault:1.1.1` - linux; amd64

```console
$ docker pull vault@sha256:8208737ccbf2cdbda59a32a6bc4f542ce9c3c493f56b45a6dcbb4492b1991d1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39208885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4496e5363fed5e522ef356e487d573fc2011d526a2d4047022ae56cd5bd861bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 12 Apr 2019 22:54:55 GMT
ENV VAULT_VERSION=1.1.1
# Fri, 12 Apr 2019 22:54:56 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 12 Apr 2019 22:55:07 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 12 Apr 2019 22:55:08 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 12 Apr 2019 22:55:08 GMT
VOLUME [/vault/logs]
# Fri, 12 Apr 2019 22:55:08 GMT
VOLUME [/vault/file]
# Fri, 12 Apr 2019 22:55:09 GMT
EXPOSE 8200
# Fri, 12 Apr 2019 22:55:09 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Apr 2019 22:55:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 22:55:09 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade752bf6619a3218422ce2941d85b535104bb1fdd3a70ea8b86c18e524768c2`  
		Last Modified: Fri, 12 Apr 2019 22:55:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a8fe7c38f0917415516b738832268b37e5cd1a3096b9a366e763b956bfbd73`  
		Last Modified: Fri, 12 Apr 2019 22:55:24 GMT  
		Size: 37.0 MB (36998481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ff09b0dbab5545d51061164e3ff60e040c186d50362b4525c377a70bb30602`  
		Last Modified: Fri, 12 Apr 2019 22:55:16 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3421fcd1c4a40f5b08c1b39fcea4821072d7441a68a0d60bdff1717101d13629`  
		Last Modified: Fri, 12 Apr 2019 22:55:16 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.1` - linux; arm variant v6

```console
$ docker pull vault@sha256:4bfd61803ec76fec2218dea2da3a6ed5715aaf59df123360628f66d2d7eecadc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37071710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20349a1a4fafe8e3169cc0d8cba7c92f714971c3724972ea343e61823085613f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Sat, 13 Apr 2019 08:01:28 GMT
ENV VAULT_VERSION=1.1.1
# Sat, 13 Apr 2019 08:01:29 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 13 Apr 2019 08:01:40 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 13 Apr 2019 08:01:42 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 13 Apr 2019 08:01:42 GMT
VOLUME [/vault/logs]
# Sat, 13 Apr 2019 08:01:43 GMT
VOLUME [/vault/file]
# Sat, 13 Apr 2019 08:01:43 GMT
EXPOSE 8200
# Sat, 13 Apr 2019 08:01:44 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 13 Apr 2019 08:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Apr 2019 08:01:44 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856f4cabc1f122c2624eb59f18f3c6d1457037be36c718b8ce28ad7c0148526f`  
		Last Modified: Sat, 13 Apr 2019 08:01:55 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ecd143c79681bb782ae2934c11e51d6bedd227fe0613b322f24fc80d419bf5`  
		Last Modified: Sat, 13 Apr 2019 08:02:06 GMT  
		Size: 34.9 MB (34922301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8e39df79abc29ba3b73caee12764297ea7f756c9e70da6611907593c55cdaf`  
		Last Modified: Sat, 13 Apr 2019 08:01:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6c5cf62f01f38c7f2eda1d704ef9f6a57fe25ee32ffcf75d786c60aeaa889`  
		Last Modified: Sat, 13 Apr 2019 08:01:55 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.1` - linux; 386

```console
$ docker pull vault@sha256:b1e17c71c8295013ebc60f26366d1181ef0b3a99770ebe063c6b9a5affc88025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38218286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27872829a3df4d4b203ea4041db82a400fbf4a069bc53c02ade7f44856f6874`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Sat, 13 Apr 2019 12:33:06 GMT
ENV VAULT_VERSION=1.1.1
# Sat, 13 Apr 2019 12:33:06 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 13 Apr 2019 12:33:14 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 13 Apr 2019 12:33:15 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 13 Apr 2019 12:33:15 GMT
VOLUME [/vault/logs]
# Sat, 13 Apr 2019 12:33:15 GMT
VOLUME [/vault/file]
# Sat, 13 Apr 2019 12:33:16 GMT
EXPOSE 8200
# Sat, 13 Apr 2019 12:33:16 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 13 Apr 2019 12:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Apr 2019 12:33:16 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ad16ef7c4c0436a3b87c671498a8a406974859edf61b77333ab332c5a78090`  
		Last Modified: Sat, 13 Apr 2019 12:33:28 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680dcc548b689acd0de58c39311d8f8f8672756da4a61bb155e0cdb788db839`  
		Last Modified: Sat, 13 Apr 2019 12:33:31 GMT  
		Size: 35.9 MB (35943030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f083bde91fa1a88a85fa2c1122111b23a93a081705a1ce8d3779a6963ed4860c`  
		Last Modified: Sat, 13 Apr 2019 12:33:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f9be0949e2a67032ffb8772d580c986a8da8b5592b79d64f7fc3d0b53afe4c`  
		Last Modified: Sat, 13 Apr 2019 12:33:28 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:a76907deb38bbf1b7c43290bf6d8a47e869dd14e5e2020ba2da8cdfe13144941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:8208737ccbf2cdbda59a32a6bc4f542ce9c3c493f56b45a6dcbb4492b1991d1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39208885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4496e5363fed5e522ef356e487d573fc2011d526a2d4047022ae56cd5bd861bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 12 Apr 2019 22:54:55 GMT
ENV VAULT_VERSION=1.1.1
# Fri, 12 Apr 2019 22:54:56 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 12 Apr 2019 22:55:07 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 12 Apr 2019 22:55:08 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 12 Apr 2019 22:55:08 GMT
VOLUME [/vault/logs]
# Fri, 12 Apr 2019 22:55:08 GMT
VOLUME [/vault/file]
# Fri, 12 Apr 2019 22:55:09 GMT
EXPOSE 8200
# Fri, 12 Apr 2019 22:55:09 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 12 Apr 2019 22:55:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 22:55:09 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade752bf6619a3218422ce2941d85b535104bb1fdd3a70ea8b86c18e524768c2`  
		Last Modified: Fri, 12 Apr 2019 22:55:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a8fe7c38f0917415516b738832268b37e5cd1a3096b9a366e763b956bfbd73`  
		Last Modified: Fri, 12 Apr 2019 22:55:24 GMT  
		Size: 37.0 MB (36998481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ff09b0dbab5545d51061164e3ff60e040c186d50362b4525c377a70bb30602`  
		Last Modified: Fri, 12 Apr 2019 22:55:16 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3421fcd1c4a40f5b08c1b39fcea4821072d7441a68a0d60bdff1717101d13629`  
		Last Modified: Fri, 12 Apr 2019 22:55:16 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:4bfd61803ec76fec2218dea2da3a6ed5715aaf59df123360628f66d2d7eecadc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37071710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20349a1a4fafe8e3169cc0d8cba7c92f714971c3724972ea343e61823085613f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Sat, 13 Apr 2019 08:01:28 GMT
ENV VAULT_VERSION=1.1.1
# Sat, 13 Apr 2019 08:01:29 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 13 Apr 2019 08:01:40 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 13 Apr 2019 08:01:42 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 13 Apr 2019 08:01:42 GMT
VOLUME [/vault/logs]
# Sat, 13 Apr 2019 08:01:43 GMT
VOLUME [/vault/file]
# Sat, 13 Apr 2019 08:01:43 GMT
EXPOSE 8200
# Sat, 13 Apr 2019 08:01:44 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 13 Apr 2019 08:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Apr 2019 08:01:44 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856f4cabc1f122c2624eb59f18f3c6d1457037be36c718b8ce28ad7c0148526f`  
		Last Modified: Sat, 13 Apr 2019 08:01:55 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ecd143c79681bb782ae2934c11e51d6bedd227fe0613b322f24fc80d419bf5`  
		Last Modified: Sat, 13 Apr 2019 08:02:06 GMT  
		Size: 34.9 MB (34922301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8e39df79abc29ba3b73caee12764297ea7f756c9e70da6611907593c55cdaf`  
		Last Modified: Sat, 13 Apr 2019 08:01:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6c5cf62f01f38c7f2eda1d704ef9f6a57fe25ee32ffcf75d786c60aeaa889`  
		Last Modified: Sat, 13 Apr 2019 08:01:55 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:b1e17c71c8295013ebc60f26366d1181ef0b3a99770ebe063c6b9a5affc88025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38218286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27872829a3df4d4b203ea4041db82a400fbf4a069bc53c02ade7f44856f6874`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Sat, 13 Apr 2019 12:33:06 GMT
ENV VAULT_VERSION=1.1.1
# Sat, 13 Apr 2019 12:33:06 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 13 Apr 2019 12:33:14 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 13 Apr 2019 12:33:15 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 13 Apr 2019 12:33:15 GMT
VOLUME [/vault/logs]
# Sat, 13 Apr 2019 12:33:15 GMT
VOLUME [/vault/file]
# Sat, 13 Apr 2019 12:33:16 GMT
EXPOSE 8200
# Sat, 13 Apr 2019 12:33:16 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 13 Apr 2019 12:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Apr 2019 12:33:16 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ad16ef7c4c0436a3b87c671498a8a406974859edf61b77333ab332c5a78090`  
		Last Modified: Sat, 13 Apr 2019 12:33:28 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680dcc548b689acd0de58c39311d8f8f8672756da4a61bb155e0cdb788db839`  
		Last Modified: Sat, 13 Apr 2019 12:33:31 GMT  
		Size: 35.9 MB (35943030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f083bde91fa1a88a85fa2c1122111b23a93a081705a1ce8d3779a6963ed4860c`  
		Last Modified: Sat, 13 Apr 2019 12:33:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f9be0949e2a67032ffb8772d580c986a8da8b5592b79d64f7fc3d0b53afe4c`  
		Last Modified: Sat, 13 Apr 2019 12:33:28 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
