<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:1.1.2`](#vault112)
-	[`vault:latest`](#vaultlatest)

## `vault:1.1.2`

```console
$ docker pull vault@sha256:6f744af91a6cc8e52fe43f41c4ef526b7992b145183ca04e6c1dc95e51af5c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:1.1.2` - linux; amd64

```console
$ docker pull vault@sha256:f1072e625af59b4382d112d05c7627f6b9b51a8eedd746621e77a4f867a627b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39202541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a23297b2305aee7e6259b2d9ae5e67745cae3c4b695d7858260cd69e1f96ef7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Tue, 23 Apr 2019 21:20:04 GMT
ARG VAULT_VERSION=1.1.2
# Tue, 23 Apr 2019 21:20:05 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 23 Apr 2019 21:20:13 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 23 Apr 2019 21:20:14 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 23 Apr 2019 21:20:14 GMT
VOLUME [/vault/logs]
# Tue, 23 Apr 2019 21:20:14 GMT
VOLUME [/vault/file]
# Tue, 23 Apr 2019 21:20:14 GMT
EXPOSE 8200
# Tue, 23 Apr 2019 21:20:14 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 23 Apr 2019 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Apr 2019 21:20:15 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59b449ff8b49963602d6789335d0d0a2a1752c3d33bbef0f7f23cd1232f8ed`  
		Last Modified: Tue, 23 Apr 2019 21:20:23 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69031de877f7d1e63bc9640b5e9651f0cace365088146d2697d8b575aa70875`  
		Last Modified: Tue, 23 Apr 2019 21:20:29 GMT  
		Size: 37.0 MB (36992142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b300d1134aa086f2ced5a282c722c79e54d1ce6b6774377cc3bb744f60e1b94`  
		Last Modified: Tue, 23 Apr 2019 21:20:23 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12abd110ba3bd4bad4747176910393401370b5a3cb2de21159932540b4f5f395`  
		Last Modified: Tue, 23 Apr 2019 21:20:23 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:6f744af91a6cc8e52fe43f41c4ef526b7992b145183ca04e6c1dc95e51af5c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:f1072e625af59b4382d112d05c7627f6b9b51a8eedd746621e77a4f867a627b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39202541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a23297b2305aee7e6259b2d9ae5e67745cae3c4b695d7858260cd69e1f96ef7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Tue, 23 Apr 2019 21:20:04 GMT
ARG VAULT_VERSION=1.1.2
# Tue, 23 Apr 2019 21:20:05 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 23 Apr 2019 21:20:13 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 23 Apr 2019 21:20:14 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 23 Apr 2019 21:20:14 GMT
VOLUME [/vault/logs]
# Tue, 23 Apr 2019 21:20:14 GMT
VOLUME [/vault/file]
# Tue, 23 Apr 2019 21:20:14 GMT
EXPOSE 8200
# Tue, 23 Apr 2019 21:20:14 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 23 Apr 2019 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Apr 2019 21:20:15 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59b449ff8b49963602d6789335d0d0a2a1752c3d33bbef0f7f23cd1232f8ed`  
		Last Modified: Tue, 23 Apr 2019 21:20:23 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69031de877f7d1e63bc9640b5e9651f0cace365088146d2697d8b575aa70875`  
		Last Modified: Tue, 23 Apr 2019 21:20:29 GMT  
		Size: 37.0 MB (36992142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b300d1134aa086f2ced5a282c722c79e54d1ce6b6774377cc3bb744f60e1b94`  
		Last Modified: Tue, 23 Apr 2019 21:20:23 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12abd110ba3bd4bad4747176910393401370b5a3cb2de21159932540b4f5f395`  
		Last Modified: Tue, 23 Apr 2019 21:20:23 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
