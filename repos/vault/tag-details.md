<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.11.2`](#vault0112)
-	[`vault:latest`](#vaultlatest)

## `vault:0.11.2`

```console
$ docker pull vault@sha256:74409fe8adef89a89450bc4c326f01a3da6fd76b8c933e4a300bee63c1c367dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `vault:0.11.2` - linux; amd64

```console
$ docker pull vault@sha256:ed4201818d5e678792a2488244f4d09813e72fb9e17994d82f0e54ce4fc4a601
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36054756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52f153fb8cdc57a3e33b8010f825f42e715cd371a35564a189157a3d4d1a8b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 17:20:04 GMT
ENV VAULT_VERSION=0.11.2
# Wed, 03 Oct 2018 17:20:05 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 03 Oct 2018 17:20:12 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 03 Oct 2018 17:20:15 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 03 Oct 2018 17:20:15 GMT
VOLUME [/vault/logs]
# Wed, 03 Oct 2018 17:20:15 GMT
VOLUME [/vault/file]
# Wed, 03 Oct 2018 17:20:15 GMT
EXPOSE 8200/tcp
# Wed, 03 Oct 2018 17:20:16 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 03 Oct 2018 17:20:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 17:20:16 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8e8269edf1156f07814a27e7ea3609e497ae4f896713205cc33bc9bee9756`  
		Last Modified: Wed, 03 Oct 2018 17:20:32 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc185387c66e609628a7d1dff59ced030a417a9441494251abdafbe486d3960d`  
		Last Modified: Wed, 03 Oct 2018 17:20:39 GMT  
		Size: 33.8 MB (33844626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ac8c0994c9210c134c67b9354a866f689b9ae53bef00526acccec3916f92cd`  
		Last Modified: Wed, 03 Oct 2018 17:20:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbeeac916c361e76612984d7b53ffe7a82f731acdac46a3f6d45e8680c94667`  
		Last Modified: Wed, 03 Oct 2018 17:20:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.11.2` - linux; arm variant v6

```console
$ docker pull vault@sha256:0e3f712701449723387f406c63f24170c0d9918e255a6ae95a389c949af99ebe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34133491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a036bde939a708c11db812e1acb9148cec5b776599a6a66d67fd8c65275726d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Thu, 04 Oct 2018 07:49:49 GMT
ENV VAULT_VERSION=0.11.2
# Thu, 04 Oct 2018 07:49:53 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 04 Oct 2018 07:50:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 04 Oct 2018 07:50:34 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 04 Oct 2018 07:50:35 GMT
VOLUME [/vault/logs]
# Thu, 04 Oct 2018 07:50:35 GMT
VOLUME [/vault/file]
# Thu, 04 Oct 2018 07:50:36 GMT
EXPOSE 8200/tcp
# Thu, 04 Oct 2018 07:50:37 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 04 Oct 2018 07:50:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 07:50:39 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736cd6d78b8efb2db9dda7e7d8147a6622d68e47adee96238e92e835f9cc6e4c`  
		Last Modified: Thu, 04 Oct 2018 07:50:53 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc78bd9701a396ac5b0725de76b516cfb46d08b0e6d3be321b7b83c0f46aaa6`  
		Last Modified: Thu, 04 Oct 2018 07:51:29 GMT  
		Size: 32.0 MB (31983599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d640f33193840fff7759f4d378701b3ae32aca3bd6029d24de2a865d153c64b6`  
		Last Modified: Thu, 04 Oct 2018 07:50:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6df853fa4e16ace1fae00139f96a9cf6f532a9dfd11a27e98d7a46d539e8347`  
		Last Modified: Thu, 04 Oct 2018 07:50:53 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.11.2` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:6f1842a611ca6c95451f9b51097e7afd3b173bfc436ffa166b00e2b03ec55eda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33747991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482f878fc998b5ba7a247fa69c14af83f8d04711087367dbf609dea98c4974ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Thu, 04 Oct 2018 08:59:48 GMT
ENV VAULT_VERSION=0.11.2
# Thu, 04 Oct 2018 08:59:50 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 04 Oct 2018 09:00:03 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 04 Oct 2018 09:00:05 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 04 Oct 2018 09:00:06 GMT
VOLUME [/vault/logs]
# Thu, 04 Oct 2018 09:00:06 GMT
VOLUME [/vault/file]
# Thu, 04 Oct 2018 09:00:07 GMT
EXPOSE 8200/tcp
# Thu, 04 Oct 2018 09:00:08 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 04 Oct 2018 09:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 09:00:09 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fb96e795ce42fb752333aaff0d2db3bec236dfa77c53f0838b25ee49fdc5`  
		Last Modified: Thu, 04 Oct 2018 09:00:28 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9fded75e0ef4e4907f75246982df7baa8e96f7b8833e59f4d9aefcb4153c16`  
		Last Modified: Thu, 04 Oct 2018 09:00:40 GMT  
		Size: 31.6 MB (31644850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0173977c7ac538c8806d65730c910ce88cdc24fa667912cf56e7d23f0b7bdd99`  
		Last Modified: Thu, 04 Oct 2018 09:00:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e56688d01d0a2262331f39591ffc81e4f71fa43863d292510ce5bbdbc5bf3a`  
		Last Modified: Thu, 04 Oct 2018 09:00:28 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:e7384fde4c3673ce29df55e24acd32aeabf7e0a621dc99399aeacb3c9d5a8161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:ed4201818d5e678792a2488244f4d09813e72fb9e17994d82f0e54ce4fc4a601
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36054756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52f153fb8cdc57a3e33b8010f825f42e715cd371a35564a189157a3d4d1a8b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 17:20:04 GMT
ENV VAULT_VERSION=0.11.2
# Wed, 03 Oct 2018 17:20:05 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 03 Oct 2018 17:20:12 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 03 Oct 2018 17:20:15 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 03 Oct 2018 17:20:15 GMT
VOLUME [/vault/logs]
# Wed, 03 Oct 2018 17:20:15 GMT
VOLUME [/vault/file]
# Wed, 03 Oct 2018 17:20:15 GMT
EXPOSE 8200/tcp
# Wed, 03 Oct 2018 17:20:16 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 03 Oct 2018 17:20:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Oct 2018 17:20:16 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8e8269edf1156f07814a27e7ea3609e497ae4f896713205cc33bc9bee9756`  
		Last Modified: Wed, 03 Oct 2018 17:20:32 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc185387c66e609628a7d1dff59ced030a417a9441494251abdafbe486d3960d`  
		Last Modified: Wed, 03 Oct 2018 17:20:39 GMT  
		Size: 33.8 MB (33844626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ac8c0994c9210c134c67b9354a866f689b9ae53bef00526acccec3916f92cd`  
		Last Modified: Wed, 03 Oct 2018 17:20:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbeeac916c361e76612984d7b53ffe7a82f731acdac46a3f6d45e8680c94667`  
		Last Modified: Wed, 03 Oct 2018 17:20:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:0e3f712701449723387f406c63f24170c0d9918e255a6ae95a389c949af99ebe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34133491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a036bde939a708c11db812e1acb9148cec5b776599a6a66d67fd8c65275726d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Thu, 04 Oct 2018 07:49:49 GMT
ENV VAULT_VERSION=0.11.2
# Thu, 04 Oct 2018 07:49:53 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 04 Oct 2018 07:50:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 04 Oct 2018 07:50:34 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 04 Oct 2018 07:50:35 GMT
VOLUME [/vault/logs]
# Thu, 04 Oct 2018 07:50:35 GMT
VOLUME [/vault/file]
# Thu, 04 Oct 2018 07:50:36 GMT
EXPOSE 8200/tcp
# Thu, 04 Oct 2018 07:50:37 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 04 Oct 2018 07:50:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 07:50:39 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736cd6d78b8efb2db9dda7e7d8147a6622d68e47adee96238e92e835f9cc6e4c`  
		Last Modified: Thu, 04 Oct 2018 07:50:53 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc78bd9701a396ac5b0725de76b516cfb46d08b0e6d3be321b7b83c0f46aaa6`  
		Last Modified: Thu, 04 Oct 2018 07:51:29 GMT  
		Size: 32.0 MB (31983599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d640f33193840fff7759f4d378701b3ae32aca3bd6029d24de2a865d153c64b6`  
		Last Modified: Thu, 04 Oct 2018 07:50:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6df853fa4e16ace1fae00139f96a9cf6f532a9dfd11a27e98d7a46d539e8347`  
		Last Modified: Thu, 04 Oct 2018 07:50:53 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
