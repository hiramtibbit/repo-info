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
$ docker pull vault@sha256:327e84ddcde3757e71a2011714e5fc03fb77310271ec4c53ee23922766e45cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

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
