<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.10.4`](#vault0104)
-	[`vault:latest`](#vaultlatest)

## `vault:0.10.4`

```console
$ docker pull vault@sha256:99e5ebdb08c4d0a1a5c42de855e34ecad6987f191669985726cf7d45fb3654be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `vault:0.10.4` - linux; amd64

```console
$ docker pull vault@sha256:2758bd46e3d083846b6000420e741aebd2a43ac62ad6c51e4ffbbd1cda032c9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27210388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38063b24806e972ceb1efe9ba5b0985c4ec4fdb4c71b43471f4cb4f9d5c70c05`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 18:09:39 GMT
ENV VAULT_VERSION=0.10.4
# Wed, 25 Jul 2018 18:09:40 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 25 Jul 2018 18:09:49 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 25 Jul 2018 18:09:59 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 25 Jul 2018 18:10:00 GMT
VOLUME [/vault/logs]
# Wed, 25 Jul 2018 18:10:00 GMT
VOLUME [/vault/file]
# Wed, 25 Jul 2018 18:10:00 GMT
EXPOSE 8200/tcp
# Wed, 25 Jul 2018 18:10:01 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 25 Jul 2018 18:10:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 18:10:01 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3c08966c5f80499389e2d80274116cbfc4a42f6ca42126050b81597203eb93`  
		Last Modified: Wed, 25 Jul 2018 18:10:26 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e0f2bce8e219e9bd706e71446f61a8c812d719726de4d2228b905bd049e06`  
		Last Modified: Wed, 25 Jul 2018 18:10:37 GMT  
		Size: 25.0 MB (25000644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5752743f26bd895361a6f59ae411145117ee1ee27a09548922041ca96158377b`  
		Last Modified: Wed, 25 Jul 2018 18:10:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7271f646fb1f602220f3c8b3e9438fd2ed2e96eae0609adba917fa7072e221`  
		Last Modified: Wed, 25 Jul 2018 18:10:27 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.4` - linux; arm variant v6

```console
$ docker pull vault@sha256:4f5a210ad1ef1af2a659c222a23e1fa9cd50fb7abcc1022463a08ab020b78c75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26398413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49803e6ecf437e18e2811fa5e6692c6b3e2072e3057a5ad648feb9dbb11ab219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 07:49:29 GMT
ENV VAULT_VERSION=0.10.4
# Thu, 26 Jul 2018 07:49:35 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 26 Jul 2018 07:50:13 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 26 Jul 2018 07:50:18 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 26 Jul 2018 07:50:19 GMT
VOLUME [/vault/logs]
# Thu, 26 Jul 2018 07:50:20 GMT
VOLUME [/vault/file]
# Thu, 26 Jul 2018 07:50:21 GMT
EXPOSE 8200/tcp
# Thu, 26 Jul 2018 07:50:22 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 26 Jul 2018 07:50:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 07:50:23 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8096461809e8788eb318abea551741823268adb600aed73c0cf809686c32a17c`  
		Last Modified: Thu, 26 Jul 2018 07:50:37 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b566b3b32fb780742cf49d905ef75cf09ffba16723e2eb1ce9cfd7cbd4ae60c`  
		Last Modified: Thu, 26 Jul 2018 07:51:09 GMT  
		Size: 24.2 MB (24248976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb21eee012b1ffb58b4b8db2cfb059c08644feb55cbfd0093dbbeb57eeb65ed1`  
		Last Modified: Thu, 26 Jul 2018 07:50:37 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f257aeca4b18f6dd35ad815fc329538d76f1b6acddd527eb35e662f933583d0`  
		Last Modified: Thu, 26 Jul 2018 07:50:37 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.4` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:f1767df87380971bbdf127307601e5770e159f6de6990a8b4948d984c69bad63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25916076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adce32bb47513593ec03163f2d620c21f32099031b505e5ac350d57bb8f7d2d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 10:21:32 GMT
ENV VAULT_VERSION=0.10.4
# Thu, 26 Jul 2018 10:21:34 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 26 Jul 2018 10:21:59 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 26 Jul 2018 10:22:06 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 26 Jul 2018 10:22:07 GMT
VOLUME [/vault/logs]
# Thu, 26 Jul 2018 10:22:07 GMT
VOLUME [/vault/file]
# Thu, 26 Jul 2018 10:22:08 GMT
EXPOSE 8200/tcp
# Thu, 26 Jul 2018 10:22:09 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 26 Jul 2018 10:22:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 10:22:11 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482c0a59dc9e226d1962e45aa955659deb45024a23f6265f842fa25959c05944`  
		Last Modified: Thu, 26 Jul 2018 10:22:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d166e6a7ae450c3c1a30f9b268a97a21d1242c26f01f3ed0d784d83b6aef4e6e`  
		Last Modified: Thu, 26 Jul 2018 10:22:54 GMT  
		Size: 23.8 MB (23813187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcc9b76102830d06bae8572af0e88905d1b184bc724ae01942ddc8156c9bfb9`  
		Last Modified: Thu, 26 Jul 2018 10:22:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d846b24cb71b656d4a9d40c143c2e796c8f00bb6c1b8af6e3982a935bbf1ee`  
		Last Modified: Thu, 26 Jul 2018 10:22:44 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:d20c3fbca54680173cd52f4f109e3ef547215a5be2d363620fd410d081bd06ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:2758bd46e3d083846b6000420e741aebd2a43ac62ad6c51e4ffbbd1cda032c9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27210388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38063b24806e972ceb1efe9ba5b0985c4ec4fdb4c71b43471f4cb4f9d5c70c05`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 25 Jul 2018 18:09:39 GMT
ENV VAULT_VERSION=0.10.4
# Wed, 25 Jul 2018 18:09:40 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 25 Jul 2018 18:09:49 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 25 Jul 2018 18:09:59 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 25 Jul 2018 18:10:00 GMT
VOLUME [/vault/logs]
# Wed, 25 Jul 2018 18:10:00 GMT
VOLUME [/vault/file]
# Wed, 25 Jul 2018 18:10:00 GMT
EXPOSE 8200/tcp
# Wed, 25 Jul 2018 18:10:01 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 25 Jul 2018 18:10:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Jul 2018 18:10:01 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3c08966c5f80499389e2d80274116cbfc4a42f6ca42126050b81597203eb93`  
		Last Modified: Wed, 25 Jul 2018 18:10:26 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e0f2bce8e219e9bd706e71446f61a8c812d719726de4d2228b905bd049e06`  
		Last Modified: Wed, 25 Jul 2018 18:10:37 GMT  
		Size: 25.0 MB (25000644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5752743f26bd895361a6f59ae411145117ee1ee27a09548922041ca96158377b`  
		Last Modified: Wed, 25 Jul 2018 18:10:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7271f646fb1f602220f3c8b3e9438fd2ed2e96eae0609adba917fa7072e221`  
		Last Modified: Wed, 25 Jul 2018 18:10:27 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:4f5a210ad1ef1af2a659c222a23e1fa9cd50fb7abcc1022463a08ab020b78c75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26398413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49803e6ecf437e18e2811fa5e6692c6b3e2072e3057a5ad648feb9dbb11ab219`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Thu, 26 Jul 2018 07:49:29 GMT
ENV VAULT_VERSION=0.10.4
# Thu, 26 Jul 2018 07:49:35 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 26 Jul 2018 07:50:13 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 26 Jul 2018 07:50:18 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 26 Jul 2018 07:50:19 GMT
VOLUME [/vault/logs]
# Thu, 26 Jul 2018 07:50:20 GMT
VOLUME [/vault/file]
# Thu, 26 Jul 2018 07:50:21 GMT
EXPOSE 8200/tcp
# Thu, 26 Jul 2018 07:50:22 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 26 Jul 2018 07:50:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Jul 2018 07:50:23 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8096461809e8788eb318abea551741823268adb600aed73c0cf809686c32a17c`  
		Last Modified: Thu, 26 Jul 2018 07:50:37 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b566b3b32fb780742cf49d905ef75cf09ffba16723e2eb1ce9cfd7cbd4ae60c`  
		Last Modified: Thu, 26 Jul 2018 07:51:09 GMT  
		Size: 24.2 MB (24248976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb21eee012b1ffb58b4b8db2cfb059c08644feb55cbfd0093dbbeb57eeb65ed1`  
		Last Modified: Thu, 26 Jul 2018 07:50:37 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f257aeca4b18f6dd35ad815fc329538d76f1b6acddd527eb35e662f933583d0`  
		Last Modified: Thu, 26 Jul 2018 07:50:37 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
