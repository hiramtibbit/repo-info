## `docker:stable-git`

```console
$ docker pull docker@sha256:956cb7b3d5955a62116f0840b4502848691b71d514865651ef011a477e4c62d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:06a15464db8e67cd474cbff466e5b8179c570d028f87b50ab81ff715de36aadc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55468815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7543f9d541da92858bb203ac3807772c532f107ea7a7393ece203ab43c93d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:52:55 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 11 Sep 2018 22:52:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Tue, 11 Sep 2018 22:53:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 22:53:01 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 22:53:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 22:53:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:53:02 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e793f0ebe8a0d4496ef2fca6d5d45493df6dc40503657b357e153fa91548171`  
		Last Modified: Tue, 11 Sep 2018 22:53:41 GMT  
		Size: 309.0 KB (308969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77995fba19184aad4b702852da2d04d7b92693f2923499f5d388fd8d2ce2dd81`  
		Last Modified: Tue, 11 Sep 2018 22:53:40 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34762f4b409c2da06e952d19bebbcb12e15bdc0ced3ab8314cd383329898f72e`  
		Last Modified: Tue, 11 Sep 2018 22:55:17 GMT  
		Size: 44.3 MB (44324822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0761c30c6229302f1d22c6a84e201cea653dc5530972e564e39fdcb610e3a6e`  
		Last Modified: Tue, 11 Sep 2018 22:55:06 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c927cb9db2edd6c20086dbdade4d1467296a2e84382f9a56fea52efdc52cff5b`  
		Last Modified: Tue, 11 Sep 2018 22:55:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9376030a370c39d587096facfb9128302f9343b3734b30e638fc34f7e02336b4`  
		Last Modified: Tue, 11 Sep 2018 22:56:41 GMT  
		Size: 8.6 MB (8626655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:2e23420b6ce2ee49b15b0df3b1cee708bda70772a1bedab1f0443e9c31f3b47e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54992287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913bf904f573be8dcfa23618d2ce18fc1b430d60b5ea7aa55231cec8a3ddb14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Fri, 17 Aug 2018 07:54:18 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 17 Aug 2018 07:54:18 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 07:54:48 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 07:53:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 07:53:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 07:53:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 07:53:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 07:53:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 07:53:39 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 07:53:58 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:8914d45f1b2cabdf98026bbfec8b70ebb63e829a8ebde571f733abaad018de39`  
		Last Modified: Fri, 17 Aug 2018 07:55:31 GMT  
		Size: 309.1 KB (309072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6579bc6b32fc36451455300d9a15571bf468bcfe7f8b52ddc36f24590628d2b`  
		Last Modified: Fri, 17 Aug 2018 07:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8929879acae643553838f85801c0164e33313f43891e3f24131b3752d57aa05a`  
		Last Modified: Thu, 23 Aug 2018 07:54:23 GMT  
		Size: 44.4 MB (44353803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461622ce4bb90773db4598312cae104c39b86b68948328ff1535804bd7bde6ad`  
		Last Modified: Thu, 23 Aug 2018 07:54:09 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2569407b214cd24f243c876cb9cff7e9b76512a4bef3da4e409e406c80096bc0`  
		Last Modified: Thu, 23 Aug 2018 07:54:09 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833fd39bbf084125b5260f8bb943538ca81cffec5b09b59e69c628584fef37db`  
		Last Modified: Thu, 23 Aug 2018 07:55:16 GMT  
		Size: 8.2 MB (8181792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8290235bf34efde5956f26e06d59c6d11e60a74eec6f8c1398aef2d81598b6c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52800526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72e435c578ad57ab81cdf79a3055844767548f7b60e0dc6c85e3d13fad31524`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 08:41:59 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 08:42:00 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:41:39 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 08:39:59 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 08:40:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 08:40:13 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 08:40:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:15 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 08:41:20 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:fdcf8e21e8f5edb742758a8dcd7868dc15b1b1ad2605c214d159d58216e7944a`  
		Last Modified: Fri, 13 Jul 2018 08:52:12 GMT  
		Size: 308.5 KB (308530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e221838d317e50636dd30af1175c5672e49c137b7163688ad18fd895860a23`  
		Last Modified: Fri, 13 Jul 2018 08:52:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822fa0712a65880b8bdfc482c187abaf5d699a3d96469e442ef7d0523b69449d`  
		Last Modified: Thu, 23 Aug 2018 08:42:13 GMT  
		Size: 42.5 MB (42472229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a58002bb4e1a03a88fcd58124d58c749d34e923a7fb87369b864d1d1a0c25f`  
		Last Modified: Thu, 23 Aug 2018 08:41:56 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1827665fd68fd86d8ef07040478f72ef1ff8b59fc354a61f5b9ae883af2f4e6a`  
		Last Modified: Thu, 23 Aug 2018 08:41:56 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ae80e7e836a41924589f1d4a464720bba7563cb4bc46e9c616b29debfce99a`  
		Last Modified: Thu, 23 Aug 2018 08:49:23 GMT  
		Size: 7.9 MB (7918635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; ppc64le

```console
$ docker pull docker@sha256:aac9269a99da5f57eea32f59148b9c648aec965b44b1b0418a53162960e3a203
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52958081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a85ebc68d2f0c22d96d8079aaf35082d66df135d01b3e0e3671e3dd68d9ef0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:23:05 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 08:43:42 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 08:43:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 08:43:52 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 08:43:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 08:43:55 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 08:44:28 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b8f8d917c36191a6e4a94adb7ec84c1484ca57c5b62eab52e5c787a4087919`  
		Last Modified: Thu, 23 Aug 2018 08:44:57 GMT  
		Size: 42.1 MB (42051423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e46dd913679c1413c97949e0fb3d60e8c6767cbf1f3cef716b0dd553990a0c`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18093889f81e517f425f05ea0cc1ce7ab2e6308420cdbc32465fb8f5cb24ef1e`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97203a9cc9c7050488e4e77525cb6224104dba3a90c7ed1f12b603be7b46a7d3`  
		Last Modified: Thu, 23 Aug 2018 08:46:53 GMT  
		Size: 8.4 MB (8399339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; s390x

```console
$ docker pull docker@sha256:524fdc0e65eefc506a372b3caf2a79fe2800df2d6146d52e77f9063ad9b65fff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56696592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edbde3205b984ce3055643c70451be4b18384200319c3875f0fb565a4fd6a0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 11:41:31 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 11:41:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 11:43:08 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 11:41:21 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 11:41:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 11:41:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 11:41:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:41:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 11:41:27 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 11:41:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eeb143e96d53824ae8400edeaff13b2f662c7b1eabb1ea3f35b13606a43844`  
		Last Modified: Fri, 13 Jul 2018 11:46:08 GMT  
		Size: 309.4 KB (309440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9e1e34325661474352d946155c6b35e9706f2ab12465bc084d780a7c2bb27`  
		Last Modified: Fri, 13 Jul 2018 11:46:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cc8f98fa441b129dbfb071f6e1cc758ad54f1a4ffbf44b04ff69042c020ee9`  
		Last Modified: Thu, 23 Aug 2018 11:42:38 GMT  
		Size: 45.2 MB (45211782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41a0e66d56985d34f6890b19770538b3ce15a1e3816b30649817b4420f5495f`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ded0b648ebb90301349b3c4309032c03bfa3509c92bec1d219613f23d5aa585`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a7fc93a7b52cea611a551180ae9a8e1f521a7dabaeec7c2928817ccbad1f96`  
		Last Modified: Thu, 23 Aug 2018 11:44:41 GMT  
		Size: 8.9 MB (8866285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
