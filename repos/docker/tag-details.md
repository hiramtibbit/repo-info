<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:18`](#docker18)
-	[`docker:18.06`](#docker1806)
-	[`docker:18.06.3`](#docker18063)
-	[`docker:18.06.3-ce`](#docker18063-ce)
-	[`docker:18.06.3-ce-dind`](#docker18063-ce-dind)
-	[`docker:18.06.3-ce-git`](#docker18063-ce-git)
-	[`docker:18.06.3-dind`](#docker18063-dind)
-	[`docker:18.06.3-git`](#docker18063-git)
-	[`docker:18.06-dind`](#docker1806-dind)
-	[`docker:18.06-git`](#docker1806-git)
-	[`docker:18.09`](#docker1809)
-	[`docker:18.09.2`](#docker18092)
-	[`docker:18.09.2-dind`](#docker18092-dind)
-	[`docker:18.09.2-git`](#docker18092-git)
-	[`docker:18.09-dind`](#docker1809-dind)
-	[`docker:18.09-git`](#docker1809-git)
-	[`docker:18-dind`](#docker18-dind)
-	[`docker:18-git`](#docker18-git)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)

## `docker:18`

```console
$ docker pull docker@sha256:453c52a7a7200677f9effa3acc8498a2f71af77c2951ac5e1ac1391053573374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:a1e5dbe6e6dbef5deaa62d039b50c1158b992a186841e7556b162bb0a21c7dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51007632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d492654a095a2f91078b2dfacd0cfe1a1fe25412fac54b4eb2f5a9609ad418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:eb6709604cd2f0ac79a7c9158213227a89620e3e3d8352405635ef32a2333e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48141851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdfc35c1219579b1e54202a69048a828f2dc6ad568145af6a3718f98b52bf45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3f46d85cb99877e9e9f03d80f70e7ecb96258742f0e50c617522f86bd9321f82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46023106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9147c1ac235a1fab09471dc625ce8ca1f0b353c7384d4939b9de23c86f407f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06`

```console
$ docker pull docker@sha256:872669992bb56ee4956a19c0f30f5599c9919b1d737426c70795e21cbc14fa52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06` - linux; amd64

```console
$ docker pull docker@sha256:0e422b806978874c664978997f67447960c9ddda702abcb7efc18a548c77af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46834909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0eb5a99377a25e35334b225b1a3b77c7802d01f6cde3aa6479f9f52ab4e925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm variant v6

```console
$ docker pull docker@sha256:a774575fc6dd82509669701312b47ab210e12f1643a14600a1bfee9f2551070e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45569507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3590f068c33ed17ca944071bfd500cffdf6fb9f89a2e9e436eb598031e4d1481`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8d6600e252adbb621d75de29ccd668d46002f9ebed261db2473046eac08d7b67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43626986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e45702bc60a86584e1540b899db317f2e8cd86a47ea0e687b2228d12169a2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; ppc64le

```console
$ docker pull docker@sha256:130d750a52ebfa4c868bc0e29cf386060b56ad387caa868ec8bef84896596400
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43310152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8765b8e240b881e721209e73b614cc3ff132c9c7788f3588d00df186f409bae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3`

```console
$ docker pull docker@sha256:872669992bb56ee4956a19c0f30f5599c9919b1d737426c70795e21cbc14fa52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06.3` - linux; amd64

```console
$ docker pull docker@sha256:0e422b806978874c664978997f67447960c9ddda702abcb7efc18a548c77af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46834909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0eb5a99377a25e35334b225b1a3b77c7802d01f6cde3aa6479f9f52ab4e925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; arm variant v6

```console
$ docker pull docker@sha256:a774575fc6dd82509669701312b47ab210e12f1643a14600a1bfee9f2551070e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45569507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3590f068c33ed17ca944071bfd500cffdf6fb9f89a2e9e436eb598031e4d1481`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8d6600e252adbb621d75de29ccd668d46002f9ebed261db2473046eac08d7b67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43626986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e45702bc60a86584e1540b899db317f2e8cd86a47ea0e687b2228d12169a2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; ppc64le

```console
$ docker pull docker@sha256:130d750a52ebfa4c868bc0e29cf386060b56ad387caa868ec8bef84896596400
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43310152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8765b8e240b881e721209e73b614cc3ff132c9c7788f3588d00df186f409bae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce`

```console
$ docker pull docker@sha256:872669992bb56ee4956a19c0f30f5599c9919b1d737426c70795e21cbc14fa52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06.3-ce` - linux; amd64

```console
$ docker pull docker@sha256:0e422b806978874c664978997f67447960c9ddda702abcb7efc18a548c77af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46834909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0eb5a99377a25e35334b225b1a3b77c7802d01f6cde3aa6479f9f52ab4e925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; arm variant v6

```console
$ docker pull docker@sha256:a774575fc6dd82509669701312b47ab210e12f1643a14600a1bfee9f2551070e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45569507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3590f068c33ed17ca944071bfd500cffdf6fb9f89a2e9e436eb598031e4d1481`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8d6600e252adbb621d75de29ccd668d46002f9ebed261db2473046eac08d7b67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43626986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e45702bc60a86584e1540b899db317f2e8cd86a47ea0e687b2228d12169a2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:130d750a52ebfa4c868bc0e29cf386060b56ad387caa868ec8bef84896596400
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43310152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8765b8e240b881e721209e73b614cc3ff132c9c7788f3588d00df186f409bae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-dind`

```console
$ docker pull docker@sha256:991af2ce3c095fe3d98c09775d99dc282049522e79d466d6b5f9f450f9488211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06.3-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:15ffe63da4446f6a59860172106c0e7ea771b86e4394659727175a9a82b4cdff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51528930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a247bfe2532c20dec521c4ec239ea2c31e31e3289ccfc6d1f0a7bcd9e9d5163`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:19:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 00:19:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 00:19:55 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 00:19:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 00:19:57 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:57 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 00:19:57 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 00:19:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:58 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7577da9f97062e3d8e94ca29ac178dd637e1a4ada586e0eb0f038cb045007e5`  
		Last Modified: Fri, 22 Feb 2019 00:20:56 GMT  
		Size: 4.7 MB (4691424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58e3b1d06961b2d8cf4ce738208c7e12333e669db8ec139537dd8f224ff8b22`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3098ba01ca396f8f78e2d6f75e848dc52087bb0463f0eac40a95961f2361e9`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5880026b24ae479c6bfcc04be4198efaf2933d5a0eb7ff2e133ee09720c8514d`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:29160ddd77a0b4d5741cec27f605d74fe363dc3849816506169fe05aae69c8d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48223263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7551b82b4fc40b4229cbacc01123164064223d092a45d337355acbb4cfc25e2d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:49:47 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 08:49:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 08:49:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 08:49:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 08:49:52 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:53 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 08:49:53 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 08:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:54 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af9e5ea9b854ee6bc09b073ccc607fa853a720f7f9f0b32d26e10a255cdeb7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 2.7 MB (2651128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5de469cd4c1f5f4fa52db3eb6d90c90cd9a009e5a7b967a448103e6f725b7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f001170a9186300214aac828e875a35ce7af8792fbc4768583cf42b4455e1ef5`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690966cb828023a4faa6cfc934a3c37c1d245bcf80e4ad56e4652e0fcce50b02`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f6dc7b43de7bc4852bc0d121bb6580951302fbae52f8a14b3845b9ca0ac8c0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47884996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b241ae9f5c0c97b3b958243fb6ec9c05afd86a28e20ee94e644d8ad6025ccf36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:40:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:40:22 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:40:25 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:40:25 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:26 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:40:27 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:40:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:28 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad9cc800293c5a465d50723949e242b1065a0f209187927a453d79ae291bc01`  
		Last Modified: Fri, 22 Feb 2019 09:41:49 GMT  
		Size: 4.3 MB (4255411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b7447ecd09a4ba50aa3f6c530d88d33337642cf3174315671f79745ee08f65`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f487c9f4a70d6e2680bd2a12c4064907dd9a938cc93e06d55a2dd38d44ca03`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b1fe52e0e27c7332065ef0d0ad4a6428d14fd4a5bb1989b5148d4d85995b2`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:7f6773dd179a86ef305eb0e2fd26b7f8777c49d2d2f14de16c9a56e27a357d79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47944614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f580201246d63cb83ad6e18dcf5fced3ef8e7b065675a7640865a443bfcd1768`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:19:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:19:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:20:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:20:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:20:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:20:15 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:20:24 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:20:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:20:29 GMT
CMD []
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d51c026e13eba6d67021c81151c79d199392f6adb237bc92af440ec9436556d`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 4.6 MB (4631832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1668def163afac5683c2b8e9933612ddc81f78a0ad083a285ff467e10db760e`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01eccc5f17621b0aec7164746a483cb8d9c77be4a4fb30e7cd0e8fa54af40fc`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e1a9940c4f186fc9d56e0c6b1f7f0c5a27079d80952a9bff129d2d08f76f11`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-git`

```console
$ docker pull docker@sha256:00e74e876b4d05c55c7d69cf0a6f03fc0aed0111eac3b21ec0f97b32ead2bf9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06.3-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:eef7b5c64016eb50422f87ae84dc3047310419b5042f618f0b1a5ea586783452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55463134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12bcbf3461efc5e39a31794b03fe96bf2fec13fde189bc0d147424756371bb01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:20:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71076369f07f793e860d24582c780b08a72d1c450dc4532a184a226d042406ae`  
		Last Modified: Fri, 22 Feb 2019 00:21:04 GMT  
		Size: 8.6 MB (8628225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:31135e36ec65484db541956e02f22867b210cbb9658db2644574faeb831e6e25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53751482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6fa1e005fd25168af47d07cdaaa14a27d6178db9dbbf6f525ac089b65ceefc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3e4cbf25eda2d87b8635eec0c01cb4e0f8fb946f4b0a39f584c7a9165b81ed`  
		Last Modified: Fri, 22 Feb 2019 08:51:52 GMT  
		Size: 8.2 MB (8181975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4a2e2c374a5be1c112e6056f0362582ed4894a2c99942a9f76dc13c0fb7f6910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51546195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3331e23a902a4ac5ee13e7a951eec2f951ac736f84ab9b876067885c05112a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1150e47fefad4bd27d47a5ed4f128262e82b2e61428c15ac1ee7e5d822b335a3`  
		Last Modified: Fri, 22 Feb 2019 09:42:07 GMT  
		Size: 7.9 MB (7919209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:bca9f5ef0606b4dd3a3504ff0beaa9939ed6628372ab24e7e02539d56994bb90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e35dfaeb9cd770fa109129bbc608dc1ddb17dbadc128385a2d24556b185a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1da7c9b19d6d95c63d519bf96879fd560435cd911476a3c21b38594d8ee7f06`  
		Last Modified: Fri, 22 Feb 2019 09:21:57 GMT  
		Size: 8.4 MB (8400667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-dind`

```console
$ docker pull docker@sha256:991af2ce3c095fe3d98c09775d99dc282049522e79d466d6b5f9f450f9488211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06.3-dind` - linux; amd64

```console
$ docker pull docker@sha256:15ffe63da4446f6a59860172106c0e7ea771b86e4394659727175a9a82b4cdff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51528930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a247bfe2532c20dec521c4ec239ea2c31e31e3289ccfc6d1f0a7bcd9e9d5163`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:19:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 00:19:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 00:19:55 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 00:19:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 00:19:57 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:57 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 00:19:57 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 00:19:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:58 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7577da9f97062e3d8e94ca29ac178dd637e1a4ada586e0eb0f038cb045007e5`  
		Last Modified: Fri, 22 Feb 2019 00:20:56 GMT  
		Size: 4.7 MB (4691424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58e3b1d06961b2d8cf4ce738208c7e12333e669db8ec139537dd8f224ff8b22`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3098ba01ca396f8f78e2d6f75e848dc52087bb0463f0eac40a95961f2361e9`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5880026b24ae479c6bfcc04be4198efaf2933d5a0eb7ff2e133ee09720c8514d`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:29160ddd77a0b4d5741cec27f605d74fe363dc3849816506169fe05aae69c8d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48223263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7551b82b4fc40b4229cbacc01123164064223d092a45d337355acbb4cfc25e2d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:49:47 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 08:49:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 08:49:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 08:49:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 08:49:52 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:53 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 08:49:53 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 08:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:54 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af9e5ea9b854ee6bc09b073ccc607fa853a720f7f9f0b32d26e10a255cdeb7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 2.7 MB (2651128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5de469cd4c1f5f4fa52db3eb6d90c90cd9a009e5a7b967a448103e6f725b7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f001170a9186300214aac828e875a35ce7af8792fbc4768583cf42b4455e1ef5`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690966cb828023a4faa6cfc934a3c37c1d245bcf80e4ad56e4652e0fcce50b02`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f6dc7b43de7bc4852bc0d121bb6580951302fbae52f8a14b3845b9ca0ac8c0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47884996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b241ae9f5c0c97b3b958243fb6ec9c05afd86a28e20ee94e644d8ad6025ccf36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:40:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:40:22 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:40:25 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:40:25 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:26 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:40:27 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:40:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:28 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad9cc800293c5a465d50723949e242b1065a0f209187927a453d79ae291bc01`  
		Last Modified: Fri, 22 Feb 2019 09:41:49 GMT  
		Size: 4.3 MB (4255411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b7447ecd09a4ba50aa3f6c530d88d33337642cf3174315671f79745ee08f65`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f487c9f4a70d6e2680bd2a12c4064907dd9a938cc93e06d55a2dd38d44ca03`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b1fe52e0e27c7332065ef0d0ad4a6428d14fd4a5bb1989b5148d4d85995b2`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:7f6773dd179a86ef305eb0e2fd26b7f8777c49d2d2f14de16c9a56e27a357d79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47944614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f580201246d63cb83ad6e18dcf5fced3ef8e7b065675a7640865a443bfcd1768`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:19:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:19:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:20:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:20:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:20:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:20:15 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:20:24 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:20:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:20:29 GMT
CMD []
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d51c026e13eba6d67021c81151c79d199392f6adb237bc92af440ec9436556d`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 4.6 MB (4631832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1668def163afac5683c2b8e9933612ddc81f78a0ad083a285ff467e10db760e`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01eccc5f17621b0aec7164746a483cb8d9c77be4a4fb30e7cd0e8fa54af40fc`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e1a9940c4f186fc9d56e0c6b1f7f0c5a27079d80952a9bff129d2d08f76f11`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-git`

```console
$ docker pull docker@sha256:00e74e876b4d05c55c7d69cf0a6f03fc0aed0111eac3b21ec0f97b32ead2bf9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06.3-git` - linux; amd64

```console
$ docker pull docker@sha256:eef7b5c64016eb50422f87ae84dc3047310419b5042f618f0b1a5ea586783452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55463134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12bcbf3461efc5e39a31794b03fe96bf2fec13fde189bc0d147424756371bb01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:20:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71076369f07f793e860d24582c780b08a72d1c450dc4532a184a226d042406ae`  
		Last Modified: Fri, 22 Feb 2019 00:21:04 GMT  
		Size: 8.6 MB (8628225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:31135e36ec65484db541956e02f22867b210cbb9658db2644574faeb831e6e25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53751482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6fa1e005fd25168af47d07cdaaa14a27d6178db9dbbf6f525ac089b65ceefc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3e4cbf25eda2d87b8635eec0c01cb4e0f8fb946f4b0a39f584c7a9165b81ed`  
		Last Modified: Fri, 22 Feb 2019 08:51:52 GMT  
		Size: 8.2 MB (8181975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4a2e2c374a5be1c112e6056f0362582ed4894a2c99942a9f76dc13c0fb7f6910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51546195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3331e23a902a4ac5ee13e7a951eec2f951ac736f84ab9b876067885c05112a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1150e47fefad4bd27d47a5ed4f128262e82b2e61428c15ac1ee7e5d822b335a3`  
		Last Modified: Fri, 22 Feb 2019 09:42:07 GMT  
		Size: 7.9 MB (7919209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; ppc64le

```console
$ docker pull docker@sha256:bca9f5ef0606b4dd3a3504ff0beaa9939ed6628372ab24e7e02539d56994bb90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e35dfaeb9cd770fa109129bbc608dc1ddb17dbadc128385a2d24556b185a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1da7c9b19d6d95c63d519bf96879fd560435cd911476a3c21b38594d8ee7f06`  
		Last Modified: Fri, 22 Feb 2019 09:21:57 GMT  
		Size: 8.4 MB (8400667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-dind`

```console
$ docker pull docker@sha256:991af2ce3c095fe3d98c09775d99dc282049522e79d466d6b5f9f450f9488211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06-dind` - linux; amd64

```console
$ docker pull docker@sha256:15ffe63da4446f6a59860172106c0e7ea771b86e4394659727175a9a82b4cdff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51528930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a247bfe2532c20dec521c4ec239ea2c31e31e3289ccfc6d1f0a7bcd9e9d5163`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:19:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 00:19:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 00:19:55 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 00:19:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 00:19:57 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:57 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 00:19:57 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 00:19:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:58 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7577da9f97062e3d8e94ca29ac178dd637e1a4ada586e0eb0f038cb045007e5`  
		Last Modified: Fri, 22 Feb 2019 00:20:56 GMT  
		Size: 4.7 MB (4691424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58e3b1d06961b2d8cf4ce738208c7e12333e669db8ec139537dd8f224ff8b22`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3098ba01ca396f8f78e2d6f75e848dc52087bb0463f0eac40a95961f2361e9`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5880026b24ae479c6bfcc04be4198efaf2933d5a0eb7ff2e133ee09720c8514d`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:29160ddd77a0b4d5741cec27f605d74fe363dc3849816506169fe05aae69c8d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48223263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7551b82b4fc40b4229cbacc01123164064223d092a45d337355acbb4cfc25e2d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:49:47 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 08:49:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 08:49:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 08:49:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 08:49:52 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:53 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 08:49:53 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 08:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:54 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af9e5ea9b854ee6bc09b073ccc607fa853a720f7f9f0b32d26e10a255cdeb7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 2.7 MB (2651128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5de469cd4c1f5f4fa52db3eb6d90c90cd9a009e5a7b967a448103e6f725b7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f001170a9186300214aac828e875a35ce7af8792fbc4768583cf42b4455e1ef5`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690966cb828023a4faa6cfc934a3c37c1d245bcf80e4ad56e4652e0fcce50b02`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f6dc7b43de7bc4852bc0d121bb6580951302fbae52f8a14b3845b9ca0ac8c0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47884996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b241ae9f5c0c97b3b958243fb6ec9c05afd86a28e20ee94e644d8ad6025ccf36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:40:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:40:22 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:40:25 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:40:25 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:26 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:40:27 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:40:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:28 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad9cc800293c5a465d50723949e242b1065a0f209187927a453d79ae291bc01`  
		Last Modified: Fri, 22 Feb 2019 09:41:49 GMT  
		Size: 4.3 MB (4255411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b7447ecd09a4ba50aa3f6c530d88d33337642cf3174315671f79745ee08f65`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f487c9f4a70d6e2680bd2a12c4064907dd9a938cc93e06d55a2dd38d44ca03`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b1fe52e0e27c7332065ef0d0ad4a6428d14fd4a5bb1989b5148d4d85995b2`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:7f6773dd179a86ef305eb0e2fd26b7f8777c49d2d2f14de16c9a56e27a357d79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47944614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f580201246d63cb83ad6e18dcf5fced3ef8e7b065675a7640865a443bfcd1768`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:19:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:19:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:20:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:20:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:20:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:20:15 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:20:24 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:20:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:20:29 GMT
CMD []
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d51c026e13eba6d67021c81151c79d199392f6adb237bc92af440ec9436556d`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 4.6 MB (4631832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1668def163afac5683c2b8e9933612ddc81f78a0ad083a285ff467e10db760e`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01eccc5f17621b0aec7164746a483cb8d9c77be4a4fb30e7cd0e8fa54af40fc`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e1a9940c4f186fc9d56e0c6b1f7f0c5a27079d80952a9bff129d2d08f76f11`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-git`

```console
$ docker pull docker@sha256:00e74e876b4d05c55c7d69cf0a6f03fc0aed0111eac3b21ec0f97b32ead2bf9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.06-git` - linux; amd64

```console
$ docker pull docker@sha256:eef7b5c64016eb50422f87ae84dc3047310419b5042f618f0b1a5ea586783452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55463134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12bcbf3461efc5e39a31794b03fe96bf2fec13fde189bc0d147424756371bb01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:20:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71076369f07f793e860d24582c780b08a72d1c450dc4532a184a226d042406ae`  
		Last Modified: Fri, 22 Feb 2019 00:21:04 GMT  
		Size: 8.6 MB (8628225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:31135e36ec65484db541956e02f22867b210cbb9658db2644574faeb831e6e25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53751482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6fa1e005fd25168af47d07cdaaa14a27d6178db9dbbf6f525ac089b65ceefc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3e4cbf25eda2d87b8635eec0c01cb4e0f8fb946f4b0a39f584c7a9165b81ed`  
		Last Modified: Fri, 22 Feb 2019 08:51:52 GMT  
		Size: 8.2 MB (8181975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4a2e2c374a5be1c112e6056f0362582ed4894a2c99942a9f76dc13c0fb7f6910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51546195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3331e23a902a4ac5ee13e7a951eec2f951ac736f84ab9b876067885c05112a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1150e47fefad4bd27d47a5ed4f128262e82b2e61428c15ac1ee7e5d822b335a3`  
		Last Modified: Fri, 22 Feb 2019 09:42:07 GMT  
		Size: 7.9 MB (7919209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; ppc64le

```console
$ docker pull docker@sha256:bca9f5ef0606b4dd3a3504ff0beaa9939ed6628372ab24e7e02539d56994bb90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e35dfaeb9cd770fa109129bbc608dc1ddb17dbadc128385a2d24556b185a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1da7c9b19d6d95c63d519bf96879fd560435cd911476a3c21b38594d8ee7f06`  
		Last Modified: Fri, 22 Feb 2019 09:21:57 GMT  
		Size: 8.4 MB (8400667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09`

```console
$ docker pull docker@sha256:453c52a7a7200677f9effa3acc8498a2f71af77c2951ac5e1ac1391053573374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:a1e5dbe6e6dbef5deaa62d039b50c1158b992a186841e7556b162bb0a21c7dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51007632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d492654a095a2f91078b2dfacd0cfe1a1fe25412fac54b4eb2f5a9609ad418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v6

```console
$ docker pull docker@sha256:eb6709604cd2f0ac79a7c9158213227a89620e3e3d8352405635ef32a2333e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48141851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdfc35c1219579b1e54202a69048a828f2dc6ad568145af6a3718f98b52bf45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3f46d85cb99877e9e9f03d80f70e7ecb96258742f0e50c617522f86bd9321f82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46023106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9147c1ac235a1fab09471dc625ce8ca1f0b353c7384d4939b9de23c86f407f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.2`

```console
$ docker pull docker@sha256:453c52a7a7200677f9effa3acc8498a2f71af77c2951ac5e1ac1391053573374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.2` - linux; amd64

```console
$ docker pull docker@sha256:a1e5dbe6e6dbef5deaa62d039b50c1158b992a186841e7556b162bb0a21c7dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51007632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d492654a095a2f91078b2dfacd0cfe1a1fe25412fac54b4eb2f5a9609ad418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2` - linux; arm variant v6

```console
$ docker pull docker@sha256:eb6709604cd2f0ac79a7c9158213227a89620e3e3d8352405635ef32a2333e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48141851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdfc35c1219579b1e54202a69048a828f2dc6ad568145af6a3718f98b52bf45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3f46d85cb99877e9e9f03d80f70e7ecb96258742f0e50c617522f86bd9321f82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46023106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9147c1ac235a1fab09471dc625ce8ca1f0b353c7384d4939b9de23c86f407f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.2-dind`

```console
$ docker pull docker@sha256:54cebe5015fbe725c29c203214120e8936f65fda5311c6f5e7c2e5037c0939a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:e3cdcf88c089e5a390773520a4bb12fafa4df94039c9d45f8b72d4131c4742d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55701630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b626cc3459ad077146e8aac1fbe25f7099d71c6765efd6552b9209ca7ea4dc1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 00:19:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 00:19:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 00:19:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 00:19:33 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:33 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 00:19:34 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 00:19:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:34 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92ceb70fb83d17cd339e6a30b2eeec12ba7c43b230fb25fb700e6b4b8799213`  
		Last Modified: Tue, 12 Feb 2019 00:20:32 GMT  
		Size: 4.7 MB (4691398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e73e8c1bfd2aeedcab952ba9944045ce569c35ff86b017c1f491eb33f1e7a19`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b89129978e017c79d96c20834a40d5109aca4bbf930f0a323aadd75e6aa8a`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf94363eed747ece062b8e29dbc62c568642f88cd8c4feaca3a1ae68fd479bb4`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:8ffb0932f0d43f7a82a5c084d30154b24fee94f48607c2d9840bd16428301803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50795577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640cfed7bb44bcca3da2cc5388582e8781d51317310fc57849292a7744608574`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 08:49:40 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 08:49:42 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 08:49:42 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffab227fb09db74f281a57b0b21260af7ee3b7855dfdba691e407ed2e794068d`  
		Last Modified: Tue, 12 Feb 2019 08:51:14 GMT  
		Size: 2.7 MB (2651105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0252617f1c5f142a1b8a7242c0ec07e5179509efe5bcb37177ff049fbfaf10d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ef53454176e3210a5d6a12c912c7953f66c8e8751d56e0b0bf442b448b874`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3a4c8d3dfa8be422c339a0fb752ffa1226566234c1797e8ed9ec5c185e9d5d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:10ee71208b9e81a702d7c81bbb18c92cd66b0937e4bb9e229c128c78249df35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82abb24ba2aba26b0a1e10acb551dfd8dfa7131a9a6a464bcc967eefc097fb7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 09:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 09:41:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 09:41:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 09:41:22 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 09:41:24 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 09:41:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:25 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab53291accf2ef850d515d92e0a24220987aba8c384892638bac71eb4905bb7`  
		Last Modified: Tue, 12 Feb 2019 09:43:26 GMT  
		Size: 4.3 MB (4255464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b70364fb707e41d2f98bcf9e4b313f9a32764699989eec36404f016a334381`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b6bbc1317fb2e2f462d8f31ee65a933cbedeb0af55efe000981ec41a9f89b`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a286dca1b6e15e07a51a265000bd05abb50ceedb78f5b284a8bdf26a863ee42`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.2-git`

```console
$ docker pull docker@sha256:23522e92d48ea2cc543a3b952c0055259d822d6edaab2a75e5acc3239745b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.2-git` - linux; amd64

```console
$ docker pull docker@sha256:eab5a36911e3667ab8caa1bf735cdfda5e4ab0946586a72b04c9ff41cdf14dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d7ce1693c766480d7e780f5463a45e8cd473a0090209201216f710c7c5f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:38 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3acd7e7d138cdf046ac34522718965ad2e567b46c22100630b3844771e0072b`  
		Last Modified: Tue, 12 Feb 2019 00:20:40 GMT  
		Size: 8.6 MB (8628200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:36319d72285e00ee63fa76b0eba0ff52c55ffabee3eb679ba92011e6ef780217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56323809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0a377083b73c73141952f4f633499cdaa9800bc24f76a1f0d848eadc990b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8c212b7143ab8c230feed6ce0ded49923d6420b56632249b731834fd902496`  
		Last Modified: Tue, 12 Feb 2019 08:51:30 GMT  
		Size: 8.2 MB (8181958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f134d3dbadb0a52b4af6901279c7bee7391a8b8243f06ff751c6d60a933d5e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd867581d0db0ae4a5f6a5dce154764d61de76f2f132356bf1b0a6d0e51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ba1ac909ab7aefcb9142bd843f02ca142afa09725c6605f103759ccf4ac62`  
		Last Modified: Tue, 12 Feb 2019 09:43:48 GMT  
		Size: 7.9 MB (7919230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:54cebe5015fbe725c29c203214120e8936f65fda5311c6f5e7c2e5037c0939a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:e3cdcf88c089e5a390773520a4bb12fafa4df94039c9d45f8b72d4131c4742d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55701630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b626cc3459ad077146e8aac1fbe25f7099d71c6765efd6552b9209ca7ea4dc1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 00:19:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 00:19:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 00:19:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 00:19:33 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:33 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 00:19:34 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 00:19:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:34 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92ceb70fb83d17cd339e6a30b2eeec12ba7c43b230fb25fb700e6b4b8799213`  
		Last Modified: Tue, 12 Feb 2019 00:20:32 GMT  
		Size: 4.7 MB (4691398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e73e8c1bfd2aeedcab952ba9944045ce569c35ff86b017c1f491eb33f1e7a19`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b89129978e017c79d96c20834a40d5109aca4bbf930f0a323aadd75e6aa8a`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf94363eed747ece062b8e29dbc62c568642f88cd8c4feaca3a1ae68fd479bb4`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:8ffb0932f0d43f7a82a5c084d30154b24fee94f48607c2d9840bd16428301803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50795577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640cfed7bb44bcca3da2cc5388582e8781d51317310fc57849292a7744608574`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 08:49:40 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 08:49:42 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 08:49:42 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffab227fb09db74f281a57b0b21260af7ee3b7855dfdba691e407ed2e794068d`  
		Last Modified: Tue, 12 Feb 2019 08:51:14 GMT  
		Size: 2.7 MB (2651105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0252617f1c5f142a1b8a7242c0ec07e5179509efe5bcb37177ff049fbfaf10d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ef53454176e3210a5d6a12c912c7953f66c8e8751d56e0b0bf442b448b874`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3a4c8d3dfa8be422c339a0fb752ffa1226566234c1797e8ed9ec5c185e9d5d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:10ee71208b9e81a702d7c81bbb18c92cd66b0937e4bb9e229c128c78249df35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82abb24ba2aba26b0a1e10acb551dfd8dfa7131a9a6a464bcc967eefc097fb7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 09:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 09:41:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 09:41:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 09:41:22 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 09:41:24 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 09:41:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:25 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab53291accf2ef850d515d92e0a24220987aba8c384892638bac71eb4905bb7`  
		Last Modified: Tue, 12 Feb 2019 09:43:26 GMT  
		Size: 4.3 MB (4255464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b70364fb707e41d2f98bcf9e4b313f9a32764699989eec36404f016a334381`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b6bbc1317fb2e2f462d8f31ee65a933cbedeb0af55efe000981ec41a9f89b`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a286dca1b6e15e07a51a265000bd05abb50ceedb78f5b284a8bdf26a863ee42`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:23522e92d48ea2cc543a3b952c0055259d822d6edaab2a75e5acc3239745b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:eab5a36911e3667ab8caa1bf735cdfda5e4ab0946586a72b04c9ff41cdf14dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d7ce1693c766480d7e780f5463a45e8cd473a0090209201216f710c7c5f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:38 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3acd7e7d138cdf046ac34522718965ad2e567b46c22100630b3844771e0072b`  
		Last Modified: Tue, 12 Feb 2019 00:20:40 GMT  
		Size: 8.6 MB (8628200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:36319d72285e00ee63fa76b0eba0ff52c55ffabee3eb679ba92011e6ef780217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56323809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0a377083b73c73141952f4f633499cdaa9800bc24f76a1f0d848eadc990b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8c212b7143ab8c230feed6ce0ded49923d6420b56632249b731834fd902496`  
		Last Modified: Tue, 12 Feb 2019 08:51:30 GMT  
		Size: 8.2 MB (8181958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f134d3dbadb0a52b4af6901279c7bee7391a8b8243f06ff751c6d60a933d5e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd867581d0db0ae4a5f6a5dce154764d61de76f2f132356bf1b0a6d0e51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ba1ac909ab7aefcb9142bd843f02ca142afa09725c6605f103759ccf4ac62`  
		Last Modified: Tue, 12 Feb 2019 09:43:48 GMT  
		Size: 7.9 MB (7919230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:54cebe5015fbe725c29c203214120e8936f65fda5311c6f5e7c2e5037c0939a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:e3cdcf88c089e5a390773520a4bb12fafa4df94039c9d45f8b72d4131c4742d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55701630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b626cc3459ad077146e8aac1fbe25f7099d71c6765efd6552b9209ca7ea4dc1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 00:19:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 00:19:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 00:19:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 00:19:33 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:33 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 00:19:34 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 00:19:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:34 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92ceb70fb83d17cd339e6a30b2eeec12ba7c43b230fb25fb700e6b4b8799213`  
		Last Modified: Tue, 12 Feb 2019 00:20:32 GMT  
		Size: 4.7 MB (4691398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e73e8c1bfd2aeedcab952ba9944045ce569c35ff86b017c1f491eb33f1e7a19`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b89129978e017c79d96c20834a40d5109aca4bbf930f0a323aadd75e6aa8a`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf94363eed747ece062b8e29dbc62c568642f88cd8c4feaca3a1ae68fd479bb4`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:8ffb0932f0d43f7a82a5c084d30154b24fee94f48607c2d9840bd16428301803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50795577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640cfed7bb44bcca3da2cc5388582e8781d51317310fc57849292a7744608574`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 08:49:40 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 08:49:42 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 08:49:42 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffab227fb09db74f281a57b0b21260af7ee3b7855dfdba691e407ed2e794068d`  
		Last Modified: Tue, 12 Feb 2019 08:51:14 GMT  
		Size: 2.7 MB (2651105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0252617f1c5f142a1b8a7242c0ec07e5179509efe5bcb37177ff049fbfaf10d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ef53454176e3210a5d6a12c912c7953f66c8e8751d56e0b0bf442b448b874`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3a4c8d3dfa8be422c339a0fb752ffa1226566234c1797e8ed9ec5c185e9d5d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:10ee71208b9e81a702d7c81bbb18c92cd66b0937e4bb9e229c128c78249df35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82abb24ba2aba26b0a1e10acb551dfd8dfa7131a9a6a464bcc967eefc097fb7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 09:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 09:41:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 09:41:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 09:41:22 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 09:41:24 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 09:41:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:25 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab53291accf2ef850d515d92e0a24220987aba8c384892638bac71eb4905bb7`  
		Last Modified: Tue, 12 Feb 2019 09:43:26 GMT  
		Size: 4.3 MB (4255464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b70364fb707e41d2f98bcf9e4b313f9a32764699989eec36404f016a334381`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b6bbc1317fb2e2f462d8f31ee65a933cbedeb0af55efe000981ec41a9f89b`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a286dca1b6e15e07a51a265000bd05abb50ceedb78f5b284a8bdf26a863ee42`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:23522e92d48ea2cc543a3b952c0055259d822d6edaab2a75e5acc3239745b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:eab5a36911e3667ab8caa1bf735cdfda5e4ab0946586a72b04c9ff41cdf14dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d7ce1693c766480d7e780f5463a45e8cd473a0090209201216f710c7c5f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:38 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3acd7e7d138cdf046ac34522718965ad2e567b46c22100630b3844771e0072b`  
		Last Modified: Tue, 12 Feb 2019 00:20:40 GMT  
		Size: 8.6 MB (8628200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:36319d72285e00ee63fa76b0eba0ff52c55ffabee3eb679ba92011e6ef780217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56323809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0a377083b73c73141952f4f633499cdaa9800bc24f76a1f0d848eadc990b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8c212b7143ab8c230feed6ce0ded49923d6420b56632249b731834fd902496`  
		Last Modified: Tue, 12 Feb 2019 08:51:30 GMT  
		Size: 8.2 MB (8181958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f134d3dbadb0a52b4af6901279c7bee7391a8b8243f06ff751c6d60a933d5e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd867581d0db0ae4a5f6a5dce154764d61de76f2f132356bf1b0a6d0e51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ba1ac909ab7aefcb9142bd843f02ca142afa09725c6605f103759ccf4ac62`  
		Last Modified: Tue, 12 Feb 2019 09:43:48 GMT  
		Size: 7.9 MB (7919230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:54cebe5015fbe725c29c203214120e8936f65fda5311c6f5e7c2e5037c0939a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:e3cdcf88c089e5a390773520a4bb12fafa4df94039c9d45f8b72d4131c4742d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55701630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b626cc3459ad077146e8aac1fbe25f7099d71c6765efd6552b9209ca7ea4dc1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 00:19:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 00:19:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 00:19:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 00:19:33 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:33 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 00:19:34 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 00:19:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:34 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92ceb70fb83d17cd339e6a30b2eeec12ba7c43b230fb25fb700e6b4b8799213`  
		Last Modified: Tue, 12 Feb 2019 00:20:32 GMT  
		Size: 4.7 MB (4691398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e73e8c1bfd2aeedcab952ba9944045ce569c35ff86b017c1f491eb33f1e7a19`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b89129978e017c79d96c20834a40d5109aca4bbf930f0a323aadd75e6aa8a`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf94363eed747ece062b8e29dbc62c568642f88cd8c4feaca3a1ae68fd479bb4`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:8ffb0932f0d43f7a82a5c084d30154b24fee94f48607c2d9840bd16428301803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50795577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640cfed7bb44bcca3da2cc5388582e8781d51317310fc57849292a7744608574`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 08:49:40 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 08:49:42 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 08:49:42 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffab227fb09db74f281a57b0b21260af7ee3b7855dfdba691e407ed2e794068d`  
		Last Modified: Tue, 12 Feb 2019 08:51:14 GMT  
		Size: 2.7 MB (2651105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0252617f1c5f142a1b8a7242c0ec07e5179509efe5bcb37177ff049fbfaf10d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ef53454176e3210a5d6a12c912c7953f66c8e8751d56e0b0bf442b448b874`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3a4c8d3dfa8be422c339a0fb752ffa1226566234c1797e8ed9ec5c185e9d5d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:10ee71208b9e81a702d7c81bbb18c92cd66b0937e4bb9e229c128c78249df35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82abb24ba2aba26b0a1e10acb551dfd8dfa7131a9a6a464bcc967eefc097fb7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 09:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 09:41:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 09:41:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 09:41:22 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 09:41:24 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 09:41:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:25 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab53291accf2ef850d515d92e0a24220987aba8c384892638bac71eb4905bb7`  
		Last Modified: Tue, 12 Feb 2019 09:43:26 GMT  
		Size: 4.3 MB (4255464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b70364fb707e41d2f98bcf9e4b313f9a32764699989eec36404f016a334381`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b6bbc1317fb2e2f462d8f31ee65a933cbedeb0af55efe000981ec41a9f89b`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a286dca1b6e15e07a51a265000bd05abb50ceedb78f5b284a8bdf26a863ee42`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:872669992bb56ee4956a19c0f30f5599c9919b1d737426c70795e21cbc14fa52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:0e422b806978874c664978997f67447960c9ddda702abcb7efc18a548c77af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46834909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0eb5a99377a25e35334b225b1a3b77c7802d01f6cde3aa6479f9f52ab4e925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm variant v6

```console
$ docker pull docker@sha256:a774575fc6dd82509669701312b47ab210e12f1643a14600a1bfee9f2551070e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45569507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3590f068c33ed17ca944071bfd500cffdf6fb9f89a2e9e436eb598031e4d1481`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8d6600e252adbb621d75de29ccd668d46002f9ebed261db2473046eac08d7b67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43626986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e45702bc60a86584e1540b899db317f2e8cd86a47ea0e687b2228d12169a2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; ppc64le

```console
$ docker pull docker@sha256:130d750a52ebfa4c868bc0e29cf386060b56ad387caa868ec8bef84896596400
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43310152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8765b8e240b881e721209e73b614cc3ff132c9c7788f3588d00df186f409bae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:991af2ce3c095fe3d98c09775d99dc282049522e79d466d6b5f9f450f9488211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:15ffe63da4446f6a59860172106c0e7ea771b86e4394659727175a9a82b4cdff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51528930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a247bfe2532c20dec521c4ec239ea2c31e31e3289ccfc6d1f0a7bcd9e9d5163`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:19:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 00:19:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 00:19:55 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 00:19:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 00:19:57 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:57 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 00:19:57 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 00:19:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:58 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7577da9f97062e3d8e94ca29ac178dd637e1a4ada586e0eb0f038cb045007e5`  
		Last Modified: Fri, 22 Feb 2019 00:20:56 GMT  
		Size: 4.7 MB (4691424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58e3b1d06961b2d8cf4ce738208c7e12333e669db8ec139537dd8f224ff8b22`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3098ba01ca396f8f78e2d6f75e848dc52087bb0463f0eac40a95961f2361e9`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5880026b24ae479c6bfcc04be4198efaf2933d5a0eb7ff2e133ee09720c8514d`  
		Last Modified: Fri, 22 Feb 2019 00:20:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:29160ddd77a0b4d5741cec27f605d74fe363dc3849816506169fe05aae69c8d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48223263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7551b82b4fc40b4229cbacc01123164064223d092a45d337355acbb4cfc25e2d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:49:47 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 08:49:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 08:49:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 08:49:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 08:49:52 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:53 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 08:49:53 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 08:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:54 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af9e5ea9b854ee6bc09b073ccc607fa853a720f7f9f0b32d26e10a255cdeb7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 2.7 MB (2651128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5de469cd4c1f5f4fa52db3eb6d90c90cd9a009e5a7b967a448103e6f725b7a`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f001170a9186300214aac828e875a35ce7af8792fbc4768583cf42b4455e1ef5`  
		Last Modified: Fri, 22 Feb 2019 08:51:17 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690966cb828023a4faa6cfc934a3c37c1d245bcf80e4ad56e4652e0fcce50b02`  
		Last Modified: Fri, 22 Feb 2019 08:51:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f6dc7b43de7bc4852bc0d121bb6580951302fbae52f8a14b3845b9ca0ac8c0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47884996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b241ae9f5c0c97b3b958243fb6ec9c05afd86a28e20ee94e644d8ad6025ccf36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:40:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:40:22 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:40:25 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:40:25 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:26 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:40:27 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:40:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:28 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad9cc800293c5a465d50723949e242b1065a0f209187927a453d79ae291bc01`  
		Last Modified: Fri, 22 Feb 2019 09:41:49 GMT  
		Size: 4.3 MB (4255411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b7447ecd09a4ba50aa3f6c530d88d33337642cf3174315671f79745ee08f65`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f487c9f4a70d6e2680bd2a12c4064907dd9a938cc93e06d55a2dd38d44ca03`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b1fe52e0e27c7332065ef0d0ad4a6428d14fd4a5bb1989b5148d4d85995b2`  
		Last Modified: Fri, 22 Feb 2019 09:41:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:7f6773dd179a86ef305eb0e2fd26b7f8777c49d2d2f14de16c9a56e27a357d79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47944614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f580201246d63cb83ad6e18dcf5fced3ef8e7b065675a7640865a443bfcd1768`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:19:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 09:19:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 09:20:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 09:20:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 09:20:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:20:15 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 09:20:24 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 09:20:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 09:20:29 GMT
CMD []
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d51c026e13eba6d67021c81151c79d199392f6adb237bc92af440ec9436556d`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 4.6 MB (4631832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1668def163afac5683c2b8e9933612ddc81f78a0ad083a285ff467e10db760e`  
		Last Modified: Fri, 22 Feb 2019 09:21:37 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01eccc5f17621b0aec7164746a483cb8d9c77be4a4fb30e7cd0e8fa54af40fc`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e1a9940c4f186fc9d56e0c6b1f7f0c5a27079d80952a9bff129d2d08f76f11`  
		Last Modified: Fri, 22 Feb 2019 09:21:36 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:00e74e876b4d05c55c7d69cf0a6f03fc0aed0111eac3b21ec0f97b32ead2bf9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:eef7b5c64016eb50422f87ae84dc3047310419b5042f618f0b1a5ea586783452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55463134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12bcbf3461efc5e39a31794b03fe96bf2fec13fde189bc0d147424756371bb01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 00:20:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71076369f07f793e860d24582c780b08a72d1c450dc4532a184a226d042406ae`  
		Last Modified: Fri, 22 Feb 2019 00:21:04 GMT  
		Size: 8.6 MB (8628225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:31135e36ec65484db541956e02f22867b210cbb9658db2644574faeb831e6e25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53751482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6fa1e005fd25168af47d07cdaaa14a27d6178db9dbbf6f525ac089b65ceefc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 08:49:30 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 08:49:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 08:49:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 08:49:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 08:49:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 08:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f15b2fbd9769d5d984d8a56f862d22cb9e0332d0e73200f0841abfd6ae232f`  
		Last Modified: Fri, 22 Feb 2019 08:50:41 GMT  
		Size: 43.1 MB (43112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bd9913722da7df315d45371b74ef661e8228bef81536c7c55a23ec96a319bc`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ac568e2ddb2d63eb33bc787e692226d75184169fdc0524a20691b51787beb`  
		Last Modified: Fri, 22 Feb 2019 08:50:26 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3e4cbf25eda2d87b8635eec0c01cb4e0f8fb946f4b0a39f584c7a9165b81ed`  
		Last Modified: Fri, 22 Feb 2019 08:51:52 GMT  
		Size: 8.2 MB (8181975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4a2e2c374a5be1c112e6056f0362582ed4894a2c99942a9f76dc13c0fb7f6910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51546195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3331e23a902a4ac5ee13e7a951eec2f951ac736f84ab9b876067885c05112a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:39:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:40:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:40:06 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:40:39 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685662d9bcc342eb0ff3ddd038791659560400510e8b45dfc67e2c5dfaa7a8f0`  
		Last Modified: Fri, 22 Feb 2019 09:41:34 GMT  
		Size: 41.2 MB (41216847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf694c77cbeb4a2f95974e2b67d1d75691940a5b402a7a80f18c3230a1973db`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7de31a0a49bbbf022dfd69ebeb04c7a62648092f1105f8a8c24d2c513e19e2`  
		Last Modified: Fri, 22 Feb 2019 09:41:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1150e47fefad4bd27d47a5ed4f128262e82b2e61428c15ac1ee7e5d822b335a3`  
		Last Modified: Fri, 22 Feb 2019 09:42:07 GMT  
		Size: 7.9 MB (7919209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; ppc64le

```console
$ docker pull docker@sha256:bca9f5ef0606b4dd3a3504ff0beaa9939ed6628372ab24e7e02539d56994bb90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e35dfaeb9cd770fa109129bbc608dc1ddb17dbadc128385a2d24556b185a4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 12:15:47 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 09:19:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 09:19:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 09:19:25 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 09:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 09:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:19:32 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 09:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14841928915b672c3d7b7d493f89415a5ff9d3c9530426fd3521b439471f6d54`  
		Last Modified: Fri, 22 Feb 2019 09:21:15 GMT  
		Size: 40.8 MB (40802771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6f31ba80842f92bc7397c411c20dcac51c5cf863f51902aacaa519021ca41`  
		Last Modified: Fri, 22 Feb 2019 09:21:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388d8a0e5f37f213af2e05ab1b24d849a0ec58d2a5c6c67feec72697d371f8c`  
		Last Modified: Fri, 22 Feb 2019 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1da7c9b19d6d95c63d519bf96879fd560435cd911476a3c21b38594d8ee7f06`  
		Last Modified: Fri, 22 Feb 2019 09:21:57 GMT  
		Size: 8.4 MB (8400667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:23522e92d48ea2cc543a3b952c0055259d822d6edaab2a75e5acc3239745b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:eab5a36911e3667ab8caa1bf735cdfda5e4ab0946586a72b04c9ff41cdf14dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d7ce1693c766480d7e780f5463a45e8cd473a0090209201216f710c7c5f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:38 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3acd7e7d138cdf046ac34522718965ad2e567b46c22100630b3844771e0072b`  
		Last Modified: Tue, 12 Feb 2019 00:20:40 GMT  
		Size: 8.6 MB (8628200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:36319d72285e00ee63fa76b0eba0ff52c55ffabee3eb679ba92011e6ef780217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56323809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0a377083b73c73141952f4f633499cdaa9800bc24f76a1f0d848eadc990b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8c212b7143ab8c230feed6ce0ded49923d6420b56632249b731834fd902496`  
		Last Modified: Tue, 12 Feb 2019 08:51:30 GMT  
		Size: 8.2 MB (8181958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f134d3dbadb0a52b4af6901279c7bee7391a8b8243f06ff751c6d60a933d5e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd867581d0db0ae4a5f6a5dce154764d61de76f2f132356bf1b0a6d0e51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ba1ac909ab7aefcb9142bd843f02ca142afa09725c6605f103759ccf4ac62`  
		Last Modified: Tue, 12 Feb 2019 09:43:48 GMT  
		Size: 7.9 MB (7919230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:453c52a7a7200677f9effa3acc8498a2f71af77c2951ac5e1ac1391053573374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:a1e5dbe6e6dbef5deaa62d039b50c1158b992a186841e7556b162bb0a21c7dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51007632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d492654a095a2f91078b2dfacd0cfe1a1fe25412fac54b4eb2f5a9609ad418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:eb6709604cd2f0ac79a7c9158213227a89620e3e3d8352405635ef32a2333e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48141851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdfc35c1219579b1e54202a69048a828f2dc6ad568145af6a3718f98b52bf45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3f46d85cb99877e9e9f03d80f70e7ecb96258742f0e50c617522f86bd9321f82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46023106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9147c1ac235a1fab09471dc625ce8ca1f0b353c7384d4939b9de23c86f407f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:453c52a7a7200677f9effa3acc8498a2f71af77c2951ac5e1ac1391053573374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:a1e5dbe6e6dbef5deaa62d039b50c1158b992a186841e7556b162bb0a21c7dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51007632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d492654a095a2f91078b2dfacd0cfe1a1fe25412fac54b4eb2f5a9609ad418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:eb6709604cd2f0ac79a7c9158213227a89620e3e3d8352405635ef32a2333e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48141851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdfc35c1219579b1e54202a69048a828f2dc6ad568145af6a3718f98b52bf45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3f46d85cb99877e9e9f03d80f70e7ecb96258742f0e50c617522f86bd9321f82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46023106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9147c1ac235a1fab09471dc625ce8ca1f0b353c7384d4939b9de23c86f407f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:54cebe5015fbe725c29c203214120e8936f65fda5311c6f5e7c2e5037c0939a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:e3cdcf88c089e5a390773520a4bb12fafa4df94039c9d45f8b72d4131c4742d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55701630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b626cc3459ad077146e8aac1fbe25f7099d71c6765efd6552b9209ca7ea4dc1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 00:19:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 00:19:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 00:19:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 00:19:33 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:33 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 00:19:34 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 00:19:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:34 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92ceb70fb83d17cd339e6a30b2eeec12ba7c43b230fb25fb700e6b4b8799213`  
		Last Modified: Tue, 12 Feb 2019 00:20:32 GMT  
		Size: 4.7 MB (4691398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e73e8c1bfd2aeedcab952ba9944045ce569c35ff86b017c1f491eb33f1e7a19`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b89129978e017c79d96c20834a40d5109aca4bbf930f0a323aadd75e6aa8a`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf94363eed747ece062b8e29dbc62c568642f88cd8c4feaca3a1ae68fd479bb4`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:8ffb0932f0d43f7a82a5c084d30154b24fee94f48607c2d9840bd16428301803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50795577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640cfed7bb44bcca3da2cc5388582e8781d51317310fc57849292a7744608574`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 08:49:40 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 08:49:42 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 08:49:42 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffab227fb09db74f281a57b0b21260af7ee3b7855dfdba691e407ed2e794068d`  
		Last Modified: Tue, 12 Feb 2019 08:51:14 GMT  
		Size: 2.7 MB (2651105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0252617f1c5f142a1b8a7242c0ec07e5179509efe5bcb37177ff049fbfaf10d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ef53454176e3210a5d6a12c912c7953f66c8e8751d56e0b0bf442b448b874`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3a4c8d3dfa8be422c339a0fb752ffa1226566234c1797e8ed9ec5c185e9d5d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:10ee71208b9e81a702d7c81bbb18c92cd66b0937e4bb9e229c128c78249df35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82abb24ba2aba26b0a1e10acb551dfd8dfa7131a9a6a464bcc967eefc097fb7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 09:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 09:41:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 09:41:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 09:41:22 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 09:41:24 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 09:41:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:25 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab53291accf2ef850d515d92e0a24220987aba8c384892638bac71eb4905bb7`  
		Last Modified: Tue, 12 Feb 2019 09:43:26 GMT  
		Size: 4.3 MB (4255464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b70364fb707e41d2f98bcf9e4b313f9a32764699989eec36404f016a334381`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b6bbc1317fb2e2f462d8f31ee65a933cbedeb0af55efe000981ec41a9f89b`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a286dca1b6e15e07a51a265000bd05abb50ceedb78f5b284a8bdf26a863ee42`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:23522e92d48ea2cc543a3b952c0055259d822d6edaab2a75e5acc3239745b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:eab5a36911e3667ab8caa1bf735cdfda5e4ab0946586a72b04c9ff41cdf14dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d7ce1693c766480d7e780f5463a45e8cd473a0090209201216f710c7c5f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:38 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3acd7e7d138cdf046ac34522718965ad2e567b46c22100630b3844771e0072b`  
		Last Modified: Tue, 12 Feb 2019 00:20:40 GMT  
		Size: 8.6 MB (8628200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:36319d72285e00ee63fa76b0eba0ff52c55ffabee3eb679ba92011e6ef780217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56323809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0a377083b73c73141952f4f633499cdaa9800bc24f76a1f0d848eadc990b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8c212b7143ab8c230feed6ce0ded49923d6420b56632249b731834fd902496`  
		Last Modified: Tue, 12 Feb 2019 08:51:30 GMT  
		Size: 8.2 MB (8181958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f134d3dbadb0a52b4af6901279c7bee7391a8b8243f06ff751c6d60a933d5e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd867581d0db0ae4a5f6a5dce154764d61de76f2f132356bf1b0a6d0e51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ba1ac909ab7aefcb9142bd843f02ca142afa09725c6605f103759ccf4ac62`  
		Last Modified: Tue, 12 Feb 2019 09:43:48 GMT  
		Size: 7.9 MB (7919230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:453c52a7a7200677f9effa3acc8498a2f71af77c2951ac5e1ac1391053573374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:a1e5dbe6e6dbef5deaa62d039b50c1158b992a186841e7556b162bb0a21c7dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51007632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d492654a095a2f91078b2dfacd0cfe1a1fe25412fac54b4eb2f5a9609ad418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:eb6709604cd2f0ac79a7c9158213227a89620e3e3d8352405635ef32a2333e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48141851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdfc35c1219579b1e54202a69048a828f2dc6ad568145af6a3718f98b52bf45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3f46d85cb99877e9e9f03d80f70e7ecb96258742f0e50c617522f86bd9321f82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46023106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9147c1ac235a1fab09471dc625ce8ca1f0b353c7384d4939b9de23c86f407f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:54cebe5015fbe725c29c203214120e8936f65fda5311c6f5e7c2e5037c0939a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:e3cdcf88c089e5a390773520a4bb12fafa4df94039c9d45f8b72d4131c4742d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55701630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b626cc3459ad077146e8aac1fbe25f7099d71c6765efd6552b9209ca7ea4dc1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 00:19:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 00:19:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 00:19:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 00:19:33 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:33 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 00:19:34 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 00:19:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:34 GMT
CMD []
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92ceb70fb83d17cd339e6a30b2eeec12ba7c43b230fb25fb700e6b4b8799213`  
		Last Modified: Tue, 12 Feb 2019 00:20:32 GMT  
		Size: 4.7 MB (4691398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e73e8c1bfd2aeedcab952ba9944045ce569c35ff86b017c1f491eb33f1e7a19`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b89129978e017c79d96c20834a40d5109aca4bbf930f0a323aadd75e6aa8a`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf94363eed747ece062b8e29dbc62c568642f88cd8c4feaca3a1ae68fd479bb4`  
		Last Modified: Tue, 12 Feb 2019 00:20:31 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:8ffb0932f0d43f7a82a5c084d30154b24fee94f48607c2d9840bd16428301803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50795577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640cfed7bb44bcca3da2cc5388582e8781d51317310fc57849292a7744608574`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 08:49:40 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 08:49:42 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 08:49:42 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffab227fb09db74f281a57b0b21260af7ee3b7855dfdba691e407ed2e794068d`  
		Last Modified: Tue, 12 Feb 2019 08:51:14 GMT  
		Size: 2.7 MB (2651105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0252617f1c5f142a1b8a7242c0ec07e5179509efe5bcb37177ff049fbfaf10d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ef53454176e3210a5d6a12c912c7953f66c8e8751d56e0b0bf442b448b874`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3a4c8d3dfa8be422c339a0fb752ffa1226566234c1797e8ed9ec5c185e9d5d`  
		Last Modified: Tue, 12 Feb 2019 08:51:13 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:10ee71208b9e81a702d7c81bbb18c92cd66b0937e4bb9e229c128c78249df35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82abb24ba2aba26b0a1e10acb551dfd8dfa7131a9a6a464bcc967eefc097fb7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 12 Feb 2019 09:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Feb 2019 09:41:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 12 Feb 2019 09:41:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 12 Feb 2019 09:41:22 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Feb 2019 09:41:24 GMT
EXPOSE 2375
# Tue, 12 Feb 2019 09:41:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:25 GMT
CMD []
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab53291accf2ef850d515d92e0a24220987aba8c384892638bac71eb4905bb7`  
		Last Modified: Tue, 12 Feb 2019 09:43:26 GMT  
		Size: 4.3 MB (4255464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b70364fb707e41d2f98bcf9e4b313f9a32764699989eec36404f016a334381`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b6bbc1317fb2e2f462d8f31ee65a933cbedeb0af55efe000981ec41a9f89b`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a286dca1b6e15e07a51a265000bd05abb50ceedb78f5b284a8bdf26a863ee42`  
		Last Modified: Tue, 12 Feb 2019 09:43:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:23522e92d48ea2cc543a3b952c0055259d822d6edaab2a75e5acc3239745b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:eab5a36911e3667ab8caa1bf735cdfda5e4ab0946586a72b04c9ff41cdf14dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d7ce1693c766480d7e780f5463a45e8cd473a0090209201216f710c7c5f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:38 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3acd7e7d138cdf046ac34522718965ad2e567b46c22100630b3844771e0072b`  
		Last Modified: Tue, 12 Feb 2019 00:20:40 GMT  
		Size: 8.6 MB (8628200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:36319d72285e00ee63fa76b0eba0ff52c55ffabee3eb679ba92011e6ef780217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56323809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0a377083b73c73141952f4f633499cdaa9800bc24f76a1f0d848eadc990b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 09:06:21 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8c212b7143ab8c230feed6ce0ded49923d6420b56632249b731834fd902496`  
		Last Modified: Tue, 12 Feb 2019 08:51:30 GMT  
		Size: 8.2 MB (8181958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f134d3dbadb0a52b4af6901279c7bee7391a8b8243f06ff751c6d60a933d5e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd867581d0db0ae4a5f6a5dce154764d61de76f2f132356bf1b0a6d0e51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:01:42 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ba1ac909ab7aefcb9142bd843f02ca142afa09725c6605f103759ccf4ac62`  
		Last Modified: Tue, 12 Feb 2019 09:43:48 GMT  
		Size: 7.9 MB (7919230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
