<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.9.5`](#vault095)
-	[`vault:latest`](#vaultlatest)

## `vault:0.9.5`

```console
$ docker pull vault@sha256:deb3116167b07d6ba4b97b4150477a325f1bf02a611e8fa04e62d59b950b8b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:0.9.5` - linux; amd64

```console
$ docker pull vault@sha256:90d2358d4747185bf0d3e067e74fba4209a945c8c3e246e75e2bed98b6780cec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22180845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90edf36107e84197a7b0607259116a9731144522348205ded13353cdb7cfe04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 00:18:45 GMT
ENV VAULT_VERSION=0.9.5
# Tue, 27 Feb 2018 00:18:46 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Feb 2018 17:03:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Feb 2018 17:03:29 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Feb 2018 17:03:29 GMT
VOLUME [/vault/logs]
# Tue, 27 Feb 2018 17:03:30 GMT
VOLUME [/vault/file]
# Tue, 27 Feb 2018 17:03:30 GMT
EXPOSE 8200/tcp
# Tue, 27 Feb 2018 17:03:30 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Feb 2018 17:03:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 17:03:31 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c935e6f0938a8c0d5dd0473f4b6ca91a067b16640db90ea314a8c24dc909abf7`  
		Last Modified: Tue, 27 Feb 2018 17:03:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3862ff05fe20d0462680fdbfa703d12e11988047b08e4e9b340b2fa0b157f3`  
		Last Modified: Tue, 27 Feb 2018 17:03:53 GMT  
		Size: 20.1 MB (20112110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03247def4838049cb7427548194ea7f43eb62aca7752880fc25eaa2aae733fd`  
		Last Modified: Tue, 27 Feb 2018 17:03:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514da7639d1edf66372acbeebc48ba5afcc516220a0cdc31c0004dea04788323`  
		Last Modified: Tue, 27 Feb 2018 17:03:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.9.5` - linux; arm variant v6

```console
$ docker pull vault@sha256:d3e7f8d5b6518db47c9db88cf093038c5a9a6fa09f08bb39b9e2bf1c7d1dd28f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21036890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b402fb4625760ad93575b8a83b93bd95d37835f9e2f5e8fb8e99a60d4b1911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 06:52:16 GMT
ENV VAULT_VERSION=0.9.5
# Fri, 02 Mar 2018 06:52:20 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 02 Mar 2018 06:53:00 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 02 Mar 2018 06:53:03 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 02 Mar 2018 06:53:04 GMT
VOLUME [/vault/logs]
# Fri, 02 Mar 2018 06:53:05 GMT
VOLUME [/vault/file]
# Fri, 02 Mar 2018 06:53:05 GMT
EXPOSE 8200/tcp
# Fri, 02 Mar 2018 06:53:06 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 02 Mar 2018 06:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 06:53:07 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9047fe9ad84c71dbd28b83d182198b152c755ee9dd4cce0978721545656510`  
		Last Modified: Fri, 02 Mar 2018 06:53:21 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a3ac35711efb6de9aa219ed141c8d8cffac5a2b5b4853f271c42b42e47b96`  
		Last Modified: Fri, 02 Mar 2018 06:53:46 GMT  
		Size: 19.0 MB (18995151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0107b98ac0aebaf4d49f5ca7bdfc9560e75930a9a54b73b2ffc3de9762d85b`  
		Last Modified: Fri, 02 Mar 2018 06:53:21 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72ca303ba664064c1256778e1fc8aa0b3cc675ffc79685388956dbbc661a185`  
		Last Modified: Fri, 02 Mar 2018 06:53:21 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.9.5` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:5e263478f8da33936c591332820d910efb73034092d385975f801cdbfb46e0e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20610061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad2dfbd5ceefc071013011c784c7caafebe75207a78d368005b02388f62f292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 12:25:55 GMT
ENV VAULT_VERSION=0.9.5
# Tue, 27 Feb 2018 12:25:56 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Feb 2018 17:03:44 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Feb 2018 17:03:46 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Feb 2018 17:03:46 GMT
VOLUME [/vault/logs]
# Tue, 27 Feb 2018 17:03:47 GMT
VOLUME [/vault/file]
# Tue, 27 Feb 2018 17:03:48 GMT
EXPOSE 8200/tcp
# Tue, 27 Feb 2018 17:03:48 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Feb 2018 17:03:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 17:03:50 GMT
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
	-	`sha256:eb639a7f0dac1bd6f62fb940f9e05cc1dad69228134dc684fd2d7b1e69595fb5`  
		Last Modified: Tue, 27 Feb 2018 17:04:13 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6dd435d8fc7c6f16d5f1987178410086d047fedc23bcb6a1704e8e99f3286c`  
		Last Modified: Tue, 27 Feb 2018 17:04:21 GMT  
		Size: 18.6 MB (18617829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d858ea7d5ed6b9c4ebb2ae6289e9cf79a73ce0bc1820dd74b15a7b5ec789a`  
		Last Modified: Tue, 27 Feb 2018 17:04:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28203a26a06a58bdab84f61acb3c72779e08262f551a6b2561c2c7447e61a1c`  
		Last Modified: Tue, 27 Feb 2018 17:04:12 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.9.5` - linux; 386

```console
$ docker pull vault@sha256:5ea9073aeca7b117510e7e4786fe5b397b1c7a608abc49073c3db41117653886
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21373622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093708508bd6ffe3ebac55cea17d1d8090d9aa92dea15ce1e1e90bf009a3f4b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 03:51:53 GMT
ENV VAULT_VERSION=0.9.5
# Tue, 27 Feb 2018 03:51:55 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Feb 2018 17:24:16 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Feb 2018 17:24:16 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Feb 2018 17:24:17 GMT
VOLUME [/vault/logs]
# Tue, 27 Feb 2018 17:24:17 GMT
VOLUME [/vault/file]
# Tue, 27 Feb 2018 17:24:17 GMT
EXPOSE 8200/tcp
# Tue, 27 Feb 2018 17:24:18 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Feb 2018 17:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 17:24:18 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c901616e9f8aabb644e181d2fef0a9f63ebbb11fe46d1f9ad7bf942f5c2f1f90`  
		Last Modified: Tue, 27 Feb 2018 17:34:14 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484b20d7f88d9f6a922d35104f15f983eb707b1a5aaac71d21eff1bc9cd4e5ac`  
		Last Modified: Tue, 27 Feb 2018 17:34:18 GMT  
		Size: 19.2 MB (19244029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e07a80d295c5102ea1e20db7cfd84e0317df01357fbc8a817e94e572e87ae7`  
		Last Modified: Tue, 27 Feb 2018 17:34:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af61fc0d8063188706c22ce70a0bffae1d17a0e4a6618d44ce521dae3da2ad`  
		Last Modified: Tue, 27 Feb 2018 17:34:14 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:deb3116167b07d6ba4b97b4150477a325f1bf02a611e8fa04e62d59b950b8b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:90d2358d4747185bf0d3e067e74fba4209a945c8c3e246e75e2bed98b6780cec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22180845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90edf36107e84197a7b0607259116a9731144522348205ded13353cdb7cfe04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 00:18:45 GMT
ENV VAULT_VERSION=0.9.5
# Tue, 27 Feb 2018 00:18:46 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Feb 2018 17:03:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Feb 2018 17:03:29 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Feb 2018 17:03:29 GMT
VOLUME [/vault/logs]
# Tue, 27 Feb 2018 17:03:30 GMT
VOLUME [/vault/file]
# Tue, 27 Feb 2018 17:03:30 GMT
EXPOSE 8200/tcp
# Tue, 27 Feb 2018 17:03:30 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Feb 2018 17:03:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 17:03:31 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c935e6f0938a8c0d5dd0473f4b6ca91a067b16640db90ea314a8c24dc909abf7`  
		Last Modified: Tue, 27 Feb 2018 17:03:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3862ff05fe20d0462680fdbfa703d12e11988047b08e4e9b340b2fa0b157f3`  
		Last Modified: Tue, 27 Feb 2018 17:03:53 GMT  
		Size: 20.1 MB (20112110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03247def4838049cb7427548194ea7f43eb62aca7752880fc25eaa2aae733fd`  
		Last Modified: Tue, 27 Feb 2018 17:03:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514da7639d1edf66372acbeebc48ba5afcc516220a0cdc31c0004dea04788323`  
		Last Modified: Tue, 27 Feb 2018 17:03:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:d3e7f8d5b6518db47c9db88cf093038c5a9a6fa09f08bb39b9e2bf1c7d1dd28f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (21036890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b402fb4625760ad93575b8a83b93bd95d37835f9e2f5e8fb8e99a60d4b1911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 06:52:16 GMT
ENV VAULT_VERSION=0.9.5
# Fri, 02 Mar 2018 06:52:20 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 02 Mar 2018 06:53:00 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 02 Mar 2018 06:53:03 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 02 Mar 2018 06:53:04 GMT
VOLUME [/vault/logs]
# Fri, 02 Mar 2018 06:53:05 GMT
VOLUME [/vault/file]
# Fri, 02 Mar 2018 06:53:05 GMT
EXPOSE 8200/tcp
# Fri, 02 Mar 2018 06:53:06 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 02 Mar 2018 06:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 06:53:07 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9047fe9ad84c71dbd28b83d182198b152c755ee9dd4cce0978721545656510`  
		Last Modified: Fri, 02 Mar 2018 06:53:21 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a3ac35711efb6de9aa219ed141c8d8cffac5a2b5b4853f271c42b42e47b96`  
		Last Modified: Fri, 02 Mar 2018 06:53:46 GMT  
		Size: 19.0 MB (18995151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0107b98ac0aebaf4d49f5ca7bdfc9560e75930a9a54b73b2ffc3de9762d85b`  
		Last Modified: Fri, 02 Mar 2018 06:53:21 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72ca303ba664064c1256778e1fc8aa0b3cc675ffc79685388956dbbc661a185`  
		Last Modified: Fri, 02 Mar 2018 06:53:21 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:5e263478f8da33936c591332820d910efb73034092d385975f801cdbfb46e0e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20610061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad2dfbd5ceefc071013011c784c7caafebe75207a78d368005b02388f62f292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 12:25:55 GMT
ENV VAULT_VERSION=0.9.5
# Tue, 27 Feb 2018 12:25:56 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Feb 2018 17:03:44 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Feb 2018 17:03:46 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Feb 2018 17:03:46 GMT
VOLUME [/vault/logs]
# Tue, 27 Feb 2018 17:03:47 GMT
VOLUME [/vault/file]
# Tue, 27 Feb 2018 17:03:48 GMT
EXPOSE 8200/tcp
# Tue, 27 Feb 2018 17:03:48 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Feb 2018 17:03:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 17:03:50 GMT
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
	-	`sha256:eb639a7f0dac1bd6f62fb940f9e05cc1dad69228134dc684fd2d7b1e69595fb5`  
		Last Modified: Tue, 27 Feb 2018 17:04:13 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6dd435d8fc7c6f16d5f1987178410086d047fedc23bcb6a1704e8e99f3286c`  
		Last Modified: Tue, 27 Feb 2018 17:04:21 GMT  
		Size: 18.6 MB (18617829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8d858ea7d5ed6b9c4ebb2ae6289e9cf79a73ce0bc1820dd74b15a7b5ec789a`  
		Last Modified: Tue, 27 Feb 2018 17:04:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28203a26a06a58bdab84f61acb3c72779e08262f551a6b2561c2c7447e61a1c`  
		Last Modified: Tue, 27 Feb 2018 17:04:12 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:5ea9073aeca7b117510e7e4786fe5b397b1c7a608abc49073c3db41117653886
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21373622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093708508bd6ffe3ebac55cea17d1d8090d9aa92dea15ce1e1e90bf009a3f4b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 03:51:53 GMT
ENV VAULT_VERSION=0.9.5
# Tue, 27 Feb 2018 03:51:55 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Feb 2018 17:24:16 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Feb 2018 17:24:16 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Feb 2018 17:24:17 GMT
VOLUME [/vault/logs]
# Tue, 27 Feb 2018 17:24:17 GMT
VOLUME [/vault/file]
# Tue, 27 Feb 2018 17:24:17 GMT
EXPOSE 8200/tcp
# Tue, 27 Feb 2018 17:24:18 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Feb 2018 17:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 17:24:18 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c901616e9f8aabb644e181d2fef0a9f63ebbb11fe46d1f9ad7bf942f5c2f1f90`  
		Last Modified: Tue, 27 Feb 2018 17:34:14 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484b20d7f88d9f6a922d35104f15f983eb707b1a5aaac71d21eff1bc9cd4e5ac`  
		Last Modified: Tue, 27 Feb 2018 17:34:18 GMT  
		Size: 19.2 MB (19244029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e07a80d295c5102ea1e20db7cfd84e0317df01357fbc8a817e94e572e87ae7`  
		Last Modified: Tue, 27 Feb 2018 17:34:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af61fc0d8063188706c22ce70a0bffae1d17a0e4a6618d44ce521dae3da2ad`  
		Last Modified: Tue, 27 Feb 2018 17:34:14 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
