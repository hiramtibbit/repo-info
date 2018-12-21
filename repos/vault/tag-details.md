<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:1.0.1`](#vault101)
-	[`vault:latest`](#vaultlatest)

## `vault:1.0.1`

```console
$ docker pull vault@sha256:f071c40ab5f325da52a07376db946a05d8a3472b1b7e94c007de4cbd4c9c8f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

### `vault:1.0.1` - linux; amd64

```console
$ docker pull vault@sha256:a80e01caaa439c25d7e0b04fca6d5ec1cc8b93ed8217fc6084a5489f3efcb118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (39048007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afec97cfa8b3e6945be120946b9dc32eb07533e6c98707fd769b77fb64fb12b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:47:02 GMT
ENV VAULT_VERSION=1.0.1
# Fri, 21 Dec 2018 00:47:03 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 21 Dec 2018 00:47:11 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 21 Dec 2018 00:47:12 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 21 Dec 2018 00:47:13 GMT
VOLUME [/vault/logs]
# Fri, 21 Dec 2018 00:47:13 GMT
VOLUME [/vault/file]
# Fri, 21 Dec 2018 00:47:13 GMT
EXPOSE 8200
# Fri, 21 Dec 2018 00:47:13 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:47:15 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212f40d6b4509fcf9b183aafb5457b7ab2bab7067571cac4dc0954b351cf0d19`  
		Last Modified: Fri, 21 Dec 2018 00:47:25 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3009ff512547220a3d1993d37d3fa74acd26896f1a00e0cfcef5abefff1f65e`  
		Last Modified: Fri, 21 Dec 2018 00:47:34 GMT  
		Size: 36.8 MB (36837784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8862af4a2e31085f15fade65b46498bf02ab4f1c532600cd2e9fbc5598b2a92`  
		Last Modified: Fri, 21 Dec 2018 00:47:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dae74736fd4975b77f63d57c1c1b585e4d2ee2ece35e54d123b1522d320d80`  
		Last Modified: Fri, 21 Dec 2018 00:47:25 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.0.1` - linux; arm variant v6

```console
$ docker pull vault@sha256:3044d5caae30e61111fa11548a132d9575558056a12ab5182f85fb0c33b107a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36916314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4753659d3aea416e3533f1bc9299ca6556b3340cc9717f2a400e81d6d38d2f78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 09:38:49 GMT
ENV VAULT_VERSION=1.0.1
# Thu, 20 Dec 2018 09:39:00 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 20 Dec 2018 09:39:53 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 20 Dec 2018 09:40:04 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 20 Dec 2018 09:40:06 GMT
VOLUME [/vault/logs]
# Thu, 20 Dec 2018 09:40:08 GMT
VOLUME [/vault/file]
# Thu, 20 Dec 2018 09:40:09 GMT
EXPOSE 8200
# Thu, 20 Dec 2018 09:40:12 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 09:40:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:40:16 GMT
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
	-	`sha256:22c8e4462bfa2869bed172bb22b51e850a46fe085700827dfec67bf1f7409103`  
		Last Modified: Thu, 20 Dec 2018 09:40:32 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4acbb031e7df8442911d4e5ecb4a70842731ba8259deacb651985f233b7102`  
		Last Modified: Thu, 20 Dec 2018 09:41:00 GMT  
		Size: 34.8 MB (34766419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568392030e87613d313381abe0d3f6404ea3578c489b6966089f522e2e1a7e82`  
		Last Modified: Thu, 20 Dec 2018 09:40:32 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab26d4749ccb656613ee61c5c410ee0d4c9259e1707dd3e628d4944ea84ec20`  
		Last Modified: Thu, 20 Dec 2018 09:40:33 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.0.1` - linux; 386

```console
$ docker pull vault@sha256:931e3b54fb70f081f6dde576396ea4b36080690efe8494db0d5fd7ec11975669
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38052066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c282787153f89b4affa01eaecf8a096ac33dd3391d544ef63c6cc195c4a6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 13:11:21 GMT
ENV VAULT_VERSION=1.0.1
# Thu, 20 Dec 2018 13:11:22 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 20 Dec 2018 13:11:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 20 Dec 2018 13:11:30 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 20 Dec 2018 13:11:30 GMT
VOLUME [/vault/logs]
# Thu, 20 Dec 2018 13:11:30 GMT
VOLUME [/vault/file]
# Thu, 20 Dec 2018 13:11:31 GMT
EXPOSE 8200
# Thu, 20 Dec 2018 13:11:31 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 13:11:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 13:11:31 GMT
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
	-	`sha256:66bd166e7da1e1ca3a0bdf79af1d70f61c32b14c173ee571c1b1b6cb526336ba`  
		Last Modified: Thu, 20 Dec 2018 13:11:39 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be72eb8914e90492a4cbb5d863aa1c54aeecd121ea5c255b0aa293eef0f737ae`  
		Last Modified: Thu, 20 Dec 2018 13:11:46 GMT  
		Size: 35.8 MB (35777233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1c951b8b2c2e5a4098c502ba631d359d7122ab4c3c95b679f452f48e28da5`  
		Last Modified: Thu, 20 Dec 2018 13:11:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557794a6cb3b15754d14ccf1300f0d25f3d6933b285eb9f9a5dfe74b3ce210b7`  
		Last Modified: Thu, 20 Dec 2018 13:11:39 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:f071c40ab5f325da52a07376db946a05d8a3472b1b7e94c007de4cbd4c9c8f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:a80e01caaa439c25d7e0b04fca6d5ec1cc8b93ed8217fc6084a5489f3efcb118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (39048007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afec97cfa8b3e6945be120946b9dc32eb07533e6c98707fd769b77fb64fb12b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:47:02 GMT
ENV VAULT_VERSION=1.0.1
# Fri, 21 Dec 2018 00:47:03 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 21 Dec 2018 00:47:11 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 21 Dec 2018 00:47:12 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 21 Dec 2018 00:47:13 GMT
VOLUME [/vault/logs]
# Fri, 21 Dec 2018 00:47:13 GMT
VOLUME [/vault/file]
# Fri, 21 Dec 2018 00:47:13 GMT
EXPOSE 8200
# Fri, 21 Dec 2018 00:47:13 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 00:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:47:15 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212f40d6b4509fcf9b183aafb5457b7ab2bab7067571cac4dc0954b351cf0d19`  
		Last Modified: Fri, 21 Dec 2018 00:47:25 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3009ff512547220a3d1993d37d3fa74acd26896f1a00e0cfcef5abefff1f65e`  
		Last Modified: Fri, 21 Dec 2018 00:47:34 GMT  
		Size: 36.8 MB (36837784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8862af4a2e31085f15fade65b46498bf02ab4f1c532600cd2e9fbc5598b2a92`  
		Last Modified: Fri, 21 Dec 2018 00:47:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dae74736fd4975b77f63d57c1c1b585e4d2ee2ece35e54d123b1522d320d80`  
		Last Modified: Fri, 21 Dec 2018 00:47:25 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:3044d5caae30e61111fa11548a132d9575558056a12ab5182f85fb0c33b107a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36916314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4753659d3aea416e3533f1bc9299ca6556b3340cc9717f2a400e81d6d38d2f78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 09:38:49 GMT
ENV VAULT_VERSION=1.0.1
# Thu, 20 Dec 2018 09:39:00 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 20 Dec 2018 09:39:53 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 20 Dec 2018 09:40:04 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 20 Dec 2018 09:40:06 GMT
VOLUME [/vault/logs]
# Thu, 20 Dec 2018 09:40:08 GMT
VOLUME [/vault/file]
# Thu, 20 Dec 2018 09:40:09 GMT
EXPOSE 8200
# Thu, 20 Dec 2018 09:40:12 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 09:40:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:40:16 GMT
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
	-	`sha256:22c8e4462bfa2869bed172bb22b51e850a46fe085700827dfec67bf1f7409103`  
		Last Modified: Thu, 20 Dec 2018 09:40:32 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4acbb031e7df8442911d4e5ecb4a70842731ba8259deacb651985f233b7102`  
		Last Modified: Thu, 20 Dec 2018 09:41:00 GMT  
		Size: 34.8 MB (34766419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568392030e87613d313381abe0d3f6404ea3578c489b6966089f522e2e1a7e82`  
		Last Modified: Thu, 20 Dec 2018 09:40:32 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab26d4749ccb656613ee61c5c410ee0d4c9259e1707dd3e628d4944ea84ec20`  
		Last Modified: Thu, 20 Dec 2018 09:40:33 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:931e3b54fb70f081f6dde576396ea4b36080690efe8494db0d5fd7ec11975669
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38052066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c282787153f89b4affa01eaecf8a096ac33dd3391d544ef63c6cc195c4a6c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 13:11:21 GMT
ENV VAULT_VERSION=1.0.1
# Thu, 20 Dec 2018 13:11:22 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 20 Dec 2018 13:11:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 20 Dec 2018 13:11:30 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 20 Dec 2018 13:11:30 GMT
VOLUME [/vault/logs]
# Thu, 20 Dec 2018 13:11:30 GMT
VOLUME [/vault/file]
# Thu, 20 Dec 2018 13:11:31 GMT
EXPOSE 8200
# Thu, 20 Dec 2018 13:11:31 GMT
COPY file:2cf778f577f27333fdd34a8c9bbb529a6bc3f4b4f6599e38b0af9d428091c36f in /usr/local/bin/docker-entrypoint.sh 
# Thu, 20 Dec 2018 13:11:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Dec 2018 13:11:31 GMT
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
	-	`sha256:66bd166e7da1e1ca3a0bdf79af1d70f61c32b14c173ee571c1b1b6cb526336ba`  
		Last Modified: Thu, 20 Dec 2018 13:11:39 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be72eb8914e90492a4cbb5d863aa1c54aeecd121ea5c255b0aa293eef0f737ae`  
		Last Modified: Thu, 20 Dec 2018 13:11:46 GMT  
		Size: 35.8 MB (35777233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1c951b8b2c2e5a4098c502ba631d359d7122ab4c3c95b679f452f48e28da5`  
		Last Modified: Thu, 20 Dec 2018 13:11:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557794a6cb3b15754d14ccf1300f0d25f3d6933b285eb9f9a5dfe74b3ce210b7`  
		Last Modified: Thu, 20 Dec 2018 13:11:39 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
