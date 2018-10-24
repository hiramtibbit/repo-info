<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.11.4`](#vault0114)
-	[`vault:1.0.0-beta1`](#vault100-beta1)
-	[`vault:latest`](#vaultlatest)

## `vault:0.11.4`

```console
$ docker pull vault@sha256:6912bc825ab540ac587993d3215ef12bc834f121d35e5bda43e7f0bb0be7adfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `vault:0.11.4` - linux; arm variant v6

```console
$ docker pull vault@sha256:d301b8315fb1b87d7a0cb22c8d03bad086f32fe63b69b7c71c8708603deffefe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35275921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49e5b7a9d36a954569ba73b46b61a620c19bd0bd9da540f42b2bdcb377ac730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 24 Oct 2018 07:49:52 GMT
ENV VAULT_VERSION=0.11.4
# Wed, 24 Oct 2018 07:49:55 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Oct 2018 07:50:34 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Oct 2018 07:50:39 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Oct 2018 07:50:39 GMT
VOLUME [/vault/logs]
# Wed, 24 Oct 2018 07:50:40 GMT
VOLUME [/vault/file]
# Wed, 24 Oct 2018 07:50:41 GMT
EXPOSE 8200/tcp
# Wed, 24 Oct 2018 07:50:42 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Oct 2018 07:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 07:50:43 GMT
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
	-	`sha256:466ada72d54522e29c161ec00d756e1ed3d1e5c9f1576ec631763df1aa2908bb`  
		Last Modified: Wed, 24 Oct 2018 07:51:52 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6dc5f1cdaf39226371413db82eb75d6e14c49c29e0b5528b7c7d27c245ae6`  
		Last Modified: Wed, 24 Oct 2018 07:52:25 GMT  
		Size: 33.1 MB (33126028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ff26d1bead1d677b0e87e9b2c64505ac4ebfc53ca03000aeab2ce243a28aff`  
		Last Modified: Wed, 24 Oct 2018 07:51:52 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55342ab5a53bd17b9e7532b57b6dda818704f2582f79f00ff80500030b8846fc`  
		Last Modified: Wed, 24 Oct 2018 07:51:52 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.11.4` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:6ae3e143c83e2992d8110f04b14ff430bbc30738be67110daa70347b6e18b3ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34887077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3237fa0f1dd03b0e671da6408d4073bbeb7039507dcb45a15b6a574d4fc94f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 24 Oct 2018 08:48:59 GMT
ENV VAULT_VERSION=0.11.4
# Wed, 24 Oct 2018 08:49:01 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Oct 2018 08:49:15 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Oct 2018 08:49:17 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Oct 2018 08:49:18 GMT
VOLUME [/vault/logs]
# Wed, 24 Oct 2018 08:49:19 GMT
VOLUME [/vault/file]
# Wed, 24 Oct 2018 08:49:20 GMT
EXPOSE 8200/tcp
# Wed, 24 Oct 2018 08:49:20 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Oct 2018 08:49:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 08:49:31 GMT
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
	-	`sha256:563e91585b8cc6e15cae265892781edf472b644e6d586ce1fc39cf4f1cbec455`  
		Last Modified: Wed, 24 Oct 2018 08:50:21 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64204bad833568a90c7e454dea3a2387faf57070496c6eceeba3b71809fa5dc1`  
		Last Modified: Wed, 24 Oct 2018 08:50:32 GMT  
		Size: 32.8 MB (32783936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4b9ec5f6e79c0a671802c5ae388bf904f874af0f1205c8f66e18c2a7518929`  
		Last Modified: Wed, 24 Oct 2018 08:50:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9cbfe304048c0cc1b0c7892feffedc231f444995b2ab7546f21adb1719dc4a8`  
		Last Modified: Wed, 24 Oct 2018 08:50:21 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:1.0.0-beta1`

```console
$ docker pull vault@sha256:f0549fce87bf2dc3bb0738ccfdfd1ac3e9f8789b8837213eecc157aebdd78369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `vault:1.0.0-beta1` - linux; arm variant v6

```console
$ docker pull vault@sha256:1931eca468c66e8069c18de941e8071b500b50b56d96be7133ffb52c317bb352
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36268197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffbacd1905067314f796461e0fe58a0ace7a15be694ac751808b323a8475675`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 24 Oct 2018 07:50:49 GMT
ENV VAULT_VERSION=1.0.0-beta1
# Wed, 24 Oct 2018 07:50:54 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Oct 2018 07:51:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Oct 2018 07:51:34 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Oct 2018 07:51:35 GMT
VOLUME [/vault/logs]
# Wed, 24 Oct 2018 07:51:35 GMT
VOLUME [/vault/file]
# Wed, 24 Oct 2018 07:51:36 GMT
EXPOSE 8200/tcp
# Wed, 24 Oct 2018 07:51:37 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Oct 2018 07:51:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 07:51:39 GMT
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
	-	`sha256:8ef26d8cd78afe31eb4f701747807212fd6c2b4806495f7a4e057b2f3d4028b3`  
		Last Modified: Wed, 24 Oct 2018 07:52:51 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f559a9ddd2b61331ca5b01ae93e5e21f6857708433ec58637e61d34759bb7402`  
		Last Modified: Wed, 24 Oct 2018 07:53:26 GMT  
		Size: 34.1 MB (34118306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ed7f237a9dcc91b4c2396bf1d6a13fd179e8de4d3454befa262553ac445aff`  
		Last Modified: Wed, 24 Oct 2018 07:52:51 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd965e2e1e426ba5a4999d412a34ac2d8823d0361e8e8f098b41b0a4dc0663f`  
		Last Modified: Wed, 24 Oct 2018 07:52:50 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.0.0-beta1` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:598edca8137599272fcbc586c78f3557f766f7709b2720b0c5b7a4a38967d997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35898159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25ef5fdc4d2ed3ed543c939b126711489c2a8be4cdd98caa8970f6488661a15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 24 Oct 2018 08:49:43 GMT
ENV VAULT_VERSION=1.0.0-beta1
# Wed, 24 Oct 2018 08:49:46 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Oct 2018 08:49:57 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Oct 2018 08:49:59 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Oct 2018 08:49:59 GMT
VOLUME [/vault/logs]
# Wed, 24 Oct 2018 08:50:00 GMT
VOLUME [/vault/file]
# Wed, 24 Oct 2018 08:50:01 GMT
EXPOSE 8200/tcp
# Wed, 24 Oct 2018 08:50:02 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Oct 2018 08:50:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 08:50:03 GMT
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
	-	`sha256:8dbbd2bd0c2f45c6978c4492c8964e12846261bc50a29baf9dd6f201ccf1f423`  
		Last Modified: Wed, 24 Oct 2018 08:50:59 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7715533bdf3ba1641464348b9b941a2520b6845b1478cd16e852cd3c4f520849`  
		Last Modified: Wed, 24 Oct 2018 08:51:09 GMT  
		Size: 33.8 MB (33795018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9259e09b85adf4413cc0294cf965264e0eaae82706646dd05e003139510440a7`  
		Last Modified: Wed, 24 Oct 2018 08:50:58 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441fc624441cdae5c9ff65bb094d3c2a698a9c8a47a514cdeb96be15e4aefdb`  
		Last Modified: Wed, 24 Oct 2018 08:50:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:6912bc825ab540ac587993d3215ef12bc834f121d35e5bda43e7f0bb0be7adfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:d301b8315fb1b87d7a0cb22c8d03bad086f32fe63b69b7c71c8708603deffefe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35275921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49e5b7a9d36a954569ba73b46b61a620c19bd0bd9da540f42b2bdcb377ac730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 24 Oct 2018 07:49:52 GMT
ENV VAULT_VERSION=0.11.4
# Wed, 24 Oct 2018 07:49:55 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Oct 2018 07:50:34 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Oct 2018 07:50:39 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Oct 2018 07:50:39 GMT
VOLUME [/vault/logs]
# Wed, 24 Oct 2018 07:50:40 GMT
VOLUME [/vault/file]
# Wed, 24 Oct 2018 07:50:41 GMT
EXPOSE 8200/tcp
# Wed, 24 Oct 2018 07:50:42 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Oct 2018 07:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 07:50:43 GMT
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
	-	`sha256:466ada72d54522e29c161ec00d756e1ed3d1e5c9f1576ec631763df1aa2908bb`  
		Last Modified: Wed, 24 Oct 2018 07:51:52 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6dc5f1cdaf39226371413db82eb75d6e14c49c29e0b5528b7c7d27c245ae6`  
		Last Modified: Wed, 24 Oct 2018 07:52:25 GMT  
		Size: 33.1 MB (33126028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ff26d1bead1d677b0e87e9b2c64505ac4ebfc53ca03000aeab2ce243a28aff`  
		Last Modified: Wed, 24 Oct 2018 07:51:52 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55342ab5a53bd17b9e7532b57b6dda818704f2582f79f00ff80500030b8846fc`  
		Last Modified: Wed, 24 Oct 2018 07:51:52 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:6ae3e143c83e2992d8110f04b14ff430bbc30738be67110daa70347b6e18b3ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34887077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3237fa0f1dd03b0e671da6408d4073bbeb7039507dcb45a15b6a574d4fc94f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 24 Oct 2018 08:48:59 GMT
ENV VAULT_VERSION=0.11.4
# Wed, 24 Oct 2018 08:49:01 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 24 Oct 2018 08:49:15 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Oct 2018 08:49:17 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 24 Oct 2018 08:49:18 GMT
VOLUME [/vault/logs]
# Wed, 24 Oct 2018 08:49:19 GMT
VOLUME [/vault/file]
# Wed, 24 Oct 2018 08:49:20 GMT
EXPOSE 8200/tcp
# Wed, 24 Oct 2018 08:49:20 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Oct 2018 08:49:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 08:49:31 GMT
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
	-	`sha256:563e91585b8cc6e15cae265892781edf472b644e6d586ce1fc39cf4f1cbec455`  
		Last Modified: Wed, 24 Oct 2018 08:50:21 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64204bad833568a90c7e454dea3a2387faf57070496c6eceeba3b71809fa5dc1`  
		Last Modified: Wed, 24 Oct 2018 08:50:32 GMT  
		Size: 32.8 MB (32783936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4b9ec5f6e79c0a671802c5ae388bf904f874af0f1205c8f66e18c2a7518929`  
		Last Modified: Wed, 24 Oct 2018 08:50:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9cbfe304048c0cc1b0c7892feffedc231f444995b2ab7546f21adb1719dc4a8`  
		Last Modified: Wed, 24 Oct 2018 08:50:21 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
