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
-	[`docker:18.09.3-rc1`](#docker18093-rc1)
-	[`docker:18.09.3-rc1-dind`](#docker18093-rc1-dind)
-	[`docker:18.09.3-rc1-git`](#docker18093-rc1-git)
-	[`docker:18.09-dind`](#docker1809-dind)
-	[`docker:18.09-git`](#docker1809-git)
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
$ docker pull docker@sha256:9ce0d52f26fff88ea8e13a80b4728e466778ea8c7a1345a8c004a56a06ec06ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:838d8d8dc9671860979d01b73a4a7d3c03a7434f02f1a92532d971c0e6bdba01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51548163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8044a7b7add769b39576a54824f4d0dcc0563b5c0ae1e5fb0927e847ad8c0d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
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
$ docker pull docker@sha256:13679d48cc340f1930dec762ca3b38906e0997c8f19735c7c7032c6338aab809
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
$ docker pull docker@sha256:07552688ab74cc2070f6cefdc467ddfc94e3cab82773fc78752b5a6bae8398c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7a9d046d96c00d6cbeddef80fce011ded63351ea1faa01ab8ca34067f29ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
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

### `docker:18.06` - linux; s390x

```console
$ docker pull docker@sha256:a7662c6750a3386f00ef75b1edbd725d0ed14c78fb63ac27d28b58ce5ec281e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf5afd44e8c06ff3bfe90bf15f25274c6a413e1e11122b3bd0c522a4941d064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3`

```console
$ docker pull docker@sha256:13679d48cc340f1930dec762ca3b38906e0997c8f19735c7c7032c6338aab809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.3` - linux; amd64

```console
$ docker pull docker@sha256:07552688ab74cc2070f6cefdc467ddfc94e3cab82773fc78752b5a6bae8398c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7a9d046d96c00d6cbeddef80fce011ded63351ea1faa01ab8ca34067f29ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
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

### `docker:18.06.3` - linux; s390x

```console
$ docker pull docker@sha256:a7662c6750a3386f00ef75b1edbd725d0ed14c78fb63ac27d28b58ce5ec281e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf5afd44e8c06ff3bfe90bf15f25274c6a413e1e11122b3bd0c522a4941d064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce`

```console
$ docker pull docker@sha256:13679d48cc340f1930dec762ca3b38906e0997c8f19735c7c7032c6338aab809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.3-ce` - linux; amd64

```console
$ docker pull docker@sha256:07552688ab74cc2070f6cefdc467ddfc94e3cab82773fc78752b5a6bae8398c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7a9d046d96c00d6cbeddef80fce011ded63351ea1faa01ab8ca34067f29ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
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

### `docker:18.06.3-ce` - linux; s390x

```console
$ docker pull docker@sha256:a7662c6750a3386f00ef75b1edbd725d0ed14c78fb63ac27d28b58ce5ec281e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf5afd44e8c06ff3bfe90bf15f25274c6a413e1e11122b3bd0c522a4941d064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-dind`

```console
$ docker pull docker@sha256:5db65aa56da81c730d5601e947caf7573325cb6be78adfeaf72bf5807397f650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.3-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:4c6b6f6e713182bed3dfaa6d12d1278f05b9d8252ac3189bf36f2dccaaf13bb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa15212fdb7ac9f3ee7d4852e76d594e5f4284371a0219a1568a34edc3e82a4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:27 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:29 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:29 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:29 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:30 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae54b4cc2fa5b27fb8399e192ee429d04a8a73b0165829f29f5b0628d35924d`  
		Last Modified: Thu, 28 Feb 2019 01:22:19 GMT  
		Size: 4.8 MB (4769837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ae3900cbbda5ee4f88de5c4fe58473f9a88a3101d633c7f89eb89809e87a0e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecedfbd5295fb968a292371da64531c9e976fd25ecd2588ba2c1a3ed624b1db9`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a11d374dc9be69cd98ebe191b934545ae94c1c424d32b758e855721810c1b9e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
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

### `docker:18.06.3-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:ec1b1dfe60c3085088a6bbd52a2fc58ae1d27bc2688c18ae9b860b48e7f78107
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51421623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590082c846c1d95e77f8c6e2a237957b3cd4831e0ea44276f39dfa98783506fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 12:41:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 12:41:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 12:41:47 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 12:41:47 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:47 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 12:41:48 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 12:41:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:48 GMT
CMD []
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c778b7d4f332d5d57e43cc7b34eaaf084e118d1b5f27e3783afaba0673283c34`  
		Last Modified: Fri, 22 Feb 2019 12:42:23 GMT  
		Size: 4.8 MB (4814032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9637fbfbc8848c2992109f719f5ab5e79ea8f739da554184de8828ea6b1fde3a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa172289a85b53f47ccc3cd3b291cee83fabb7fdf54b21be8d8fccef0c220b7`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c468198d71728166d8982ee60159f5a801dc1e519462f94754c5d9f447296a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-git`

```console
$ docker pull docker@sha256:a0b9b614159b58dae39d27957365cd7563f9d80c5089225a0c8a46508172abcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.3-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:8c69a0197c8844fdda1e4a76200eb8b38027b8b3310d3f0568135cee678c3e5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e2f57289de8ad9fd9032b6064c8d2681ee0822ae2651aa2096999017d66db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:35 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90128a55c9ebaa80d703e1086a9e3d1f09600a1ec2ef19931a7064f5543ce47`  
		Last Modified: Thu, 28 Feb 2019 01:22:27 GMT  
		Size: 9.3 MB (9270694 bytes)  
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

### `docker:18.06.3-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:97990cc15093de93ac2a08a8a810b9fcb8b4ffcffbf988c79f625476a587d1c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55471938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b37f9c778ee5d708b47659b35673edb1edeb37f743675e1579d30319ca2f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51870438dda96a0a12325428640f8ce37cfddb5c2b1290c9238a9f02f78cf4f`  
		Last Modified: Fri, 22 Feb 2019 12:42:33 GMT  
		Size: 8.9 MB (8866943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-dind`

```console
$ docker pull docker@sha256:5db65aa56da81c730d5601e947caf7573325cb6be78adfeaf72bf5807397f650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.3-dind` - linux; amd64

```console
$ docker pull docker@sha256:4c6b6f6e713182bed3dfaa6d12d1278f05b9d8252ac3189bf36f2dccaaf13bb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa15212fdb7ac9f3ee7d4852e76d594e5f4284371a0219a1568a34edc3e82a4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:27 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:29 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:29 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:29 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:30 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae54b4cc2fa5b27fb8399e192ee429d04a8a73b0165829f29f5b0628d35924d`  
		Last Modified: Thu, 28 Feb 2019 01:22:19 GMT  
		Size: 4.8 MB (4769837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ae3900cbbda5ee4f88de5c4fe58473f9a88a3101d633c7f89eb89809e87a0e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecedfbd5295fb968a292371da64531c9e976fd25ecd2588ba2c1a3ed624b1db9`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a11d374dc9be69cd98ebe191b934545ae94c1c424d32b758e855721810c1b9e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
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

### `docker:18.06.3-dind` - linux; s390x

```console
$ docker pull docker@sha256:ec1b1dfe60c3085088a6bbd52a2fc58ae1d27bc2688c18ae9b860b48e7f78107
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51421623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590082c846c1d95e77f8c6e2a237957b3cd4831e0ea44276f39dfa98783506fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 12:41:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 12:41:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 12:41:47 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 12:41:47 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:47 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 12:41:48 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 12:41:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:48 GMT
CMD []
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c778b7d4f332d5d57e43cc7b34eaaf084e118d1b5f27e3783afaba0673283c34`  
		Last Modified: Fri, 22 Feb 2019 12:42:23 GMT  
		Size: 4.8 MB (4814032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9637fbfbc8848c2992109f719f5ab5e79ea8f739da554184de8828ea6b1fde3a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa172289a85b53f47ccc3cd3b291cee83fabb7fdf54b21be8d8fccef0c220b7`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c468198d71728166d8982ee60159f5a801dc1e519462f94754c5d9f447296a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-git`

```console
$ docker pull docker@sha256:a0b9b614159b58dae39d27957365cd7563f9d80c5089225a0c8a46508172abcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.06.3-git` - linux; amd64

```console
$ docker pull docker@sha256:8c69a0197c8844fdda1e4a76200eb8b38027b8b3310d3f0568135cee678c3e5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e2f57289de8ad9fd9032b6064c8d2681ee0822ae2651aa2096999017d66db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:35 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90128a55c9ebaa80d703e1086a9e3d1f09600a1ec2ef19931a7064f5543ce47`  
		Last Modified: Thu, 28 Feb 2019 01:22:27 GMT  
		Size: 9.3 MB (9270694 bytes)  
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

### `docker:18.06.3-git` - linux; s390x

```console
$ docker pull docker@sha256:97990cc15093de93ac2a08a8a810b9fcb8b4ffcffbf988c79f625476a587d1c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55471938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b37f9c778ee5d708b47659b35673edb1edeb37f743675e1579d30319ca2f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51870438dda96a0a12325428640f8ce37cfddb5c2b1290c9238a9f02f78cf4f`  
		Last Modified: Fri, 22 Feb 2019 12:42:33 GMT  
		Size: 8.9 MB (8866943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-dind`

```console
$ docker pull docker@sha256:5db65aa56da81c730d5601e947caf7573325cb6be78adfeaf72bf5807397f650
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
$ docker pull docker@sha256:4c6b6f6e713182bed3dfaa6d12d1278f05b9d8252ac3189bf36f2dccaaf13bb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa15212fdb7ac9f3ee7d4852e76d594e5f4284371a0219a1568a34edc3e82a4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:27 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:29 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:29 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:29 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:30 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae54b4cc2fa5b27fb8399e192ee429d04a8a73b0165829f29f5b0628d35924d`  
		Last Modified: Thu, 28 Feb 2019 01:22:19 GMT  
		Size: 4.8 MB (4769837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ae3900cbbda5ee4f88de5c4fe58473f9a88a3101d633c7f89eb89809e87a0e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecedfbd5295fb968a292371da64531c9e976fd25ecd2588ba2c1a3ed624b1db9`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a11d374dc9be69cd98ebe191b934545ae94c1c424d32b758e855721810c1b9e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
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

### `docker:18.06-dind` - linux; s390x

```console
$ docker pull docker@sha256:ec1b1dfe60c3085088a6bbd52a2fc58ae1d27bc2688c18ae9b860b48e7f78107
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51421623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590082c846c1d95e77f8c6e2a237957b3cd4831e0ea44276f39dfa98783506fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 12:41:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 12:41:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 12:41:47 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 12:41:47 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:47 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 12:41:48 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 12:41:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:48 GMT
CMD []
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c778b7d4f332d5d57e43cc7b34eaaf084e118d1b5f27e3783afaba0673283c34`  
		Last Modified: Fri, 22 Feb 2019 12:42:23 GMT  
		Size: 4.8 MB (4814032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9637fbfbc8848c2992109f719f5ab5e79ea8f739da554184de8828ea6b1fde3a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa172289a85b53f47ccc3cd3b291cee83fabb7fdf54b21be8d8fccef0c220b7`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c468198d71728166d8982ee60159f5a801dc1e519462f94754c5d9f447296a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-git`

```console
$ docker pull docker@sha256:a0b9b614159b58dae39d27957365cd7563f9d80c5089225a0c8a46508172abcf
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
$ docker pull docker@sha256:8c69a0197c8844fdda1e4a76200eb8b38027b8b3310d3f0568135cee678c3e5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e2f57289de8ad9fd9032b6064c8d2681ee0822ae2651aa2096999017d66db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:35 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90128a55c9ebaa80d703e1086a9e3d1f09600a1ec2ef19931a7064f5543ce47`  
		Last Modified: Thu, 28 Feb 2019 01:22:27 GMT  
		Size: 9.3 MB (9270694 bytes)  
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

### `docker:18.06-git` - linux; s390x

```console
$ docker pull docker@sha256:97990cc15093de93ac2a08a8a810b9fcb8b4ffcffbf988c79f625476a587d1c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55471938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b37f9c778ee5d708b47659b35673edb1edeb37f743675e1579d30319ca2f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51870438dda96a0a12325428640f8ce37cfddb5c2b1290c9238a9f02f78cf4f`  
		Last Modified: Fri, 22 Feb 2019 12:42:33 GMT  
		Size: 8.9 MB (8866943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09`

```console
$ docker pull docker@sha256:9ce0d52f26fff88ea8e13a80b4728e466778ea8c7a1345a8c004a56a06ec06ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:838d8d8dc9671860979d01b73a4a7d3c03a7434f02f1a92532d971c0e6bdba01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51548163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8044a7b7add769b39576a54824f4d0dcc0563b5c0ae1e5fb0927e847ad8c0d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
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
$ docker pull docker@sha256:9ce0d52f26fff88ea8e13a80b4728e466778ea8c7a1345a8c004a56a06ec06ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.2` - linux; amd64

```console
$ docker pull docker@sha256:838d8d8dc9671860979d01b73a4a7d3c03a7434f02f1a92532d971c0e6bdba01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51548163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8044a7b7add769b39576a54824f4d0dcc0563b5c0ae1e5fb0927e847ad8c0d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
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
$ docker pull docker@sha256:7c14df64c45d57aa2e828f05af600fff2ef850774513c6f2b592f122c7ebc5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:c924454d3ab7d62b0f3a01b33a4d07459ef074685940b9b52f46ae01ce064c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56320575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3243570821da492f8b1326745c97ef568c4a6ae2785f6cde2b6d8bc7afdb2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:02 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:04 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:04 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:04 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf8271b5d3fbb07ff2b22b367dc664be6d9cdc498003470fd8af86492aaec3f`  
		Last Modified: Thu, 28 Feb 2019 01:21:48 GMT  
		Size: 4.8 MB (4769797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec495682b2b3c9b17ce31de098fa1b7153484d3fc199c75fbafcd0ebb307e42`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d09f7a9f69f939d901906080f4b8215d6778a9fb6e58813e348a3313e407b`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c4b73f493dbea5a5efe5d27e1a15447231114f8b231244765689bca915ad0`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:4fc0d545d17a5bdb7b35bc2793bdf4aadb67135160667dd5fbe91233512c1708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.2-git` - linux; amd64

```console
$ docker pull docker@sha256:2f4555d6884d605dcff7e3deb152d971b416ce5dc48ffc8d8e23f4f931741d3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60818855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb07723b61d71f25a620de2be6972d1b4c414d6e5933d30a8a0a0a0c99647d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a116a7c9f337005d3dc7bd4d4192e7074dde5d7dcddc1986a524dcc7e2290`  
		Last Modified: Thu, 28 Feb 2019 01:21:56 GMT  
		Size: 9.3 MB (9270692 bytes)  
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

## `docker:18.09.3-rc1`

```console
$ docker pull docker@sha256:365afde9ed23e228a81636974000a74dce451661dbef73527d05cd571199b9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09.3-rc1` - linux; amd64

```console
$ docker pull docker@sha256:2f8de8ac55d64c010b79d4fb15681c011e906e8b2a86439d996879c227fe6e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51575438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956a9d995ed50cd99c26e1b816cbd6820dfb7f9340d61b9c42edb2bc18c2f72e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-rc1-dind`

```console
$ docker pull docker@sha256:bbe2946bc2e2d6a7c15ee6d9d0c98a35dd6d3fe2ae0377a296e8bdee28c307e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09.3-rc1-dind` - linux; amd64

```console
$ docker pull docker@sha256:4b73ad4ded8a2a4edf0d04dce9e747f7bf413babae1f14de3bcb9f6d4fc1a5d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56347843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec4e5671a9e894ba2777fb25a06229f88c50d0395d8e6b21affe76e26ec02f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:19:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:19:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:19:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:19:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:41 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:19:41 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:19:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:41 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa392efefd5f9959a7fb90e0cb4e02fd117761fb479ce6af40df661c16f0937`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 4.8 MB (4769795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9357d4330d5474d9f5f6f2f1c45eeb8a6f1abf4d2df97f5cd858b99d41f87e84`  
		Last Modified: Thu, 28 Feb 2019 01:21:15 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e479901bf722e3ce75f443672f71f74df646917447ccf0cfa5457f1c28fe0dcc`  
		Last Modified: Thu, 28 Feb 2019 01:21:14 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26102a54ef1284ca4cfafd03bcb620a6711a599a2f5b949299b5ecd50d7d777`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-rc1-git`

```console
$ docker pull docker@sha256:cfb414e2f025faab986e755d1d8922514501fb7ddde4c3798eeb6ecb5e203003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09.3-rc1-git` - linux; amd64

```console
$ docker pull docker@sha256:64889d4510520140d96e3e43e0c8108d560a90fb08a0c1f99b1dd68309838c5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60846104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6593a28fb4f5b41ffbe24b1f53038547278a57e13fee7ce7e913bc63e43db6f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af47f009a810386e049dc2fb837b8469c3537238b07c48f5e1df817233770a9`  
		Last Modified: Thu, 28 Feb 2019 01:21:24 GMT  
		Size: 9.3 MB (9270666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:7c14df64c45d57aa2e828f05af600fff2ef850774513c6f2b592f122c7ebc5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:c924454d3ab7d62b0f3a01b33a4d07459ef074685940b9b52f46ae01ce064c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56320575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3243570821da492f8b1326745c97ef568c4a6ae2785f6cde2b6d8bc7afdb2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:02 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:04 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:04 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:04 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf8271b5d3fbb07ff2b22b367dc664be6d9cdc498003470fd8af86492aaec3f`  
		Last Modified: Thu, 28 Feb 2019 01:21:48 GMT  
		Size: 4.8 MB (4769797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec495682b2b3c9b17ce31de098fa1b7153484d3fc199c75fbafcd0ebb307e42`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d09f7a9f69f939d901906080f4b8215d6778a9fb6e58813e348a3313e407b`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c4b73f493dbea5a5efe5d27e1a15447231114f8b231244765689bca915ad0`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:4fc0d545d17a5bdb7b35bc2793bdf4aadb67135160667dd5fbe91233512c1708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:2f4555d6884d605dcff7e3deb152d971b416ce5dc48ffc8d8e23f4f931741d3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60818855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb07723b61d71f25a620de2be6972d1b4c414d6e5933d30a8a0a0a0c99647d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a116a7c9f337005d3dc7bd4d4192e7074dde5d7dcddc1986a524dcc7e2290`  
		Last Modified: Thu, 28 Feb 2019 01:21:56 GMT  
		Size: 9.3 MB (9270692 bytes)  
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

## `docker:18.09-rc`

```console
$ docker pull docker@sha256:365afde9ed23e228a81636974000a74dce451661dbef73527d05cd571199b9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09-rc` - linux; amd64

```console
$ docker pull docker@sha256:2f8de8ac55d64c010b79d4fb15681c011e906e8b2a86439d996879c227fe6e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51575438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956a9d995ed50cd99c26e1b816cbd6820dfb7f9340d61b9c42edb2bc18c2f72e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-dind`

```console
$ docker pull docker@sha256:bbe2946bc2e2d6a7c15ee6d9d0c98a35dd6d3fe2ae0377a296e8bdee28c307e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:4b73ad4ded8a2a4edf0d04dce9e747f7bf413babae1f14de3bcb9f6d4fc1a5d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56347843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec4e5671a9e894ba2777fb25a06229f88c50d0395d8e6b21affe76e26ec02f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:19:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:19:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:19:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:19:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:41 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:19:41 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:19:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:41 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa392efefd5f9959a7fb90e0cb4e02fd117761fb479ce6af40df661c16f0937`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 4.8 MB (4769795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9357d4330d5474d9f5f6f2f1c45eeb8a6f1abf4d2df97f5cd858b99d41f87e84`  
		Last Modified: Thu, 28 Feb 2019 01:21:15 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e479901bf722e3ce75f443672f71f74df646917447ccf0cfa5457f1c28fe0dcc`  
		Last Modified: Thu, 28 Feb 2019 01:21:14 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26102a54ef1284ca4cfafd03bcb620a6711a599a2f5b949299b5ecd50d7d777`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-git`

```console
$ docker pull docker@sha256:cfb414e2f025faab986e755d1d8922514501fb7ddde4c3798eeb6ecb5e203003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:64889d4510520140d96e3e43e0c8108d560a90fb08a0c1f99b1dd68309838c5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60846104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6593a28fb4f5b41ffbe24b1f53038547278a57e13fee7ce7e913bc63e43db6f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af47f009a810386e049dc2fb837b8469c3537238b07c48f5e1df817233770a9`  
		Last Modified: Thu, 28 Feb 2019 01:21:24 GMT  
		Size: 9.3 MB (9270666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:7c14df64c45d57aa2e828f05af600fff2ef850774513c6f2b592f122c7ebc5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:c924454d3ab7d62b0f3a01b33a4d07459ef074685940b9b52f46ae01ce064c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56320575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3243570821da492f8b1326745c97ef568c4a6ae2785f6cde2b6d8bc7afdb2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:02 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:04 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:04 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:04 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf8271b5d3fbb07ff2b22b367dc664be6d9cdc498003470fd8af86492aaec3f`  
		Last Modified: Thu, 28 Feb 2019 01:21:48 GMT  
		Size: 4.8 MB (4769797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec495682b2b3c9b17ce31de098fa1b7153484d3fc199c75fbafcd0ebb307e42`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d09f7a9f69f939d901906080f4b8215d6778a9fb6e58813e348a3313e407b`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c4b73f493dbea5a5efe5d27e1a15447231114f8b231244765689bca915ad0`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:4fc0d545d17a5bdb7b35bc2793bdf4aadb67135160667dd5fbe91233512c1708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:2f4555d6884d605dcff7e3deb152d971b416ce5dc48ffc8d8e23f4f931741d3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60818855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb07723b61d71f25a620de2be6972d1b4c414d6e5933d30a8a0a0a0c99647d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a116a7c9f337005d3dc7bd4d4192e7074dde5d7dcddc1986a524dcc7e2290`  
		Last Modified: Thu, 28 Feb 2019 01:21:56 GMT  
		Size: 9.3 MB (9270692 bytes)  
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
$ docker pull docker@sha256:7c14df64c45d57aa2e828f05af600fff2ef850774513c6f2b592f122c7ebc5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:c924454d3ab7d62b0f3a01b33a4d07459ef074685940b9b52f46ae01ce064c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56320575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3243570821da492f8b1326745c97ef568c4a6ae2785f6cde2b6d8bc7afdb2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:02 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:04 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:04 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:04 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf8271b5d3fbb07ff2b22b367dc664be6d9cdc498003470fd8af86492aaec3f`  
		Last Modified: Thu, 28 Feb 2019 01:21:48 GMT  
		Size: 4.8 MB (4769797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec495682b2b3c9b17ce31de098fa1b7153484d3fc199c75fbafcd0ebb307e42`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d09f7a9f69f939d901906080f4b8215d6778a9fb6e58813e348a3313e407b`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c4b73f493dbea5a5efe5d27e1a15447231114f8b231244765689bca915ad0`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:13679d48cc340f1930dec762ca3b38906e0997c8f19735c7c7032c6338aab809
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
$ docker pull docker@sha256:07552688ab74cc2070f6cefdc467ddfc94e3cab82773fc78752b5a6bae8398c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7a9d046d96c00d6cbeddef80fce011ded63351ea1faa01ab8ca34067f29ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
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

### `docker:edge` - linux; s390x

```console
$ docker pull docker@sha256:a7662c6750a3386f00ef75b1edbd725d0ed14c78fb63ac27d28b58ce5ec281e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf5afd44e8c06ff3bfe90bf15f25274c6a413e1e11122b3bd0c522a4941d064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:5db65aa56da81c730d5601e947caf7573325cb6be78adfeaf72bf5807397f650
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
$ docker pull docker@sha256:4c6b6f6e713182bed3dfaa6d12d1278f05b9d8252ac3189bf36f2dccaaf13bb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa15212fdb7ac9f3ee7d4852e76d594e5f4284371a0219a1568a34edc3e82a4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:27 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:29 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:29 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:29 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:30 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae54b4cc2fa5b27fb8399e192ee429d04a8a73b0165829f29f5b0628d35924d`  
		Last Modified: Thu, 28 Feb 2019 01:22:19 GMT  
		Size: 4.8 MB (4769837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ae3900cbbda5ee4f88de5c4fe58473f9a88a3101d633c7f89eb89809e87a0e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecedfbd5295fb968a292371da64531c9e976fd25ecd2588ba2c1a3ed624b1db9`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a11d374dc9be69cd98ebe191b934545ae94c1c424d32b758e855721810c1b9e`  
		Last Modified: Thu, 28 Feb 2019 01:22:18 GMT  
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

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:ec1b1dfe60c3085088a6bbd52a2fc58ae1d27bc2688c18ae9b860b48e7f78107
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51421623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590082c846c1d95e77f8c6e2a237957b3cd4831e0ea44276f39dfa98783506fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Feb 2019 12:41:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Feb 2019 12:41:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Feb 2019 12:41:47 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Feb 2019 12:41:47 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:47 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Feb 2019 12:41:48 GMT
EXPOSE 2375
# Fri, 22 Feb 2019 12:41:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:48 GMT
CMD []
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c778b7d4f332d5d57e43cc7b34eaaf084e118d1b5f27e3783afaba0673283c34`  
		Last Modified: Fri, 22 Feb 2019 12:42:23 GMT  
		Size: 4.8 MB (4814032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9637fbfbc8848c2992109f719f5ab5e79ea8f739da554184de8828ea6b1fde3a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa172289a85b53f47ccc3cd3b291cee83fabb7fdf54b21be8d8fccef0c220b7`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c468198d71728166d8982ee60159f5a801dc1e519462f94754c5d9f447296a`  
		Last Modified: Fri, 22 Feb 2019 12:42:22 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:a0b9b614159b58dae39d27957365cd7563f9d80c5089225a0c8a46508172abcf
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
$ docker pull docker@sha256:8c69a0197c8844fdda1e4a76200eb8b38027b8b3310d3f0568135cee678c3e5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e2f57289de8ad9fd9032b6064c8d2681ee0822ae2651aa2096999017d66db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:20:15 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 01:20:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:20:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:22 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:35 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfec22febff8bc4272099e3732d5b6d01e763dd01d1d1653896564b19ab6295`  
		Last Modified: Thu, 28 Feb 2019 01:22:13 GMT  
		Size: 44.3 MB (44317337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e1fca41ad46f85682036388cb40ebebe7291b6e4bee22fc93bab487edfeff`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9649f8a6fdb8d3484d9f044c04ad7ec4c35fd937129ca47e6b76619181bff4`  
		Last Modified: Thu, 28 Feb 2019 01:22:02 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90128a55c9ebaa80d703e1086a9e3d1f09600a1ec2ef19931a7064f5543ce47`  
		Last Modified: Thu, 28 Feb 2019 01:22:27 GMT  
		Size: 9.3 MB (9270694 bytes)  
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

### `docker:edge-git` - linux; s390x

```console
$ docker pull docker@sha256:97990cc15093de93ac2a08a8a810b9fcb8b4ffcffbf988c79f625476a587d1c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55471938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b37f9c778ee5d708b47659b35673edb1edeb37f743675e1579d30319ca2f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 14:36:43 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 12:41:34 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 12:41:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 12:41:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 12:41:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:41:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:41:40 GMT
CMD ["sh"]
# Fri, 22 Feb 2019 12:41:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d57666f9fcf7430d00313038d62a822af9b5e501c6467bcb9e737106bceb0e`  
		Last Modified: Fri, 22 Feb 2019 12:42:14 GMT  
		Size: 44.0 MB (43985958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a463f5e4d872a030bb2d1843adcd28402f320fff6c387dfdba7a375fe2e5d9`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad64abf62557b54688bb2a9ca3b0b006d23d127358eadfb18bd85eff9f72066`  
		Last Modified: Fri, 22 Feb 2019 12:42:03 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51870438dda96a0a12325428640f8ce37cfddb5c2b1290c9238a9f02f78cf4f`  
		Last Modified: Fri, 22 Feb 2019 12:42:33 GMT  
		Size: 8.9 MB (8866943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:4fc0d545d17a5bdb7b35bc2793bdf4aadb67135160667dd5fbe91233512c1708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:2f4555d6884d605dcff7e3deb152d971b416ce5dc48ffc8d8e23f4f931741d3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60818855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb07723b61d71f25a620de2be6972d1b4c414d6e5933d30a8a0a0a0c99647d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a116a7c9f337005d3dc7bd4d4192e7074dde5d7dcddc1986a524dcc7e2290`  
		Last Modified: Thu, 28 Feb 2019 01:21:56 GMT  
		Size: 9.3 MB (9270692 bytes)  
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
$ docker pull docker@sha256:9ce0d52f26fff88ea8e13a80b4728e466778ea8c7a1345a8c004a56a06ec06ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:838d8d8dc9671860979d01b73a4a7d3c03a7434f02f1a92532d971c0e6bdba01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51548163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8044a7b7add769b39576a54824f4d0dcc0563b5c0ae1e5fb0927e847ad8c0d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
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

## `docker:rc`

```console
$ docker pull docker@sha256:365afde9ed23e228a81636974000a74dce451661dbef73527d05cd571199b9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:2f8de8ac55d64c010b79d4fb15681c011e906e8b2a86439d996879c227fe6e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51575438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956a9d995ed50cd99c26e1b816cbd6820dfb7f9340d61b9c42edb2bc18c2f72e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:bbe2946bc2e2d6a7c15ee6d9d0c98a35dd6d3fe2ae0377a296e8bdee28c307e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:4b73ad4ded8a2a4edf0d04dce9e747f7bf413babae1f14de3bcb9f6d4fc1a5d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56347843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec4e5671a9e894ba2777fb25a06229f88c50d0395d8e6b21affe76e26ec02f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:19:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:19:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:19:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:19:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:41 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:19:41 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:19:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:41 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa392efefd5f9959a7fb90e0cb4e02fd117761fb479ce6af40df661c16f0937`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 4.8 MB (4769795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9357d4330d5474d9f5f6f2f1c45eeb8a6f1abf4d2df97f5cd858b99d41f87e84`  
		Last Modified: Thu, 28 Feb 2019 01:21:15 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e479901bf722e3ce75f443672f71f74df646917447ccf0cfa5457f1c28fe0dcc`  
		Last Modified: Thu, 28 Feb 2019 01:21:14 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26102a54ef1284ca4cfafd03bcb620a6711a599a2f5b949299b5ecd50d7d777`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:cfb414e2f025faab986e755d1d8922514501fb7ddde4c3798eeb6ecb5e203003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:64889d4510520140d96e3e43e0c8108d560a90fb08a0c1f99b1dd68309838c5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60846104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6593a28fb4f5b41ffbe24b1f53038547278a57e13fee7ce7e913bc63e43db6f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af47f009a810386e049dc2fb837b8469c3537238b07c48f5e1df817233770a9`  
		Last Modified: Thu, 28 Feb 2019 01:21:24 GMT  
		Size: 9.3 MB (9270666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:9ce0d52f26fff88ea8e13a80b4728e466778ea8c7a1345a8c004a56a06ec06ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:838d8d8dc9671860979d01b73a4a7d3c03a7434f02f1a92532d971c0e6bdba01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51548163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8044a7b7add769b39576a54824f4d0dcc0563b5c0ae1e5fb0927e847ad8c0d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
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
$ docker pull docker@sha256:7c14df64c45d57aa2e828f05af600fff2ef850774513c6f2b592f122c7ebc5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:c924454d3ab7d62b0f3a01b33a4d07459ef074685940b9b52f46ae01ce064c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56320575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3243570821da492f8b1326745c97ef568c4a6ae2785f6cde2b6d8bc7afdb2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:02 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:04 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:04 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:04 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf8271b5d3fbb07ff2b22b367dc664be6d9cdc498003470fd8af86492aaec3f`  
		Last Modified: Thu, 28 Feb 2019 01:21:48 GMT  
		Size: 4.8 MB (4769797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec495682b2b3c9b17ce31de098fa1b7153484d3fc199c75fbafcd0ebb307e42`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d09f7a9f69f939d901906080f4b8215d6778a9fb6e58813e348a3313e407b`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c4b73f493dbea5a5efe5d27e1a15447231114f8b231244765689bca915ad0`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:4fc0d545d17a5bdb7b35bc2793bdf4aadb67135160667dd5fbe91233512c1708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:2f4555d6884d605dcff7e3deb152d971b416ce5dc48ffc8d8e23f4f931741d3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60818855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb07723b61d71f25a620de2be6972d1b4c414d6e5933d30a8a0a0a0c99647d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2a116a7c9f337005d3dc7bd4d4192e7074dde5d7dcddc1986a524dcc7e2290`  
		Last Modified: Thu, 28 Feb 2019 01:21:56 GMT  
		Size: 9.3 MB (9270692 bytes)  
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
$ docker pull docker@sha256:365afde9ed23e228a81636974000a74dce451661dbef73527d05cd571199b9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:2f8de8ac55d64c010b79d4fb15681c011e906e8b2a86439d996879c227fe6e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51575438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956a9d995ed50cd99c26e1b816cbd6820dfb7f9340d61b9c42edb2bc18c2f72e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:bbe2946bc2e2d6a7c15ee6d9d0c98a35dd6d3fe2ae0377a296e8bdee28c307e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:4b73ad4ded8a2a4edf0d04dce9e747f7bf413babae1f14de3bcb9f6d4fc1a5d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56347843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec4e5671a9e894ba2777fb25a06229f88c50d0395d8e6b21affe76e26ec02f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:19:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:19:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:19:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:19:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:41 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:19:41 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:19:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:41 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa392efefd5f9959a7fb90e0cb4e02fd117761fb479ce6af40df661c16f0937`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 4.8 MB (4769795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9357d4330d5474d9f5f6f2f1c45eeb8a6f1abf4d2df97f5cd858b99d41f87e84`  
		Last Modified: Thu, 28 Feb 2019 01:21:15 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e479901bf722e3ce75f443672f71f74df646917447ccf0cfa5457f1c28fe0dcc`  
		Last Modified: Thu, 28 Feb 2019 01:21:14 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26102a54ef1284ca4cfafd03bcb620a6711a599a2f5b949299b5ecd50d7d777`  
		Last Modified: Thu, 28 Feb 2019 01:21:16 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:cfb414e2f025faab986e755d1d8922514501fb7ddde4c3798eeb6ecb5e203003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:64889d4510520140d96e3e43e0c8108d560a90fb08a0c1f99b1dd68309838c5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60846104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6593a28fb4f5b41ffbe24b1f53038547278a57e13fee7ce7e913bc63e43db6f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af47f009a810386e049dc2fb837b8469c3537238b07c48f5e1df817233770a9`  
		Last Modified: Thu, 28 Feb 2019 01:21:24 GMT  
		Size: 9.3 MB (9270666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
