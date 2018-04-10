<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.10.0-rc1`](#vault0100-rc1)
-	[`vault:0.9.6`](#vault096)
-	[`vault:latest`](#vaultlatest)

## `vault:0.10.0-rc1`

```console
$ docker pull vault@sha256:eabbe871375a01a9734128c69331ddd5dd7b01c5723b5fa03a5b93f2183f98ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `vault:0.10.0-rc1` - linux; amd64

```console
$ docker pull vault@sha256:dbf75823185a38a6513b8e05e318771bf7d302f6419d8c01bec073e1860f6039
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24109840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f9c1624e1ae5cd75dd5bc76aa479aed234f1f07d6ac497a476fadb3adb2280`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 06 Apr 2018 20:58:21 GMT
ENV VAULT_VERSION=0.10.0-rc1
# Fri, 06 Apr 2018 20:58:22 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 06 Apr 2018 21:00:15 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 06 Apr 2018 21:00:16 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 06 Apr 2018 21:00:16 GMT
VOLUME [/vault/logs]
# Fri, 06 Apr 2018 21:00:17 GMT
VOLUME [/vault/file]
# Fri, 06 Apr 2018 21:00:17 GMT
EXPOSE 8200/tcp
# Fri, 06 Apr 2018 21:00:18 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 06 Apr 2018 21:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Apr 2018 21:00:18 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17aa3596218e7c0e18e975332a0629a1610fe626f8ee712b221e58de59f7ea0`  
		Last Modified: Fri, 06 Apr 2018 21:00:43 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ee4d8267a3b54493bbaf43005b6845f87f06b349c1ed7632c3570ef0e63158`  
		Last Modified: Fri, 06 Apr 2018 21:00:49 GMT  
		Size: 22.0 MB (22041099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300df78b58e2a0f907708a509d2fd416cb5f3b2a522d7fce52b569d07f82d5b`  
		Last Modified: Fri, 06 Apr 2018 21:00:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c88bfe56d806bc3765988ac8dafb5e2642d78675cee8987d58f1a6cfb6ecc6`  
		Last Modified: Fri, 06 Apr 2018 21:00:43 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.0-rc1` - linux; arm variant v6

```console
$ docker pull vault@sha256:6efdeb392d1f758ebe801c0c161b55bdc31b9a738fec57f42e414bab8b097fef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23418948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee19cc84bb1d9cb4bbecd08a102423899a7fee34995af6f42cc52485915acfe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Apr 2018 01:50:24 GMT
ENV VAULT_VERSION=0.10.0-rc1
# Tue, 10 Apr 2018 01:50:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 10 Apr 2018 01:51:02 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 10 Apr 2018 01:51:06 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 10 Apr 2018 01:51:06 GMT
VOLUME [/vault/logs]
# Tue, 10 Apr 2018 01:51:07 GMT
VOLUME [/vault/file]
# Tue, 10 Apr 2018 01:51:08 GMT
EXPOSE 8200/tcp
# Tue, 10 Apr 2018 01:51:09 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 10 Apr 2018 01:51:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:51:10 GMT
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
	-	`sha256:084cb2dde4417a17b95e3ef587327a35793beaa2c0a2ab387bc77245dd6bd9ac`  
		Last Modified: Tue, 10 Apr 2018 01:52:01 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951d43efc2e5988dd6221db82b2fb7e768aacdbac37bca025a7cd758266b88e`  
		Last Modified: Tue, 10 Apr 2018 01:52:29 GMT  
		Size: 21.4 MB (21377212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f2dd2b0d84b6699b7514044e4326355f71edf299045c6d4283fda2ce19df18`  
		Last Modified: Tue, 10 Apr 2018 01:52:01 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c327f03e5b48cbe34b6486d297fcffce296022e0f19558d81997fcd551ab95`  
		Last Modified: Tue, 10 Apr 2018 01:52:01 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.9.6`

```console
$ docker pull vault@sha256:881b7e5b9730655e0d51667c7d5305020fa1033700cf31880e726c30f4ab60eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:0.9.6` - linux; amd64

```console
$ docker pull vault@sha256:9ee0518036323fad67911d31ef123748ee8c0ba43ed0daa1f4c4bcf2c7f3de6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.4 MB (22354500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d23338f1efc89627d4a6df445747b9da154e3068341045484cac247ef25a543`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Mar 2018 19:07:23 GMT
ENV VAULT_VERSION=0.9.6
# Wed, 21 Mar 2018 19:07:24 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 21 Mar 2018 19:07:32 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 21 Mar 2018 19:07:33 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 21 Mar 2018 19:07:34 GMT
VOLUME [/vault/logs]
# Wed, 21 Mar 2018 19:07:34 GMT
VOLUME [/vault/file]
# Wed, 21 Mar 2018 19:07:34 GMT
EXPOSE 8200/tcp
# Wed, 21 Mar 2018 19:07:35 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 21 Mar 2018 19:07:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Mar 2018 19:07:35 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43b792ef23e69d7eda42a705c5d3d0a656de0ea80fcd24548e42290bf5e7c1`  
		Last Modified: Wed, 21 Mar 2018 19:07:59 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b3be715dcae8facacd85b987d2fe690d4e4983e4c2babd9237c07748ee880e`  
		Last Modified: Wed, 21 Mar 2018 19:08:01 GMT  
		Size: 20.3 MB (20285763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1666d618f5c4be423182c3ce663b9df1fc5b91ef6a08300d6cfd2bde76ef3f0e`  
		Last Modified: Wed, 21 Mar 2018 19:07:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf63a0b2360c3d065a8c57159c15ce62dd2e6ab43bdd2fa52c68fe304d0f87`  
		Last Modified: Wed, 21 Mar 2018 19:07:57 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.9.6` - linux; arm variant v6

```console
$ docker pull vault@sha256:8845c0c6de99a7ad89a50d7d139a90342b54c4332169a918542759862472098c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21193138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ae2ced850fbb14aa8f87449b7f49e493fab5aadf33d78a18a078f37c0594df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Apr 2018 01:49:24 GMT
ENV VAULT_VERSION=0.9.6
# Tue, 10 Apr 2018 01:49:28 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 10 Apr 2018 01:50:10 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 10 Apr 2018 01:50:14 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 10 Apr 2018 01:50:15 GMT
VOLUME [/vault/logs]
# Tue, 10 Apr 2018 01:50:15 GMT
VOLUME [/vault/file]
# Tue, 10 Apr 2018 01:50:16 GMT
EXPOSE 8200/tcp
# Tue, 10 Apr 2018 01:50:17 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 10 Apr 2018 01:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:50:19 GMT
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
	-	`sha256:e127a15945def857d6aa372fa200658a470a5cddc5a2bc64b50166c334e74ff7`  
		Last Modified: Tue, 10 Apr 2018 01:51:20 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30964c6b8935eed2f23a245cf06766c63b19aa13e7ccde9ebc183b07fe3caae`  
		Last Modified: Tue, 10 Apr 2018 01:51:45 GMT  
		Size: 19.2 MB (19151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fec3102370b452c743f1cabb3344c215c039ef24d9f11963a4de5022a31dcc0`  
		Last Modified: Tue, 10 Apr 2018 01:51:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec976ba71960c98386009853b5f16f0a318c884f82967526944b661ef4669f6`  
		Last Modified: Tue, 10 Apr 2018 01:51:22 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.9.6` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:81e1abc82766ee6748a3bca1db7376bd9e16116f3c9e72b2774cad83d6ab5555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20779525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce62ddb0d14976b3a6e68b4918bde07891b7241d4caa9ff9766c73db89e846b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 22 Mar 2018 11:26:00 GMT
ENV VAULT_VERSION=0.9.6
# Thu, 22 Mar 2018 11:26:02 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 22 Mar 2018 11:26:14 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 22 Mar 2018 11:26:16 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 22 Mar 2018 11:26:17 GMT
VOLUME [/vault/logs]
# Thu, 22 Mar 2018 11:26:17 GMT
VOLUME [/vault/file]
# Thu, 22 Mar 2018 11:26:18 GMT
EXPOSE 8200/tcp
# Thu, 22 Mar 2018 11:26:19 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 22 Mar 2018 11:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 11:26:21 GMT
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
	-	`sha256:ac136b4232efd492d9d9cf3d2115917a7e4f86654ec591dca43a569812235740`  
		Last Modified: Thu, 22 Mar 2018 11:27:01 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269204ad90c8fc8a1b6eefe46c082e68126de160f186941c63f495335d9017c0`  
		Last Modified: Thu, 22 Mar 2018 11:26:57 GMT  
		Size: 18.8 MB (18787292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf49a161c2e265793b5e85fd285cf8067d292e4d802c18cbd74e1c7a70f8d30`  
		Last Modified: Thu, 22 Mar 2018 11:26:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0c97b4b7b7bfb3ad54ad14f7b75634d658b8d8ce1b2ba631a4b4cbd9a426e6`  
		Last Modified: Thu, 22 Mar 2018 11:26:53 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.9.6` - linux; 386

```console
$ docker pull vault@sha256:4383a987a4a47c366756a5a4689a4217f24a74f11908e5a4865589a243012792
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21544347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e957367bcf7cb78f846b5b630d02a113a23a3b543d971be3b0cb2a580fd97ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 28 Mar 2018 21:10:35 GMT
ENV VAULT_VERSION=0.9.6
# Sat, 31 Mar 2018 13:36:44 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 31 Mar 2018 13:36:55 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 31 Mar 2018 13:36:56 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 31 Mar 2018 13:36:57 GMT
VOLUME [/vault/logs]
# Sat, 31 Mar 2018 13:36:57 GMT
VOLUME [/vault/file]
# Sat, 31 Mar 2018 13:36:57 GMT
EXPOSE 8200/tcp
# Sat, 31 Mar 2018 13:36:58 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 31 Mar 2018 13:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 13:36:58 GMT
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
	-	`sha256:17c407232ed14f8ab457d209b758b3ce6d8e69bbd72525fb3989b76d5310afb0`  
		Last Modified: Sat, 31 Mar 2018 13:56:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18eda4cb6c4e6b6b6d434ae3a7542b58e1a4e8db3211dea71129ca2738f4ead6`  
		Last Modified: Sat, 31 Mar 2018 13:56:05 GMT  
		Size: 19.4 MB (19414759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4968e635fae3dda93b6cb9d88f371d412bfc3062d0d4c69d64f558686b846b9c`  
		Last Modified: Sat, 31 Mar 2018 13:55:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8019c5ae0850bdde556d6a960c66401bb7dbc0fa9279f8fcf704b041efde34`  
		Last Modified: Sat, 31 Mar 2018 13:55:59 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:466c04c605837d461d4f35d06023590620c96227aabdf1a29173d355441215d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:9ee0518036323fad67911d31ef123748ee8c0ba43ed0daa1f4c4bcf2c7f3de6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.4 MB (22354500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d23338f1efc89627d4a6df445747b9da154e3068341045484cac247ef25a543`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Mar 2018 19:07:23 GMT
ENV VAULT_VERSION=0.9.6
# Wed, 21 Mar 2018 19:07:24 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 21 Mar 2018 19:07:32 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 21 Mar 2018 19:07:33 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 21 Mar 2018 19:07:34 GMT
VOLUME [/vault/logs]
# Wed, 21 Mar 2018 19:07:34 GMT
VOLUME [/vault/file]
# Wed, 21 Mar 2018 19:07:34 GMT
EXPOSE 8200/tcp
# Wed, 21 Mar 2018 19:07:35 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 21 Mar 2018 19:07:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Mar 2018 19:07:35 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b43b792ef23e69d7eda42a705c5d3d0a656de0ea80fcd24548e42290bf5e7c1`  
		Last Modified: Wed, 21 Mar 2018 19:07:59 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b3be715dcae8facacd85b987d2fe690d4e4983e4c2babd9237c07748ee880e`  
		Last Modified: Wed, 21 Mar 2018 19:08:01 GMT  
		Size: 20.3 MB (20285763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1666d618f5c4be423182c3ce663b9df1fc5b91ef6a08300d6cfd2bde76ef3f0e`  
		Last Modified: Wed, 21 Mar 2018 19:07:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf63a0b2360c3d065a8c57159c15ce62dd2e6ab43bdd2fa52c68fe304d0f87`  
		Last Modified: Wed, 21 Mar 2018 19:07:57 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:1c6cd07d1d6ef78381643f4941378481f2013233469e219bee9f8b6c97b098d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21193151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37828d46f19f5f4719bfd8f1fd1c36999c1962502e580d97330ce13b84a0b42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 22 Mar 2018 05:52:22 GMT
ENV VAULT_VERSION=0.9.6
# Thu, 22 Mar 2018 05:52:26 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 22 Mar 2018 05:53:01 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 22 Mar 2018 05:53:06 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 22 Mar 2018 05:53:06 GMT
VOLUME [/vault/logs]
# Thu, 22 Mar 2018 05:53:07 GMT
VOLUME [/vault/file]
# Thu, 22 Mar 2018 05:53:08 GMT
EXPOSE 8200/tcp
# Thu, 22 Mar 2018 05:53:09 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 22 Mar 2018 05:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 05:53:10 GMT
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
	-	`sha256:1d40d3fe290393cf6428715ffc8a84ecac1f86017ee8810c6ca0d975825d8c42`  
		Last Modified: Thu, 22 Mar 2018 05:53:26 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081fc16869d464c1cf592ad214156281db99b2fd652f405061b579da5431ef3b`  
		Last Modified: Thu, 22 Mar 2018 05:53:50 GMT  
		Size: 19.2 MB (19151418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189d49f4a6ce7c11982f024dd73cfe09ab4151fb09318b5fcf444c9ccb5860bc`  
		Last Modified: Thu, 22 Mar 2018 05:53:26 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1f0a783139784f715ec697abcb1256ff56e6ff39af6a169aeadf464b52def5`  
		Last Modified: Thu, 22 Mar 2018 05:53:26 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:81e1abc82766ee6748a3bca1db7376bd9e16116f3c9e72b2774cad83d6ab5555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20779525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce62ddb0d14976b3a6e68b4918bde07891b7241d4caa9ff9766c73db89e846b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 22 Mar 2018 11:26:00 GMT
ENV VAULT_VERSION=0.9.6
# Thu, 22 Mar 2018 11:26:02 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 22 Mar 2018 11:26:14 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 22 Mar 2018 11:26:16 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 22 Mar 2018 11:26:17 GMT
VOLUME [/vault/logs]
# Thu, 22 Mar 2018 11:26:17 GMT
VOLUME [/vault/file]
# Thu, 22 Mar 2018 11:26:18 GMT
EXPOSE 8200/tcp
# Thu, 22 Mar 2018 11:26:19 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 22 Mar 2018 11:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 11:26:21 GMT
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
	-	`sha256:ac136b4232efd492d9d9cf3d2115917a7e4f86654ec591dca43a569812235740`  
		Last Modified: Thu, 22 Mar 2018 11:27:01 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269204ad90c8fc8a1b6eefe46c082e68126de160f186941c63f495335d9017c0`  
		Last Modified: Thu, 22 Mar 2018 11:26:57 GMT  
		Size: 18.8 MB (18787292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf49a161c2e265793b5e85fd285cf8067d292e4d802c18cbd74e1c7a70f8d30`  
		Last Modified: Thu, 22 Mar 2018 11:26:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0c97b4b7b7bfb3ad54ad14f7b75634d658b8d8ce1b2ba631a4b4cbd9a426e6`  
		Last Modified: Thu, 22 Mar 2018 11:26:53 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:4383a987a4a47c366756a5a4689a4217f24a74f11908e5a4865589a243012792
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21544347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e957367bcf7cb78f846b5b630d02a113a23a3b543d971be3b0cb2a580fd97ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 28 Mar 2018 21:10:35 GMT
ENV VAULT_VERSION=0.9.6
# Sat, 31 Mar 2018 13:36:44 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 31 Mar 2018 13:36:55 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 31 Mar 2018 13:36:56 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 31 Mar 2018 13:36:57 GMT
VOLUME [/vault/logs]
# Sat, 31 Mar 2018 13:36:57 GMT
VOLUME [/vault/file]
# Sat, 31 Mar 2018 13:36:57 GMT
EXPOSE 8200/tcp
# Sat, 31 Mar 2018 13:36:58 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 31 Mar 2018 13:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 13:36:58 GMT
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
	-	`sha256:17c407232ed14f8ab457d209b758b3ce6d8e69bbd72525fb3989b76d5310afb0`  
		Last Modified: Sat, 31 Mar 2018 13:56:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18eda4cb6c4e6b6b6d434ae3a7542b58e1a4e8db3211dea71129ca2738f4ead6`  
		Last Modified: Sat, 31 Mar 2018 13:56:05 GMT  
		Size: 19.4 MB (19414759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4968e635fae3dda93b6cb9d88f371d412bfc3062d0d4c69d64f558686b846b9c`  
		Last Modified: Sat, 31 Mar 2018 13:55:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8019c5ae0850bdde556d6a960c66401bb7dbc0fa9279f8fcf704b041efde34`  
		Last Modified: Sat, 31 Mar 2018 13:55:59 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
