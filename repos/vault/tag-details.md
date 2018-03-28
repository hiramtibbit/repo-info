<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.10.0-beta1`](#vault0100-beta1)
-	[`vault:0.9.6`](#vault096)
-	[`vault:latest`](#vaultlatest)

## `vault:0.10.0-beta1`

```console
$ docker pull vault@sha256:4d2c1d71aa7778889e371b853cb2196860b4325b6a36010bc0ea6d0316028217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `vault:0.10.0-beta1` - linux; amd64

```console
$ docker pull vault@sha256:fa85c5a654ced54c427be37565b919037aaa1fecbf482a468e048a73cfbac035
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22939690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca10038bed41aef9db6111e1d3cccf43ed4835caf32feb495834f7ae8b988c9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Mon, 26 Mar 2018 20:15:03 GMT
ENV VAULT_VERSION=0.10.0-beta1
# Mon, 26 Mar 2018 20:15:04 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 26 Mar 2018 20:15:13 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 26 Mar 2018 20:15:14 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 26 Mar 2018 20:15:14 GMT
VOLUME [/vault/logs]
# Mon, 26 Mar 2018 20:15:14 GMT
VOLUME [/vault/file]
# Mon, 26 Mar 2018 20:15:14 GMT
EXPOSE 8200/tcp
# Mon, 26 Mar 2018 20:15:15 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 26 Mar 2018 20:15:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Mar 2018 20:15:16 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3d54b019ccb16be3345255ea8d01777f7b87e8185b921294bbe8e34a0aa50e`  
		Last Modified: Mon, 26 Mar 2018 20:15:38 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407587a720ee0709afea5ed141346a1a1c4476a56848d195fe377115a715ade2`  
		Last Modified: Mon, 26 Mar 2018 20:15:42 GMT  
		Size: 20.9 MB (20870955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836a09a1ecadc277b26599db10fb8c676a1a111d936f8b754c2bfbd35bb6daa8`  
		Last Modified: Mon, 26 Mar 2018 20:15:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929729fc8e70554ab0d9d85514c5e825bad6a1679d464df91e01f4918566d9da`  
		Last Modified: Mon, 26 Mar 2018 20:15:38 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.0-beta1` - linux; arm variant v6

```console
$ docker pull vault@sha256:e15f368962093e16e0f7d5e6ef15487b9b6c34d989825f2ba18299fc1ceb935a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21747879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cab167e65e86ea39c83677d774b5d9f19350df7b50209c292b4f6c36196ac03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Mar 2018 05:52:23 GMT
ENV VAULT_VERSION=0.10.0-beta1
# Tue, 27 Mar 2018 05:52:27 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 27 Mar 2018 05:53:07 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 27 Mar 2018 05:53:11 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 27 Mar 2018 05:53:12 GMT
VOLUME [/vault/logs]
# Tue, 27 Mar 2018 05:53:13 GMT
VOLUME [/vault/file]
# Tue, 27 Mar 2018 05:53:13 GMT
EXPOSE 8200/tcp
# Tue, 27 Mar 2018 05:53:14 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 27 Mar 2018 05:53:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 05:53:16 GMT
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
	-	`sha256:0065f3f84516f79ee0335fd5d92f8e6b944b557ff65aee394bdc52138ae19b3a`  
		Last Modified: Tue, 27 Mar 2018 05:53:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36b1ae7673d9e7eff3c02e596377f9ada130265aba290f36c5c9c563bcfb2ef`  
		Last Modified: Tue, 27 Mar 2018 05:53:55 GMT  
		Size: 19.7 MB (19706145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88e19b9f5c4498159ee30f1f75141b026b1fb94fad9026ff10b2069f925f78f`  
		Last Modified: Tue, 27 Mar 2018 05:53:29 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e981464dbca21aa20ed4493e412d322828e1109723b7d3039491bb9e98d177`  
		Last Modified: Tue, 27 Mar 2018 05:53:30 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:0.10.0-beta1` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:76d0940981b5a547dfab5bac0f4aa231cf462141176d9498dcb927340e78cfc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21312866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a96fff5493f40e20380de4fd75df5b036db005123ca2df2b3e7c08d59e73b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 28 Mar 2018 21:03:57 GMT
ENV VAULT_VERSION=0.10.0-beta1
# Wed, 28 Mar 2018 21:03:59 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 28 Mar 2018 21:04:17 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 28 Mar 2018 21:04:18 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 28 Mar 2018 21:04:19 GMT
VOLUME [/vault/logs]
# Wed, 28 Mar 2018 21:04:20 GMT
VOLUME [/vault/file]
# Wed, 28 Mar 2018 21:04:20 GMT
EXPOSE 8200/tcp
# Wed, 28 Mar 2018 21:04:21 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 28 Mar 2018 21:04:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 21:04:23 GMT
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
	-	`sha256:bf378e41dbbab82ab0fa7b73f9473d7556905a93bd6c6e19954ad8540ec2ee2f`  
		Last Modified: Wed, 28 Mar 2018 21:05:04 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6538e2eef5c54ee0a4e7b86ae6e9161eccdb45fbdd4ef142a119a1472e9669d5`  
		Last Modified: Wed, 28 Mar 2018 21:05:16 GMT  
		Size: 19.3 MB (19320631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbaec83daa28fbd1e295d2968a01b57843dca2b009ddad3c2a890ad275281a2`  
		Last Modified: Wed, 28 Mar 2018 21:05:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8def8bc83f6739506311e9c3c05c9e9fd7c8fe84a39a56f0976d392cf88dbe`  
		Last Modified: Wed, 28 Mar 2018 21:05:03 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:0.9.6`

```console
$ docker pull vault@sha256:14797e29d2484e7e33772041da5e51666fa7e34fafac11d55e6e29eea260b69e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

## `vault:latest`

```console
$ docker pull vault@sha256:14797e29d2484e7e33772041da5e51666fa7e34fafac11d55e6e29eea260b69e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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
