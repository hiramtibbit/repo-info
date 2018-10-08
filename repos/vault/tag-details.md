<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.11.3`](#vault0113)
-	[`vault:latest`](#vaultlatest)

## `vault:0.11.3`

```console
$ docker pull vault@sha256:0215ce6216983c3460966c1677ecc951d42525e8fd027c4ead3cb9d4bbf8e46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.11.3` - linux; amd64

```console
$ docker pull vault@sha256:de92ad538a5636e6c3a26f174235f6641d89e6f6fce5f43ff463e7a5021788e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36062272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b044e948916eaab8506ffd624d485ed710da1ade568f629ed3910b0b5a5709`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Mon, 08 Oct 2018 23:32:39 GMT
ENV VAULT_VERSION=0.11.3
# Mon, 08 Oct 2018 23:32:40 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 08 Oct 2018 23:32:47 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 08 Oct 2018 23:32:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 08 Oct 2018 23:32:48 GMT
VOLUME [/vault/logs]
# Mon, 08 Oct 2018 23:32:48 GMT
VOLUME [/vault/file]
# Mon, 08 Oct 2018 23:32:48 GMT
EXPOSE 8200/tcp
# Mon, 08 Oct 2018 23:32:48 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 08 Oct 2018 23:32:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 08 Oct 2018 23:32:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75e5c84f056baf6792190f312c69bcdb7b032036a4ea78911f92124084f6224`  
		Last Modified: Mon, 08 Oct 2018 23:33:01 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8281c995c3283f162c6013cd8ec73038aab3c8f350774934a9e5a259a4f0ba54`  
		Last Modified: Mon, 08 Oct 2018 23:33:08 GMT  
		Size: 33.9 MB (33852141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf9cbe4a7a68cf2ce9c6d53056cb9fbea07876453c6515218fa69d63d524f87`  
		Last Modified: Mon, 08 Oct 2018 23:33:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d79963f0cd531b52617c0f69eec619cd1d8b8b70d34fa0c0d2213f013fc1ba`  
		Last Modified: Mon, 08 Oct 2018 23:33:01 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:0f7286c3e745727cc7c787238501fd1558034d054d55d37c6cea1d8681319f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

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

### `vault:latest` - linux; arm64 variant v8

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

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:dec88d33f1342762b81a447f3763bf79f6041c2d603f3bb3f08a148a3333cdba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35167357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8333b71f067da1946616a53d0244adf021d5a057167e9a63c5d2533d2c5fac54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Thu, 04 Oct 2018 10:54:55 GMT
ENV VAULT_VERSION=0.11.2
# Thu, 04 Oct 2018 10:54:56 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 04 Oct 2018 10:55:03 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 04 Oct 2018 10:55:04 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 04 Oct 2018 10:55:04 GMT
VOLUME [/vault/logs]
# Thu, 04 Oct 2018 10:55:04 GMT
VOLUME [/vault/file]
# Thu, 04 Oct 2018 10:55:05 GMT
EXPOSE 8200/tcp
# Thu, 04 Oct 2018 10:55:05 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 04 Oct 2018 10:55:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Oct 2018 10:55:05 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78547bbb4a3d7aac09c5a5d68ec1a53b62347a9609b8c1fbfc7c6ff940c0245`  
		Last Modified: Thu, 04 Oct 2018 10:55:16 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb76fcc5b526c78d7f96136c76719bdbcf18ad48c08cdc5f321e9d585ad13788`  
		Last Modified: Thu, 04 Oct 2018 10:55:22 GMT  
		Size: 32.9 MB (32892524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd206ffb96130e69110679149bf554559e8c0cb98a0f505fa869913f6f6c1e5d`  
		Last Modified: Thu, 04 Oct 2018 10:55:16 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43eb9423352081d2c0db1b3fc7acc3072b45d6f7d46e329d3b9f8b61d56cb47c`  
		Last Modified: Thu, 04 Oct 2018 10:55:16 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
