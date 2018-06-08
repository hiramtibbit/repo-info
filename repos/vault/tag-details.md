<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.10.2`](#vault0102)
-	[`vault:latest`](#vaultlatest)

## `vault:0.10.2`

```console
$ docker pull vault@sha256:ffc4be6f48bb711907fa4c0111482f12c07ad8ef373f10a0d1f090db8c9397ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `vault:0.10.2` - linux; amd64

```console
$ docker pull vault@sha256:61f267f6dad8f94adb9a26605064b747673a4d3a72e8019641ac22d6683f8eaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24450883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7759573ec8758972fa1c47c5c5fb57265a2e9cd7a624a0008244e2755f57fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 07 Jun 2018 20:20:20 GMT
ENV VAULT_VERSION=0.10.2
# Thu, 07 Jun 2018 20:20:21 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 07 Jun 2018 20:20:35 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 07 Jun 2018 20:20:36 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 07 Jun 2018 20:20:36 GMT
VOLUME [/vault/logs]
# Thu, 07 Jun 2018 20:20:36 GMT
VOLUME [/vault/file]
# Thu, 07 Jun 2018 20:20:36 GMT
EXPOSE 8200/tcp
# Thu, 07 Jun 2018 20:20:36 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Jun 2018 20:20:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 20:20:37 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb099864735c0ad478d8999dcc5d4b4a4e42edb69cc7421aa4cdf8fa8c7ccc90`  
		Last Modified: Thu, 07 Jun 2018 20:20:53 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6034c8b3202b7c221fffca1ce481a9c5ec60dd6a8c4be1113feb612ec4f2b47`  
		Last Modified: Thu, 07 Jun 2018 20:21:16 GMT  
		Size: 22.4 MB (22382144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45024412d2ef75a0c6c37e3b703075e64dc7f4b202da7477070ef9a7ea0013e7`  
		Last Modified: Thu, 07 Jun 2018 20:20:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e4022c303dd8975658d575b611e071fa6552927710ab9a67c61a92f59141f`  
		Last Modified: Thu, 07 Jun 2018 20:20:53 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.2` - linux; arm variant v6

```console
$ docker pull vault@sha256:ff46d9c57f4b5ca73678864b9220b5b81467cdcfeb0d0438fff414b00fe9a2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23753074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fb92cf39863221ad2eea2a420bf616fd68ca87d0b0c5384b3e6b4c02f455b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Jun 2018 07:49:44 GMT
ENV VAULT_VERSION=0.10.2
# Fri, 08 Jun 2018 07:49:48 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Jun 2018 07:50:25 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Jun 2018 07:50:30 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Jun 2018 07:50:31 GMT
VOLUME [/vault/logs]
# Fri, 08 Jun 2018 07:50:32 GMT
VOLUME [/vault/file]
# Fri, 08 Jun 2018 07:50:32 GMT
EXPOSE 8200/tcp
# Fri, 08 Jun 2018 07:50:33 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Jun 2018 07:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Jun 2018 07:50:35 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa777c69c69ceed411b412cb4f6ee3b1bfb0a6628706012b62193cdd93dc6a36`  
		Last Modified: Fri, 08 Jun 2018 07:50:51 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13703dd0735881f99f296249df44815bb1792b53ab1869c07ca0bbd176a3806`  
		Last Modified: Fri, 08 Jun 2018 07:51:17 GMT  
		Size: 21.7 MB (21711337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafae77a8de58c6d78abc7bd4cab88bd49761f128f536b60dad3597a706c96b3`  
		Last Modified: Fri, 08 Jun 2018 07:50:51 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81fab5553b4a7e8ed9d13e25db2d984804dad9d8dbe2722c86904b7c913d8d`  
		Last Modified: Fri, 08 Jun 2018 07:50:51 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.2` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:629d299f42f4528cd66ae0e4336d82c480615d07db5f5fb6336ec187e80f705f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23290051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1a0cd1392fcde228ea793fe0911f6ed1378bc9c9fbcfceabe10cfa1f1048ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Jun 2018 08:54:27 GMT
ENV VAULT_VERSION=0.10.2
# Fri, 08 Jun 2018 08:54:29 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Jun 2018 08:54:40 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Jun 2018 08:54:42 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Jun 2018 08:54:43 GMT
VOLUME [/vault/logs]
# Fri, 08 Jun 2018 08:54:44 GMT
VOLUME [/vault/file]
# Fri, 08 Jun 2018 08:54:45 GMT
EXPOSE 8200/tcp
# Fri, 08 Jun 2018 08:54:47 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Jun 2018 08:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Jun 2018 08:54:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8411410890488ebcc7bab39b977bb1ead4ea98c6980a05c730919257573d2d7`  
		Last Modified: Fri, 08 Jun 2018 08:55:06 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f518f09ed5de6a6558eb12c74300d9453085578b0f404594a4f7aaeebbce6391`  
		Last Modified: Fri, 08 Jun 2018 08:55:15 GMT  
		Size: 21.3 MB (21297815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3a9a69402edc9c8647663948d8e3d8577dff55c18b7f7b810320b66cab0f87`  
		Last Modified: Fri, 08 Jun 2018 08:55:05 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d273ae7f2493c02cd614d082d35e69d8e87c1b45ed7eec1b2ebbcec7601350`  
		Last Modified: Fri, 08 Jun 2018 08:55:05 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:4c90c10aad41e44c45ff3edd551053b9d072d13bfdd48a5df692b83f0b9261e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:61f267f6dad8f94adb9a26605064b747673a4d3a72e8019641ac22d6683f8eaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24450883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7759573ec8758972fa1c47c5c5fb57265a2e9cd7a624a0008244e2755f57fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 07 Jun 2018 20:20:20 GMT
ENV VAULT_VERSION=0.10.2
# Thu, 07 Jun 2018 20:20:21 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 07 Jun 2018 20:20:35 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 07 Jun 2018 20:20:36 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 07 Jun 2018 20:20:36 GMT
VOLUME [/vault/logs]
# Thu, 07 Jun 2018 20:20:36 GMT
VOLUME [/vault/file]
# Thu, 07 Jun 2018 20:20:36 GMT
EXPOSE 8200/tcp
# Thu, 07 Jun 2018 20:20:36 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Jun 2018 20:20:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 20:20:37 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb099864735c0ad478d8999dcc5d4b4a4e42edb69cc7421aa4cdf8fa8c7ccc90`  
		Last Modified: Thu, 07 Jun 2018 20:20:53 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6034c8b3202b7c221fffca1ce481a9c5ec60dd6a8c4be1113feb612ec4f2b47`  
		Last Modified: Thu, 07 Jun 2018 20:21:16 GMT  
		Size: 22.4 MB (22382144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45024412d2ef75a0c6c37e3b703075e64dc7f4b202da7477070ef9a7ea0013e7`  
		Last Modified: Thu, 07 Jun 2018 20:20:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e4022c303dd8975658d575b611e071fa6552927710ab9a67c61a92f59141f`  
		Last Modified: Thu, 07 Jun 2018 20:20:53 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:ff46d9c57f4b5ca73678864b9220b5b81467cdcfeb0d0438fff414b00fe9a2cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23753074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fb92cf39863221ad2eea2a420bf616fd68ca87d0b0c5384b3e6b4c02f455b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Jun 2018 07:49:44 GMT
ENV VAULT_VERSION=0.10.2
# Fri, 08 Jun 2018 07:49:48 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Jun 2018 07:50:25 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Jun 2018 07:50:30 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Jun 2018 07:50:31 GMT
VOLUME [/vault/logs]
# Fri, 08 Jun 2018 07:50:32 GMT
VOLUME [/vault/file]
# Fri, 08 Jun 2018 07:50:32 GMT
EXPOSE 8200/tcp
# Fri, 08 Jun 2018 07:50:33 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Jun 2018 07:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Jun 2018 07:50:35 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa777c69c69ceed411b412cb4f6ee3b1bfb0a6628706012b62193cdd93dc6a36`  
		Last Modified: Fri, 08 Jun 2018 07:50:51 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13703dd0735881f99f296249df44815bb1792b53ab1869c07ca0bbd176a3806`  
		Last Modified: Fri, 08 Jun 2018 07:51:17 GMT  
		Size: 21.7 MB (21711337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafae77a8de58c6d78abc7bd4cab88bd49761f128f536b60dad3597a706c96b3`  
		Last Modified: Fri, 08 Jun 2018 07:50:51 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81fab5553b4a7e8ed9d13e25db2d984804dad9d8dbe2722c86904b7c913d8d`  
		Last Modified: Fri, 08 Jun 2018 07:50:51 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
