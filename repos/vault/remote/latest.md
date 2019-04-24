## `vault:latest`

```console
$ docker pull vault@sha256:1641074bac3df0af8f68be00937ff110051ef441202b65639ed5b4230ab7cb08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

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

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:9058512944f37029cdea4a92d9ca930e08f65f32ebdbc5003603df0487d1b92a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37069276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1fcc54e11c155ea50a81bf7548ee3a4d43ff2f00682aaaed4783c8e7dcf6e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Wed, 24 Apr 2019 07:49:33 GMT
ARG VAULT_VERSION=1.1.2
# Wed, 24 Apr 2019 07:49:34 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Apr 2019 07:49:45 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Apr 2019 07:49:47 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Apr 2019 07:49:47 GMT
VOLUME [/vault/logs]
# Wed, 24 Apr 2019 07:49:48 GMT
VOLUME [/vault/file]
# Wed, 24 Apr 2019 07:49:48 GMT
EXPOSE 8200
# Wed, 24 Apr 2019 07:49:48 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 07:49:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 07:49:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e62bbf96c39cb1796c6b277129bbb8bab76039df82f45f56155967b3c864c5`  
		Last Modified: Wed, 24 Apr 2019 07:49:57 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b382a9952ffd8bff796edebe70bcda3037b93f8970b8a4fd5561ec251f97a07d`  
		Last Modified: Wed, 24 Apr 2019 07:50:08 GMT  
		Size: 34.9 MB (34919866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff5deffd3664bf0252ef41c7b1b658700fccc9c0c42a04c03027fef5278f35a`  
		Last Modified: Wed, 24 Apr 2019 07:49:57 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a12b9423697d79bb8f693b4673f4e6406371e77df6240a3f1ba0cfddbeb346`  
		Last Modified: Wed, 24 Apr 2019 07:49:57 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:03aa761242408606073a0095a2e52fa84496769e00fc29bdab47bc3743c3e736
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36709226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b39297f8614af89e97986997945efda1c5b1844b5befa5aa00ce39a955ad0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Wed, 24 Apr 2019 09:08:02 GMT
ARG VAULT_VERSION=1.1.2
# Wed, 24 Apr 2019 09:08:05 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Apr 2019 09:08:23 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Apr 2019 09:08:26 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Apr 2019 09:08:27 GMT
VOLUME [/vault/logs]
# Wed, 24 Apr 2019 09:08:28 GMT
VOLUME [/vault/file]
# Wed, 24 Apr 2019 09:08:29 GMT
EXPOSE 8200
# Wed, 24 Apr 2019 09:08:30 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 09:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 09:08:32 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c42a5eb3943eea3fbda6db1a2556b5faf0ce03ac56c9a25e02a08edebb5c5b2`  
		Last Modified: Wed, 24 Apr 2019 09:08:47 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045c06b6ec308f0d0818a9da655788807f646ab9bc9260c72f92aff32e6cba37`  
		Last Modified: Wed, 24 Apr 2019 09:08:58 GMT  
		Size: 34.6 MB (34606035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8021f9c171df8d13903d68164d59af8668f60a90f4733ea0c5dee0a27a5c60de`  
		Last Modified: Wed, 24 Apr 2019 09:08:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6eea3de6f6e402e7a1ce279ec912a94cdd687479caaa8a5c0474a68edf9ca5`  
		Last Modified: Wed, 24 Apr 2019 09:08:47 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:5e683e10a208948bc3cc02a04c1f00552f84eaa9d3c7736a6bab9f21eb15c1fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38216234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be84370e492c8d572108c0795b85a979cc641c835bd5b75319b2ac7e2801387e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Wed, 24 Apr 2019 10:46:58 GMT
ARG VAULT_VERSION=1.1.2
# Wed, 24 Apr 2019 10:46:59 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Apr 2019 10:47:07 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Apr 2019 10:47:07 GMT
# ARGS: VAULT_VERSION=1.1.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Apr 2019 10:47:07 GMT
VOLUME [/vault/logs]
# Wed, 24 Apr 2019 10:47:08 GMT
VOLUME [/vault/file]
# Wed, 24 Apr 2019 10:47:08 GMT
EXPOSE 8200
# Wed, 24 Apr 2019 10:47:08 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 10:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 10:47:08 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3368472d2e3cf5a71f55d81d54027b9f17023192a2897e0be4ea7273ec314d8`  
		Last Modified: Wed, 24 Apr 2019 10:47:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18a4941aea14793ee8b1ece6359dbc62817cb562ee6374e404e56ce93172f70`  
		Last Modified: Wed, 24 Apr 2019 10:47:23 GMT  
		Size: 35.9 MB (35940980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee39df7515ba9d7f04c5b8d2fdf9a24ad457c67e61c0120df0aeebedf718499`  
		Last Modified: Wed, 24 Apr 2019 10:47:16 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78cd6d41ae36bd58fb083ad428705b8bdd612d12faf48aa471c9c4d2ead1c05`  
		Last Modified: Wed, 24 Apr 2019 10:47:16 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
