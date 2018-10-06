<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:18`](#docker18)
-	[`docker:18.06`](#docker1806)
-	[`docker:18.06.1`](#docker18061)
-	[`docker:18.06.1-ce`](#docker18061-ce)
-	[`docker:18.06.1-ce-dind`](#docker18061-ce-dind)
-	[`docker:18.06.1-ce-git`](#docker18061-ce-git)
-	[`docker:18.06.1-dind`](#docker18061-dind)
-	[`docker:18.06.1-git`](#docker18061-git)
-	[`docker:18.06-dind`](#docker1806-dind)
-	[`docker:18.06-git`](#docker1806-git)
-	[`docker:18.09.0-ce-beta1`](#docker18090-ce-beta1)
-	[`docker:18.09.0-ce-beta1-dind`](#docker18090-ce-beta1-dind)
-	[`docker:18.09.0-ce-beta1-git`](#docker18090-ce-beta1-git)
-	[`docker:18.09-rc`](#docker1809-rc)
-	[`docker:18.09-rc-dind`](#docker1809-rc-dind)
-	[`docker:18.09-rc-git`](#docker1809-rc-git)
-	[`docker:18-dind`](#docker18-dind)
-	[`docker:18-git`](#docker18-git)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:rc`](#dockerrc)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)

## `docker:18`

```console
$ docker pull docker@sha256:47f6b7f5c3f00f6f1515259628a6f97ccc7e3e614cec5922299968400e164aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:f6e9fe94d077973a8f913b226e39e34af6d2690a4c5238e6b3ffe4a13b148d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7e073eb60f300c2e6c7e4035e23fff313c3a72f73c704a52095f0db736e62e`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:42bf8bb3fce2ca364baa7834b7212d471ba382d19dd5568de1589c84773e892d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b775f24d1677b9e34f5bfaa9a6409c968caf6137de566dccf1b38a84d4f917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c49ae32b70a3a655795db4704450a549f1b6563764759a47b103b91a955a445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44881891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4d2e376fd344576849fe7586a28608413d9b6f6edb9cbb92f92c1270af616`
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

### `docker:18` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; s390x

```console
$ docker pull docker@sha256:b8a9b9af1ac45e38b5814d06f8e30f963d6c5d744f987cdbb8a7ff80401df4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46616256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a7a3dc9176c349824e246628c6792858892538e1caf2c153233729f4e9f696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06`

```console
$ docker pull docker@sha256:47f6b7f5c3f00f6f1515259628a6f97ccc7e3e614cec5922299968400e164aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06` - linux; amd64

```console
$ docker pull docker@sha256:f6e9fe94d077973a8f913b226e39e34af6d2690a4c5238e6b3ffe4a13b148d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7e073eb60f300c2e6c7e4035e23fff313c3a72f73c704a52095f0db736e62e`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm variant v6

```console
$ docker pull docker@sha256:42bf8bb3fce2ca364baa7834b7212d471ba382d19dd5568de1589c84773e892d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b775f24d1677b9e34f5bfaa9a6409c968caf6137de566dccf1b38a84d4f917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c49ae32b70a3a655795db4704450a549f1b6563764759a47b103b91a955a445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44881891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4d2e376fd344576849fe7586a28608413d9b6f6edb9cbb92f92c1270af616`
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

### `docker:18.06` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; s390x

```console
$ docker pull docker@sha256:b8a9b9af1ac45e38b5814d06f8e30f963d6c5d744f987cdbb8a7ff80401df4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46616256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a7a3dc9176c349824e246628c6792858892538e1caf2c153233729f4e9f696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1`

```console
$ docker pull docker@sha256:47f6b7f5c3f00f6f1515259628a6f97ccc7e3e614cec5922299968400e164aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.1` - linux; amd64

```console
$ docker pull docker@sha256:f6e9fe94d077973a8f913b226e39e34af6d2690a4c5238e6b3ffe4a13b148d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7e073eb60f300c2e6c7e4035e23fff313c3a72f73c704a52095f0db736e62e`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1` - linux; arm variant v6

```console
$ docker pull docker@sha256:42bf8bb3fce2ca364baa7834b7212d471ba382d19dd5568de1589c84773e892d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b775f24d1677b9e34f5bfaa9a6409c968caf6137de566dccf1b38a84d4f917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c49ae32b70a3a655795db4704450a549f1b6563764759a47b103b91a955a445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44881891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4d2e376fd344576849fe7586a28608413d9b6f6edb9cbb92f92c1270af616`
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

### `docker:18.06.1` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1` - linux; s390x

```console
$ docker pull docker@sha256:b8a9b9af1ac45e38b5814d06f8e30f963d6c5d744f987cdbb8a7ff80401df4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46616256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a7a3dc9176c349824e246628c6792858892538e1caf2c153233729f4e9f696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-ce`

```console
$ docker pull docker@sha256:47f6b7f5c3f00f6f1515259628a6f97ccc7e3e614cec5922299968400e164aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.1-ce` - linux; amd64

```console
$ docker pull docker@sha256:f6e9fe94d077973a8f913b226e39e34af6d2690a4c5238e6b3ffe4a13b148d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7e073eb60f300c2e6c7e4035e23fff313c3a72f73c704a52095f0db736e62e`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce` - linux; arm variant v6

```console
$ docker pull docker@sha256:42bf8bb3fce2ca364baa7834b7212d471ba382d19dd5568de1589c84773e892d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b775f24d1677b9e34f5bfaa9a6409c968caf6137de566dccf1b38a84d4f917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c49ae32b70a3a655795db4704450a549f1b6563764759a47b103b91a955a445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44881891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4d2e376fd344576849fe7586a28608413d9b6f6edb9cbb92f92c1270af616`
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

### `docker:18.06.1-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce` - linux; s390x

```console
$ docker pull docker@sha256:b8a9b9af1ac45e38b5814d06f8e30f963d6c5d744f987cdbb8a7ff80401df4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46616256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a7a3dc9176c349824e246628c6792858892538e1caf2c153233729f4e9f696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-ce-dind`

```console
$ docker pull docker@sha256:3ecf5848aa808983e4df85316dbf3a765430d06cd678c5ac1ac6f7b29d5e0835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.1-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:7a7198c15b1b1d4abdbf74d89e58ed16acf3b9f216cdb2c79aa30d4a16d6b6a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfec978837639b4230111b35a775a67ccbc2b08b442c1ae2cca4e95c3e6d08a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:20:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:20:26 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:20:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:20:27 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:27 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:20:27 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:20:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:28 GMT
CMD []
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d12c40f3e57cf4605614aebce51984a56231ffdf9a8e16d7ff1b6682eb1e93`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 4.7 MB (4690296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02b4200625788d754ccbf569dbe6727e857e4d80966312907e10ecb3314df6`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe71eded123095b76fa6c9b6827be9b3e1c18ceb748e7b979d07a8887cd125f`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd71253caa2079bb7b649022b6bd546ab6ad51f156f0823156c6afad83ea243`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3606d0c286ed2f38490b6c87cc9b50ec1d38e1908923be6d21b365f71958b17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48210281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d70a9d4d7a3eac244d10289bd3df3b34e089bf845e64ffcc4b843f5c9e3d28`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:50:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:50:28 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:50:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:50:29 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:29 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:50:30 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:50:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:31 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1612e27893e9e877b3d6ea30c34dd53465bee434a7791afff394fa15e04cbcfc`  
		Last Modified: Sat, 06 Oct 2018 07:53:18 GMT  
		Size: 2.7 MB (2651103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b130a604995564becc3be94e43c03918c76e8cc9df2ab9b1c38d1e9e6f39ca17`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7e490bc90e45e52a023527fc73637a31f8765ed5dc575934f28bd85488354`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484cde051aa441bdaff19ddaad1de0024593a9c6235872849cc2ef70889e5fa1`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cddb0d61b1e7a21c84d4bb95e021a91a48c6073cd27afa3000dd56bd543b96eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49164231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1ea4161263e5ab769c8bad3ae67c8f4e4e923d904a54cc96b73237a4659ec3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 23 Aug 2018 08:40:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:40:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:40:48 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:40:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:40:51 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:52 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:40:52 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:40:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:54 GMT
CMD []
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
	-	`sha256:cb93f0d48c5ac6ae6a01ef5567c32390ce9ab21333bafbdb82f8d4f66d5ce12f`  
		Last Modified: Thu, 23 Aug 2018 08:45:14 GMT  
		Size: 4.3 MB (4254688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920772632f27257171d5e0044fc9fcfa5d57dee8c0481b10f30a66816029da29`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1e433b8306587a737954be799fedba8b55c01af76a7228c20a1a9c629c080`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b35285caa25aa721da0c52f1806c3fd3365febbc6570bf5caf8f5a73ed4dfe`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:b863cc09c7addb3cbbf8ec2f425f003e81640bd96fae7ebcf0902d71391cca55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51457148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4919a12f9335abc6c0ca0afdf073765476829b1245aff227734e77f5a9d151e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 12 Sep 2018 12:44:29 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 12 Sep 2018 12:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 12 Sep 2018 12:44:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:31 GMT
VOLUME [/var/lib/docker]
# Wed, 12 Sep 2018 12:44:31 GMT
EXPOSE 2375/tcp
# Wed, 12 Sep 2018 12:44:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:31 GMT
CMD []
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c26b18a7984dfef1e9fcee9a317ea4029fa85ea769b65b7cf1fc3e36fef5f1`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 4.8 MB (4813309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23a73c8a692b07cb70c75b451c08d1415f5e68f810391ca45c02a5731375be`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952167c37300028c792ca5fe17e732a2c1363dffbbd9a063b3b8f27b580275`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30525fde208c50f79b0cecbc855453afed4cf7e9083cb51338d833d24d19c284`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-ce-git`

```console
$ docker pull docker@sha256:d6b10e0ee6e0ebf0b18b1d079c7540ee314ce51187b0d45e0c36cd50874c9a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.1-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:191baae0198f1f009bb12c7cef44f63f4a9384f23b7816a8880b00766354a20e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55458959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a2d0da40bc37344c35ab723d4081a5ef6122d466bf0a0409f742ffc09c43b9`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:39 GMT
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf04323d40c483ebb03a2fb3cae3d4ec9229f0d222942c7d0acd5f8d357fa3`  
		Last Modified: Fri, 05 Oct 2018 21:26:03 GMT  
		Size: 8.6 MB (8626658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5cd7c1667b06a26663bf7ffbd2e8a407013c8b6683dae949ebc7d294a2e445fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55e6952886c458dfa3eb3e78709c1057a4562244a9d5fa8e91730f3029088b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0627980d6e1cda127f3dfc56ebcdb8fb2d64689c41003f6be1c00063b66e53`  
		Last Modified: Sat, 06 Oct 2018 07:54:00 GMT  
		Size: 8.2 MB (8181347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-git` - linux; arm64 variant v8

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

### `docker:18.06.1-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:8c4ea345ec398fab9a0568cd6433a620a57324c16fd81fcc2bc812ad781821ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55482717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7a643a6572fc0b52603ea46fccdbb740e39d79754ded7c9b32f6d1b19855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebbf415da8da9b0f5641879bb1af2bf147a53f6eb402a647e7eeedef7670f67`  
		Last Modified: Wed, 12 Sep 2018 12:46:40 GMT  
		Size: 8.9 MB (8866461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-dind`

```console
$ docker pull docker@sha256:3ecf5848aa808983e4df85316dbf3a765430d06cd678c5ac1ac6f7b29d5e0835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.1-dind` - linux; amd64

```console
$ docker pull docker@sha256:7a7198c15b1b1d4abdbf74d89e58ed16acf3b9f216cdb2c79aa30d4a16d6b6a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfec978837639b4230111b35a775a67ccbc2b08b442c1ae2cca4e95c3e6d08a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:20:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:20:26 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:20:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:20:27 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:27 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:20:27 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:20:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:28 GMT
CMD []
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d12c40f3e57cf4605614aebce51984a56231ffdf9a8e16d7ff1b6682eb1e93`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 4.7 MB (4690296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02b4200625788d754ccbf569dbe6727e857e4d80966312907e10ecb3314df6`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe71eded123095b76fa6c9b6827be9b3e1c18ceb748e7b979d07a8887cd125f`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd71253caa2079bb7b649022b6bd546ab6ad51f156f0823156c6afad83ea243`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3606d0c286ed2f38490b6c87cc9b50ec1d38e1908923be6d21b365f71958b17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48210281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d70a9d4d7a3eac244d10289bd3df3b34e089bf845e64ffcc4b843f5c9e3d28`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:50:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:50:28 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:50:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:50:29 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:29 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:50:30 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:50:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:31 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1612e27893e9e877b3d6ea30c34dd53465bee434a7791afff394fa15e04cbcfc`  
		Last Modified: Sat, 06 Oct 2018 07:53:18 GMT  
		Size: 2.7 MB (2651103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b130a604995564becc3be94e43c03918c76e8cc9df2ab9b1c38d1e9e6f39ca17`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7e490bc90e45e52a023527fc73637a31f8765ed5dc575934f28bd85488354`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484cde051aa441bdaff19ddaad1de0024593a9c6235872849cc2ef70889e5fa1`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cddb0d61b1e7a21c84d4bb95e021a91a48c6073cd27afa3000dd56bd543b96eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49164231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1ea4161263e5ab769c8bad3ae67c8f4e4e923d904a54cc96b73237a4659ec3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 23 Aug 2018 08:40:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:40:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:40:48 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:40:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:40:51 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:52 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:40:52 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:40:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:54 GMT
CMD []
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
	-	`sha256:cb93f0d48c5ac6ae6a01ef5567c32390ce9ab21333bafbdb82f8d4f66d5ce12f`  
		Last Modified: Thu, 23 Aug 2018 08:45:14 GMT  
		Size: 4.3 MB (4254688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920772632f27257171d5e0044fc9fcfa5d57dee8c0481b10f30a66816029da29`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1e433b8306587a737954be799fedba8b55c01af76a7228c20a1a9c629c080`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b35285caa25aa721da0c52f1806c3fd3365febbc6570bf5caf8f5a73ed4dfe`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; s390x

```console
$ docker pull docker@sha256:b863cc09c7addb3cbbf8ec2f425f003e81640bd96fae7ebcf0902d71391cca55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51457148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4919a12f9335abc6c0ca0afdf073765476829b1245aff227734e77f5a9d151e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 12 Sep 2018 12:44:29 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 12 Sep 2018 12:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 12 Sep 2018 12:44:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:31 GMT
VOLUME [/var/lib/docker]
# Wed, 12 Sep 2018 12:44:31 GMT
EXPOSE 2375/tcp
# Wed, 12 Sep 2018 12:44:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:31 GMT
CMD []
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c26b18a7984dfef1e9fcee9a317ea4029fa85ea769b65b7cf1fc3e36fef5f1`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 4.8 MB (4813309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23a73c8a692b07cb70c75b451c08d1415f5e68f810391ca45c02a5731375be`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952167c37300028c792ca5fe17e732a2c1363dffbbd9a063b3b8f27b580275`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30525fde208c50f79b0cecbc855453afed4cf7e9083cb51338d833d24d19c284`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-git`

```console
$ docker pull docker@sha256:d6b10e0ee6e0ebf0b18b1d079c7540ee314ce51187b0d45e0c36cd50874c9a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.1-git` - linux; amd64

```console
$ docker pull docker@sha256:191baae0198f1f009bb12c7cef44f63f4a9384f23b7816a8880b00766354a20e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55458959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a2d0da40bc37344c35ab723d4081a5ef6122d466bf0a0409f742ffc09c43b9`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:39 GMT
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf04323d40c483ebb03a2fb3cae3d4ec9229f0d222942c7d0acd5f8d357fa3`  
		Last Modified: Fri, 05 Oct 2018 21:26:03 GMT  
		Size: 8.6 MB (8626658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5cd7c1667b06a26663bf7ffbd2e8a407013c8b6683dae949ebc7d294a2e445fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55e6952886c458dfa3eb3e78709c1057a4562244a9d5fa8e91730f3029088b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0627980d6e1cda127f3dfc56ebcdb8fb2d64689c41003f6be1c00063b66e53`  
		Last Modified: Sat, 06 Oct 2018 07:54:00 GMT  
		Size: 8.2 MB (8181347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-git` - linux; arm64 variant v8

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

### `docker:18.06.1-git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-git` - linux; s390x

```console
$ docker pull docker@sha256:8c4ea345ec398fab9a0568cd6433a620a57324c16fd81fcc2bc812ad781821ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55482717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7a643a6572fc0b52603ea46fccdbb740e39d79754ded7c9b32f6d1b19855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebbf415da8da9b0f5641879bb1af2bf147a53f6eb402a647e7eeedef7670f67`  
		Last Modified: Wed, 12 Sep 2018 12:46:40 GMT  
		Size: 8.9 MB (8866461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-dind`

```console
$ docker pull docker@sha256:3ecf5848aa808983e4df85316dbf3a765430d06cd678c5ac1ac6f7b29d5e0835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06-dind` - linux; amd64

```console
$ docker pull docker@sha256:7a7198c15b1b1d4abdbf74d89e58ed16acf3b9f216cdb2c79aa30d4a16d6b6a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfec978837639b4230111b35a775a67ccbc2b08b442c1ae2cca4e95c3e6d08a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:20:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:20:26 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:20:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:20:27 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:27 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:20:27 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:20:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:28 GMT
CMD []
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d12c40f3e57cf4605614aebce51984a56231ffdf9a8e16d7ff1b6682eb1e93`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 4.7 MB (4690296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02b4200625788d754ccbf569dbe6727e857e4d80966312907e10ecb3314df6`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe71eded123095b76fa6c9b6827be9b3e1c18ceb748e7b979d07a8887cd125f`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd71253caa2079bb7b649022b6bd546ab6ad51f156f0823156c6afad83ea243`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3606d0c286ed2f38490b6c87cc9b50ec1d38e1908923be6d21b365f71958b17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48210281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d70a9d4d7a3eac244d10289bd3df3b34e089bf845e64ffcc4b843f5c9e3d28`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:50:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:50:28 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:50:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:50:29 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:29 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:50:30 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:50:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:31 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1612e27893e9e877b3d6ea30c34dd53465bee434a7791afff394fa15e04cbcfc`  
		Last Modified: Sat, 06 Oct 2018 07:53:18 GMT  
		Size: 2.7 MB (2651103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b130a604995564becc3be94e43c03918c76e8cc9df2ab9b1c38d1e9e6f39ca17`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7e490bc90e45e52a023527fc73637a31f8765ed5dc575934f28bd85488354`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484cde051aa441bdaff19ddaad1de0024593a9c6235872849cc2ef70889e5fa1`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cddb0d61b1e7a21c84d4bb95e021a91a48c6073cd27afa3000dd56bd543b96eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49164231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1ea4161263e5ab769c8bad3ae67c8f4e4e923d904a54cc96b73237a4659ec3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 23 Aug 2018 08:40:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:40:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:40:48 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:40:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:40:51 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:52 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:40:52 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:40:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:54 GMT
CMD []
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
	-	`sha256:cb93f0d48c5ac6ae6a01ef5567c32390ce9ab21333bafbdb82f8d4f66d5ce12f`  
		Last Modified: Thu, 23 Aug 2018 08:45:14 GMT  
		Size: 4.3 MB (4254688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920772632f27257171d5e0044fc9fcfa5d57dee8c0481b10f30a66816029da29`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1e433b8306587a737954be799fedba8b55c01af76a7228c20a1a9c629c080`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b35285caa25aa721da0c52f1806c3fd3365febbc6570bf5caf8f5a73ed4dfe`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; s390x

```console
$ docker pull docker@sha256:b863cc09c7addb3cbbf8ec2f425f003e81640bd96fae7ebcf0902d71391cca55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51457148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4919a12f9335abc6c0ca0afdf073765476829b1245aff227734e77f5a9d151e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 12 Sep 2018 12:44:29 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 12 Sep 2018 12:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 12 Sep 2018 12:44:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:31 GMT
VOLUME [/var/lib/docker]
# Wed, 12 Sep 2018 12:44:31 GMT
EXPOSE 2375/tcp
# Wed, 12 Sep 2018 12:44:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:31 GMT
CMD []
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c26b18a7984dfef1e9fcee9a317ea4029fa85ea769b65b7cf1fc3e36fef5f1`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 4.8 MB (4813309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23a73c8a692b07cb70c75b451c08d1415f5e68f810391ca45c02a5731375be`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952167c37300028c792ca5fe17e732a2c1363dffbbd9a063b3b8f27b580275`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30525fde208c50f79b0cecbc855453afed4cf7e9083cb51338d833d24d19c284`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-git`

```console
$ docker pull docker@sha256:d6b10e0ee6e0ebf0b18b1d079c7540ee314ce51187b0d45e0c36cd50874c9a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06-git` - linux; amd64

```console
$ docker pull docker@sha256:191baae0198f1f009bb12c7cef44f63f4a9384f23b7816a8880b00766354a20e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55458959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a2d0da40bc37344c35ab723d4081a5ef6122d466bf0a0409f742ffc09c43b9`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:39 GMT
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf04323d40c483ebb03a2fb3cae3d4ec9229f0d222942c7d0acd5f8d357fa3`  
		Last Modified: Fri, 05 Oct 2018 21:26:03 GMT  
		Size: 8.6 MB (8626658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5cd7c1667b06a26663bf7ffbd2e8a407013c8b6683dae949ebc7d294a2e445fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55e6952886c458dfa3eb3e78709c1057a4562244a9d5fa8e91730f3029088b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0627980d6e1cda127f3dfc56ebcdb8fb2d64689c41003f6be1c00063b66e53`  
		Last Modified: Sat, 06 Oct 2018 07:54:00 GMT  
		Size: 8.2 MB (8181347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm64 variant v8

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

### `docker:18.06-git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; s390x

```console
$ docker pull docker@sha256:8c4ea345ec398fab9a0568cd6433a620a57324c16fd81fcc2bc812ad781821ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55482717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7a643a6572fc0b52603ea46fccdbb740e39d79754ded7c9b32f6d1b19855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebbf415da8da9b0f5641879bb1af2bf147a53f6eb402a647e7eeedef7670f67`  
		Last Modified: Wed, 12 Sep 2018 12:46:40 GMT  
		Size: 8.9 MB (8866461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.0-ce-beta1`

```console
$ docker pull docker@sha256:1a06028612f5079adcbfbccb29e33b1dc47a691715a7cf851b1296dff2aea9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.0-ce-beta1` - linux; amd64

```console
$ docker pull docker@sha256:8c8711ee5a0426e04cc72b1f172ada7cc60d7d99b9c81ab2e3d0c3b1b44bb9e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49826651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078fa042565a1c0e7a5c554d52168b048c1ae79a9f9b5b846215ba5b3d0bb2f8`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.0-ce-beta1` - linux; arm variant v6

```console
$ docker pull docker@sha256:a01d2c42415b2ad28698dedd261c5595a9ae125d4b2f788dd17b3806663c7140
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46948903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715a25448a64c49a68c96d71733a2033c5294f618101d9ffae4529a875f1b5e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.0-ce-beta1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7243a9f50a3fc78692a8caecc14dd5be15a356e5d15e624ea9e11b9112d10ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46203576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24ad536634e3612d3a5615dd456f706bcc4f6d535137887f71dc5ddfa7d5c5b`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.0-ce-beta1-dind`

```console
$ docker pull docker@sha256:9becc981b87caede3318bf77a9c1178bee5ad43543ce54d80b0c53e480a71d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.0-ce-beta1-dind` - linux; amd64

```console
$ docker pull docker@sha256:435a5e23c79c43763b83f8244512f09f6512200001b246fe91394cc0825d5940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54519602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52837ed36581f08361f995e09d98e1076b19bd09fc02a171e6f863aea6ea0bbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:19:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:19:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:19:52 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:52 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:19:52 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:19:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:53 GMT
CMD []
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4569979abdce6d863eceb3be847c11ec4979a5916aa24b9b5b6f9f8b8c91b1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 4.7 MB (4690304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf8d414c2994a433db69ead5e4f068ea6d92f282cb969371c85a1631a424b9d`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2882ac619a12c4d22efb61ad036d815d131aea4cfacc82f1186b18025d1a4dfa`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0401733386cda30bc4c29c8a4e7616ed171f441114221ab4c3e4990a306db1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.0-ce-beta1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:80a6e413b5e4a527a3dd65830035632d138f3e8336afc3da30af79ec1299cad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49602678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b346f6188eeb576a932df9aed44341b0f4b91dc52992bb07fd0b0ac57e79b8c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:49:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:49:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:49:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:49:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:49:53 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:54 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:49:54 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:55 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5318bcb1b85a42cf2515da11f2e18cab501ef8fd4fcada34321ba0c384f00`  
		Last Modified: Sat, 06 Oct 2018 07:51:33 GMT  
		Size: 2.7 MB (2651101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f550841756b8c3f96d3493d890a3fe3bfc4750bb697e2d25f88ab62a2d52c`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9daaaea225e49de3c963dec18e871910f29279dcdbdc2a6318b03634cad662`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2f44850ca289861a426cc4ee8a873d6b0fb831cc99084090172526f55b7e7`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.0-ce-beta1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:21cd52d05ccd7740d4a82e28cf069bfed627f5123e13c5c6842e593f7cd937a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50485920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bef2e810fb07108f06c47a5d9cac0d95120badee197250135c8b2d1a83543f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:51:32 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 11 Sep 2018 08:51:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 11 Sep 2018 08:51:35 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 11 Sep 2018 08:51:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 11 Sep 2018 08:51:38 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:51:39 GMT
VOLUME [/var/lib/docker]
# Tue, 11 Sep 2018 08:51:40 GMT
EXPOSE 2375/tcp
# Tue, 11 Sep 2018 08:51:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:41 GMT
CMD []
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09787dcb75b1bb491d24930c6f29df73c3e5fd94eb81cef76643e95103d99b`  
		Last Modified: Tue, 11 Sep 2018 08:55:10 GMT  
		Size: 4.3 MB (4254697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd34d0b0ef56f063bc957dfef418f813432dac71bf3f5e476d30c21d99b1e6b`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2883976d81b6254bb2e50e12964b3d2ef11712a03cc72958bc4a54c436d4e0a2`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 25.7 KB (25748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3dd3a6b71394fd05e49e6ff97d24f162b4dd2c883e69b116660547110b3668`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.0-ce-beta1-git`

```console
$ docker pull docker@sha256:e24472235b1d92ee413cebbf8c0be83c423bc40e32a90b89c7b04f9091b3a6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.0-ce-beta1-git` - linux; amd64

```console
$ docker pull docker@sha256:6c52f65c8fec71467f46376ba59faa42edbbfc66b5cd0662841a85b891775b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58453313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750da79f4f65b9f36ec5e3cc699d7e05e229a312d275c2771600e272613ce57d`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:02 GMT
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a888badfacaa01601e48abf4926c467d31736a69f4fdc3dd89a80400881b6125`  
		Last Modified: Fri, 05 Oct 2018 21:22:34 GMT  
		Size: 8.6 MB (8626662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.0-ce-beta1-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:93d889e610b8c0ff1069425a1df24b3a98e72454ccc523b1a7b8ae65b48fc09c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55130243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2d8a5f9ed8cce20f289f3381b6d9be54ce719af628209cc72eb3753b1cc9d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:03 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1141955d7cc7015cdbf44c7cd78a49df9428fb5617c557df5772d48a7f93b`  
		Last Modified: Sat, 06 Oct 2018 07:51:58 GMT  
		Size: 8.2 MB (8181340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.0-ce-beta1-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fabc30e82aef34eea9ce1fb2fede2de192bf82b169cfffe6158758675f05c42c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54122391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff3b30c4957790a2b974c135048dcc41695c5581d9e114c9914fb9ca3528acf`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:52:13 GMT
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae95888f05a5cc92442527caaa493feb9ad7f3034e8aca4bf04aac533b8acc4`  
		Last Modified: Tue, 11 Sep 2018 08:57:00 GMT  
		Size: 7.9 MB (7918815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc`

```console
$ docker pull docker@sha256:1a06028612f5079adcbfbccb29e33b1dc47a691715a7cf851b1296dff2aea9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-rc` - linux; amd64

```console
$ docker pull docker@sha256:8c8711ee5a0426e04cc72b1f172ada7cc60d7d99b9c81ab2e3d0c3b1b44bb9e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49826651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078fa042565a1c0e7a5c554d52168b048c1ae79a9f9b5b846215ba5b3d0bb2f8`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:a01d2c42415b2ad28698dedd261c5595a9ae125d4b2f788dd17b3806663c7140
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46948903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715a25448a64c49a68c96d71733a2033c5294f618101d9ffae4529a875f1b5e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7243a9f50a3fc78692a8caecc14dd5be15a356e5d15e624ea9e11b9112d10ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46203576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24ad536634e3612d3a5615dd456f706bcc4f6d535137887f71dc5ddfa7d5c5b`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-dind`

```console
$ docker pull docker@sha256:9becc981b87caede3318bf77a9c1178bee5ad43543ce54d80b0c53e480a71d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:435a5e23c79c43763b83f8244512f09f6512200001b246fe91394cc0825d5940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54519602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52837ed36581f08361f995e09d98e1076b19bd09fc02a171e6f863aea6ea0bbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:19:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:19:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:19:52 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:52 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:19:52 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:19:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:53 GMT
CMD []
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4569979abdce6d863eceb3be847c11ec4979a5916aa24b9b5b6f9f8b8c91b1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 4.7 MB (4690304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf8d414c2994a433db69ead5e4f068ea6d92f282cb969371c85a1631a424b9d`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2882ac619a12c4d22efb61ad036d815d131aea4cfacc82f1186b18025d1a4dfa`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0401733386cda30bc4c29c8a4e7616ed171f441114221ab4c3e4990a306db1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:80a6e413b5e4a527a3dd65830035632d138f3e8336afc3da30af79ec1299cad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49602678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b346f6188eeb576a932df9aed44341b0f4b91dc52992bb07fd0b0ac57e79b8c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:49:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:49:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:49:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:49:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:49:53 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:54 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:49:54 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:55 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5318bcb1b85a42cf2515da11f2e18cab501ef8fd4fcada34321ba0c384f00`  
		Last Modified: Sat, 06 Oct 2018 07:51:33 GMT  
		Size: 2.7 MB (2651101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f550841756b8c3f96d3493d890a3fe3bfc4750bb697e2d25f88ab62a2d52c`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9daaaea225e49de3c963dec18e871910f29279dcdbdc2a6318b03634cad662`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2f44850ca289861a426cc4ee8a873d6b0fb831cc99084090172526f55b7e7`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:21cd52d05ccd7740d4a82e28cf069bfed627f5123e13c5c6842e593f7cd937a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50485920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bef2e810fb07108f06c47a5d9cac0d95120badee197250135c8b2d1a83543f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:51:32 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 11 Sep 2018 08:51:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 11 Sep 2018 08:51:35 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 11 Sep 2018 08:51:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 11 Sep 2018 08:51:38 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:51:39 GMT
VOLUME [/var/lib/docker]
# Tue, 11 Sep 2018 08:51:40 GMT
EXPOSE 2375/tcp
# Tue, 11 Sep 2018 08:51:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:41 GMT
CMD []
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09787dcb75b1bb491d24930c6f29df73c3e5fd94eb81cef76643e95103d99b`  
		Last Modified: Tue, 11 Sep 2018 08:55:10 GMT  
		Size: 4.3 MB (4254697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd34d0b0ef56f063bc957dfef418f813432dac71bf3f5e476d30c21d99b1e6b`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2883976d81b6254bb2e50e12964b3d2ef11712a03cc72958bc4a54c436d4e0a2`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 25.7 KB (25748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3dd3a6b71394fd05e49e6ff97d24f162b4dd2c883e69b116660547110b3668`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-git`

```console
$ docker pull docker@sha256:e24472235b1d92ee413cebbf8c0be83c423bc40e32a90b89c7b04f9091b3a6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:6c52f65c8fec71467f46376ba59faa42edbbfc66b5cd0662841a85b891775b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58453313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750da79f4f65b9f36ec5e3cc699d7e05e229a312d275c2771600e272613ce57d`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:02 GMT
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a888badfacaa01601e48abf4926c467d31736a69f4fdc3dd89a80400881b6125`  
		Last Modified: Fri, 05 Oct 2018 21:22:34 GMT  
		Size: 8.6 MB (8626662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:93d889e610b8c0ff1069425a1df24b3a98e72454ccc523b1a7b8ae65b48fc09c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55130243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2d8a5f9ed8cce20f289f3381b6d9be54ce719af628209cc72eb3753b1cc9d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:03 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1141955d7cc7015cdbf44c7cd78a49df9428fb5617c557df5772d48a7f93b`  
		Last Modified: Sat, 06 Oct 2018 07:51:58 GMT  
		Size: 8.2 MB (8181340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fabc30e82aef34eea9ce1fb2fede2de192bf82b169cfffe6158758675f05c42c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54122391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff3b30c4957790a2b974c135048dcc41695c5581d9e114c9914fb9ca3528acf`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:52:13 GMT
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae95888f05a5cc92442527caaa493feb9ad7f3034e8aca4bf04aac533b8acc4`  
		Last Modified: Tue, 11 Sep 2018 08:57:00 GMT  
		Size: 7.9 MB (7918815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:3ecf5848aa808983e4df85316dbf3a765430d06cd678c5ac1ac6f7b29d5e0835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:7a7198c15b1b1d4abdbf74d89e58ed16acf3b9f216cdb2c79aa30d4a16d6b6a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfec978837639b4230111b35a775a67ccbc2b08b442c1ae2cca4e95c3e6d08a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:20:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:20:26 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:20:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:20:27 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:27 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:20:27 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:20:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:28 GMT
CMD []
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d12c40f3e57cf4605614aebce51984a56231ffdf9a8e16d7ff1b6682eb1e93`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 4.7 MB (4690296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02b4200625788d754ccbf569dbe6727e857e4d80966312907e10ecb3314df6`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe71eded123095b76fa6c9b6827be9b3e1c18ceb748e7b979d07a8887cd125f`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd71253caa2079bb7b649022b6bd546ab6ad51f156f0823156c6afad83ea243`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3606d0c286ed2f38490b6c87cc9b50ec1d38e1908923be6d21b365f71958b17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48210281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d70a9d4d7a3eac244d10289bd3df3b34e089bf845e64ffcc4b843f5c9e3d28`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:50:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:50:28 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:50:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:50:29 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:29 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:50:30 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:50:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:31 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1612e27893e9e877b3d6ea30c34dd53465bee434a7791afff394fa15e04cbcfc`  
		Last Modified: Sat, 06 Oct 2018 07:53:18 GMT  
		Size: 2.7 MB (2651103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b130a604995564becc3be94e43c03918c76e8cc9df2ab9b1c38d1e9e6f39ca17`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7e490bc90e45e52a023527fc73637a31f8765ed5dc575934f28bd85488354`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484cde051aa441bdaff19ddaad1de0024593a9c6235872849cc2ef70889e5fa1`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cddb0d61b1e7a21c84d4bb95e021a91a48c6073cd27afa3000dd56bd543b96eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49164231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1ea4161263e5ab769c8bad3ae67c8f4e4e923d904a54cc96b73237a4659ec3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 23 Aug 2018 08:40:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:40:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:40:48 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:40:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:40:51 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:52 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:40:52 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:40:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:54 GMT
CMD []
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
	-	`sha256:cb93f0d48c5ac6ae6a01ef5567c32390ce9ab21333bafbdb82f8d4f66d5ce12f`  
		Last Modified: Thu, 23 Aug 2018 08:45:14 GMT  
		Size: 4.3 MB (4254688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920772632f27257171d5e0044fc9fcfa5d57dee8c0481b10f30a66816029da29`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1e433b8306587a737954be799fedba8b55c01af76a7228c20a1a9c629c080`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b35285caa25aa721da0c52f1806c3fd3365febbc6570bf5caf8f5a73ed4dfe`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; s390x

```console
$ docker pull docker@sha256:b863cc09c7addb3cbbf8ec2f425f003e81640bd96fae7ebcf0902d71391cca55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51457148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4919a12f9335abc6c0ca0afdf073765476829b1245aff227734e77f5a9d151e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 12 Sep 2018 12:44:29 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 12 Sep 2018 12:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 12 Sep 2018 12:44:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:31 GMT
VOLUME [/var/lib/docker]
# Wed, 12 Sep 2018 12:44:31 GMT
EXPOSE 2375/tcp
# Wed, 12 Sep 2018 12:44:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:31 GMT
CMD []
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c26b18a7984dfef1e9fcee9a317ea4029fa85ea769b65b7cf1fc3e36fef5f1`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 4.8 MB (4813309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23a73c8a692b07cb70c75b451c08d1415f5e68f810391ca45c02a5731375be`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952167c37300028c792ca5fe17e732a2c1363dffbbd9a063b3b8f27b580275`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30525fde208c50f79b0cecbc855453afed4cf7e9083cb51338d833d24d19c284`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:d6b10e0ee6e0ebf0b18b1d079c7540ee314ce51187b0d45e0c36cd50874c9a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:191baae0198f1f009bb12c7cef44f63f4a9384f23b7816a8880b00766354a20e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55458959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a2d0da40bc37344c35ab723d4081a5ef6122d466bf0a0409f742ffc09c43b9`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:39 GMT
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf04323d40c483ebb03a2fb3cae3d4ec9229f0d222942c7d0acd5f8d357fa3`  
		Last Modified: Fri, 05 Oct 2018 21:26:03 GMT  
		Size: 8.6 MB (8626658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5cd7c1667b06a26663bf7ffbd2e8a407013c8b6683dae949ebc7d294a2e445fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55e6952886c458dfa3eb3e78709c1057a4562244a9d5fa8e91730f3029088b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0627980d6e1cda127f3dfc56ebcdb8fb2d64689c41003f6be1c00063b66e53`  
		Last Modified: Sat, 06 Oct 2018 07:54:00 GMT  
		Size: 8.2 MB (8181347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

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

### `docker:18-git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; s390x

```console
$ docker pull docker@sha256:8c4ea345ec398fab9a0568cd6433a620a57324c16fd81fcc2bc812ad781821ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55482717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7a643a6572fc0b52603ea46fccdbb740e39d79754ded7c9b32f6d1b19855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebbf415da8da9b0f5641879bb1af2bf147a53f6eb402a647e7eeedef7670f67`  
		Last Modified: Wed, 12 Sep 2018 12:46:40 GMT  
		Size: 8.9 MB (8866461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:3ecf5848aa808983e4df85316dbf3a765430d06cd678c5ac1ac6f7b29d5e0835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:7a7198c15b1b1d4abdbf74d89e58ed16acf3b9f216cdb2c79aa30d4a16d6b6a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfec978837639b4230111b35a775a67ccbc2b08b442c1ae2cca4e95c3e6d08a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:20:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:20:26 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:20:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:20:27 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:27 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:20:27 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:20:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:28 GMT
CMD []
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d12c40f3e57cf4605614aebce51984a56231ffdf9a8e16d7ff1b6682eb1e93`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 4.7 MB (4690296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02b4200625788d754ccbf569dbe6727e857e4d80966312907e10ecb3314df6`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe71eded123095b76fa6c9b6827be9b3e1c18ceb748e7b979d07a8887cd125f`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd71253caa2079bb7b649022b6bd546ab6ad51f156f0823156c6afad83ea243`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3606d0c286ed2f38490b6c87cc9b50ec1d38e1908923be6d21b365f71958b17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48210281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d70a9d4d7a3eac244d10289bd3df3b34e089bf845e64ffcc4b843f5c9e3d28`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:50:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:50:28 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:50:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:50:29 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:29 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:50:30 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:50:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:31 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1612e27893e9e877b3d6ea30c34dd53465bee434a7791afff394fa15e04cbcfc`  
		Last Modified: Sat, 06 Oct 2018 07:53:18 GMT  
		Size: 2.7 MB (2651103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b130a604995564becc3be94e43c03918c76e8cc9df2ab9b1c38d1e9e6f39ca17`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7e490bc90e45e52a023527fc73637a31f8765ed5dc575934f28bd85488354`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484cde051aa441bdaff19ddaad1de0024593a9c6235872849cc2ef70889e5fa1`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cddb0d61b1e7a21c84d4bb95e021a91a48c6073cd27afa3000dd56bd543b96eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49164231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1ea4161263e5ab769c8bad3ae67c8f4e4e923d904a54cc96b73237a4659ec3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 23 Aug 2018 08:40:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:40:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:40:48 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:40:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:40:51 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:52 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:40:52 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:40:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:54 GMT
CMD []
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
	-	`sha256:cb93f0d48c5ac6ae6a01ef5567c32390ce9ab21333bafbdb82f8d4f66d5ce12f`  
		Last Modified: Thu, 23 Aug 2018 08:45:14 GMT  
		Size: 4.3 MB (4254688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920772632f27257171d5e0044fc9fcfa5d57dee8c0481b10f30a66816029da29`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1e433b8306587a737954be799fedba8b55c01af76a7228c20a1a9c629c080`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b35285caa25aa721da0c52f1806c3fd3365febbc6570bf5caf8f5a73ed4dfe`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; s390x

```console
$ docker pull docker@sha256:b863cc09c7addb3cbbf8ec2f425f003e81640bd96fae7ebcf0902d71391cca55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51457148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4919a12f9335abc6c0ca0afdf073765476829b1245aff227734e77f5a9d151e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 12 Sep 2018 12:44:29 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 12 Sep 2018 12:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 12 Sep 2018 12:44:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:31 GMT
VOLUME [/var/lib/docker]
# Wed, 12 Sep 2018 12:44:31 GMT
EXPOSE 2375/tcp
# Wed, 12 Sep 2018 12:44:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:31 GMT
CMD []
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c26b18a7984dfef1e9fcee9a317ea4029fa85ea769b65b7cf1fc3e36fef5f1`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 4.8 MB (4813309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23a73c8a692b07cb70c75b451c08d1415f5e68f810391ca45c02a5731375be`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952167c37300028c792ca5fe17e732a2c1363dffbbd9a063b3b8f27b580275`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30525fde208c50f79b0cecbc855453afed4cf7e9083cb51338d833d24d19c284`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:47f6b7f5c3f00f6f1515259628a6f97ccc7e3e614cec5922299968400e164aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:f6e9fe94d077973a8f913b226e39e34af6d2690a4c5238e6b3ffe4a13b148d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7e073eb60f300c2e6c7e4035e23fff313c3a72f73c704a52095f0db736e62e`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm variant v6

```console
$ docker pull docker@sha256:42bf8bb3fce2ca364baa7834b7212d471ba382d19dd5568de1589c84773e892d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b775f24d1677b9e34f5bfaa9a6409c968caf6137de566dccf1b38a84d4f917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c49ae32b70a3a655795db4704450a549f1b6563764759a47b103b91a955a445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44881891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4d2e376fd344576849fe7586a28608413d9b6f6edb9cbb92f92c1270af616`
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

### `docker:edge` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; s390x

```console
$ docker pull docker@sha256:b8a9b9af1ac45e38b5814d06f8e30f963d6c5d744f987cdbb8a7ff80401df4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46616256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a7a3dc9176c349824e246628c6792858892538e1caf2c153233729f4e9f696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:3ecf5848aa808983e4df85316dbf3a765430d06cd678c5ac1ac6f7b29d5e0835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:7a7198c15b1b1d4abdbf74d89e58ed16acf3b9f216cdb2c79aa30d4a16d6b6a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfec978837639b4230111b35a775a67ccbc2b08b442c1ae2cca4e95c3e6d08a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:20:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:20:26 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:20:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:20:27 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:27 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:20:27 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:20:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:28 GMT
CMD []
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d12c40f3e57cf4605614aebce51984a56231ffdf9a8e16d7ff1b6682eb1e93`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 4.7 MB (4690296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02b4200625788d754ccbf569dbe6727e857e4d80966312907e10ecb3314df6`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe71eded123095b76fa6c9b6827be9b3e1c18ceb748e7b979d07a8887cd125f`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd71253caa2079bb7b649022b6bd546ab6ad51f156f0823156c6afad83ea243`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3606d0c286ed2f38490b6c87cc9b50ec1d38e1908923be6d21b365f71958b17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48210281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d70a9d4d7a3eac244d10289bd3df3b34e089bf845e64ffcc4b843f5c9e3d28`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:50:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:50:28 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:50:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:50:29 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:29 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:50:30 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:50:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:31 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1612e27893e9e877b3d6ea30c34dd53465bee434a7791afff394fa15e04cbcfc`  
		Last Modified: Sat, 06 Oct 2018 07:53:18 GMT  
		Size: 2.7 MB (2651103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b130a604995564becc3be94e43c03918c76e8cc9df2ab9b1c38d1e9e6f39ca17`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7e490bc90e45e52a023527fc73637a31f8765ed5dc575934f28bd85488354`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484cde051aa441bdaff19ddaad1de0024593a9c6235872849cc2ef70889e5fa1`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cddb0d61b1e7a21c84d4bb95e021a91a48c6073cd27afa3000dd56bd543b96eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49164231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1ea4161263e5ab769c8bad3ae67c8f4e4e923d904a54cc96b73237a4659ec3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 23 Aug 2018 08:40:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:40:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:40:48 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:40:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:40:51 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:52 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:40:52 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:40:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:54 GMT
CMD []
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
	-	`sha256:cb93f0d48c5ac6ae6a01ef5567c32390ce9ab21333bafbdb82f8d4f66d5ce12f`  
		Last Modified: Thu, 23 Aug 2018 08:45:14 GMT  
		Size: 4.3 MB (4254688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920772632f27257171d5e0044fc9fcfa5d57dee8c0481b10f30a66816029da29`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1e433b8306587a737954be799fedba8b55c01af76a7228c20a1a9c629c080`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b35285caa25aa721da0c52f1806c3fd3365febbc6570bf5caf8f5a73ed4dfe`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:b863cc09c7addb3cbbf8ec2f425f003e81640bd96fae7ebcf0902d71391cca55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51457148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4919a12f9335abc6c0ca0afdf073765476829b1245aff227734e77f5a9d151e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 12 Sep 2018 12:44:29 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 12 Sep 2018 12:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 12 Sep 2018 12:44:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:31 GMT
VOLUME [/var/lib/docker]
# Wed, 12 Sep 2018 12:44:31 GMT
EXPOSE 2375/tcp
# Wed, 12 Sep 2018 12:44:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:31 GMT
CMD []
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c26b18a7984dfef1e9fcee9a317ea4029fa85ea769b65b7cf1fc3e36fef5f1`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 4.8 MB (4813309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23a73c8a692b07cb70c75b451c08d1415f5e68f810391ca45c02a5731375be`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952167c37300028c792ca5fe17e732a2c1363dffbbd9a063b3b8f27b580275`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30525fde208c50f79b0cecbc855453afed4cf7e9083cb51338d833d24d19c284`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:d6b10e0ee6e0ebf0b18b1d079c7540ee314ce51187b0d45e0c36cd50874c9a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:191baae0198f1f009bb12c7cef44f63f4a9384f23b7816a8880b00766354a20e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55458959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a2d0da40bc37344c35ab723d4081a5ef6122d466bf0a0409f742ffc09c43b9`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:39 GMT
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf04323d40c483ebb03a2fb3cae3d4ec9229f0d222942c7d0acd5f8d357fa3`  
		Last Modified: Fri, 05 Oct 2018 21:26:03 GMT  
		Size: 8.6 MB (8626658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5cd7c1667b06a26663bf7ffbd2e8a407013c8b6683dae949ebc7d294a2e445fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55e6952886c458dfa3eb3e78709c1057a4562244a9d5fa8e91730f3029088b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0627980d6e1cda127f3dfc56ebcdb8fb2d64689c41003f6be1c00063b66e53`  
		Last Modified: Sat, 06 Oct 2018 07:54:00 GMT  
		Size: 8.2 MB (8181347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm64 variant v8

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

### `docker:edge-git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; s390x

```console
$ docker pull docker@sha256:8c4ea345ec398fab9a0568cd6433a620a57324c16fd81fcc2bc812ad781821ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55482717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7a643a6572fc0b52603ea46fccdbb740e39d79754ded7c9b32f6d1b19855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebbf415da8da9b0f5641879bb1af2bf147a53f6eb402a647e7eeedef7670f67`  
		Last Modified: Wed, 12 Sep 2018 12:46:40 GMT  
		Size: 8.9 MB (8866461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:d6b10e0ee6e0ebf0b18b1d079c7540ee314ce51187b0d45e0c36cd50874c9a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:191baae0198f1f009bb12c7cef44f63f4a9384f23b7816a8880b00766354a20e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55458959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a2d0da40bc37344c35ab723d4081a5ef6122d466bf0a0409f742ffc09c43b9`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:39 GMT
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf04323d40c483ebb03a2fb3cae3d4ec9229f0d222942c7d0acd5f8d357fa3`  
		Last Modified: Fri, 05 Oct 2018 21:26:03 GMT  
		Size: 8.6 MB (8626658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5cd7c1667b06a26663bf7ffbd2e8a407013c8b6683dae949ebc7d294a2e445fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55e6952886c458dfa3eb3e78709c1057a4562244a9d5fa8e91730f3029088b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0627980d6e1cda127f3dfc56ebcdb8fb2d64689c41003f6be1c00063b66e53`  
		Last Modified: Sat, 06 Oct 2018 07:54:00 GMT  
		Size: 8.2 MB (8181347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

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

### `docker:git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; s390x

```console
$ docker pull docker@sha256:8c4ea345ec398fab9a0568cd6433a620a57324c16fd81fcc2bc812ad781821ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55482717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7a643a6572fc0b52603ea46fccdbb740e39d79754ded7c9b32f6d1b19855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebbf415da8da9b0f5641879bb1af2bf147a53f6eb402a647e7eeedef7670f67`  
		Last Modified: Wed, 12 Sep 2018 12:46:40 GMT  
		Size: 8.9 MB (8866461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:47f6b7f5c3f00f6f1515259628a6f97ccc7e3e614cec5922299968400e164aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:f6e9fe94d077973a8f913b226e39e34af6d2690a4c5238e6b3ffe4a13b148d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7e073eb60f300c2e6c7e4035e23fff313c3a72f73c704a52095f0db736e62e`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:42bf8bb3fce2ca364baa7834b7212d471ba382d19dd5568de1589c84773e892d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b775f24d1677b9e34f5bfaa9a6409c968caf6137de566dccf1b38a84d4f917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c49ae32b70a3a655795db4704450a549f1b6563764759a47b103b91a955a445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44881891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4d2e376fd344576849fe7586a28608413d9b6f6edb9cbb92f92c1270af616`
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

### `docker:latest` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; s390x

```console
$ docker pull docker@sha256:b8a9b9af1ac45e38b5814d06f8e30f963d6c5d744f987cdbb8a7ff80401df4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46616256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a7a3dc9176c349824e246628c6792858892538e1caf2c153233729f4e9f696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:1a06028612f5079adcbfbccb29e33b1dc47a691715a7cf851b1296dff2aea9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:8c8711ee5a0426e04cc72b1f172ada7cc60d7d99b9c81ab2e3d0c3b1b44bb9e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49826651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078fa042565a1c0e7a5c554d52168b048c1ae79a9f9b5b846215ba5b3d0bb2f8`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:a01d2c42415b2ad28698dedd261c5595a9ae125d4b2f788dd17b3806663c7140
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46948903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715a25448a64c49a68c96d71733a2033c5294f618101d9ffae4529a875f1b5e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7243a9f50a3fc78692a8caecc14dd5be15a356e5d15e624ea9e11b9112d10ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46203576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24ad536634e3612d3a5615dd456f706bcc4f6d535137887f71dc5ddfa7d5c5b`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:9becc981b87caede3318bf77a9c1178bee5ad43543ce54d80b0c53e480a71d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:435a5e23c79c43763b83f8244512f09f6512200001b246fe91394cc0825d5940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54519602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52837ed36581f08361f995e09d98e1076b19bd09fc02a171e6f863aea6ea0bbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:19:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:19:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:19:52 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:52 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:19:52 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:19:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:53 GMT
CMD []
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4569979abdce6d863eceb3be847c11ec4979a5916aa24b9b5b6f9f8b8c91b1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 4.7 MB (4690304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf8d414c2994a433db69ead5e4f068ea6d92f282cb969371c85a1631a424b9d`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2882ac619a12c4d22efb61ad036d815d131aea4cfacc82f1186b18025d1a4dfa`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0401733386cda30bc4c29c8a4e7616ed171f441114221ab4c3e4990a306db1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:80a6e413b5e4a527a3dd65830035632d138f3e8336afc3da30af79ec1299cad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49602678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b346f6188eeb576a932df9aed44341b0f4b91dc52992bb07fd0b0ac57e79b8c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:49:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:49:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:49:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:49:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:49:53 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:54 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:49:54 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:55 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5318bcb1b85a42cf2515da11f2e18cab501ef8fd4fcada34321ba0c384f00`  
		Last Modified: Sat, 06 Oct 2018 07:51:33 GMT  
		Size: 2.7 MB (2651101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f550841756b8c3f96d3493d890a3fe3bfc4750bb697e2d25f88ab62a2d52c`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9daaaea225e49de3c963dec18e871910f29279dcdbdc2a6318b03634cad662`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2f44850ca289861a426cc4ee8a873d6b0fb831cc99084090172526f55b7e7`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:21cd52d05ccd7740d4a82e28cf069bfed627f5123e13c5c6842e593f7cd937a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50485920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bef2e810fb07108f06c47a5d9cac0d95120badee197250135c8b2d1a83543f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:51:32 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 11 Sep 2018 08:51:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 11 Sep 2018 08:51:35 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 11 Sep 2018 08:51:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 11 Sep 2018 08:51:38 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:51:39 GMT
VOLUME [/var/lib/docker]
# Tue, 11 Sep 2018 08:51:40 GMT
EXPOSE 2375/tcp
# Tue, 11 Sep 2018 08:51:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:41 GMT
CMD []
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09787dcb75b1bb491d24930c6f29df73c3e5fd94eb81cef76643e95103d99b`  
		Last Modified: Tue, 11 Sep 2018 08:55:10 GMT  
		Size: 4.3 MB (4254697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd34d0b0ef56f063bc957dfef418f813432dac71bf3f5e476d30c21d99b1e6b`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2883976d81b6254bb2e50e12964b3d2ef11712a03cc72958bc4a54c436d4e0a2`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 25.7 KB (25748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3dd3a6b71394fd05e49e6ff97d24f162b4dd2c883e69b116660547110b3668`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:e24472235b1d92ee413cebbf8c0be83c423bc40e32a90b89c7b04f9091b3a6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:6c52f65c8fec71467f46376ba59faa42edbbfc66b5cd0662841a85b891775b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58453313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750da79f4f65b9f36ec5e3cc699d7e05e229a312d275c2771600e272613ce57d`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:02 GMT
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a888badfacaa01601e48abf4926c467d31736a69f4fdc3dd89a80400881b6125`  
		Last Modified: Fri, 05 Oct 2018 21:22:34 GMT  
		Size: 8.6 MB (8626662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:93d889e610b8c0ff1069425a1df24b3a98e72454ccc523b1a7b8ae65b48fc09c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55130243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2d8a5f9ed8cce20f289f3381b6d9be54ce719af628209cc72eb3753b1cc9d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:03 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1141955d7cc7015cdbf44c7cd78a49df9428fb5617c557df5772d48a7f93b`  
		Last Modified: Sat, 06 Oct 2018 07:51:58 GMT  
		Size: 8.2 MB (8181340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fabc30e82aef34eea9ce1fb2fede2de192bf82b169cfffe6158758675f05c42c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54122391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff3b30c4957790a2b974c135048dcc41695c5581d9e114c9914fb9ca3528acf`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:52:13 GMT
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae95888f05a5cc92442527caaa493feb9ad7f3034e8aca4bf04aac533b8acc4`  
		Last Modified: Tue, 11 Sep 2018 08:57:00 GMT  
		Size: 7.9 MB (7918815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:47f6b7f5c3f00f6f1515259628a6f97ccc7e3e614cec5922299968400e164aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:f6e9fe94d077973a8f913b226e39e34af6d2690a4c5238e6b3ffe4a13b148d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7e073eb60f300c2e6c7e4035e23fff313c3a72f73c704a52095f0db736e62e`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:42bf8bb3fce2ca364baa7834b7212d471ba382d19dd5568de1589c84773e892d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b775f24d1677b9e34f5bfaa9a6409c968caf6137de566dccf1b38a84d4f917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2c49ae32b70a3a655795db4704450a549f1b6563764759a47b103b91a955a445
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44881891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4d2e376fd344576849fe7586a28608413d9b6f6edb9cbb92f92c1270af616`
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

### `docker:stable` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; s390x

```console
$ docker pull docker@sha256:b8a9b9af1ac45e38b5814d06f8e30f963d6c5d744f987cdbb8a7ff80401df4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46616256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a7a3dc9176c349824e246628c6792858892538e1caf2c153233729f4e9f696`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:3ecf5848aa808983e4df85316dbf3a765430d06cd678c5ac1ac6f7b29d5e0835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:7a7198c15b1b1d4abdbf74d89e58ed16acf3b9f216cdb2c79aa30d4a16d6b6a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfec978837639b4230111b35a775a67ccbc2b08b442c1ae2cca4e95c3e6d08a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:20:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:20:26 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:20:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:20:27 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:27 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:20:27 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:20:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:28 GMT
CMD []
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d12c40f3e57cf4605614aebce51984a56231ffdf9a8e16d7ff1b6682eb1e93`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 4.7 MB (4690296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02b4200625788d754ccbf569dbe6727e857e4d80966312907e10ecb3314df6`  
		Last Modified: Fri, 05 Oct 2018 21:24:58 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe71eded123095b76fa6c9b6827be9b3e1c18ceb748e7b979d07a8887cd125f`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd71253caa2079bb7b649022b6bd546ab6ad51f156f0823156c6afad83ea243`  
		Last Modified: Fri, 05 Oct 2018 21:24:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3606d0c286ed2f38490b6c87cc9b50ec1d38e1908923be6d21b365f71958b17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48210281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d70a9d4d7a3eac244d10289bd3df3b34e089bf845e64ffcc4b843f5c9e3d28`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:50:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:50:28 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:50:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:50:29 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:29 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:50:30 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:50:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:31 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1612e27893e9e877b3d6ea30c34dd53465bee434a7791afff394fa15e04cbcfc`  
		Last Modified: Sat, 06 Oct 2018 07:53:18 GMT  
		Size: 2.7 MB (2651103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b130a604995564becc3be94e43c03918c76e8cc9df2ab9b1c38d1e9e6f39ca17`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7e490bc90e45e52a023527fc73637a31f8765ed5dc575934f28bd85488354`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484cde051aa441bdaff19ddaad1de0024593a9c6235872849cc2ef70889e5fa1`  
		Last Modified: Sat, 06 Oct 2018 07:53:17 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cddb0d61b1e7a21c84d4bb95e021a91a48c6073cd27afa3000dd56bd543b96eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49164231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1ea4161263e5ab769c8bad3ae67c8f4e4e923d904a54cc96b73237a4659ec3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 23 Aug 2018 08:40:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:40:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:40:48 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:40:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:40:51 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:40:52 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:40:52 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:40:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:40:54 GMT
CMD []
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
	-	`sha256:cb93f0d48c5ac6ae6a01ef5567c32390ce9ab21333bafbdb82f8d4f66d5ce12f`  
		Last Modified: Thu, 23 Aug 2018 08:45:14 GMT  
		Size: 4.3 MB (4254688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920772632f27257171d5e0044fc9fcfa5d57dee8c0481b10f30a66816029da29`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1e433b8306587a737954be799fedba8b55c01af76a7228c20a1a9c629c080`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b35285caa25aa721da0c52f1806c3fd3365febbc6570bf5caf8f5a73ed4dfe`  
		Last Modified: Thu, 23 Aug 2018 08:45:13 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; s390x

```console
$ docker pull docker@sha256:b863cc09c7addb3cbbf8ec2f425f003e81640bd96fae7ebcf0902d71391cca55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51457148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4919a12f9335abc6c0ca0afdf073765476829b1245aff227734e77f5a9d151e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 12 Sep 2018 12:44:29 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 12 Sep 2018 12:44:29 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 12 Sep 2018 12:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 12 Sep 2018 12:44:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:31 GMT
VOLUME [/var/lib/docker]
# Wed, 12 Sep 2018 12:44:31 GMT
EXPOSE 2375/tcp
# Wed, 12 Sep 2018 12:44:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:31 GMT
CMD []
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c26b18a7984dfef1e9fcee9a317ea4029fa85ea769b65b7cf1fc3e36fef5f1`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 4.8 MB (4813309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23a73c8a692b07cb70c75b451c08d1415f5e68f810391ca45c02a5731375be`  
		Last Modified: Wed, 12 Sep 2018 12:45:54 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952167c37300028c792ca5fe17e732a2c1363dffbbd9a063b3b8f27b580275`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 25.7 KB (25687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30525fde208c50f79b0cecbc855453afed4cf7e9083cb51338d833d24d19c284`  
		Last Modified: Wed, 12 Sep 2018 12:45:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:d6b10e0ee6e0ebf0b18b1d079c7540ee314ce51187b0d45e0c36cd50874c9a88
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
$ docker pull docker@sha256:191baae0198f1f009bb12c7cef44f63f4a9384f23b7816a8880b00766354a20e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55458959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a2d0da40bc37344c35ab723d4081a5ef6122d466bf0a0409f742ffc09c43b9`
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
# Fri, 05 Oct 2018 21:20:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:20:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:20:16 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:39 GMT
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
	-	`sha256:b1ca6ca008946d40a65b97500905656ee8345f7283812a194b06c6bf03d903a5`  
		Last Modified: Fri, 05 Oct 2018 21:23:35 GMT  
		Size: 44.3 MB (44314968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404585a0abb73e220482f1fb2eda84dfe265cd96aec3234d65f81e85d91b82da`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3098db189fa8ca99ec00fd38e1b544c6785f222a1cb45bea3c0bbab1184a6cd`  
		Last Modified: Fri, 05 Oct 2018 21:23:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bf04323d40c483ebb03a2fb3cae3d4ec9229f0d222942c7d0acd5f8d357fa3`  
		Last Modified: Fri, 05 Oct 2018 21:26:03 GMT  
		Size: 8.6 MB (8626658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5cd7c1667b06a26663bf7ffbd2e8a407013c8b6683dae949ebc7d294a2e445fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55e6952886c458dfa3eb3e78709c1057a4562244a9d5fa8e91730f3029088b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 08:23:56 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 07:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:50:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:50:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:50:19 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fde48f45aa085abd254610483c2f059c113b9a3ad6aa787f02e924125f2e0`  
		Last Modified: Sat, 06 Oct 2018 07:52:35 GMT  
		Size: 43.1 MB (43099375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf86024ca8fc70115b305c8e180616c6f05dead1414dc8f345f09370d7c5624`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf7410737de0301e4b568333a422ae0601725adcbb2493fb3d518b4451f664`  
		Last Modified: Sat, 06 Oct 2018 07:52:22 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0627980d6e1cda127f3dfc56ebcdb8fb2d64689c41003f6be1c00063b66e53`  
		Last Modified: Sat, 06 Oct 2018 07:54:00 GMT  
		Size: 8.2 MB (8181347 bytes)  
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
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; s390x

```console
$ docker pull docker@sha256:8c4ea345ec398fab9a0568cd6433a620a57324c16fd81fcc2bc812ad781821ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55482717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7a643a6572fc0b52603ea46fccdbb740e39d79754ded7c9b32f6d1b19855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Wed, 12 Sep 2018 12:44:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 12 Sep 2018 12:44:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 12 Sep 2018 12:44:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:44:19 GMT
CMD ["sh"]
# Wed, 12 Sep 2018 12:44:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abbf39fe595a320d37efb10507ab6dcc657b7e71a678b5852eb4ac2a6b69b33`  
		Last Modified: Wed, 12 Sep 2018 12:45:09 GMT  
		Size: 44.0 MB (43997475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894358faeae9c24708e5dfb864c13206dc04c913316e8a7247c2d6ede1de88e4`  
		Last Modified: Wed, 12 Sep 2018 12:45:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da5876278cc42e36ae87b18e8046e0326de8f12f91d9389dae3fec992a11f9`  
		Last Modified: Wed, 12 Sep 2018 12:44:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebbf415da8da9b0f5641879bb1af2bf147a53f6eb402a647e7eeedef7670f67`  
		Last Modified: Wed, 12 Sep 2018 12:46:40 GMT  
		Size: 8.9 MB (8866461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:1a06028612f5079adcbfbccb29e33b1dc47a691715a7cf851b1296dff2aea9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:8c8711ee5a0426e04cc72b1f172ada7cc60d7d99b9c81ab2e3d0c3b1b44bb9e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49826651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078fa042565a1c0e7a5c554d52168b048c1ae79a9f9b5b846215ba5b3d0bb2f8`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:a01d2c42415b2ad28698dedd261c5595a9ae125d4b2f788dd17b3806663c7140
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46948903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715a25448a64c49a68c96d71733a2033c5294f618101d9ffae4529a875f1b5e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7243a9f50a3fc78692a8caecc14dd5be15a356e5d15e624ea9e11b9112d10ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46203576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24ad536634e3612d3a5615dd456f706bcc4f6d535137887f71dc5ddfa7d5c5b`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:9becc981b87caede3318bf77a9c1178bee5ad43543ce54d80b0c53e480a71d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:435a5e23c79c43763b83f8244512f09f6512200001b246fe91394cc0825d5940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54519602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52837ed36581f08361f995e09d98e1076b19bd09fc02a171e6f863aea6ea0bbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:19:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:19:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:19:52 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:52 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:19:52 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:19:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:53 GMT
CMD []
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4569979abdce6d863eceb3be847c11ec4979a5916aa24b9b5b6f9f8b8c91b1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 4.7 MB (4690304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf8d414c2994a433db69ead5e4f068ea6d92f282cb969371c85a1631a424b9d`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2882ac619a12c4d22efb61ad036d815d131aea4cfacc82f1186b18025d1a4dfa`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0401733386cda30bc4c29c8a4e7616ed171f441114221ab4c3e4990a306db1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:80a6e413b5e4a527a3dd65830035632d138f3e8336afc3da30af79ec1299cad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49602678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b346f6188eeb576a932df9aed44341b0f4b91dc52992bb07fd0b0ac57e79b8c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:49:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:49:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:49:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:49:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:49:53 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:54 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:49:54 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:55 GMT
CMD []
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5318bcb1b85a42cf2515da11f2e18cab501ef8fd4fcada34321ba0c384f00`  
		Last Modified: Sat, 06 Oct 2018 07:51:33 GMT  
		Size: 2.7 MB (2651101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f550841756b8c3f96d3493d890a3fe3bfc4750bb697e2d25f88ab62a2d52c`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9daaaea225e49de3c963dec18e871910f29279dcdbdc2a6318b03634cad662`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2f44850ca289861a426cc4ee8a873d6b0fb831cc99084090172526f55b7e7`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:21cd52d05ccd7740d4a82e28cf069bfed627f5123e13c5c6842e593f7cd937a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50485920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bef2e810fb07108f06c47a5d9cac0d95120badee197250135c8b2d1a83543f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:51:32 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 11 Sep 2018 08:51:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 11 Sep 2018 08:51:35 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 11 Sep 2018 08:51:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 11 Sep 2018 08:51:38 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:51:39 GMT
VOLUME [/var/lib/docker]
# Tue, 11 Sep 2018 08:51:40 GMT
EXPOSE 2375/tcp
# Tue, 11 Sep 2018 08:51:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:41 GMT
CMD []
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09787dcb75b1bb491d24930c6f29df73c3e5fd94eb81cef76643e95103d99b`  
		Last Modified: Tue, 11 Sep 2018 08:55:10 GMT  
		Size: 4.3 MB (4254697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd34d0b0ef56f063bc957dfef418f813432dac71bf3f5e476d30c21d99b1e6b`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2883976d81b6254bb2e50e12964b3d2ef11712a03cc72958bc4a54c436d4e0a2`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 25.7 KB (25748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3dd3a6b71394fd05e49e6ff97d24f162b4dd2c883e69b116660547110b3668`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:e24472235b1d92ee413cebbf8c0be83c423bc40e32a90b89c7b04f9091b3a6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:6c52f65c8fec71467f46376ba59faa42edbbfc66b5cd0662841a85b891775b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58453313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750da79f4f65b9f36ec5e3cc699d7e05e229a312d275c2771600e272613ce57d`
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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:20:02 GMT
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a888badfacaa01601e48abf4926c467d31736a69f4fdc3dd89a80400881b6125`  
		Last Modified: Fri, 05 Oct 2018 21:22:34 GMT  
		Size: 8.6 MB (8626662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:93d889e610b8c0ff1069425a1df24b3a98e72454ccc523b1a7b8ae65b48fc09c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55130243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2d8a5f9ed8cce20f289f3381b6d9be54ce719af628209cc72eb3753b1cc9d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:50:03 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e1141955d7cc7015cdbf44c7cd78a49df9428fb5617c557df5772d48a7f93b`  
		Last Modified: Sat, 06 Oct 2018 07:51:58 GMT  
		Size: 8.2 MB (8181340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fabc30e82aef34eea9ce1fb2fede2de192bf82b169cfffe6158758675f05c42c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54122391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff3b30c4957790a2b974c135048dcc41695c5581d9e114c9914fb9ca3528acf`
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
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:52:13 GMT
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
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae95888f05a5cc92442527caaa493feb9ad7f3034e8aca4bf04aac533b8acc4`  
		Last Modified: Tue, 11 Sep 2018 08:57:00 GMT  
		Size: 7.9 MB (7918815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
