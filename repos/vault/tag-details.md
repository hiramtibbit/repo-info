<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.10.1`](#vault0101)
-	[`vault:latest`](#vaultlatest)

## `vault:0.10.1`

```console
$ docker pull vault@sha256:7e0ba04a879c7b6c732cda9bca05651736a646562d29a69d29f5215d915632d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

### `vault:0.10.1` - linux; amd64

```console
$ docker pull vault@sha256:ba77730553ab0754305430a4f8f2d4ebbac5d0324577148160667c1bd54c76c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24135183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe535ace00bc56ec2881b22fb29c4eb930476cceed0309ba84af6b749551963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 22:36:08 GMT
ENV VAULT_VERSION=0.10.1
# Fri, 27 Apr 2018 22:36:09 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 27 Apr 2018 22:36:19 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 27 Apr 2018 22:36:20 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 27 Apr 2018 22:36:20 GMT
VOLUME [/vault/logs]
# Fri, 27 Apr 2018 22:36:20 GMT
VOLUME [/vault/file]
# Fri, 27 Apr 2018 22:36:21 GMT
EXPOSE 8200/tcp
# Fri, 27 Apr 2018 22:36:21 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 27 Apr 2018 22:36:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 22:36:22 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9eface7fdbf13552f927bc90086e58ac2820069dcaccc9734a97e6985b36e`  
		Last Modified: Fri, 27 Apr 2018 22:39:45 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d800ad572feed4ac882ac10c1b4c79342a166d8ef6e3c2b66aadf6eeef9a7a`  
		Last Modified: Fri, 27 Apr 2018 22:39:49 GMT  
		Size: 22.1 MB (22066448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5889c13b9e5d8ec3d68357f4707ff7a78427ea571d7906f98e88f4d81f6ebce4`  
		Last Modified: Fri, 27 Apr 2018 22:39:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d24724ef698c1f39f13687d9dbe939c1e3c29a4023b6e490720bc3eeb7ea738`  
		Last Modified: Fri, 27 Apr 2018 22:39:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.1` - linux; arm variant v6

```console
$ docker pull vault@sha256:2d94a025d4e6eeab42f37680a86e2c6b706ca35ddbc772dab493530dfb7739b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23447269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d46d38dec957152a13d02706b5f2271e3d2bd00b724ea62e00dce2d2e8bc05b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 07:49:23 GMT
ENV VAULT_VERSION=0.10.1
# Sat, 28 Apr 2018 07:49:28 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 28 Apr 2018 07:50:08 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 28 Apr 2018 07:50:14 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 28 Apr 2018 07:50:14 GMT
VOLUME [/vault/logs]
# Sat, 28 Apr 2018 07:50:15 GMT
VOLUME [/vault/file]
# Sat, 28 Apr 2018 07:50:16 GMT
EXPOSE 8200/tcp
# Sat, 28 Apr 2018 07:50:17 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 28 Apr 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 07:50:19 GMT
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
	-	`sha256:0d02d4e0da813e6a399d07d236c8c7610df7429a387ce76633608152c9512831`  
		Last Modified: Sat, 28 Apr 2018 07:50:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651cbc1c5e9d716dccd06f23cf5fa7bf1653d9b96ec4cfb3baf5a7b2b2ba9ffc`  
		Last Modified: Sat, 28 Apr 2018 07:50:56 GMT  
		Size: 21.4 MB (21405531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25de9c5a1c2156a61224914a002d1a06806514437ee88f17a64cb5c2d8d20c`  
		Last Modified: Sat, 28 Apr 2018 07:50:29 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f9e3c31dd33052a9cc907d9d6207d9bf77d6f9187f233502cd2d64e7f4409e`  
		Last Modified: Sat, 28 Apr 2018 07:50:29 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.1` - linux; 386

```console
$ docker pull vault@sha256:cacad9f0e75dfcbdbe7c3eb5adeba92bf8546acf2067ce6a08189044b02716c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23816962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e45183039c5688d58267d252b74c2e3e3a1029e4b0087b9acee48384841e3bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 11:20:36 GMT
ENV VAULT_VERSION=0.10.1
# Sat, 28 Apr 2018 11:20:37 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 28 Apr 2018 11:20:46 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 28 Apr 2018 11:20:47 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 28 Apr 2018 11:20:47 GMT
VOLUME [/vault/logs]
# Sat, 28 Apr 2018 11:20:47 GMT
VOLUME [/vault/file]
# Sat, 28 Apr 2018 11:20:47 GMT
EXPOSE 8200/tcp
# Sat, 28 Apr 2018 11:20:48 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 28 Apr 2018 11:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 11:20:48 GMT
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
	-	`sha256:eeb813d3fdcea9897659c7cd32dc407984e0563a3dbeaf9d6d319fab6df15428`  
		Last Modified: Sat, 28 Apr 2018 11:20:57 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6058d8f73991fc697c245704ff9a929aa527ccb16e0c56983ac1fbb64b06777a`  
		Last Modified: Sat, 28 Apr 2018 11:21:02 GMT  
		Size: 21.7 MB (21687369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3b25bf896316309812d01f92c564f408349096d8ca7d863486b6251e96ea54`  
		Last Modified: Sat, 28 Apr 2018 11:20:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8fa1cb8326c8975ac711a641f99250c2a3245cdf616b3ff5c587f358af22827`  
		Last Modified: Sat, 28 Apr 2018 11:20:58 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:da3607ee2734a1445ba2f0ebf0dfba175eaefa71b1eacd697c80511e71d41435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:ba77730553ab0754305430a4f8f2d4ebbac5d0324577148160667c1bd54c76c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24135183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe535ace00bc56ec2881b22fb29c4eb930476cceed0309ba84af6b749551963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 22:36:08 GMT
ENV VAULT_VERSION=0.10.1
# Fri, 27 Apr 2018 22:36:09 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 27 Apr 2018 22:36:19 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 27 Apr 2018 22:36:20 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 27 Apr 2018 22:36:20 GMT
VOLUME [/vault/logs]
# Fri, 27 Apr 2018 22:36:20 GMT
VOLUME [/vault/file]
# Fri, 27 Apr 2018 22:36:21 GMT
EXPOSE 8200/tcp
# Fri, 27 Apr 2018 22:36:21 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 27 Apr 2018 22:36:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 22:36:22 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9eface7fdbf13552f927bc90086e58ac2820069dcaccc9734a97e6985b36e`  
		Last Modified: Fri, 27 Apr 2018 22:39:45 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d800ad572feed4ac882ac10c1b4c79342a166d8ef6e3c2b66aadf6eeef9a7a`  
		Last Modified: Fri, 27 Apr 2018 22:39:49 GMT  
		Size: 22.1 MB (22066448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5889c13b9e5d8ec3d68357f4707ff7a78427ea571d7906f98e88f4d81f6ebce4`  
		Last Modified: Fri, 27 Apr 2018 22:39:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d24724ef698c1f39f13687d9dbe939c1e3c29a4023b6e490720bc3eeb7ea738`  
		Last Modified: Fri, 27 Apr 2018 22:39:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:2d94a025d4e6eeab42f37680a86e2c6b706ca35ddbc772dab493530dfb7739b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23447269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d46d38dec957152a13d02706b5f2271e3d2bd00b724ea62e00dce2d2e8bc05b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Sat, 28 Apr 2018 07:49:23 GMT
ENV VAULT_VERSION=0.10.1
# Sat, 28 Apr 2018 07:49:28 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Sat, 28 Apr 2018 07:50:08 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Sat, 28 Apr 2018 07:50:14 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Sat, 28 Apr 2018 07:50:14 GMT
VOLUME [/vault/logs]
# Sat, 28 Apr 2018 07:50:15 GMT
VOLUME [/vault/file]
# Sat, 28 Apr 2018 07:50:16 GMT
EXPOSE 8200/tcp
# Sat, 28 Apr 2018 07:50:17 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 28 Apr 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 07:50:19 GMT
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
	-	`sha256:0d02d4e0da813e6a399d07d236c8c7610df7429a387ce76633608152c9512831`  
		Last Modified: Sat, 28 Apr 2018 07:50:29 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651cbc1c5e9d716dccd06f23cf5fa7bf1653d9b96ec4cfb3baf5a7b2b2ba9ffc`  
		Last Modified: Sat, 28 Apr 2018 07:50:56 GMT  
		Size: 21.4 MB (21405531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25de9c5a1c2156a61224914a002d1a06806514437ee88f17a64cb5c2d8d20c`  
		Last Modified: Sat, 28 Apr 2018 07:50:29 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f9e3c31dd33052a9cc907d9d6207d9bf77d6f9187f233502cd2d64e7f4409e`  
		Last Modified: Sat, 28 Apr 2018 07:50:29 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
