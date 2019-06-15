<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:18`](#docker18)
-	[`docker:18.09`](#docker1809)
-	[`docker:18.09.6`](#docker18096)
-	[`docker:18.09.6-dind`](#docker18096-dind)
-	[`docker:18.09.6-git`](#docker18096-git)
-	[`docker:18.09-dind`](#docker1809-dind)
-	[`docker:18.09-git`](#docker1809-git)
-	[`docker:18-dind`](#docker18-dind)
-	[`docker:18-git`](#docker18-git)
-	[`docker:19.03.0-rc2`](#docker19030-rc2)
-	[`docker:19.03.0-rc2-dind`](#docker19030-rc2-dind)
-	[`docker:19.03.0-rc2-git`](#docker19030-rc2-git)
-	[`docker:19.03-rc`](#docker1903-rc)
-	[`docker:19.03-rc-dind`](#docker1903-rc-dind)
-	[`docker:19.03-rc-git`](#docker1903-rc-git)
-	[`docker:dind`](#dockerdind)
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
$ docker pull docker@sha256:8eb227e5305c1fa254b8fc09875ca23ca8cccc6b278d6d03a62e552245eac7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:f1fc50aac882ec01ebc435579962f738e492521dccc6cd31dac7a75a444887b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bea199b249bfed61cdcd7cdbfe240ee998d51f59bbf365674a15b619f5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:5eba34f27fe53a73c54fee9562045f26d62770d866bba77768212f40a35c6e22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8aab4181dbeb79f879b07a9823b72d28dd106f8b5caf710af88998011134578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v7

```console
$ docker pull docker@sha256:645894fda964d43c7d83aa06e82e029f16a9a4d36f25416435836dd1f4a0569d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48380528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e173814f79ccfe5a9d214cd7fa52fd0cd01c15844071c9a12c4a50faa92e059a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e6e4a41f3bd2ff6ab5d5ee367f4cfa958679835da1bfd4cb19472c1eff87f99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3fdd5c1f47eaf734ce06511c9237a0b18b0530f796be464f5730be7008cb56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09`

```console
$ docker pull docker@sha256:8eb227e5305c1fa254b8fc09875ca23ca8cccc6b278d6d03a62e552245eac7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:f1fc50aac882ec01ebc435579962f738e492521dccc6cd31dac7a75a444887b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bea199b249bfed61cdcd7cdbfe240ee998d51f59bbf365674a15b619f5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v6

```console
$ docker pull docker@sha256:5eba34f27fe53a73c54fee9562045f26d62770d866bba77768212f40a35c6e22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8aab4181dbeb79f879b07a9823b72d28dd106f8b5caf710af88998011134578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v7

```console
$ docker pull docker@sha256:645894fda964d43c7d83aa06e82e029f16a9a4d36f25416435836dd1f4a0569d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48380528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e173814f79ccfe5a9d214cd7fa52fd0cd01c15844071c9a12c4a50faa92e059a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e6e4a41f3bd2ff6ab5d5ee367f4cfa958679835da1bfd4cb19472c1eff87f99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3fdd5c1f47eaf734ce06511c9237a0b18b0530f796be464f5730be7008cb56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.6`

```console
$ docker pull docker@sha256:8eb227e5305c1fa254b8fc09875ca23ca8cccc6b278d6d03a62e552245eac7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18.09.6` - linux; amd64

```console
$ docker pull docker@sha256:f1fc50aac882ec01ebc435579962f738e492521dccc6cd31dac7a75a444887b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bea199b249bfed61cdcd7cdbfe240ee998d51f59bbf365674a15b619f5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6` - linux; arm variant v6

```console
$ docker pull docker@sha256:5eba34f27fe53a73c54fee9562045f26d62770d866bba77768212f40a35c6e22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8aab4181dbeb79f879b07a9823b72d28dd106f8b5caf710af88998011134578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6` - linux; arm variant v7

```console
$ docker pull docker@sha256:645894fda964d43c7d83aa06e82e029f16a9a4d36f25416435836dd1f4a0569d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48380528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e173814f79ccfe5a9d214cd7fa52fd0cd01c15844071c9a12c4a50faa92e059a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e6e4a41f3bd2ff6ab5d5ee367f4cfa958679835da1bfd4cb19472c1eff87f99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3fdd5c1f47eaf734ce06511c9237a0b18b0530f796be464f5730be7008cb56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.6-dind`

```console
$ docker pull docker@sha256:cf6be30ef5c5923d3c7d2fb544a6202e0dad1c8e0a7a6d381d76e587180a29a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18.09.6-dind` - linux; amd64

```console
$ docker pull docker@sha256:62953be0eae85ca6399e447a718836b2ea90a9543df930ea2139e089070be3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12adad4e12e25288e665131d5235d98a8edf2a39d26679dabbe2728442729e26`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:44 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:44 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:45 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8d6f0fcbe2f4746dbe93689127ca12098a4a6cfa7bf6690f36cf60144b3ef2`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 4.8 MB (4769750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cff70c7e929c7d9cd59bfd743e892c3f1fdc7091230d672cb434290db272f3`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ff75b36fa241fe79aa2783c8ac2806a1f5640d67f03b46e5252a819b29d0b6`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ab1a36a6ed2e3b044c47ff016757fb6b2a5040b7ca3e40b01630969af09c64`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:f43e38288fdb6b61d42f44f10c04e90808112038006071f8907cfcecbd9f874d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d500082251b6d1c8446dee75857bd7357a921840c12b4992f6ae20c157f0a4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:50:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:50:54 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:50:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:50:56 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:57 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:50:57 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:50:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:58 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de3765a82a15d0cdf74a0dd916f0f0a1803093642a15c51a3c3b95f39490448`  
		Last Modified: Fri, 14 Jun 2019 22:52:56 GMT  
		Size: 2.8 MB (2764949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e190f411cb0cba6874ed48bde401d50302803b0522ab22218ca59a77f073c5`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb826830b508cbef7528a39fdadbe74648eff4c5b4ee6cad77afb1bc3183d35`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7137e05194a1a8a6209501da0bd9a5e1839915795902bb736d90081d317708`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b65e757fb8ccd7b5ad565fcaa7bd936f54f8aecb559164aee73f3dc55dbb3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50838089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b469ff162d40754cb6faff7088f60df9dd67820af441ee7ffc579cf141a3c292`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:58:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:58:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:58:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:58:31 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:32 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:58:32 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:58:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:34 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf08a77c758c210579bdaf320c7c6993a0cfe0c833d2ef5514725f88e720fe87`  
		Last Modified: Sat, 15 Jun 2019 00:00:30 GMT  
		Size: 2.5 MB (2454891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e7b8b9b7edbfb9f20200368ad415b71b0fcc731d757b4eaafc6be64597a352`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fee690ebebad760ad4f0fa6652bd01f1d601f32da84c13264c1874c858d43e5`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda53778b9f91900aea36c49d7a71e7a09139221614c49a35a828aaa134330e`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aabdb3fe119c14357aa6483a5154f8a2b9dc986c8499ece3e4fec8b853d399ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4531d36b71deb34ceb227dbc72f8e27f29cc9fdee81473c50e6d796189ff1949`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:11 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:40:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:40:13 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:40:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:40:14 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:15 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:40:15 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:40:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:16 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cef0d593e25701026415fe51f647df804edac87ea4a134ba9b0262a7b00e01`  
		Last Modified: Fri, 14 Jun 2019 22:42:09 GMT  
		Size: 4.8 MB (4810177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee42e9ba718a819ddd4149e78d10bff368eb1c669b6527c0b08f31f7eda9ca4b`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e13ca316f0c90c6b18080fa0780144721dfba936ce4e77709b8a02868e5f105`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f3a4da88b701bd63defbe242f67680adb1ebfb9305c95d865edd1caad9fd2`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.6-git`

```console
$ docker pull docker@sha256:f83df6ab01586ecd01ebf7300d16f328f7c7ecb93d40f3b00c73fe4163d47f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18.09.6-git` - linux; amd64

```console
$ docker pull docker@sha256:f973dcab788d47d5547347d92e4685ed9557c36806ede23ad2eef1784e8aaada
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8de0c05a8a2b3107ce3f0bcc3dd4764d55239ba4b1fd1836f6e2c3d3bddd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e486320cea68ed92c6c599d143effbd1524ef245a695eaa5a9e68363f0a3142`  
		Last Modified: Fri, 14 Jun 2019 22:35:09 GMT  
		Size: 9.3 MB (9272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:260fb5325afdd3e04aeb34712e0414dee82f4bcb138260f4a03e3e8fe271488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57343087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12edd50006d594cc0052b972c2a069b9aa072039867477cea7b25fa3bdb48a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:51:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38b72c719299b6c7bd2d443fa3f2a73e53fbaf525ab10e30c25b0f661655492`  
		Last Modified: Fri, 14 Jun 2019 22:53:09 GMT  
		Size: 8.8 MB (8769322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:9e34eae8dabf0a9ce6ce8e622d5596e8117067dcb4ff6d9bb2b53a728c4ef9c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689a277461425c91f4083cd40b8d8519c6873b36b53e20b99f6abf5a08ab9ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5711b38713063b6513293cd90b3fcb887a0e8dd808fd6244b615d773d8038f84`  
		Last Modified: Sat, 15 Jun 2019 00:00:47 GMT  
		Size: 7.9 MB (7877929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d9fcee63a1a2a85cce6893d7bf6137e64bda583e70e7c09c72ddfaedd60f42e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c86b78c43ea0f2017fc8b3414d4277fd373ee778cd789af9ab0f9d5cf67d37b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4a4b7b42f99618569376487ccaee83a1835259e91062f069181a2fd6be05f3`  
		Last Modified: Fri, 14 Jun 2019 22:42:21 GMT  
		Size: 9.5 MB (9521283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:cf6be30ef5c5923d3c7d2fb544a6202e0dad1c8e0a7a6d381d76e587180a29a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:62953be0eae85ca6399e447a718836b2ea90a9543df930ea2139e089070be3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12adad4e12e25288e665131d5235d98a8edf2a39d26679dabbe2728442729e26`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:44 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:44 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:45 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8d6f0fcbe2f4746dbe93689127ca12098a4a6cfa7bf6690f36cf60144b3ef2`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 4.8 MB (4769750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cff70c7e929c7d9cd59bfd743e892c3f1fdc7091230d672cb434290db272f3`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ff75b36fa241fe79aa2783c8ac2806a1f5640d67f03b46e5252a819b29d0b6`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ab1a36a6ed2e3b044c47ff016757fb6b2a5040b7ca3e40b01630969af09c64`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:f43e38288fdb6b61d42f44f10c04e90808112038006071f8907cfcecbd9f874d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d500082251b6d1c8446dee75857bd7357a921840c12b4992f6ae20c157f0a4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:50:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:50:54 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:50:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:50:56 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:57 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:50:57 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:50:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:58 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de3765a82a15d0cdf74a0dd916f0f0a1803093642a15c51a3c3b95f39490448`  
		Last Modified: Fri, 14 Jun 2019 22:52:56 GMT  
		Size: 2.8 MB (2764949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e190f411cb0cba6874ed48bde401d50302803b0522ab22218ca59a77f073c5`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb826830b508cbef7528a39fdadbe74648eff4c5b4ee6cad77afb1bc3183d35`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7137e05194a1a8a6209501da0bd9a5e1839915795902bb736d90081d317708`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b65e757fb8ccd7b5ad565fcaa7bd936f54f8aecb559164aee73f3dc55dbb3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50838089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b469ff162d40754cb6faff7088f60df9dd67820af441ee7ffc579cf141a3c292`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:58:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:58:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:58:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:58:31 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:32 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:58:32 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:58:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:34 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf08a77c758c210579bdaf320c7c6993a0cfe0c833d2ef5514725f88e720fe87`  
		Last Modified: Sat, 15 Jun 2019 00:00:30 GMT  
		Size: 2.5 MB (2454891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e7b8b9b7edbfb9f20200368ad415b71b0fcc731d757b4eaafc6be64597a352`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fee690ebebad760ad4f0fa6652bd01f1d601f32da84c13264c1874c858d43e5`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda53778b9f91900aea36c49d7a71e7a09139221614c49a35a828aaa134330e`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aabdb3fe119c14357aa6483a5154f8a2b9dc986c8499ece3e4fec8b853d399ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4531d36b71deb34ceb227dbc72f8e27f29cc9fdee81473c50e6d796189ff1949`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:11 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:40:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:40:13 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:40:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:40:14 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:15 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:40:15 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:40:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:16 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cef0d593e25701026415fe51f647df804edac87ea4a134ba9b0262a7b00e01`  
		Last Modified: Fri, 14 Jun 2019 22:42:09 GMT  
		Size: 4.8 MB (4810177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee42e9ba718a819ddd4149e78d10bff368eb1c669b6527c0b08f31f7eda9ca4b`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e13ca316f0c90c6b18080fa0780144721dfba936ce4e77709b8a02868e5f105`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f3a4da88b701bd63defbe242f67680adb1ebfb9305c95d865edd1caad9fd2`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:f83df6ab01586ecd01ebf7300d16f328f7c7ecb93d40f3b00c73fe4163d47f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:f973dcab788d47d5547347d92e4685ed9557c36806ede23ad2eef1784e8aaada
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8de0c05a8a2b3107ce3f0bcc3dd4764d55239ba4b1fd1836f6e2c3d3bddd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e486320cea68ed92c6c599d143effbd1524ef245a695eaa5a9e68363f0a3142`  
		Last Modified: Fri, 14 Jun 2019 22:35:09 GMT  
		Size: 9.3 MB (9272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:260fb5325afdd3e04aeb34712e0414dee82f4bcb138260f4a03e3e8fe271488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57343087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12edd50006d594cc0052b972c2a069b9aa072039867477cea7b25fa3bdb48a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:51:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38b72c719299b6c7bd2d443fa3f2a73e53fbaf525ab10e30c25b0f661655492`  
		Last Modified: Fri, 14 Jun 2019 22:53:09 GMT  
		Size: 8.8 MB (8769322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:9e34eae8dabf0a9ce6ce8e622d5596e8117067dcb4ff6d9bb2b53a728c4ef9c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689a277461425c91f4083cd40b8d8519c6873b36b53e20b99f6abf5a08ab9ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5711b38713063b6513293cd90b3fcb887a0e8dd808fd6244b615d773d8038f84`  
		Last Modified: Sat, 15 Jun 2019 00:00:47 GMT  
		Size: 7.9 MB (7877929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d9fcee63a1a2a85cce6893d7bf6137e64bda583e70e7c09c72ddfaedd60f42e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c86b78c43ea0f2017fc8b3414d4277fd373ee778cd789af9ab0f9d5cf67d37b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4a4b7b42f99618569376487ccaee83a1835259e91062f069181a2fd6be05f3`  
		Last Modified: Fri, 14 Jun 2019 22:42:21 GMT  
		Size: 9.5 MB (9521283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:cf6be30ef5c5923d3c7d2fb544a6202e0dad1c8e0a7a6d381d76e587180a29a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:62953be0eae85ca6399e447a718836b2ea90a9543df930ea2139e089070be3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12adad4e12e25288e665131d5235d98a8edf2a39d26679dabbe2728442729e26`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:44 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:44 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:45 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8d6f0fcbe2f4746dbe93689127ca12098a4a6cfa7bf6690f36cf60144b3ef2`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 4.8 MB (4769750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cff70c7e929c7d9cd59bfd743e892c3f1fdc7091230d672cb434290db272f3`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ff75b36fa241fe79aa2783c8ac2806a1f5640d67f03b46e5252a819b29d0b6`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ab1a36a6ed2e3b044c47ff016757fb6b2a5040b7ca3e40b01630969af09c64`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:f43e38288fdb6b61d42f44f10c04e90808112038006071f8907cfcecbd9f874d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d500082251b6d1c8446dee75857bd7357a921840c12b4992f6ae20c157f0a4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:50:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:50:54 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:50:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:50:56 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:57 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:50:57 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:50:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:58 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de3765a82a15d0cdf74a0dd916f0f0a1803093642a15c51a3c3b95f39490448`  
		Last Modified: Fri, 14 Jun 2019 22:52:56 GMT  
		Size: 2.8 MB (2764949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e190f411cb0cba6874ed48bde401d50302803b0522ab22218ca59a77f073c5`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb826830b508cbef7528a39fdadbe74648eff4c5b4ee6cad77afb1bc3183d35`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7137e05194a1a8a6209501da0bd9a5e1839915795902bb736d90081d317708`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b65e757fb8ccd7b5ad565fcaa7bd936f54f8aecb559164aee73f3dc55dbb3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50838089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b469ff162d40754cb6faff7088f60df9dd67820af441ee7ffc579cf141a3c292`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:58:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:58:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:58:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:58:31 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:32 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:58:32 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:58:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:34 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf08a77c758c210579bdaf320c7c6993a0cfe0c833d2ef5514725f88e720fe87`  
		Last Modified: Sat, 15 Jun 2019 00:00:30 GMT  
		Size: 2.5 MB (2454891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e7b8b9b7edbfb9f20200368ad415b71b0fcc731d757b4eaafc6be64597a352`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fee690ebebad760ad4f0fa6652bd01f1d601f32da84c13264c1874c858d43e5`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda53778b9f91900aea36c49d7a71e7a09139221614c49a35a828aaa134330e`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aabdb3fe119c14357aa6483a5154f8a2b9dc986c8499ece3e4fec8b853d399ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4531d36b71deb34ceb227dbc72f8e27f29cc9fdee81473c50e6d796189ff1949`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:11 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:40:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:40:13 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:40:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:40:14 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:15 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:40:15 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:40:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:16 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cef0d593e25701026415fe51f647df804edac87ea4a134ba9b0262a7b00e01`  
		Last Modified: Fri, 14 Jun 2019 22:42:09 GMT  
		Size: 4.8 MB (4810177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee42e9ba718a819ddd4149e78d10bff368eb1c669b6527c0b08f31f7eda9ca4b`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e13ca316f0c90c6b18080fa0780144721dfba936ce4e77709b8a02868e5f105`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f3a4da88b701bd63defbe242f67680adb1ebfb9305c95d865edd1caad9fd2`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:f83df6ab01586ecd01ebf7300d16f328f7c7ecb93d40f3b00c73fe4163d47f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:f973dcab788d47d5547347d92e4685ed9557c36806ede23ad2eef1784e8aaada
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8de0c05a8a2b3107ce3f0bcc3dd4764d55239ba4b1fd1836f6e2c3d3bddd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e486320cea68ed92c6c599d143effbd1524ef245a695eaa5a9e68363f0a3142`  
		Last Modified: Fri, 14 Jun 2019 22:35:09 GMT  
		Size: 9.3 MB (9272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:260fb5325afdd3e04aeb34712e0414dee82f4bcb138260f4a03e3e8fe271488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57343087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12edd50006d594cc0052b972c2a069b9aa072039867477cea7b25fa3bdb48a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:51:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38b72c719299b6c7bd2d443fa3f2a73e53fbaf525ab10e30c25b0f661655492`  
		Last Modified: Fri, 14 Jun 2019 22:53:09 GMT  
		Size: 8.8 MB (8769322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:9e34eae8dabf0a9ce6ce8e622d5596e8117067dcb4ff6d9bb2b53a728c4ef9c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689a277461425c91f4083cd40b8d8519c6873b36b53e20b99f6abf5a08ab9ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5711b38713063b6513293cd90b3fcb887a0e8dd808fd6244b615d773d8038f84`  
		Last Modified: Sat, 15 Jun 2019 00:00:47 GMT  
		Size: 7.9 MB (7877929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d9fcee63a1a2a85cce6893d7bf6137e64bda583e70e7c09c72ddfaedd60f42e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c86b78c43ea0f2017fc8b3414d4277fd373ee778cd789af9ab0f9d5cf67d37b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4a4b7b42f99618569376487ccaee83a1835259e91062f069181a2fd6be05f3`  
		Last Modified: Fri, 14 Jun 2019 22:42:21 GMT  
		Size: 9.5 MB (9521283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-rc2`

```console
$ docker pull docker@sha256:354c3f6fff0d5eb690871fef9988d182ba551e444862741dbdf0b5d19a2043cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:19.03.0-rc2` - linux; amd64

```console
$ docker pull docker@sha256:add9ee7dfad4da2679e1ee4c486252b3ed8cdf4d2e1d26bf60e69de44a13f351
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bff1f37a3dd6571eda607346b36f2511d547d768118ffdd6295c8fbbc3abac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2` - linux; arm variant v6

```console
$ docker pull docker@sha256:164a72969fe6ec1551b341c774db05c455bc1b24bb87e9dfa2433922ce1b030b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7798ed06f2dce4fe0913bc2e05f2f14bc30133a3125b7e025d3dca5b170ca561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2` - linux; arm variant v7

```console
$ docker pull docker@sha256:4104ed66877a9ea9351ea18da9ed5504366bd15055a4b1d16a506f4ab62a8851
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62177033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546791445631e450d8e06f329739805c66055510fed0c96ccebd052f99f922c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:645cedbda6104391fb2170e567651d0aeb9051d634fa775751341b476b12f9fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653cedb9054cabce1654daca19ccc5fe614a019794d760f8b866be30dd314044`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-rc2-dind`

```console
$ docker pull docker@sha256:b916fd03d6bba67f909ca802ab846a7b5f24adb7ccc142a53603fd3b2b9969e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:19.03.0-rc2-dind` - linux; amd64

```console
$ docker pull docker@sha256:83b33af4195fca78101f5ec9d5e4a8c8871e09c88980879c2cbe70badb938ac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7074ab150a2dc934fbd3b04020aab7a7f57c5cc3bdb2853c47e3ee1c9823f3aa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:23 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:24 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:24 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:24 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf9bba643e276ea4379068cbd1372987b9fb5c5e27bf81e42734ef9289ad0ab`  
		Last Modified: Fri, 14 Jun 2019 22:34:26 GMT  
		Size: 4.8 MB (4769746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731df454a95418128a78b79567fb8d8e24e4e8167cb2236050c8e98e3f4f78e`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c6f327f31adda429b7b1892b484c1f6b10b66330850a2e943f4a61c2b1f265`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d36a6c6d6aed7e2501b3a43b49562d3955a4ddcb010586948058c7a3b85c11`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:732eaf4daa0d7519b6b532610806376028cb507b66906c421bb4cea83a300e3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b499ca08afec69bf56373359cefc79541df6917f0b435a751f6b6ff291548a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:49:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:49:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:49:48 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:49:49 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:49 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:49:50 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:49:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:51 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2d6629bc54937e9b7ddedfabead2224d40d6529ffeba78337ebdee81cae980`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 2.8 MB (2764938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1a9e462b4e3a0d0e792893f0a9c7824ab9113b517be925d6fa05ac5346b007`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f356b4e9b7a92fde38424aa49f69f16fe67e206c95adc97f386ab6022da172`  
		Last Modified: Fri, 14 Jun 2019 22:52:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1311ba0ea3b5ca3d2770f741dfc88128ac148bc8e4623b8052f67cc57ae1bbcf`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:389250cdb2efe8aa878d750b2037a8e31f7cf5788e25b1b362625136cfa925e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64634607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450f191c3bdfa4ba0b2b8cdaca11b20c36874dc8c24c83e5325b9c258339dbe1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:57:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:57:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:57:52 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:57:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:57:54 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:55 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:57:55 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:57:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:56 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98fb96951324775e834221a272bd9d33721727a15b1d7cd0799066cb56cfba`  
		Last Modified: Fri, 14 Jun 2019 23:59:39 GMT  
		Size: 2.5 MB (2454899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81391b1bc9af018cd5c760f30bd57cf7e73ea68f5ac9cfe08d0c764a1943cd6`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190073dfbecb7416cdeefc537b1d934a24d66d49e7de1ecae6f0baf2f3d2b32e`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 760.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db2b13df5e9060c4a0da932473d2636a55f5b07f05b347ef77c624817dda2b`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:503e385dce4bb6c9f7055de7a4b3d140f745141dbd264e8768641d0cc87f66d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea1e83230121d825144bc8c65add8cc1e48b270469d7292eed9f26460347301`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:39:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:39:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:39:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:39:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:45 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:39:45 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:39:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac7fe3c138d257fd0d136f846662a1c5c043d4e84e879de3a9f878bf0a98069`  
		Last Modified: Fri, 14 Jun 2019 22:41:23 GMT  
		Size: 4.8 MB (4810204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b3c67ad30d0329bb8034ece1d48a2d8cb1e415456ded295e0db01edc0bdc6e`  
		Last Modified: Fri, 14 Jun 2019 22:41:22 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe88ce1612c596c17071437bc9bd04d9b99b49205f5fa57a220ed3ce1abd1e7e`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f3e26608b572ec53805f4a4620bbf4247715f5907c367334c6d5e4625b3818`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-rc2-git`

```console
$ docker pull docker@sha256:a4323e3c6f219b42fe52ac815ca5dd5c3d1cf988d71b20d48ba7d86e77d561c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:19.03.0-rc2-git` - linux; amd64

```console
$ docker pull docker@sha256:fb19a4dcdc7fae91a55576dfa034fff3b79b53c989681ca4c8dba7ecac3c554a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc64c26db9574fb15f9d90d82b0da92220eb504b002a18a1db9c079cb08b923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d619bf862d2c02cec5366a6d8e71f0ffe1ab6609fa455cf6e34a28542e72384`  
		Last Modified: Fri, 14 Jun 2019 22:34:33 GMT  
		Size: 9.3 MB (9272004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:76327f1605958a8ab50a8a41d21c55cffbed5541d8b89e9c94ccac471303f2fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a23114a628e32455339352bab8fbfed6d5aff83f84061559bc247db1a31c32f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e29a5adb06841ec6b3e27c92dc17f0e054b8d8e854db81f85550c53f8647d33`  
		Last Modified: Fri, 14 Jun 2019 22:52:20 GMT  
		Size: 8.8 MB (8769349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:df8ea87b85b773d332ad12d826858c7bdb0d9ade28bd32dcbed8cc0f28250e5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70054985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765f31b0594572a3204dc720714a6dcee2675127d20e7e6f95aa376792f7b067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1762ef9820bf683e9109ebae850fd9f8ea53f5195c5477924b33212d1bf541e2`  
		Last Modified: Fri, 14 Jun 2019 23:59:51 GMT  
		Size: 7.9 MB (7877952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1bd3aa5bc823c6a7962a6862ebf3039082462932bb8195b4b262dbf8699300d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc3670b672b2269fa808fbbcb577bbe9362f3e7fb6bca45151fd2dd95e5edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512d38a6a953aadd37a93105a1dda7af93ae86cadb525d9b95465b6124e7eaa1`  
		Last Modified: Fri, 14 Jun 2019 22:41:34 GMT  
		Size: 9.5 MB (9521258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc`

```console
$ docker pull docker@sha256:354c3f6fff0d5eb690871fef9988d182ba551e444862741dbdf0b5d19a2043cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:19.03-rc` - linux; amd64

```console
$ docker pull docker@sha256:add9ee7dfad4da2679e1ee4c486252b3ed8cdf4d2e1d26bf60e69de44a13f351
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bff1f37a3dd6571eda607346b36f2511d547d768118ffdd6295c8fbbc3abac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:164a72969fe6ec1551b341c774db05c455bc1b24bb87e9dfa2433922ce1b030b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7798ed06f2dce4fe0913bc2e05f2f14bc30133a3125b7e025d3dca5b170ca561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc` - linux; arm variant v7

```console
$ docker pull docker@sha256:4104ed66877a9ea9351ea18da9ed5504366bd15055a4b1d16a506f4ab62a8851
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62177033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546791445631e450d8e06f329739805c66055510fed0c96ccebd052f99f922c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:645cedbda6104391fb2170e567651d0aeb9051d634fa775751341b476b12f9fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653cedb9054cabce1654daca19ccc5fe614a019794d760f8b866be30dd314044`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc-dind`

```console
$ docker pull docker@sha256:b916fd03d6bba67f909ca802ab846a7b5f24adb7ccc142a53603fd3b2b9969e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:19.03-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:83b33af4195fca78101f5ec9d5e4a8c8871e09c88980879c2cbe70badb938ac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7074ab150a2dc934fbd3b04020aab7a7f57c5cc3bdb2853c47e3ee1c9823f3aa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:23 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:24 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:24 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:24 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf9bba643e276ea4379068cbd1372987b9fb5c5e27bf81e42734ef9289ad0ab`  
		Last Modified: Fri, 14 Jun 2019 22:34:26 GMT  
		Size: 4.8 MB (4769746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731df454a95418128a78b79567fb8d8e24e4e8167cb2236050c8e98e3f4f78e`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c6f327f31adda429b7b1892b484c1f6b10b66330850a2e943f4a61c2b1f265`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d36a6c6d6aed7e2501b3a43b49562d3955a4ddcb010586948058c7a3b85c11`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:732eaf4daa0d7519b6b532610806376028cb507b66906c421bb4cea83a300e3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b499ca08afec69bf56373359cefc79541df6917f0b435a751f6b6ff291548a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:49:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:49:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:49:48 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:49:49 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:49 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:49:50 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:49:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:51 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2d6629bc54937e9b7ddedfabead2224d40d6529ffeba78337ebdee81cae980`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 2.8 MB (2764938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1a9e462b4e3a0d0e792893f0a9c7824ab9113b517be925d6fa05ac5346b007`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f356b4e9b7a92fde38424aa49f69f16fe67e206c95adc97f386ab6022da172`  
		Last Modified: Fri, 14 Jun 2019 22:52:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1311ba0ea3b5ca3d2770f741dfc88128ac148bc8e4623b8052f67cc57ae1bbcf`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:389250cdb2efe8aa878d750b2037a8e31f7cf5788e25b1b362625136cfa925e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64634607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450f191c3bdfa4ba0b2b8cdaca11b20c36874dc8c24c83e5325b9c258339dbe1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:57:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:57:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:57:52 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:57:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:57:54 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:55 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:57:55 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:57:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:56 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98fb96951324775e834221a272bd9d33721727a15b1d7cd0799066cb56cfba`  
		Last Modified: Fri, 14 Jun 2019 23:59:39 GMT  
		Size: 2.5 MB (2454899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81391b1bc9af018cd5c760f30bd57cf7e73ea68f5ac9cfe08d0c764a1943cd6`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190073dfbecb7416cdeefc537b1d934a24d66d49e7de1ecae6f0baf2f3d2b32e`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 760.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db2b13df5e9060c4a0da932473d2636a55f5b07f05b347ef77c624817dda2b`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:503e385dce4bb6c9f7055de7a4b3d140f745141dbd264e8768641d0cc87f66d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea1e83230121d825144bc8c65add8cc1e48b270469d7292eed9f26460347301`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:39:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:39:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:39:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:39:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:45 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:39:45 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:39:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac7fe3c138d257fd0d136f846662a1c5c043d4e84e879de3a9f878bf0a98069`  
		Last Modified: Fri, 14 Jun 2019 22:41:23 GMT  
		Size: 4.8 MB (4810204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b3c67ad30d0329bb8034ece1d48a2d8cb1e415456ded295e0db01edc0bdc6e`  
		Last Modified: Fri, 14 Jun 2019 22:41:22 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe88ce1612c596c17071437bc9bd04d9b99b49205f5fa57a220ed3ce1abd1e7e`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f3e26608b572ec53805f4a4620bbf4247715f5907c367334c6d5e4625b3818`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc-git`

```console
$ docker pull docker@sha256:a4323e3c6f219b42fe52ac815ca5dd5c3d1cf988d71b20d48ba7d86e77d561c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:19.03-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:fb19a4dcdc7fae91a55576dfa034fff3b79b53c989681ca4c8dba7ecac3c554a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc64c26db9574fb15f9d90d82b0da92220eb504b002a18a1db9c079cb08b923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d619bf862d2c02cec5366a6d8e71f0ffe1ab6609fa455cf6e34a28542e72384`  
		Last Modified: Fri, 14 Jun 2019 22:34:33 GMT  
		Size: 9.3 MB (9272004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:76327f1605958a8ab50a8a41d21c55cffbed5541d8b89e9c94ccac471303f2fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a23114a628e32455339352bab8fbfed6d5aff83f84061559bc247db1a31c32f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e29a5adb06841ec6b3e27c92dc17f0e054b8d8e854db81f85550c53f8647d33`  
		Last Modified: Fri, 14 Jun 2019 22:52:20 GMT  
		Size: 8.8 MB (8769349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:df8ea87b85b773d332ad12d826858c7bdb0d9ade28bd32dcbed8cc0f28250e5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70054985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765f31b0594572a3204dc720714a6dcee2675127d20e7e6f95aa376792f7b067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1762ef9820bf683e9109ebae850fd9f8ea53f5195c5477924b33212d1bf541e2`  
		Last Modified: Fri, 14 Jun 2019 23:59:51 GMT  
		Size: 7.9 MB (7877952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1bd3aa5bc823c6a7962a6862ebf3039082462932bb8195b4b262dbf8699300d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc3670b672b2269fa808fbbcb577bbe9362f3e7fb6bca45151fd2dd95e5edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512d38a6a953aadd37a93105a1dda7af93ae86cadb525d9b95465b6124e7eaa1`  
		Last Modified: Fri, 14 Jun 2019 22:41:34 GMT  
		Size: 9.5 MB (9521258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:cf6be30ef5c5923d3c7d2fb544a6202e0dad1c8e0a7a6d381d76e587180a29a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:62953be0eae85ca6399e447a718836b2ea90a9543df930ea2139e089070be3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12adad4e12e25288e665131d5235d98a8edf2a39d26679dabbe2728442729e26`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:44 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:44 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:45 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8d6f0fcbe2f4746dbe93689127ca12098a4a6cfa7bf6690f36cf60144b3ef2`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 4.8 MB (4769750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cff70c7e929c7d9cd59bfd743e892c3f1fdc7091230d672cb434290db272f3`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ff75b36fa241fe79aa2783c8ac2806a1f5640d67f03b46e5252a819b29d0b6`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ab1a36a6ed2e3b044c47ff016757fb6b2a5040b7ca3e40b01630969af09c64`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:f43e38288fdb6b61d42f44f10c04e90808112038006071f8907cfcecbd9f874d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d500082251b6d1c8446dee75857bd7357a921840c12b4992f6ae20c157f0a4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:50:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:50:54 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:50:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:50:56 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:57 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:50:57 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:50:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:58 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de3765a82a15d0cdf74a0dd916f0f0a1803093642a15c51a3c3b95f39490448`  
		Last Modified: Fri, 14 Jun 2019 22:52:56 GMT  
		Size: 2.8 MB (2764949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e190f411cb0cba6874ed48bde401d50302803b0522ab22218ca59a77f073c5`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb826830b508cbef7528a39fdadbe74648eff4c5b4ee6cad77afb1bc3183d35`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7137e05194a1a8a6209501da0bd9a5e1839915795902bb736d90081d317708`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b65e757fb8ccd7b5ad565fcaa7bd936f54f8aecb559164aee73f3dc55dbb3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50838089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b469ff162d40754cb6faff7088f60df9dd67820af441ee7ffc579cf141a3c292`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:58:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:58:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:58:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:58:31 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:32 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:58:32 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:58:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:34 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf08a77c758c210579bdaf320c7c6993a0cfe0c833d2ef5514725f88e720fe87`  
		Last Modified: Sat, 15 Jun 2019 00:00:30 GMT  
		Size: 2.5 MB (2454891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e7b8b9b7edbfb9f20200368ad415b71b0fcc731d757b4eaafc6be64597a352`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fee690ebebad760ad4f0fa6652bd01f1d601f32da84c13264c1874c858d43e5`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda53778b9f91900aea36c49d7a71e7a09139221614c49a35a828aaa134330e`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aabdb3fe119c14357aa6483a5154f8a2b9dc986c8499ece3e4fec8b853d399ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4531d36b71deb34ceb227dbc72f8e27f29cc9fdee81473c50e6d796189ff1949`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:11 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:40:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:40:13 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:40:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:40:14 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:15 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:40:15 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:40:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:16 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cef0d593e25701026415fe51f647df804edac87ea4a134ba9b0262a7b00e01`  
		Last Modified: Fri, 14 Jun 2019 22:42:09 GMT  
		Size: 4.8 MB (4810177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee42e9ba718a819ddd4149e78d10bff368eb1c669b6527c0b08f31f7eda9ca4b`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e13ca316f0c90c6b18080fa0780144721dfba936ce4e77709b8a02868e5f105`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f3a4da88b701bd63defbe242f67680adb1ebfb9305c95d865edd1caad9fd2`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:f83df6ab01586ecd01ebf7300d16f328f7c7ecb93d40f3b00c73fe4163d47f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:f973dcab788d47d5547347d92e4685ed9557c36806ede23ad2eef1784e8aaada
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8de0c05a8a2b3107ce3f0bcc3dd4764d55239ba4b1fd1836f6e2c3d3bddd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e486320cea68ed92c6c599d143effbd1524ef245a695eaa5a9e68363f0a3142`  
		Last Modified: Fri, 14 Jun 2019 22:35:09 GMT  
		Size: 9.3 MB (9272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:260fb5325afdd3e04aeb34712e0414dee82f4bcb138260f4a03e3e8fe271488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57343087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12edd50006d594cc0052b972c2a069b9aa072039867477cea7b25fa3bdb48a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:51:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38b72c719299b6c7bd2d443fa3f2a73e53fbaf525ab10e30c25b0f661655492`  
		Last Modified: Fri, 14 Jun 2019 22:53:09 GMT  
		Size: 8.8 MB (8769322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v7

```console
$ docker pull docker@sha256:9e34eae8dabf0a9ce6ce8e622d5596e8117067dcb4ff6d9bb2b53a728c4ef9c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689a277461425c91f4083cd40b8d8519c6873b36b53e20b99f6abf5a08ab9ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5711b38713063b6513293cd90b3fcb887a0e8dd808fd6244b615d773d8038f84`  
		Last Modified: Sat, 15 Jun 2019 00:00:47 GMT  
		Size: 7.9 MB (7877929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d9fcee63a1a2a85cce6893d7bf6137e64bda583e70e7c09c72ddfaedd60f42e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c86b78c43ea0f2017fc8b3414d4277fd373ee778cd789af9ab0f9d5cf67d37b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4a4b7b42f99618569376487ccaee83a1835259e91062f069181a2fd6be05f3`  
		Last Modified: Fri, 14 Jun 2019 22:42:21 GMT  
		Size: 9.5 MB (9521283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:8eb227e5305c1fa254b8fc09875ca23ca8cccc6b278d6d03a62e552245eac7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:f1fc50aac882ec01ebc435579962f738e492521dccc6cd31dac7a75a444887b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bea199b249bfed61cdcd7cdbfe240ee998d51f59bbf365674a15b619f5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:5eba34f27fe53a73c54fee9562045f26d62770d866bba77768212f40a35c6e22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8aab4181dbeb79f879b07a9823b72d28dd106f8b5caf710af88998011134578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:645894fda964d43c7d83aa06e82e029f16a9a4d36f25416435836dd1f4a0569d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48380528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e173814f79ccfe5a9d214cd7fa52fd0cd01c15844071c9a12c4a50faa92e059a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e6e4a41f3bd2ff6ab5d5ee367f4cfa958679835da1bfd4cb19472c1eff87f99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3fdd5c1f47eaf734ce06511c9237a0b18b0530f796be464f5730be7008cb56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:354c3f6fff0d5eb690871fef9988d182ba551e444862741dbdf0b5d19a2043cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:add9ee7dfad4da2679e1ee4c486252b3ed8cdf4d2e1d26bf60e69de44a13f351
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bff1f37a3dd6571eda607346b36f2511d547d768118ffdd6295c8fbbc3abac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:164a72969fe6ec1551b341c774db05c455bc1b24bb87e9dfa2433922ce1b030b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7798ed06f2dce4fe0913bc2e05f2f14bc30133a3125b7e025d3dca5b170ca561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm variant v7

```console
$ docker pull docker@sha256:4104ed66877a9ea9351ea18da9ed5504366bd15055a4b1d16a506f4ab62a8851
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62177033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546791445631e450d8e06f329739805c66055510fed0c96ccebd052f99f922c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:645cedbda6104391fb2170e567651d0aeb9051d634fa775751341b476b12f9fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653cedb9054cabce1654daca19ccc5fe614a019794d760f8b866be30dd314044`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:b916fd03d6bba67f909ca802ab846a7b5f24adb7ccc142a53603fd3b2b9969e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:83b33af4195fca78101f5ec9d5e4a8c8871e09c88980879c2cbe70badb938ac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7074ab150a2dc934fbd3b04020aab7a7f57c5cc3bdb2853c47e3ee1c9823f3aa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:23 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:24 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:24 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:24 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf9bba643e276ea4379068cbd1372987b9fb5c5e27bf81e42734ef9289ad0ab`  
		Last Modified: Fri, 14 Jun 2019 22:34:26 GMT  
		Size: 4.8 MB (4769746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731df454a95418128a78b79567fb8d8e24e4e8167cb2236050c8e98e3f4f78e`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c6f327f31adda429b7b1892b484c1f6b10b66330850a2e943f4a61c2b1f265`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d36a6c6d6aed7e2501b3a43b49562d3955a4ddcb010586948058c7a3b85c11`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:732eaf4daa0d7519b6b532610806376028cb507b66906c421bb4cea83a300e3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b499ca08afec69bf56373359cefc79541df6917f0b435a751f6b6ff291548a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:49:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:49:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:49:48 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:49:49 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:49 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:49:50 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:49:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:51 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2d6629bc54937e9b7ddedfabead2224d40d6529ffeba78337ebdee81cae980`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 2.8 MB (2764938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1a9e462b4e3a0d0e792893f0a9c7824ab9113b517be925d6fa05ac5346b007`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f356b4e9b7a92fde38424aa49f69f16fe67e206c95adc97f386ab6022da172`  
		Last Modified: Fri, 14 Jun 2019 22:52:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1311ba0ea3b5ca3d2770f741dfc88128ac148bc8e4623b8052f67cc57ae1bbcf`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:389250cdb2efe8aa878d750b2037a8e31f7cf5788e25b1b362625136cfa925e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64634607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450f191c3bdfa4ba0b2b8cdaca11b20c36874dc8c24c83e5325b9c258339dbe1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:57:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:57:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:57:52 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:57:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:57:54 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:55 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:57:55 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:57:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:56 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98fb96951324775e834221a272bd9d33721727a15b1d7cd0799066cb56cfba`  
		Last Modified: Fri, 14 Jun 2019 23:59:39 GMT  
		Size: 2.5 MB (2454899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81391b1bc9af018cd5c760f30bd57cf7e73ea68f5ac9cfe08d0c764a1943cd6`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190073dfbecb7416cdeefc537b1d934a24d66d49e7de1ecae6f0baf2f3d2b32e`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 760.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db2b13df5e9060c4a0da932473d2636a55f5b07f05b347ef77c624817dda2b`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:503e385dce4bb6c9f7055de7a4b3d140f745141dbd264e8768641d0cc87f66d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea1e83230121d825144bc8c65add8cc1e48b270469d7292eed9f26460347301`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:39:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:39:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:39:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:39:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:45 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:39:45 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:39:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac7fe3c138d257fd0d136f846662a1c5c043d4e84e879de3a9f878bf0a98069`  
		Last Modified: Fri, 14 Jun 2019 22:41:23 GMT  
		Size: 4.8 MB (4810204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b3c67ad30d0329bb8034ece1d48a2d8cb1e415456ded295e0db01edc0bdc6e`  
		Last Modified: Fri, 14 Jun 2019 22:41:22 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe88ce1612c596c17071437bc9bd04d9b99b49205f5fa57a220ed3ce1abd1e7e`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f3e26608b572ec53805f4a4620bbf4247715f5907c367334c6d5e4625b3818`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:a4323e3c6f219b42fe52ac815ca5dd5c3d1cf988d71b20d48ba7d86e77d561c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:fb19a4dcdc7fae91a55576dfa034fff3b79b53c989681ca4c8dba7ecac3c554a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc64c26db9574fb15f9d90d82b0da92220eb504b002a18a1db9c079cb08b923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d619bf862d2c02cec5366a6d8e71f0ffe1ab6609fa455cf6e34a28542e72384`  
		Last Modified: Fri, 14 Jun 2019 22:34:33 GMT  
		Size: 9.3 MB (9272004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:76327f1605958a8ab50a8a41d21c55cffbed5541d8b89e9c94ccac471303f2fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a23114a628e32455339352bab8fbfed6d5aff83f84061559bc247db1a31c32f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e29a5adb06841ec6b3e27c92dc17f0e054b8d8e854db81f85550c53f8647d33`  
		Last Modified: Fri, 14 Jun 2019 22:52:20 GMT  
		Size: 8.8 MB (8769349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:df8ea87b85b773d332ad12d826858c7bdb0d9ade28bd32dcbed8cc0f28250e5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70054985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765f31b0594572a3204dc720714a6dcee2675127d20e7e6f95aa376792f7b067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1762ef9820bf683e9109ebae850fd9f8ea53f5195c5477924b33212d1bf541e2`  
		Last Modified: Fri, 14 Jun 2019 23:59:51 GMT  
		Size: 7.9 MB (7877952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1bd3aa5bc823c6a7962a6862ebf3039082462932bb8195b4b262dbf8699300d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc3670b672b2269fa808fbbcb577bbe9362f3e7fb6bca45151fd2dd95e5edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512d38a6a953aadd37a93105a1dda7af93ae86cadb525d9b95465b6124e7eaa1`  
		Last Modified: Fri, 14 Jun 2019 22:41:34 GMT  
		Size: 9.5 MB (9521258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:8eb227e5305c1fa254b8fc09875ca23ca8cccc6b278d6d03a62e552245eac7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:f1fc50aac882ec01ebc435579962f738e492521dccc6cd31dac7a75a444887b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bea199b249bfed61cdcd7cdbfe240ee998d51f59bbf365674a15b619f5a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:5eba34f27fe53a73c54fee9562045f26d62770d866bba77768212f40a35c6e22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8aab4181dbeb79f879b07a9823b72d28dd106f8b5caf710af88998011134578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v7

```console
$ docker pull docker@sha256:645894fda964d43c7d83aa06e82e029f16a9a4d36f25416435836dd1f4a0569d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48380528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e173814f79ccfe5a9d214cd7fa52fd0cd01c15844071c9a12c4a50faa92e059a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e6e4a41f3bd2ff6ab5d5ee367f4cfa958679835da1bfd4cb19472c1eff87f99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3fdd5c1f47eaf734ce06511c9237a0b18b0530f796be464f5730be7008cb56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:cf6be30ef5c5923d3c7d2fb544a6202e0dad1c8e0a7a6d381d76e587180a29a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:62953be0eae85ca6399e447a718836b2ea90a9543df930ea2139e089070be3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12adad4e12e25288e665131d5235d98a8edf2a39d26679dabbe2728442729e26`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:44 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:44 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:45 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8d6f0fcbe2f4746dbe93689127ca12098a4a6cfa7bf6690f36cf60144b3ef2`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 4.8 MB (4769750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cff70c7e929c7d9cd59bfd743e892c3f1fdc7091230d672cb434290db272f3`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ff75b36fa241fe79aa2783c8ac2806a1f5640d67f03b46e5252a819b29d0b6`  
		Last Modified: Fri, 14 Jun 2019 22:35:01 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ab1a36a6ed2e3b044c47ff016757fb6b2a5040b7ca3e40b01630969af09c64`  
		Last Modified: Fri, 14 Jun 2019 22:35:00 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:f43e38288fdb6b61d42f44f10c04e90808112038006071f8907cfcecbd9f874d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d500082251b6d1c8446dee75857bd7357a921840c12b4992f6ae20c157f0a4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:50:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:50:54 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:50:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:50:56 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:57 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:50:57 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:50:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:58 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de3765a82a15d0cdf74a0dd916f0f0a1803093642a15c51a3c3b95f39490448`  
		Last Modified: Fri, 14 Jun 2019 22:52:56 GMT  
		Size: 2.8 MB (2764949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e190f411cb0cba6874ed48bde401d50302803b0522ab22218ca59a77f073c5`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb826830b508cbef7528a39fdadbe74648eff4c5b4ee6cad77afb1bc3183d35`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7137e05194a1a8a6209501da0bd9a5e1839915795902bb736d90081d317708`  
		Last Modified: Fri, 14 Jun 2019 22:52:55 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b65e757fb8ccd7b5ad565fcaa7bd936f54f8aecb559164aee73f3dc55dbb3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50838089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b469ff162d40754cb6faff7088f60df9dd67820af441ee7ffc579cf141a3c292`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:58:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:58:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:58:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:58:31 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:32 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:58:32 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:58:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:34 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf08a77c758c210579bdaf320c7c6993a0cfe0c833d2ef5514725f88e720fe87`  
		Last Modified: Sat, 15 Jun 2019 00:00:30 GMT  
		Size: 2.5 MB (2454891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e7b8b9b7edbfb9f20200368ad415b71b0fcc731d757b4eaafc6be64597a352`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fee690ebebad760ad4f0fa6652bd01f1d601f32da84c13264c1874c858d43e5`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda53778b9f91900aea36c49d7a71e7a09139221614c49a35a828aaa134330e`  
		Last Modified: Sat, 15 Jun 2019 00:00:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:aabdb3fe119c14357aa6483a5154f8a2b9dc986c8499ece3e4fec8b853d399ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4531d36b71deb34ceb227dbc72f8e27f29cc9fdee81473c50e6d796189ff1949`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:11 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:40:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:40:13 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:40:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:40:14 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:15 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:40:15 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:40:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:16 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cef0d593e25701026415fe51f647df804edac87ea4a134ba9b0262a7b00e01`  
		Last Modified: Fri, 14 Jun 2019 22:42:09 GMT  
		Size: 4.8 MB (4810177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee42e9ba718a819ddd4149e78d10bff368eb1c669b6527c0b08f31f7eda9ca4b`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e13ca316f0c90c6b18080fa0780144721dfba936ce4e77709b8a02868e5f105`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1f3a4da88b701bd63defbe242f67680adb1ebfb9305c95d865edd1caad9fd2`  
		Last Modified: Fri, 14 Jun 2019 22:42:07 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:f83df6ab01586ecd01ebf7300d16f328f7c7ecb93d40f3b00c73fe4163d47f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:f973dcab788d47d5547347d92e4685ed9557c36806ede23ad2eef1784e8aaada
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8de0c05a8a2b3107ce3f0bcc3dd4764d55239ba4b1fd1836f6e2c3d3bddd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e486320cea68ed92c6c599d143effbd1524ef245a695eaa5a9e68363f0a3142`  
		Last Modified: Fri, 14 Jun 2019 22:35:09 GMT  
		Size: 9.3 MB (9272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:260fb5325afdd3e04aeb34712e0414dee82f4bcb138260f4a03e3e8fe271488b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57343087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12edd50006d594cc0052b972c2a069b9aa072039867477cea7b25fa3bdb48a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:51:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38b72c719299b6c7bd2d443fa3f2a73e53fbaf525ab10e30c25b0f661655492`  
		Last Modified: Fri, 14 Jun 2019 22:53:09 GMT  
		Size: 8.8 MB (8769322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:9e34eae8dabf0a9ce6ce8e622d5596e8117067dcb4ff6d9bb2b53a728c4ef9c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689a277461425c91f4083cd40b8d8519c6873b36b53e20b99f6abf5a08ab9ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:58:08 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 14 Jun 2019 23:58:09 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 23:58:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:58:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:58:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:58:19 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72457a972cfec8a428058634e5e1532440e47915f2e15093442b4579ad2a8e1`  
		Last Modified: Sat, 15 Jun 2019 00:00:17 GMT  
		Size: 45.7 MB (45727402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5d0cb12ec2fd430ddb73d58980874feb138686b7f518bd4a0ad5b8cf5f1a`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72f19034b31c0457397373a608bd974fbcf9a1066a67941abeabb57c4d59171`  
		Last Modified: Fri, 14 Jun 2019 23:59:59 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5711b38713063b6513293cd90b3fcb887a0e8dd808fd6244b615d773d8038f84`  
		Last Modified: Sat, 15 Jun 2019 00:00:47 GMT  
		Size: 7.9 MB (7877929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d9fcee63a1a2a85cce6893d7bf6137e64bda583e70e7c09c72ddfaedd60f42e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56173157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c86b78c43ea0f2017fc8b3414d4277fd373ee778cd789af9ab0f9d5cf67d37b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:40:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4a4b7b42f99618569376487ccaee83a1835259e91062f069181a2fd6be05f3`  
		Last Modified: Fri, 14 Jun 2019 22:42:21 GMT  
		Size: 9.5 MB (9521283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:354c3f6fff0d5eb690871fef9988d182ba551e444862741dbdf0b5d19a2043cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:add9ee7dfad4da2679e1ee4c486252b3ed8cdf4d2e1d26bf60e69de44a13f351
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bff1f37a3dd6571eda607346b36f2511d547d768118ffdd6295c8fbbc3abac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:164a72969fe6ec1551b341c774db05c455bc1b24bb87e9dfa2433922ce1b030b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7798ed06f2dce4fe0913bc2e05f2f14bc30133a3125b7e025d3dca5b170ca561`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v7

```console
$ docker pull docker@sha256:4104ed66877a9ea9351ea18da9ed5504366bd15055a4b1d16a506f4ab62a8851
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62177033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546791445631e450d8e06f329739805c66055510fed0c96ccebd052f99f922c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:645cedbda6104391fb2170e567651d0aeb9051d634fa775751341b476b12f9fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653cedb9054cabce1654daca19ccc5fe614a019794d760f8b866be30dd314044`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:b916fd03d6bba67f909ca802ab846a7b5f24adb7ccc142a53603fd3b2b9969e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:83b33af4195fca78101f5ec9d5e4a8c8871e09c88980879c2cbe70badb938ac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7074ab150a2dc934fbd3b04020aab7a7f57c5cc3bdb2853c47e3ee1c9823f3aa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:23 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:24 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:24 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:24 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf9bba643e276ea4379068cbd1372987b9fb5c5e27bf81e42734ef9289ad0ab`  
		Last Modified: Fri, 14 Jun 2019 22:34:26 GMT  
		Size: 4.8 MB (4769746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731df454a95418128a78b79567fb8d8e24e4e8167cb2236050c8e98e3f4f78e`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c6f327f31adda429b7b1892b484c1f6b10b66330850a2e943f4a61c2b1f265`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d36a6c6d6aed7e2501b3a43b49562d3955a4ddcb010586948058c7a3b85c11`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:732eaf4daa0d7519b6b532610806376028cb507b66906c421bb4cea83a300e3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b499ca08afec69bf56373359cefc79541df6917f0b435a751f6b6ff291548a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:49:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:49:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:49:48 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:49:49 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:49 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:49:50 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:49:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:51 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2d6629bc54937e9b7ddedfabead2224d40d6529ffeba78337ebdee81cae980`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 2.8 MB (2764938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1a9e462b4e3a0d0e792893f0a9c7824ab9113b517be925d6fa05ac5346b007`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f356b4e9b7a92fde38424aa49f69f16fe67e206c95adc97f386ab6022da172`  
		Last Modified: Fri, 14 Jun 2019 22:52:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1311ba0ea3b5ca3d2770f741dfc88128ac148bc8e4623b8052f67cc57ae1bbcf`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:389250cdb2efe8aa878d750b2037a8e31f7cf5788e25b1b362625136cfa925e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64634607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450f191c3bdfa4ba0b2b8cdaca11b20c36874dc8c24c83e5325b9c258339dbe1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:57:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:57:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:57:52 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:57:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:57:54 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:55 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:57:55 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:57:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:56 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98fb96951324775e834221a272bd9d33721727a15b1d7cd0799066cb56cfba`  
		Last Modified: Fri, 14 Jun 2019 23:59:39 GMT  
		Size: 2.5 MB (2454899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81391b1bc9af018cd5c760f30bd57cf7e73ea68f5ac9cfe08d0c764a1943cd6`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190073dfbecb7416cdeefc537b1d934a24d66d49e7de1ecae6f0baf2f3d2b32e`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 760.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db2b13df5e9060c4a0da932473d2636a55f5b07f05b347ef77c624817dda2b`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:503e385dce4bb6c9f7055de7a4b3d140f745141dbd264e8768641d0cc87f66d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea1e83230121d825144bc8c65add8cc1e48b270469d7292eed9f26460347301`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:39:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:39:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:39:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:39:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:45 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:39:45 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:39:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac7fe3c138d257fd0d136f846662a1c5c043d4e84e879de3a9f878bf0a98069`  
		Last Modified: Fri, 14 Jun 2019 22:41:23 GMT  
		Size: 4.8 MB (4810204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b3c67ad30d0329bb8034ece1d48a2d8cb1e415456ded295e0db01edc0bdc6e`  
		Last Modified: Fri, 14 Jun 2019 22:41:22 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe88ce1612c596c17071437bc9bd04d9b99b49205f5fa57a220ed3ce1abd1e7e`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f3e26608b572ec53805f4a4620bbf4247715f5907c367334c6d5e4625b3818`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:a4323e3c6f219b42fe52ac815ca5dd5c3d1cf988d71b20d48ba7d86e77d561c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:fb19a4dcdc7fae91a55576dfa034fff3b79b53c989681ca4c8dba7ecac3c554a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc64c26db9574fb15f9d90d82b0da92220eb504b002a18a1db9c079cb08b923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d619bf862d2c02cec5366a6d8e71f0ffe1ab6609fa455cf6e34a28542e72384`  
		Last Modified: Fri, 14 Jun 2019 22:34:33 GMT  
		Size: 9.3 MB (9272004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:76327f1605958a8ab50a8a41d21c55cffbed5541d8b89e9c94ccac471303f2fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a23114a628e32455339352bab8fbfed6d5aff83f84061559bc247db1a31c32f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e29a5adb06841ec6b3e27c92dc17f0e054b8d8e854db81f85550c53f8647d33`  
		Last Modified: Fri, 14 Jun 2019 22:52:20 GMT  
		Size: 8.8 MB (8769349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v7

```console
$ docker pull docker@sha256:df8ea87b85b773d332ad12d826858c7bdb0d9ade28bd32dcbed8cc0f28250e5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70054985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765f31b0594572a3204dc720714a6dcee2675127d20e7e6f95aa376792f7b067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:58:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1762ef9820bf683e9109ebae850fd9f8ea53f5195c5477924b33212d1bf541e2`  
		Last Modified: Fri, 14 Jun 2019 23:59:51 GMT  
		Size: 7.9 MB (7877952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1bd3aa5bc823c6a7962a6862ebf3039082462932bb8195b4b262dbf8699300d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc3670b672b2269fa808fbbcb577bbe9362f3e7fb6bca45151fd2dd95e5edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512d38a6a953aadd37a93105a1dda7af93ae86cadb525d9b95465b6124e7eaa1`  
		Last Modified: Fri, 14 Jun 2019 22:41:34 GMT  
		Size: 9.5 MB (9521258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
