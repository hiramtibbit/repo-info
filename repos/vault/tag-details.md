<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.11.4`](#vault0114)
-	[`vault:1.0.0-beta1`](#vault100-beta1)
-	[`vault:latest`](#vaultlatest)

## `vault:0.11.4`

```console
$ docker pull vault@sha256:4ae79b7fd7fdd280f44b4ee607a75fdbfed0339500b5714031b5854cc9043aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.11.4` - linux; amd64

```console
$ docker pull vault@sha256:863fa07f035d04dbfbc924482bd54135219e0ed1862bfa77128cff1418fead5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37301903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae66482e5cf4350cd6d99bdb821e3b9bd843f4eb73d1d628e580d9b599b6f4f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 23 Oct 2018 22:19:46 GMT
ENV VAULT_VERSION=0.11.4
# Tue, 23 Oct 2018 22:19:47 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 23 Oct 2018 22:19:54 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 23 Oct 2018 22:20:01 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 23 Oct 2018 22:20:02 GMT
VOLUME [/vault/logs]
# Tue, 23 Oct 2018 22:20:02 GMT
VOLUME [/vault/file]
# Tue, 23 Oct 2018 22:20:02 GMT
EXPOSE 8200/tcp
# Tue, 23 Oct 2018 22:20:02 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 23 Oct 2018 22:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Oct 2018 22:20:03 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f63775a2a69d355d55945811337b418a03b4408d247e95e4b67974096b9228`  
		Last Modified: Tue, 23 Oct 2018 22:20:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd0d4c26f186104f6e5b1af070d6599aafbb34fa69792a7dd8cee9172e99021`  
		Last Modified: Tue, 23 Oct 2018 22:20:54 GMT  
		Size: 35.1 MB (35091774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9451c3947212647d635cf87006245e5c9175fc3ae7a100600839cee82eb8252`  
		Last Modified: Tue, 23 Oct 2018 22:20:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01ff5e5b40bc5bba646f317407ae3af7c49f1a6d46bd577511e6ec948771d66`  
		Last Modified: Tue, 23 Oct 2018 22:20:47 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:1.0.0-beta1`

```console
$ docker pull vault@sha256:e6f1ee67117818967d323da27a54f17d1553461b767fd5343e20a25c6bf7a0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:1.0.0-beta1` - linux; amd64

```console
$ docker pull vault@sha256:1879dd8190c3d17d43ca08bbd81b2b097c2342bc570f4f1faf17f74327e69cf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38359050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ee0364dfba801f92251028df167773f36cd6f41fb15c4a69fa5626caedb7a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 23 Oct 2018 22:20:15 GMT
ENV VAULT_VERSION=1.0.0-beta1
# Tue, 23 Oct 2018 22:20:15 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 23 Oct 2018 22:20:22 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 23 Oct 2018 22:20:23 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 23 Oct 2018 22:20:23 GMT
VOLUME [/vault/logs]
# Tue, 23 Oct 2018 22:20:23 GMT
VOLUME [/vault/file]
# Tue, 23 Oct 2018 22:20:23 GMT
EXPOSE 8200/tcp
# Tue, 23 Oct 2018 22:20:24 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 23 Oct 2018 22:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Oct 2018 22:20:24 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48f6305d47f61135c8d5399c84e5935e522a7c6fa925c935002de44103cc9ba`  
		Last Modified: Tue, 23 Oct 2018 22:21:26 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd03e9a3806bd3555ae0a64020a11a5b939b8167bcce67d8f52d7acefda722d`  
		Last Modified: Tue, 23 Oct 2018 22:21:32 GMT  
		Size: 36.1 MB (36148920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce46f1b4b399c06cd3b5b8187139faee9be77fe20528fe962f9037087a63b4c5`  
		Last Modified: Tue, 23 Oct 2018 22:21:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a46728a739d6c5c75db52fdf5b33d48973b7d640c8317f8a46961ac4f46c49a`  
		Last Modified: Tue, 23 Oct 2018 22:21:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:4ae79b7fd7fdd280f44b4ee607a75fdbfed0339500b5714031b5854cc9043aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:863fa07f035d04dbfbc924482bd54135219e0ed1862bfa77128cff1418fead5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37301903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae66482e5cf4350cd6d99bdb821e3b9bd843f4eb73d1d628e580d9b599b6f4f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 23 Oct 2018 22:19:46 GMT
ENV VAULT_VERSION=0.11.4
# Tue, 23 Oct 2018 22:19:47 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 23 Oct 2018 22:19:54 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 23 Oct 2018 22:20:01 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 23 Oct 2018 22:20:02 GMT
VOLUME [/vault/logs]
# Tue, 23 Oct 2018 22:20:02 GMT
VOLUME [/vault/file]
# Tue, 23 Oct 2018 22:20:02 GMT
EXPOSE 8200/tcp
# Tue, 23 Oct 2018 22:20:02 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 23 Oct 2018 22:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Oct 2018 22:20:03 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f63775a2a69d355d55945811337b418a03b4408d247e95e4b67974096b9228`  
		Last Modified: Tue, 23 Oct 2018 22:20:47 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd0d4c26f186104f6e5b1af070d6599aafbb34fa69792a7dd8cee9172e99021`  
		Last Modified: Tue, 23 Oct 2018 22:20:54 GMT  
		Size: 35.1 MB (35091774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9451c3947212647d635cf87006245e5c9175fc3ae7a100600839cee82eb8252`  
		Last Modified: Tue, 23 Oct 2018 22:20:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01ff5e5b40bc5bba646f317407ae3af7c49f1a6d46bd577511e6ec948771d66`  
		Last Modified: Tue, 23 Oct 2018 22:20:47 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
