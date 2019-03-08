<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:1.0.3`](#vault103)
-	[`vault:1.1.0-beta2`](#vault110-beta2)
-	[`vault:latest`](#vaultlatest)

## `vault:1.0.3`

```console
$ docker pull vault@sha256:94af983baaaa038790861f66b48b14d4f2fe3a79af665b787318dd7154ac3eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:1.0.3` - linux; amd64

```console
$ docker pull vault@sha256:88c944609af7a85c8c2a822a5fc50702570d126f9883c0831f5122849f5cebf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38930565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c0629c8a51df5ce6875f2f34df6e9fd98405224cea83f18bb120425aa85b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:12:12 GMT
ENV VAULT_VERSION=1.0.3
# Thu, 07 Mar 2019 23:12:13 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 07 Mar 2019 23:12:19 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 07 Mar 2019 23:12:20 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 07 Mar 2019 23:12:20 GMT
VOLUME [/vault/logs]
# Thu, 07 Mar 2019 23:12:20 GMT
VOLUME [/vault/file]
# Thu, 07 Mar 2019 23:12:20 GMT
EXPOSE 8200
# Thu, 07 Mar 2019 23:12:21 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Mar 2019 23:12:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:12:21 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920a4f380f48bcc4486cd5df8600ebd11ee442725db3db29cbcca80cac04715d`  
		Last Modified: Thu, 07 Mar 2019 23:12:42 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b6881a5cf148492ed19e2e88c31ba2ed7a1d35ddb9f9173349b57a959a8f3`  
		Last Modified: Thu, 07 Mar 2019 23:12:48 GMT  
		Size: 36.7 MB (36720167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37818dd6a810d272a9764189291d77abbbae596bfcfcb003407764a4b3cb6d46`  
		Last Modified: Thu, 07 Mar 2019 23:12:42 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4c73fac294e7ca56b7c49e3d64d3b7d556bb83152eb20b73abb1970549d134`  
		Last Modified: Thu, 07 Mar 2019 23:12:42 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.0.3` - linux; arm variant v6

```console
$ docker pull vault@sha256:fbad6b2f5356b70a815883e34278dd5b8e7e6513d8d98b6fa8b3c38c2d0558e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36824348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e0e9409837e702a81e243b72db4b21c0fbb0cc85954423ec0545d858e14f5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:17:08 GMT
ENV VAULT_VERSION=1.0.3
# Fri, 08 Mar 2019 05:17:09 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Mar 2019 05:17:20 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Mar 2019 05:17:22 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Mar 2019 05:17:23 GMT
VOLUME [/vault/logs]
# Fri, 08 Mar 2019 05:17:23 GMT
VOLUME [/vault/file]
# Fri, 08 Mar 2019 05:17:23 GMT
EXPOSE 8200
# Fri, 08 Mar 2019 05:17:24 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 05:17:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:17:25 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644ba7485b3a753c0e0b08c5018e9c8a12692a6e64f7bfd17b9b13d33789baac`  
		Last Modified: Fri, 08 Mar 2019 05:17:53 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98546db68cd883aae913c0083b4b3659019ca1af48fa0f736da4583f461d7c3`  
		Last Modified: Fri, 08 Mar 2019 05:18:03 GMT  
		Size: 34.7 MB (34674940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f863b695b237676a853fa185ba5f6a0e1a2da9417f5997d9a9f3d41b9e4fb5ed`  
		Last Modified: Fri, 08 Mar 2019 05:17:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c623f63b030dc2fbcbc699ba0ac7a34ad8d875c74a2affe9158750312d2de0ca`  
		Last Modified: Fri, 08 Mar 2019 05:17:53 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.0.3` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:b7fe5ab0873026ad908d4e0d2d455983428bd97bc61f254f56015e0bf8cf2ca0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36464888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a07c169a2c1cb93d9b05fca4a09943d7570b6270cc19f1e450483dd6d8b0b97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 14 Feb 2019 11:15:28 GMT
ENV VAULT_VERSION=1.0.3
# Thu, 14 Feb 2019 11:15:30 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 14 Feb 2019 11:15:46 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 14 Feb 2019 11:15:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 14 Feb 2019 11:15:49 GMT
VOLUME [/vault/logs]
# Thu, 14 Feb 2019 11:15:50 GMT
VOLUME [/vault/file]
# Thu, 14 Feb 2019 11:15:50 GMT
EXPOSE 8200
# Thu, 14 Feb 2019 11:15:51 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Feb 2019 11:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 11:15:52 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fceaec749b9acd192a54d957ec8a277f90e9953eefd6f9667fb995bafd6a868`  
		Last Modified: Thu, 14 Feb 2019 11:16:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aafc064de19bcd86f61d38002d4efdac87b94710161ecbc81d8f20bb83489b`  
		Last Modified: Thu, 14 Feb 2019 11:16:15 GMT  
		Size: 34.4 MB (34361654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb5c4e3e892a852879c220e4984c1b3bd6b095a3bcf66de1e412229009311e`  
		Last Modified: Thu, 14 Feb 2019 11:16:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83b6d9d11ea97346b83f2968a1f140ee723a11ca7153a57dba5a7f78962a793`  
		Last Modified: Thu, 14 Feb 2019 11:16:04 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.0.3` - linux; 386

```console
$ docker pull vault@sha256:8be14aa466795c70916d0fa0eddcd67dbe6b85dccb05490def8a677741559de1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37962633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35550adb257c0c6be6f887870d4aad2753a83a774319d5cdf8bbcf89655808e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:31:19 GMT
ENV VAULT_VERSION=1.0.3
# Fri, 08 Mar 2019 04:31:20 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Mar 2019 04:31:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Mar 2019 04:31:30 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Mar 2019 04:31:30 GMT
VOLUME [/vault/logs]
# Fri, 08 Mar 2019 04:31:30 GMT
VOLUME [/vault/file]
# Fri, 08 Mar 2019 04:31:30 GMT
EXPOSE 8200
# Fri, 08 Mar 2019 04:31:30 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 04:31:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:31:31 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d06101d82623d9c0937e9f59a8278427fba38d253ce7521b30b7777ef845052`  
		Last Modified: Fri, 08 Mar 2019 04:31:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ce106b0ba7bc133f2ba43673db503c51443b2b4288cbfadcb9171574d41801`  
		Last Modified: Fri, 08 Mar 2019 04:32:03 GMT  
		Size: 35.7 MB (35687383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1cdebe1f311f0b578c4a1a4497b572d34029433c5f877922666a5b76f76bb`  
		Last Modified: Fri, 08 Mar 2019 04:31:51 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33d387bd21bedbe884c4cca15384193ac595e192601cc05e92e40d8acffc360`  
		Last Modified: Fri, 08 Mar 2019 04:31:51 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:1.1.0-beta2`

```console
$ docker pull vault@sha256:fa093681874ebf460e72fa0e3704d3d661593707e301cf7f58138e6b1c4ccb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:1.1.0-beta2` - linux; amd64

```console
$ docker pull vault@sha256:3fa7634d9adec5606ca6594375354e1d394d894262ad5b4378c65d9e2c0eba5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39128384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7fd6168ef5a45c89b9109fb1a28b8b378d63ae56acf3f9bba3bd9fba9a9640f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:12:24 GMT
ENV VAULT_VERSION=1.1.0-beta2
# Thu, 07 Mar 2019 23:12:25 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 07 Mar 2019 23:12:32 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 07 Mar 2019 23:12:33 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 07 Mar 2019 23:12:33 GMT
VOLUME [/vault/logs]
# Thu, 07 Mar 2019 23:12:33 GMT
VOLUME [/vault/file]
# Thu, 07 Mar 2019 23:12:34 GMT
EXPOSE 8200
# Thu, 07 Mar 2019 23:12:34 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Mar 2019 23:12:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:12:34 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94066df5726f910db0c793c17a8e668c6a09cfb9a2b36869332557f7aee2c4`  
		Last Modified: Thu, 07 Mar 2019 23:12:52 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d344e4f041bf3bfe5fc698639e63838018d4ca79bd9a207e76c6b419cfb8c6e4`  
		Last Modified: Thu, 07 Mar 2019 23:12:58 GMT  
		Size: 36.9 MB (36917984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5ccd8c2b4628db75d9a85d49c7ccddfcfa762eef2cfeebd8de217a92fd467e`  
		Last Modified: Thu, 07 Mar 2019 23:12:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ce64aae927be6ee80fed65ef9abadc0af4f62a768cfba4c395f10693bbe15f`  
		Last Modified: Thu, 07 Mar 2019 23:12:52 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.0-beta2` - linux; arm variant v6

```console
$ docker pull vault@sha256:7f7e9debb230806c54831f70694b6fa4ddc9d79fa2bd1e5429ce821ed1cff79d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37018994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673c04f9c996d91048b4fd3e84b84c31f5ac775fc91f10f0b083e38b93bd8bf4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:17:28 GMT
ENV VAULT_VERSION=1.1.0-beta2
# Fri, 08 Mar 2019 05:17:30 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Mar 2019 05:17:40 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Mar 2019 05:17:41 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Mar 2019 05:17:42 GMT
VOLUME [/vault/logs]
# Fri, 08 Mar 2019 05:17:42 GMT
VOLUME [/vault/file]
# Fri, 08 Mar 2019 05:17:43 GMT
EXPOSE 8200
# Fri, 08 Mar 2019 05:17:43 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 05:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:17:44 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdc4f4e51489c0de06d3ea8c40822817682028936bb01680f27763cbcb51319`  
		Last Modified: Fri, 08 Mar 2019 05:18:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3342a4624f810bc1b8df054fc5c704cb4d7db512d5d9827c5fc47046abe1206`  
		Last Modified: Fri, 08 Mar 2019 05:18:20 GMT  
		Size: 34.9 MB (34869589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb744679f0509368f0887bbe416cc1ad5ccde9459021d34b5bfafec0bfcf9fa`  
		Last Modified: Fri, 08 Mar 2019 05:18:08 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f218bf6eb3c849f23277d9eedd3f82a0eb3db00db90e92a2def8cc9d543b7d1`  
		Last Modified: Fri, 08 Mar 2019 05:18:08 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.0-beta2` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:0d380c7a71740ff2dbfa6c4f59751eaf4ff2e6b2b7ab29d9164cd3f98871f989
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36661709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce1e0555e74b6e54eecb9107105c01db570df1357bc984ff7484f71ff04f0bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 10:11:27 GMT
ENV VAULT_VERSION=1.1.0-beta2
# Thu, 07 Mar 2019 10:11:30 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 07 Mar 2019 10:11:48 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 07 Mar 2019 10:11:52 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 07 Mar 2019 10:11:52 GMT
VOLUME [/vault/logs]
# Thu, 07 Mar 2019 10:11:53 GMT
VOLUME [/vault/file]
# Thu, 07 Mar 2019 10:11:54 GMT
EXPOSE 8200
# Thu, 07 Mar 2019 10:11:55 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Mar 2019 10:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 10:11:56 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ef44297898649e1ba9fbc636d82f9d043fc0131ff66bb5e8cbc1449dd99986`  
		Last Modified: Thu, 07 Mar 2019 10:12:11 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b28d9036a577ed541323961346fa7ce68cd0674f8cd84923d7a4e74765e956`  
		Last Modified: Thu, 07 Mar 2019 10:12:22 GMT  
		Size: 34.6 MB (34558474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d06b5ba5aa3c3260ca34e0aa96090821897b7de8cbaa799e9466e8b1a706a4`  
		Last Modified: Thu, 07 Mar 2019 10:12:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e267563e68476a17f617f2de99ed6c9ea0a3e620b27d4e07f499fcbc29e96a3c`  
		Last Modified: Thu, 07 Mar 2019 10:12:11 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.1.0-beta2` - linux; 386

```console
$ docker pull vault@sha256:7581845226fdd83e011f2eafdd05834b5ff5f04864c089f68272785fe7019b39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38166943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3795528def930cbe53b48d3fc861b677bdb7ae3df6007b52983cad0399efe0b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:31:33 GMT
ENV VAULT_VERSION=1.1.0-beta2
# Fri, 08 Mar 2019 04:31:34 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Mar 2019 04:31:42 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Mar 2019 04:31:43 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Mar 2019 04:31:43 GMT
VOLUME [/vault/logs]
# Fri, 08 Mar 2019 04:31:43 GMT
VOLUME [/vault/file]
# Fri, 08 Mar 2019 04:31:44 GMT
EXPOSE 8200
# Fri, 08 Mar 2019 04:31:44 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 04:31:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:31:44 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4439142aacfafcd6cc0038c756370953e4bfc0ef3f8ea23e7e0711d1e849099a`  
		Last Modified: Fri, 08 Mar 2019 04:32:07 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582216c63263736b61d724cfefd373fb174d9ae2162fbcf64b0b76d95ef3d0b7`  
		Last Modified: Fri, 08 Mar 2019 04:32:14 GMT  
		Size: 35.9 MB (35891691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a551615ef9bfffcf0304ebc081b651f8e70e57dd30dfee51183995560910df3`  
		Last Modified: Fri, 08 Mar 2019 04:32:07 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95d62add52d70d2bb688d42c97e3b351d9fb0ccf54303f061ebdaaa524435b1`  
		Last Modified: Fri, 08 Mar 2019 04:32:07 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:94af983baaaa038790861f66b48b14d4f2fe3a79af665b787318dd7154ac3eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:88c944609af7a85c8c2a822a5fc50702570d126f9883c0831f5122849f5cebf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38930565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c0629c8a51df5ce6875f2f34df6e9fd98405224cea83f18bb120425aa85b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:12:12 GMT
ENV VAULT_VERSION=1.0.3
# Thu, 07 Mar 2019 23:12:13 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 07 Mar 2019 23:12:19 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 07 Mar 2019 23:12:20 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 07 Mar 2019 23:12:20 GMT
VOLUME [/vault/logs]
# Thu, 07 Mar 2019 23:12:20 GMT
VOLUME [/vault/file]
# Thu, 07 Mar 2019 23:12:20 GMT
EXPOSE 8200
# Thu, 07 Mar 2019 23:12:21 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Mar 2019 23:12:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:12:21 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920a4f380f48bcc4486cd5df8600ebd11ee442725db3db29cbcca80cac04715d`  
		Last Modified: Thu, 07 Mar 2019 23:12:42 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b6881a5cf148492ed19e2e88c31ba2ed7a1d35ddb9f9173349b57a959a8f3`  
		Last Modified: Thu, 07 Mar 2019 23:12:48 GMT  
		Size: 36.7 MB (36720167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37818dd6a810d272a9764189291d77abbbae596bfcfcb003407764a4b3cb6d46`  
		Last Modified: Thu, 07 Mar 2019 23:12:42 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4c73fac294e7ca56b7c49e3d64d3b7d556bb83152eb20b73abb1970549d134`  
		Last Modified: Thu, 07 Mar 2019 23:12:42 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:fbad6b2f5356b70a815883e34278dd5b8e7e6513d8d98b6fa8b3c38c2d0558e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36824348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e0e9409837e702a81e243b72db4b21c0fbb0cc85954423ec0545d858e14f5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:17:08 GMT
ENV VAULT_VERSION=1.0.3
# Fri, 08 Mar 2019 05:17:09 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Mar 2019 05:17:20 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Mar 2019 05:17:22 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Mar 2019 05:17:23 GMT
VOLUME [/vault/logs]
# Fri, 08 Mar 2019 05:17:23 GMT
VOLUME [/vault/file]
# Fri, 08 Mar 2019 05:17:23 GMT
EXPOSE 8200
# Fri, 08 Mar 2019 05:17:24 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 05:17:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:17:25 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644ba7485b3a753c0e0b08c5018e9c8a12692a6e64f7bfd17b9b13d33789baac`  
		Last Modified: Fri, 08 Mar 2019 05:17:53 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98546db68cd883aae913c0083b4b3659019ca1af48fa0f736da4583f461d7c3`  
		Last Modified: Fri, 08 Mar 2019 05:18:03 GMT  
		Size: 34.7 MB (34674940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f863b695b237676a853fa185ba5f6a0e1a2da9417f5997d9a9f3d41b9e4fb5ed`  
		Last Modified: Fri, 08 Mar 2019 05:17:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c623f63b030dc2fbcbc699ba0ac7a34ad8d875c74a2affe9158750312d2de0ca`  
		Last Modified: Fri, 08 Mar 2019 05:17:53 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:b7fe5ab0873026ad908d4e0d2d455983428bd97bc61f254f56015e0bf8cf2ca0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36464888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a07c169a2c1cb93d9b05fca4a09943d7570b6270cc19f1e450483dd6d8b0b97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Thu, 14 Feb 2019 11:15:28 GMT
ENV VAULT_VERSION=1.0.3
# Thu, 14 Feb 2019 11:15:30 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Thu, 14 Feb 2019 11:15:46 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 14 Feb 2019 11:15:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Thu, 14 Feb 2019 11:15:49 GMT
VOLUME [/vault/logs]
# Thu, 14 Feb 2019 11:15:50 GMT
VOLUME [/vault/file]
# Thu, 14 Feb 2019 11:15:50 GMT
EXPOSE 8200
# Thu, 14 Feb 2019 11:15:51 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Feb 2019 11:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Feb 2019 11:15:52 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fceaec749b9acd192a54d957ec8a277f90e9953eefd6f9667fb995bafd6a868`  
		Last Modified: Thu, 14 Feb 2019 11:16:04 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aafc064de19bcd86f61d38002d4efdac87b94710161ecbc81d8f20bb83489b`  
		Last Modified: Thu, 14 Feb 2019 11:16:15 GMT  
		Size: 34.4 MB (34361654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb5c4e3e892a852879c220e4984c1b3bd6b095a3bcf66de1e412229009311e`  
		Last Modified: Thu, 14 Feb 2019 11:16:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83b6d9d11ea97346b83f2968a1f140ee723a11ca7153a57dba5a7f78962a793`  
		Last Modified: Thu, 14 Feb 2019 11:16:04 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:8be14aa466795c70916d0fa0eddcd67dbe6b85dccb05490def8a677741559de1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37962633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35550adb257c0c6be6f887870d4aad2753a83a774319d5cdf8bbcf89655808e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:31:19 GMT
ENV VAULT_VERSION=1.0.3
# Fri, 08 Mar 2019 04:31:20 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 08 Mar 2019 04:31:29 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 08 Mar 2019 04:31:30 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 08 Mar 2019 04:31:30 GMT
VOLUME [/vault/logs]
# Fri, 08 Mar 2019 04:31:30 GMT
VOLUME [/vault/file]
# Fri, 08 Mar 2019 04:31:30 GMT
EXPOSE 8200
# Fri, 08 Mar 2019 04:31:30 GMT
COPY file:61c9135d08b2112860354f20efc76b80893dff6caf2a00dfe17ea2ca064a50c2 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 04:31:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:31:31 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d06101d82623d9c0937e9f59a8278427fba38d253ce7521b30b7777ef845052`  
		Last Modified: Fri, 08 Mar 2019 04:31:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ce106b0ba7bc133f2ba43673db503c51443b2b4288cbfadcb9171574d41801`  
		Last Modified: Fri, 08 Mar 2019 04:32:03 GMT  
		Size: 35.7 MB (35687383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1cdebe1f311f0b578c4a1a4497b572d34029433c5f877922666a5b76f76bb`  
		Last Modified: Fri, 08 Mar 2019 04:31:51 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33d387bd21bedbe884c4cca15384193ac595e192601cc05e92e40d8acffc360`  
		Last Modified: Fri, 08 Mar 2019 04:31:51 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
