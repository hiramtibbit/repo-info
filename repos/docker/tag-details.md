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
-	[`docker:18.09`](#docker1809)
-	[`docker:18.09.1`](#docker18091)
-	[`docker:18.09.1-dind`](#docker18091-dind)
-	[`docker:18.09.1-git`](#docker18091-git)
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
$ docker pull docker@sha256:7a51f8295b75e8a115b24de95677a02cc5fbb7e849a0c1f57dd832431f85c1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:a511ffa2fb521da98f51eccb286ff53b7781bcb843ab63c53ca8a7c1632b3b9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51002604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807ae0a9bb114888a6e604c7c3edada6b4318b5c916788e7eea0971903eb3c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:db435913c75de41324b3aeef7a017a1d672576716d07f2afb55ce6df93bb6bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48136232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9f0d98bd5a1764dfbffca7478edbbdda9e6f51f168a295dc68b1646f059ad1`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c5a68b8f55064fd80d987e598339ffc306ffefac0807532f6368c28278c10b28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46020347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6fcf53115770a2c37e59b540bec79296dda17c59c278f7dde8424433271897`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06`

```console
$ docker pull docker@sha256:8fba5df6eced385f138d8efde3b7a159e28abd4d9ab5c0c2d175e86618bd3fb0
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
$ docker pull docker@sha256:d38274a06ba13ad074afb0871c2b8eddfa08a85b9be368a781e5cd1d1e13a87f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a93d6aad879bb0403d61928753cc89001845fa4f6ca4e80a346685253b1b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm variant v6

```console
$ docker pull docker@sha256:7ac8149c74d88b2cba2429d7cf94cecaf5ecf64e4eddeed78d8fd14cac97df8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a36d0e48303d9ed3b637ababbd936a0960e81ca0874eb4373eb3d99b16ea8`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d4db4695eddce956da55401950aa381aae5705bdbbe65cd51f9c9db3be78ff86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43625209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8e682896db6fb1d8c15f2a23bdf480941c70db62d94aac6c6980b700f2122f`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; ppc64le

```console
$ docker pull docker@sha256:cccbdcb23753c851f63ea21006a5aacdc8c5b6861a326575a4059777bf8e1edd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacb0bc95628dfe52200fe13e7d4756ae8a3cfdf67cc030634f3b28004138232`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; s390x

```console
$ docker pull docker@sha256:18721e5ec03080dcea8c33fd5b025efcf2522115067bf9edf92a4386d77cc631
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b66ff8eb95f7d949e41e00c038ffedf8be2f8d9692d4a7dc65556f66eaaf18`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1`

```console
$ docker pull docker@sha256:8fba5df6eced385f138d8efde3b7a159e28abd4d9ab5c0c2d175e86618bd3fb0
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
$ docker pull docker@sha256:d38274a06ba13ad074afb0871c2b8eddfa08a85b9be368a781e5cd1d1e13a87f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a93d6aad879bb0403d61928753cc89001845fa4f6ca4e80a346685253b1b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1` - linux; arm variant v6

```console
$ docker pull docker@sha256:7ac8149c74d88b2cba2429d7cf94cecaf5ecf64e4eddeed78d8fd14cac97df8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a36d0e48303d9ed3b637ababbd936a0960e81ca0874eb4373eb3d99b16ea8`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d4db4695eddce956da55401950aa381aae5705bdbbe65cd51f9c9db3be78ff86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43625209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8e682896db6fb1d8c15f2a23bdf480941c70db62d94aac6c6980b700f2122f`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1` - linux; ppc64le

```console
$ docker pull docker@sha256:cccbdcb23753c851f63ea21006a5aacdc8c5b6861a326575a4059777bf8e1edd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacb0bc95628dfe52200fe13e7d4756ae8a3cfdf67cc030634f3b28004138232`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1` - linux; s390x

```console
$ docker pull docker@sha256:18721e5ec03080dcea8c33fd5b025efcf2522115067bf9edf92a4386d77cc631
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b66ff8eb95f7d949e41e00c038ffedf8be2f8d9692d4a7dc65556f66eaaf18`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-ce`

```console
$ docker pull docker@sha256:8fba5df6eced385f138d8efde3b7a159e28abd4d9ab5c0c2d175e86618bd3fb0
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
$ docker pull docker@sha256:d38274a06ba13ad074afb0871c2b8eddfa08a85b9be368a781e5cd1d1e13a87f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a93d6aad879bb0403d61928753cc89001845fa4f6ca4e80a346685253b1b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce` - linux; arm variant v6

```console
$ docker pull docker@sha256:7ac8149c74d88b2cba2429d7cf94cecaf5ecf64e4eddeed78d8fd14cac97df8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a36d0e48303d9ed3b637ababbd936a0960e81ca0874eb4373eb3d99b16ea8`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d4db4695eddce956da55401950aa381aae5705bdbbe65cd51f9c9db3be78ff86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43625209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8e682896db6fb1d8c15f2a23bdf480941c70db62d94aac6c6980b700f2122f`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:cccbdcb23753c851f63ea21006a5aacdc8c5b6861a326575a4059777bf8e1edd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacb0bc95628dfe52200fe13e7d4756ae8a3cfdf67cc030634f3b28004138232`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce` - linux; s390x

```console
$ docker pull docker@sha256:18721e5ec03080dcea8c33fd5b025efcf2522115067bf9edf92a4386d77cc631
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b66ff8eb95f7d949e41e00c038ffedf8be2f8d9692d4a7dc65556f66eaaf18`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-ce-dind`

```console
$ docker pull docker@sha256:1bf6ce026cf75a7b3a4fcbf0071a77511061ebf6f96c8990eb4a18418a5a3155
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
$ docker pull docker@sha256:32dceb32be27367d0f2baaf83bad03eb3d5e7ca43f0b4bd86286cbd275dd26cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0c1d99442fbd579871332c79b08a7eb381d4aa37b09d60ebb477c3f4deffe9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 01:11:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 01:11:02 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 01:11:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 01:11:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:11:03 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 01:11:03 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 01:11:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 01:11:04 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ed9ff174c810e0de736e4a5d9d636821c66867e52a4581874db25cfb6766a8`  
		Last Modified: Fri, 21 Dec 2018 01:13:01 GMT  
		Size: 4.7 MB (4690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182e7830d5184e6cb856fac75ff47d6aeea3a14204c9f36d68ee0bd4e4b588c9`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360cfcc00161c1f3129a7cf6d315454ea8565abe5f6d7b4c5e4c8f81b0ef98d0`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb22cf10d88a4ddd873e23700d2dc50ea8c3cbc523981c04b302ccebf416373`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:40067c5e752f4a667bf00b9dd1e94292b88bd763bf5690941476faf0baa5a783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48209773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f375b8c640869819be6ca2f856e9d9f8071d1102c3d3ed34cc50ba54c2ad83`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:09 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 09:07:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 09:07:11 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 09:07:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 09:07:13 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:13 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 09:07:13 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 09:07:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:14 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b0f8900dc03f66e2026f84339778af76a16a9d2dbecd5b49a7685e6bfdfc15`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 2.7 MB (2651102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f0a308540e58f126b20e7aaf28b2d2dfe525f49c9c4d0c28555f2288126045`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085a5db37c6f390170392584d92d297e0e041acfb4500cd7a20918e42141e33a`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5b89e86326e44f8906abc29b1f9731e3e659fb21cfe13b39e1432465266d2`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:748fa6dbbd84cde3e8f659af76b0318da237442f62047afa71c59aac0aee013c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47882543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f88ef669ab1dbac0d37dc21023aaf7b60add5038bc034bfb344733f9710bb8`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:02:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 10:02:53 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 10:02:54 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 10:02:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 10:02:57 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:58 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 10:02:59 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 10:03:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 10:03:00 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da385a364e15d11637a340d636c8507df6a8e1bb746627f22074ced182c08121`  
		Last Modified: Fri, 21 Dec 2018 10:06:34 GMT  
		Size: 4.3 MB (4254690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34de623647e153fa5d1f08fedfa057d41e4af34595b4502ea3be6a9b8c03275`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3f80a331646b37d7d67a0450acaeece6d266eda7597478db2e82b8ec7720a`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c65d477deefbd4ea49527caea7ab94e8a5c44339c021ed699be42817d4100ef`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:ab38f6b75329b0bfd934d539dd3d192183e4bc397fa0b10b0057ddc006b2b9a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f869ccd003855b975c8db37743bcfb8c86b7277051971411a9663e837ace5b`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:16:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 12:17:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 12:17:06 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 12:17:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 12:17:15 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:17:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 12:17:21 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 12:17:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 12:17:27 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec03a08ca59146e9a5ce3581a32ebb698e67b3f64c79f2ea707fed4d43a9d77`  
		Last Modified: Fri, 21 Dec 2018 12:18:28 GMT  
		Size: 4.6 MB (4631280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a805c086193b0dcec1664a8738f1b7343d102eaea868cba901c5e4477f7efa8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878de3172cb30e3c472081364bc4274a694048288e0d4f6d944c1ae9c9120b8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa7cf3d91b7d88b9dff7e1e3db8ebcce04c25303bfdaa0cb0ff31be780c344`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:ce8dfc72de3bee3b71c90bec3f226e1c14196f2fed20f84f11b34b4f800cbb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51413097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a692619f3d52d9704605b5e8b2d724174ea1461e637a352b302f17bcd464c`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:14 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 14:37:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 14:37:17 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 14:37:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 14:37:18 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 14:37:18 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 14:37:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:19 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee737550d9bdd6b4a2f05b2f8d542c5bfe4fe2b11cc02e2225ecf43d3a1e3d`  
		Last Modified: Fri, 21 Dec 2018 14:37:55 GMT  
		Size: 4.8 MB (4813375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02866e7441496e1b4ccf4d29483a44cb81986c859c2e2d7e1402d773cfbbed1b`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff42070da0f8b6b8afcd966e9587b31c16fbf9c3d9c7afc48cce519204b850b`  
		Last Modified: Fri, 21 Dec 2018 14:37:54 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa915b5692fdba3a2b7d2ac36f4aa8faf79ce9d3192d8ce52bd2bedd5294fc3`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-ce-git`

```console
$ docker pull docker@sha256:c1d0398e44df1190907386abb93bb1f3ad294846d83504a6d6210833227ad5d1
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
$ docker pull docker@sha256:0027120f598a90d39a99029c3b9984792886de0cffcc2fc765b4ae6d58156d6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55460860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb54fdbdd073b20e8144c94dbb6ae5a8d7d1e81b5b75e589ac8e5a3907a94c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:09 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e77698a2d07391f165d52157c3b78a0b88d895b7d20db2b979b1ff1eca73f`  
		Last Modified: Fri, 21 Dec 2018 01:13:08 GMT  
		Size: 8.6 MB (8628240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:97b5c17c3d39b305ad69838827b30718630a9f1fbb1d931091a4df469e83e09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2090123a3acefcfdf3022876b618f40f05a6432224de02baef8e5dc82df33487`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:20 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f79caf1c526877f3b18bc965f8a4afb04a5fc9b807f15a8feb5fd596d59751`  
		Last Modified: Fri, 21 Dec 2018 09:10:13 GMT  
		Size: 8.2 MB (8181973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cdf40ac73c279fc4c6523376d3904814bc17ea2c8bf9a0d70743be8f71e85369
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51544421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d2f9af13343a8b871ab82833c5eebc898f989688adaf38ae5ff1c22dab6096`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:03:08 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21c1f84e63a73a2f04e844a1cd2cef1907978e2a85c77e69f783946bd32fdab`  
		Last Modified: Fri, 21 Dec 2018 10:06:52 GMT  
		Size: 7.9 MB (7919212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:73f8d28876e41f4b567c3350080af58ff7434878dbe0fb89c78f112c9a997ea0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757213172643ab5550921e333d835f694ee7925bc5cd273ff1aca4ff118f237`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:17:42 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4053b47bcd917c774fdc7a2a4b2adf6104e249f3d96f0c64b3eb685b4de215c9`  
		Last Modified: Fri, 21 Dec 2018 12:18:49 GMT  
		Size: 8.4 MB (8400659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:99f7facc2ab6fc725ce165aa4ec602d850201402174e5a2ed294fc742795eb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55464046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e638ee19a68d842d82a3528951e7ccf1b2caa95f8864612f6fac462bb654d`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:23 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0143133e0abce5937c3e8bbd0dfe4802f652b4c3daa97c41ab118f1005ef48c4`  
		Last Modified: Fri, 21 Dec 2018 14:38:04 GMT  
		Size: 8.9 MB (8866961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-dind`

```console
$ docker pull docker@sha256:1bf6ce026cf75a7b3a4fcbf0071a77511061ebf6f96c8990eb4a18418a5a3155
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
$ docker pull docker@sha256:32dceb32be27367d0f2baaf83bad03eb3d5e7ca43f0b4bd86286cbd275dd26cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0c1d99442fbd579871332c79b08a7eb381d4aa37b09d60ebb477c3f4deffe9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 01:11:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 01:11:02 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 01:11:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 01:11:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:11:03 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 01:11:03 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 01:11:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 01:11:04 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ed9ff174c810e0de736e4a5d9d636821c66867e52a4581874db25cfb6766a8`  
		Last Modified: Fri, 21 Dec 2018 01:13:01 GMT  
		Size: 4.7 MB (4690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182e7830d5184e6cb856fac75ff47d6aeea3a14204c9f36d68ee0bd4e4b588c9`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360cfcc00161c1f3129a7cf6d315454ea8565abe5f6d7b4c5e4c8f81b0ef98d0`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb22cf10d88a4ddd873e23700d2dc50ea8c3cbc523981c04b302ccebf416373`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:40067c5e752f4a667bf00b9dd1e94292b88bd763bf5690941476faf0baa5a783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48209773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f375b8c640869819be6ca2f856e9d9f8071d1102c3d3ed34cc50ba54c2ad83`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:09 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 09:07:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 09:07:11 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 09:07:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 09:07:13 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:13 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 09:07:13 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 09:07:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:14 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b0f8900dc03f66e2026f84339778af76a16a9d2dbecd5b49a7685e6bfdfc15`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 2.7 MB (2651102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f0a308540e58f126b20e7aaf28b2d2dfe525f49c9c4d0c28555f2288126045`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085a5db37c6f390170392584d92d297e0e041acfb4500cd7a20918e42141e33a`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5b89e86326e44f8906abc29b1f9731e3e659fb21cfe13b39e1432465266d2`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:748fa6dbbd84cde3e8f659af76b0318da237442f62047afa71c59aac0aee013c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47882543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f88ef669ab1dbac0d37dc21023aaf7b60add5038bc034bfb344733f9710bb8`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:02:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 10:02:53 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 10:02:54 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 10:02:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 10:02:57 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:58 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 10:02:59 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 10:03:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 10:03:00 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da385a364e15d11637a340d636c8507df6a8e1bb746627f22074ced182c08121`  
		Last Modified: Fri, 21 Dec 2018 10:06:34 GMT  
		Size: 4.3 MB (4254690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34de623647e153fa5d1f08fedfa057d41e4af34595b4502ea3be6a9b8c03275`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3f80a331646b37d7d67a0450acaeece6d266eda7597478db2e82b8ec7720a`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c65d477deefbd4ea49527caea7ab94e8a5c44339c021ed699be42817d4100ef`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:ab38f6b75329b0bfd934d539dd3d192183e4bc397fa0b10b0057ddc006b2b9a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f869ccd003855b975c8db37743bcfb8c86b7277051971411a9663e837ace5b`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:16:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 12:17:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 12:17:06 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 12:17:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 12:17:15 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:17:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 12:17:21 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 12:17:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 12:17:27 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec03a08ca59146e9a5ce3581a32ebb698e67b3f64c79f2ea707fed4d43a9d77`  
		Last Modified: Fri, 21 Dec 2018 12:18:28 GMT  
		Size: 4.6 MB (4631280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a805c086193b0dcec1664a8738f1b7343d102eaea868cba901c5e4477f7efa8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878de3172cb30e3c472081364bc4274a694048288e0d4f6d944c1ae9c9120b8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa7cf3d91b7d88b9dff7e1e3db8ebcce04c25303bfdaa0cb0ff31be780c344`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-dind` - linux; s390x

```console
$ docker pull docker@sha256:ce8dfc72de3bee3b71c90bec3f226e1c14196f2fed20f84f11b34b4f800cbb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51413097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a692619f3d52d9704605b5e8b2d724174ea1461e637a352b302f17bcd464c`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:14 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 14:37:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 14:37:17 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 14:37:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 14:37:18 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 14:37:18 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 14:37:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:19 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee737550d9bdd6b4a2f05b2f8d542c5bfe4fe2b11cc02e2225ecf43d3a1e3d`  
		Last Modified: Fri, 21 Dec 2018 14:37:55 GMT  
		Size: 4.8 MB (4813375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02866e7441496e1b4ccf4d29483a44cb81986c859c2e2d7e1402d773cfbbed1b`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff42070da0f8b6b8afcd966e9587b31c16fbf9c3d9c7afc48cce519204b850b`  
		Last Modified: Fri, 21 Dec 2018 14:37:54 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa915b5692fdba3a2b7d2ac36f4aa8faf79ce9d3192d8ce52bd2bedd5294fc3`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.1-git`

```console
$ docker pull docker@sha256:c1d0398e44df1190907386abb93bb1f3ad294846d83504a6d6210833227ad5d1
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
$ docker pull docker@sha256:0027120f598a90d39a99029c3b9984792886de0cffcc2fc765b4ae6d58156d6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55460860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb54fdbdd073b20e8144c94dbb6ae5a8d7d1e81b5b75e589ac8e5a3907a94c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:09 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e77698a2d07391f165d52157c3b78a0b88d895b7d20db2b979b1ff1eca73f`  
		Last Modified: Fri, 21 Dec 2018 01:13:08 GMT  
		Size: 8.6 MB (8628240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:97b5c17c3d39b305ad69838827b30718630a9f1fbb1d931091a4df469e83e09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2090123a3acefcfdf3022876b618f40f05a6432224de02baef8e5dc82df33487`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:20 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f79caf1c526877f3b18bc965f8a4afb04a5fc9b807f15a8feb5fd596d59751`  
		Last Modified: Fri, 21 Dec 2018 09:10:13 GMT  
		Size: 8.2 MB (8181973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cdf40ac73c279fc4c6523376d3904814bc17ea2c8bf9a0d70743be8f71e85369
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51544421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d2f9af13343a8b871ab82833c5eebc898f989688adaf38ae5ff1c22dab6096`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:03:08 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21c1f84e63a73a2f04e844a1cd2cef1907978e2a85c77e69f783946bd32fdab`  
		Last Modified: Fri, 21 Dec 2018 10:06:52 GMT  
		Size: 7.9 MB (7919212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-git` - linux; ppc64le

```console
$ docker pull docker@sha256:73f8d28876e41f4b567c3350080af58ff7434878dbe0fb89c78f112c9a997ea0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757213172643ab5550921e333d835f694ee7925bc5cd273ff1aca4ff118f237`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:17:42 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4053b47bcd917c774fdc7a2a4b2adf6104e249f3d96f0c64b3eb685b4de215c9`  
		Last Modified: Fri, 21 Dec 2018 12:18:49 GMT  
		Size: 8.4 MB (8400659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.1-git` - linux; s390x

```console
$ docker pull docker@sha256:99f7facc2ab6fc725ce165aa4ec602d850201402174e5a2ed294fc742795eb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55464046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e638ee19a68d842d82a3528951e7ccf1b2caa95f8864612f6fac462bb654d`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:23 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0143133e0abce5937c3e8bbd0dfe4802f652b4c3daa97c41ab118f1005ef48c4`  
		Last Modified: Fri, 21 Dec 2018 14:38:04 GMT  
		Size: 8.9 MB (8866961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-dind`

```console
$ docker pull docker@sha256:1bf6ce026cf75a7b3a4fcbf0071a77511061ebf6f96c8990eb4a18418a5a3155
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
$ docker pull docker@sha256:32dceb32be27367d0f2baaf83bad03eb3d5e7ca43f0b4bd86286cbd275dd26cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0c1d99442fbd579871332c79b08a7eb381d4aa37b09d60ebb477c3f4deffe9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 01:11:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 01:11:02 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 01:11:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 01:11:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:11:03 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 01:11:03 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 01:11:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 01:11:04 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ed9ff174c810e0de736e4a5d9d636821c66867e52a4581874db25cfb6766a8`  
		Last Modified: Fri, 21 Dec 2018 01:13:01 GMT  
		Size: 4.7 MB (4690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182e7830d5184e6cb856fac75ff47d6aeea3a14204c9f36d68ee0bd4e4b588c9`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360cfcc00161c1f3129a7cf6d315454ea8565abe5f6d7b4c5e4c8f81b0ef98d0`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb22cf10d88a4ddd873e23700d2dc50ea8c3cbc523981c04b302ccebf416373`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:40067c5e752f4a667bf00b9dd1e94292b88bd763bf5690941476faf0baa5a783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48209773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f375b8c640869819be6ca2f856e9d9f8071d1102c3d3ed34cc50ba54c2ad83`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:09 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 09:07:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 09:07:11 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 09:07:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 09:07:13 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:13 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 09:07:13 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 09:07:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:14 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b0f8900dc03f66e2026f84339778af76a16a9d2dbecd5b49a7685e6bfdfc15`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 2.7 MB (2651102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f0a308540e58f126b20e7aaf28b2d2dfe525f49c9c4d0c28555f2288126045`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085a5db37c6f390170392584d92d297e0e041acfb4500cd7a20918e42141e33a`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5b89e86326e44f8906abc29b1f9731e3e659fb21cfe13b39e1432465266d2`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:748fa6dbbd84cde3e8f659af76b0318da237442f62047afa71c59aac0aee013c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47882543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f88ef669ab1dbac0d37dc21023aaf7b60add5038bc034bfb344733f9710bb8`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:02:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 10:02:53 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 10:02:54 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 10:02:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 10:02:57 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:58 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 10:02:59 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 10:03:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 10:03:00 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da385a364e15d11637a340d636c8507df6a8e1bb746627f22074ced182c08121`  
		Last Modified: Fri, 21 Dec 2018 10:06:34 GMT  
		Size: 4.3 MB (4254690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34de623647e153fa5d1f08fedfa057d41e4af34595b4502ea3be6a9b8c03275`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3f80a331646b37d7d67a0450acaeece6d266eda7597478db2e82b8ec7720a`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c65d477deefbd4ea49527caea7ab94e8a5c44339c021ed699be42817d4100ef`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:ab38f6b75329b0bfd934d539dd3d192183e4bc397fa0b10b0057ddc006b2b9a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f869ccd003855b975c8db37743bcfb8c86b7277051971411a9663e837ace5b`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:16:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 12:17:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 12:17:06 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 12:17:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 12:17:15 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:17:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 12:17:21 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 12:17:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 12:17:27 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec03a08ca59146e9a5ce3581a32ebb698e67b3f64c79f2ea707fed4d43a9d77`  
		Last Modified: Fri, 21 Dec 2018 12:18:28 GMT  
		Size: 4.6 MB (4631280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a805c086193b0dcec1664a8738f1b7343d102eaea868cba901c5e4477f7efa8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878de3172cb30e3c472081364bc4274a694048288e0d4f6d944c1ae9c9120b8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa7cf3d91b7d88b9dff7e1e3db8ebcce04c25303bfdaa0cb0ff31be780c344`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; s390x

```console
$ docker pull docker@sha256:ce8dfc72de3bee3b71c90bec3f226e1c14196f2fed20f84f11b34b4f800cbb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51413097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a692619f3d52d9704605b5e8b2d724174ea1461e637a352b302f17bcd464c`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:14 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 14:37:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 14:37:17 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 14:37:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 14:37:18 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 14:37:18 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 14:37:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:19 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee737550d9bdd6b4a2f05b2f8d542c5bfe4fe2b11cc02e2225ecf43d3a1e3d`  
		Last Modified: Fri, 21 Dec 2018 14:37:55 GMT  
		Size: 4.8 MB (4813375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02866e7441496e1b4ccf4d29483a44cb81986c859c2e2d7e1402d773cfbbed1b`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff42070da0f8b6b8afcd966e9587b31c16fbf9c3d9c7afc48cce519204b850b`  
		Last Modified: Fri, 21 Dec 2018 14:37:54 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa915b5692fdba3a2b7d2ac36f4aa8faf79ce9d3192d8ce52bd2bedd5294fc3`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-git`

```console
$ docker pull docker@sha256:c1d0398e44df1190907386abb93bb1f3ad294846d83504a6d6210833227ad5d1
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
$ docker pull docker@sha256:0027120f598a90d39a99029c3b9984792886de0cffcc2fc765b4ae6d58156d6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55460860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb54fdbdd073b20e8144c94dbb6ae5a8d7d1e81b5b75e589ac8e5a3907a94c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:09 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e77698a2d07391f165d52157c3b78a0b88d895b7d20db2b979b1ff1eca73f`  
		Last Modified: Fri, 21 Dec 2018 01:13:08 GMT  
		Size: 8.6 MB (8628240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:97b5c17c3d39b305ad69838827b30718630a9f1fbb1d931091a4df469e83e09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2090123a3acefcfdf3022876b618f40f05a6432224de02baef8e5dc82df33487`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:20 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f79caf1c526877f3b18bc965f8a4afb04a5fc9b807f15a8feb5fd596d59751`  
		Last Modified: Fri, 21 Dec 2018 09:10:13 GMT  
		Size: 8.2 MB (8181973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cdf40ac73c279fc4c6523376d3904814bc17ea2c8bf9a0d70743be8f71e85369
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51544421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d2f9af13343a8b871ab82833c5eebc898f989688adaf38ae5ff1c22dab6096`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:03:08 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21c1f84e63a73a2f04e844a1cd2cef1907978e2a85c77e69f783946bd32fdab`  
		Last Modified: Fri, 21 Dec 2018 10:06:52 GMT  
		Size: 7.9 MB (7919212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; ppc64le

```console
$ docker pull docker@sha256:73f8d28876e41f4b567c3350080af58ff7434878dbe0fb89c78f112c9a997ea0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757213172643ab5550921e333d835f694ee7925bc5cd273ff1aca4ff118f237`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:17:42 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4053b47bcd917c774fdc7a2a4b2adf6104e249f3d96f0c64b3eb685b4de215c9`  
		Last Modified: Fri, 21 Dec 2018 12:18:49 GMT  
		Size: 8.4 MB (8400659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; s390x

```console
$ docker pull docker@sha256:99f7facc2ab6fc725ce165aa4ec602d850201402174e5a2ed294fc742795eb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55464046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e638ee19a68d842d82a3528951e7ccf1b2caa95f8864612f6fac462bb654d`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:23 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0143133e0abce5937c3e8bbd0dfe4802f652b4c3daa97c41ab118f1005ef48c4`  
		Last Modified: Fri, 21 Dec 2018 14:38:04 GMT  
		Size: 8.9 MB (8866961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09`

```console
$ docker pull docker@sha256:7a51f8295b75e8a115b24de95677a02cc5fbb7e849a0c1f57dd832431f85c1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:a511ffa2fb521da98f51eccb286ff53b7781bcb843ab63c53ca8a7c1632b3b9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51002604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807ae0a9bb114888a6e604c7c3edada6b4318b5c916788e7eea0971903eb3c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v6

```console
$ docker pull docker@sha256:db435913c75de41324b3aeef7a017a1d672576716d07f2afb55ce6df93bb6bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48136232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9f0d98bd5a1764dfbffca7478edbbdda9e6f51f168a295dc68b1646f059ad1`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c5a68b8f55064fd80d987e598339ffc306ffefac0807532f6368c28278c10b28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46020347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6fcf53115770a2c37e59b540bec79296dda17c59c278f7dde8424433271897`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.1`

```console
$ docker pull docker@sha256:7a51f8295b75e8a115b24de95677a02cc5fbb7e849a0c1f57dd832431f85c1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.1` - linux; amd64

```console
$ docker pull docker@sha256:a511ffa2fb521da98f51eccb286ff53b7781bcb843ab63c53ca8a7c1632b3b9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51002604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807ae0a9bb114888a6e604c7c3edada6b4318b5c916788e7eea0971903eb3c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.1` - linux; arm variant v6

```console
$ docker pull docker@sha256:db435913c75de41324b3aeef7a017a1d672576716d07f2afb55ce6df93bb6bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48136232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9f0d98bd5a1764dfbffca7478edbbdda9e6f51f168a295dc68b1646f059ad1`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c5a68b8f55064fd80d987e598339ffc306ffefac0807532f6368c28278c10b28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46020347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6fcf53115770a2c37e59b540bec79296dda17c59c278f7dde8424433271897`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.1-dind`

```console
$ docker pull docker@sha256:b3daf04c597a24a20451bec6114502cff367151efe51793b1951a628ce640aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.1-dind` - linux; amd64

```console
$ docker pull docker@sha256:f6b9adf14dadcdc59944a5fa41d3c936c9712f3c44c6a2e5a70f34a561cb2b01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55696583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a1fe9503d86a38586f188372238225d802c6b753e7c973c7f1bc2eb3e5a7a9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 00:19:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 00:19:41 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 00:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 00:19:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 00:19:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 00:19:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:43 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a78724140168b1d6b0ab8278910ba046ec1fb7716e3da30617c0535bb49ea`  
		Last Modified: Fri, 11 Jan 2019 00:20:43 GMT  
		Size: 4.7 MB (4691335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19adab9552f147d5db75771e8159888c0ecc1406512ece23c0c97c6eef2a573d`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25582e52fd6ec080750d43a19db6e27dc35320f3dd44e35a01983b358fdc73ce`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711fd77889b76cf0f7f811d3798a6ed5802f1cab4e41c8237409be38cb96163`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91a269c3d517807c3ad7455d2f8dbfc0381ac71225e57cd1c5e8bd5223351fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9bfc5f950965666a4fac130c0b6b27798b1ef3448b6f0940b2c468861c061b`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 08:49:39 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 08:49:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 08:49:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:44 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696a9dfc41dbfac878ddeae60bd3fb27a873d9b69bf5afb9cbd9b4fc89db3b4`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 2.7 MB (2651106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666881d060dc7a7321be335e3d21ab0e198b8b625633bffb47ccfb1e00555785`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321d9601ec5f1a0a88d86748f7b302b48fa4cbc899af69be3d446b8c064bf7e`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3edf29fe105c76445f9dcbe93521ef8d59cf6568620f6dbd16e68e3a000d689`  
		Last Modified: Fri, 11 Jan 2019 08:50:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:499a02b0e5adf6e50209a723fc89dd34172c97839fab248e9c4485c1b08b750a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50278420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5779a91c0fb6dadb983690d6a5d97d81f0560b1fc11b6f57e9512eca32519ad`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 09:39:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 09:40:00 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 09:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 09:40:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:40:03 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 09:40:04 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 09:40:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 09:40:05 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7a9d0bd5a91daa58a4958b250ccb0bd1fa7b5291402d673860412c421658eb`  
		Last Modified: Fri, 11 Jan 2019 09:41:41 GMT  
		Size: 4.3 MB (4255419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e2425b96ee71af0912ae13ec0f1010a6a4ce93f9b62b7a1714e7158579a9a`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c880f6d767e9a63cb0e9c3709a3297351f8e2bc4bf04977c272a349d5e95a9`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a089b5ee50b55602c76f1705c036e6ebf366ce8c90fe7fb6898abcf1641c1`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.1-git`

```console
$ docker pull docker@sha256:05174d5aebaef6af30bab658c303146a85571f96bf8a7a76ee4c9c9a14bd8ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.1-git` - linux; amd64

```console
$ docker pull docker@sha256:099367b2e05a860065b7989f325d9527ce0ffee4b2df7ba743f47f38588c6cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59630848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fc6354da7f27de9f636d3b7fe118309fa269f60341a9b3783f5ca596741b24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425255320dadd927303b66610f010143571c5832e9dc87619ae86d6188673e5a`  
		Last Modified: Fri, 11 Jan 2019 00:20:52 GMT  
		Size: 8.6 MB (8628244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.1-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5fc2bd292e24b9edaf7cf9bbf13c481d1bd667d02a45184411c9ed764ee895d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56318191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043d789deb6d1b8f9eb3f9e0785f259805df33b8e35c1f53b70a54f6f266fb99`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:50 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce73ea0281f57d431dcf299a225e1c998130b7e08975c1a0802019797aa3bbc5`  
		Last Modified: Fri, 11 Jan 2019 08:51:04 GMT  
		Size: 8.2 MB (8181959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.1-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3335fe42bbf21d0cb1fee0474cdd0cab6d21e485e000849342f4f795c8a0dc37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53939587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168524d0b08dacd7cb5be1c35bdb4ee116bae36f0656a1fc51b22873377d797b`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:40:17 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbf1470df51af3f17f6bc0293c3167746c2e33befe67a7f2a3cd9334dfe9231`  
		Last Modified: Fri, 11 Jan 2019 09:42:02 GMT  
		Size: 7.9 MB (7919240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:b3daf04c597a24a20451bec6114502cff367151efe51793b1951a628ce640aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:f6b9adf14dadcdc59944a5fa41d3c936c9712f3c44c6a2e5a70f34a561cb2b01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55696583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a1fe9503d86a38586f188372238225d802c6b753e7c973c7f1bc2eb3e5a7a9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 00:19:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 00:19:41 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 00:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 00:19:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 00:19:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 00:19:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:43 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a78724140168b1d6b0ab8278910ba046ec1fb7716e3da30617c0535bb49ea`  
		Last Modified: Fri, 11 Jan 2019 00:20:43 GMT  
		Size: 4.7 MB (4691335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19adab9552f147d5db75771e8159888c0ecc1406512ece23c0c97c6eef2a573d`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25582e52fd6ec080750d43a19db6e27dc35320f3dd44e35a01983b358fdc73ce`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711fd77889b76cf0f7f811d3798a6ed5802f1cab4e41c8237409be38cb96163`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91a269c3d517807c3ad7455d2f8dbfc0381ac71225e57cd1c5e8bd5223351fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9bfc5f950965666a4fac130c0b6b27798b1ef3448b6f0940b2c468861c061b`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 08:49:39 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 08:49:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 08:49:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:44 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696a9dfc41dbfac878ddeae60bd3fb27a873d9b69bf5afb9cbd9b4fc89db3b4`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 2.7 MB (2651106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666881d060dc7a7321be335e3d21ab0e198b8b625633bffb47ccfb1e00555785`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321d9601ec5f1a0a88d86748f7b302b48fa4cbc899af69be3d446b8c064bf7e`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3edf29fe105c76445f9dcbe93521ef8d59cf6568620f6dbd16e68e3a000d689`  
		Last Modified: Fri, 11 Jan 2019 08:50:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:499a02b0e5adf6e50209a723fc89dd34172c97839fab248e9c4485c1b08b750a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50278420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5779a91c0fb6dadb983690d6a5d97d81f0560b1fc11b6f57e9512eca32519ad`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 09:39:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 09:40:00 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 09:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 09:40:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:40:03 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 09:40:04 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 09:40:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 09:40:05 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7a9d0bd5a91daa58a4958b250ccb0bd1fa7b5291402d673860412c421658eb`  
		Last Modified: Fri, 11 Jan 2019 09:41:41 GMT  
		Size: 4.3 MB (4255419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e2425b96ee71af0912ae13ec0f1010a6a4ce93f9b62b7a1714e7158579a9a`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c880f6d767e9a63cb0e9c3709a3297351f8e2bc4bf04977c272a349d5e95a9`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a089b5ee50b55602c76f1705c036e6ebf366ce8c90fe7fb6898abcf1641c1`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:05174d5aebaef6af30bab658c303146a85571f96bf8a7a76ee4c9c9a14bd8ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:099367b2e05a860065b7989f325d9527ce0ffee4b2df7ba743f47f38588c6cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59630848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fc6354da7f27de9f636d3b7fe118309fa269f60341a9b3783f5ca596741b24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425255320dadd927303b66610f010143571c5832e9dc87619ae86d6188673e5a`  
		Last Modified: Fri, 11 Jan 2019 00:20:52 GMT  
		Size: 8.6 MB (8628244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5fc2bd292e24b9edaf7cf9bbf13c481d1bd667d02a45184411c9ed764ee895d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56318191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043d789deb6d1b8f9eb3f9e0785f259805df33b8e35c1f53b70a54f6f266fb99`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:50 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce73ea0281f57d431dcf299a225e1c998130b7e08975c1a0802019797aa3bbc5`  
		Last Modified: Fri, 11 Jan 2019 08:51:04 GMT  
		Size: 8.2 MB (8181959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3335fe42bbf21d0cb1fee0474cdd0cab6d21e485e000849342f4f795c8a0dc37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53939587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168524d0b08dacd7cb5be1c35bdb4ee116bae36f0656a1fc51b22873377d797b`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:40:17 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbf1470df51af3f17f6bc0293c3167746c2e33befe67a7f2a3cd9334dfe9231`  
		Last Modified: Fri, 11 Jan 2019 09:42:02 GMT  
		Size: 7.9 MB (7919240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:b3daf04c597a24a20451bec6114502cff367151efe51793b1951a628ce640aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:f6b9adf14dadcdc59944a5fa41d3c936c9712f3c44c6a2e5a70f34a561cb2b01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55696583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a1fe9503d86a38586f188372238225d802c6b753e7c973c7f1bc2eb3e5a7a9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 00:19:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 00:19:41 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 00:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 00:19:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 00:19:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 00:19:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:43 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a78724140168b1d6b0ab8278910ba046ec1fb7716e3da30617c0535bb49ea`  
		Last Modified: Fri, 11 Jan 2019 00:20:43 GMT  
		Size: 4.7 MB (4691335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19adab9552f147d5db75771e8159888c0ecc1406512ece23c0c97c6eef2a573d`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25582e52fd6ec080750d43a19db6e27dc35320f3dd44e35a01983b358fdc73ce`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711fd77889b76cf0f7f811d3798a6ed5802f1cab4e41c8237409be38cb96163`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91a269c3d517807c3ad7455d2f8dbfc0381ac71225e57cd1c5e8bd5223351fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9bfc5f950965666a4fac130c0b6b27798b1ef3448b6f0940b2c468861c061b`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 08:49:39 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 08:49:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 08:49:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:44 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696a9dfc41dbfac878ddeae60bd3fb27a873d9b69bf5afb9cbd9b4fc89db3b4`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 2.7 MB (2651106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666881d060dc7a7321be335e3d21ab0e198b8b625633bffb47ccfb1e00555785`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321d9601ec5f1a0a88d86748f7b302b48fa4cbc899af69be3d446b8c064bf7e`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3edf29fe105c76445f9dcbe93521ef8d59cf6568620f6dbd16e68e3a000d689`  
		Last Modified: Fri, 11 Jan 2019 08:50:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:499a02b0e5adf6e50209a723fc89dd34172c97839fab248e9c4485c1b08b750a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50278420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5779a91c0fb6dadb983690d6a5d97d81f0560b1fc11b6f57e9512eca32519ad`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 09:39:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 09:40:00 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 09:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 09:40:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:40:03 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 09:40:04 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 09:40:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 09:40:05 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7a9d0bd5a91daa58a4958b250ccb0bd1fa7b5291402d673860412c421658eb`  
		Last Modified: Fri, 11 Jan 2019 09:41:41 GMT  
		Size: 4.3 MB (4255419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e2425b96ee71af0912ae13ec0f1010a6a4ce93f9b62b7a1714e7158579a9a`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c880f6d767e9a63cb0e9c3709a3297351f8e2bc4bf04977c272a349d5e95a9`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a089b5ee50b55602c76f1705c036e6ebf366ce8c90fe7fb6898abcf1641c1`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:05174d5aebaef6af30bab658c303146a85571f96bf8a7a76ee4c9c9a14bd8ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:099367b2e05a860065b7989f325d9527ce0ffee4b2df7ba743f47f38588c6cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59630848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fc6354da7f27de9f636d3b7fe118309fa269f60341a9b3783f5ca596741b24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425255320dadd927303b66610f010143571c5832e9dc87619ae86d6188673e5a`  
		Last Modified: Fri, 11 Jan 2019 00:20:52 GMT  
		Size: 8.6 MB (8628244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5fc2bd292e24b9edaf7cf9bbf13c481d1bd667d02a45184411c9ed764ee895d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56318191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043d789deb6d1b8f9eb3f9e0785f259805df33b8e35c1f53b70a54f6f266fb99`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:50 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce73ea0281f57d431dcf299a225e1c998130b7e08975c1a0802019797aa3bbc5`  
		Last Modified: Fri, 11 Jan 2019 08:51:04 GMT  
		Size: 8.2 MB (8181959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3335fe42bbf21d0cb1fee0474cdd0cab6d21e485e000849342f4f795c8a0dc37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53939587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168524d0b08dacd7cb5be1c35bdb4ee116bae36f0656a1fc51b22873377d797b`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:40:17 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbf1470df51af3f17f6bc0293c3167746c2e33befe67a7f2a3cd9334dfe9231`  
		Last Modified: Fri, 11 Jan 2019 09:42:02 GMT  
		Size: 7.9 MB (7919240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:b3daf04c597a24a20451bec6114502cff367151efe51793b1951a628ce640aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:f6b9adf14dadcdc59944a5fa41d3c936c9712f3c44c6a2e5a70f34a561cb2b01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55696583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a1fe9503d86a38586f188372238225d802c6b753e7c973c7f1bc2eb3e5a7a9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 00:19:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 00:19:41 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 00:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 00:19:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 00:19:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 00:19:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:43 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a78724140168b1d6b0ab8278910ba046ec1fb7716e3da30617c0535bb49ea`  
		Last Modified: Fri, 11 Jan 2019 00:20:43 GMT  
		Size: 4.7 MB (4691335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19adab9552f147d5db75771e8159888c0ecc1406512ece23c0c97c6eef2a573d`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25582e52fd6ec080750d43a19db6e27dc35320f3dd44e35a01983b358fdc73ce`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711fd77889b76cf0f7f811d3798a6ed5802f1cab4e41c8237409be38cb96163`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91a269c3d517807c3ad7455d2f8dbfc0381ac71225e57cd1c5e8bd5223351fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9bfc5f950965666a4fac130c0b6b27798b1ef3448b6f0940b2c468861c061b`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 08:49:39 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 08:49:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 08:49:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:44 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696a9dfc41dbfac878ddeae60bd3fb27a873d9b69bf5afb9cbd9b4fc89db3b4`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 2.7 MB (2651106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666881d060dc7a7321be335e3d21ab0e198b8b625633bffb47ccfb1e00555785`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321d9601ec5f1a0a88d86748f7b302b48fa4cbc899af69be3d446b8c064bf7e`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3edf29fe105c76445f9dcbe93521ef8d59cf6568620f6dbd16e68e3a000d689`  
		Last Modified: Fri, 11 Jan 2019 08:50:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:499a02b0e5adf6e50209a723fc89dd34172c97839fab248e9c4485c1b08b750a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50278420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5779a91c0fb6dadb983690d6a5d97d81f0560b1fc11b6f57e9512eca32519ad`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 09:39:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 09:40:00 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 09:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 09:40:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:40:03 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 09:40:04 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 09:40:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 09:40:05 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7a9d0bd5a91daa58a4958b250ccb0bd1fa7b5291402d673860412c421658eb`  
		Last Modified: Fri, 11 Jan 2019 09:41:41 GMT  
		Size: 4.3 MB (4255419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e2425b96ee71af0912ae13ec0f1010a6a4ce93f9b62b7a1714e7158579a9a`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c880f6d767e9a63cb0e9c3709a3297351f8e2bc4bf04977c272a349d5e95a9`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a089b5ee50b55602c76f1705c036e6ebf366ce8c90fe7fb6898abcf1641c1`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:8fba5df6eced385f138d8efde3b7a159e28abd4d9ab5c0c2d175e86618bd3fb0
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
$ docker pull docker@sha256:d38274a06ba13ad074afb0871c2b8eddfa08a85b9be368a781e5cd1d1e13a87f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46832620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a93d6aad879bb0403d61928753cc89001845fa4f6ca4e80a346685253b1b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm variant v6

```console
$ docker pull docker@sha256:7ac8149c74d88b2cba2429d7cf94cecaf5ecf64e4eddeed78d8fd14cac97df8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45556000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727a36d0e48303d9ed3b637ababbd936a0960e81ca0874eb4373eb3d99b16ea8`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d4db4695eddce956da55401950aa381aae5705bdbbe65cd51f9c9db3be78ff86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43625209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8e682896db6fb1d8c15f2a23bdf480941c70db62d94aac6c6980b700f2122f`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; ppc64le

```console
$ docker pull docker@sha256:cccbdcb23753c851f63ea21006a5aacdc8c5b6861a326575a4059777bf8e1edd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacb0bc95628dfe52200fe13e7d4756ae8a3cfdf67cc030634f3b28004138232`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; s390x

```console
$ docker pull docker@sha256:18721e5ec03080dcea8c33fd5b025efcf2522115067bf9edf92a4386d77cc631
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46597085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b66ff8eb95f7d949e41e00c038ffedf8be2f8d9692d4a7dc65556f66eaaf18`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:1bf6ce026cf75a7b3a4fcbf0071a77511061ebf6f96c8990eb4a18418a5a3155
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
$ docker pull docker@sha256:32dceb32be27367d0f2baaf83bad03eb3d5e7ca43f0b4bd86286cbd275dd26cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51525556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0c1d99442fbd579871332c79b08a7eb381d4aa37b09d60ebb477c3f4deffe9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 01:11:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 01:11:02 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 01:11:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 01:11:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:11:03 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 01:11:03 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 01:11:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 01:11:04 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ed9ff174c810e0de736e4a5d9d636821c66867e52a4581874db25cfb6766a8`  
		Last Modified: Fri, 21 Dec 2018 01:13:01 GMT  
		Size: 4.7 MB (4690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182e7830d5184e6cb856fac75ff47d6aeea3a14204c9f36d68ee0bd4e4b588c9`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360cfcc00161c1f3129a7cf6d315454ea8565abe5f6d7b4c5e4c8f81b0ef98d0`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb22cf10d88a4ddd873e23700d2dc50ea8c3cbc523981c04b302ccebf416373`  
		Last Modified: Fri, 21 Dec 2018 01:13:00 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:40067c5e752f4a667bf00b9dd1e94292b88bd763bf5690941476faf0baa5a783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48209773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f375b8c640869819be6ca2f856e9d9f8071d1102c3d3ed34cc50ba54c2ad83`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:09 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 09:07:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 09:07:11 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 09:07:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 09:07:13 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:13 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 09:07:13 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 09:07:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:14 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b0f8900dc03f66e2026f84339778af76a16a9d2dbecd5b49a7685e6bfdfc15`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 2.7 MB (2651102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f0a308540e58f126b20e7aaf28b2d2dfe525f49c9c4d0c28555f2288126045`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085a5db37c6f390170392584d92d297e0e041acfb4500cd7a20918e42141e33a`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5b89e86326e44f8906abc29b1f9731e3e659fb21cfe13b39e1432465266d2`  
		Last Modified: Fri, 21 Dec 2018 09:10:00 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:748fa6dbbd84cde3e8f659af76b0318da237442f62047afa71c59aac0aee013c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47882543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f88ef669ab1dbac0d37dc21023aaf7b60add5038bc034bfb344733f9710bb8`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:02:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 10:02:53 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 10:02:54 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 10:02:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 10:02:57 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:58 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 10:02:59 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 10:03:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 10:03:00 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da385a364e15d11637a340d636c8507df6a8e1bb746627f22074ced182c08121`  
		Last Modified: Fri, 21 Dec 2018 10:06:34 GMT  
		Size: 4.3 MB (4254690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34de623647e153fa5d1f08fedfa057d41e4af34595b4502ea3be6a9b8c03275`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3f80a331646b37d7d67a0450acaeece6d266eda7597478db2e82b8ec7720a`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c65d477deefbd4ea49527caea7ab94e8a5c44339c021ed699be42817d4100ef`  
		Last Modified: Fri, 21 Dec 2018 10:06:31 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:ab38f6b75329b0bfd934d539dd3d192183e4bc397fa0b10b0057ddc006b2b9a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f869ccd003855b975c8db37743bcfb8c86b7277051971411a9663e837ace5b`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:16:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 12:17:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 12:17:06 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 12:17:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 12:17:15 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:17:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 12:17:21 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 12:17:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 12:17:27 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec03a08ca59146e9a5ce3581a32ebb698e67b3f64c79f2ea707fed4d43a9d77`  
		Last Modified: Fri, 21 Dec 2018 12:18:28 GMT  
		Size: 4.6 MB (4631280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a805c086193b0dcec1664a8738f1b7343d102eaea868cba901c5e4477f7efa8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878de3172cb30e3c472081364bc4274a694048288e0d4f6d944c1ae9c9120b8`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa7cf3d91b7d88b9dff7e1e3db8ebcce04c25303bfdaa0cb0ff31be780c344`  
		Last Modified: Fri, 21 Dec 2018 12:18:27 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:ce8dfc72de3bee3b71c90bec3f226e1c14196f2fed20f84f11b34b4f800cbb21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51413097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a692619f3d52d9704605b5e8b2d724174ea1461e637a352b302f17bcd464c`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:14 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 14:37:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 14:37:17 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 14:37:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 14:37:18 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:18 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 14:37:18 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 14:37:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:19 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee737550d9bdd6b4a2f05b2f8d542c5bfe4fe2b11cc02e2225ecf43d3a1e3d`  
		Last Modified: Fri, 21 Dec 2018 14:37:55 GMT  
		Size: 4.8 MB (4813375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02866e7441496e1b4ccf4d29483a44cb81986c859c2e2d7e1402d773cfbbed1b`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff42070da0f8b6b8afcd966e9587b31c16fbf9c3d9c7afc48cce519204b850b`  
		Last Modified: Fri, 21 Dec 2018 14:37:54 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa915b5692fdba3a2b7d2ac36f4aa8faf79ce9d3192d8ce52bd2bedd5294fc3`  
		Last Modified: Fri, 21 Dec 2018 14:37:53 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:c1d0398e44df1190907386abb93bb1f3ad294846d83504a6d6210833227ad5d1
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
$ docker pull docker@sha256:0027120f598a90d39a99029c3b9984792886de0cffcc2fc765b4ae6d58156d6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55460860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb54fdbdd073b20e8144c94dbb6ae5a8d7d1e81b5b75e589ac8e5a3907a94c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 21 Dec 2018 01:10:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 01:10:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:57 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:57 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:11:09 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e6f0264741c91f7df0ba7d5a089c6be670691cc748383c6c0db093d75814c`  
		Last Modified: Fri, 21 Dec 2018 01:12:55 GMT  
		Size: 44.3 MB (44315040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d676d630a2523c4f4c64a05f3c73c2b708ff6f48413a27eec8bd57891dd173`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58d0319e2c3129c71f130e314e3a30a11e3f8eb63b84690e4e6d4d98c3f10fd`  
		Last Modified: Fri, 21 Dec 2018 01:12:44 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e77698a2d07391f165d52157c3b78a0b88d895b7d20db2b979b1ff1eca73f`  
		Last Modified: Fri, 21 Dec 2018 01:13:08 GMT  
		Size: 8.6 MB (8628240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:97b5c17c3d39b305ad69838827b30718630a9f1fbb1d931091a4df469e83e09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53737973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2090123a3acefcfdf3022876b618f40f05a6432224de02baef8e5dc82df33487`
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
# Fri, 21 Dec 2018 09:06:52 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 09:07:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:07:02 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:07:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:07:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:07:03 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:07:20 GMT
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
	-	`sha256:262ce502f7dae824512172b37af2fb4f9a7a07e99681cb3f8775b10c65cb6a5c`  
		Last Modified: Fri, 21 Dec 2018 09:09:49 GMT  
		Size: 43.1 MB (43099373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd71e3ed039bf4e1cb820f0ccbce37d632472782e288d9ee888e4451afdf090a`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04380df9fbbf7a2b022141178c2891b9aea85d414bbffcbf99f5fe14c1009977`  
		Last Modified: Fri, 21 Dec 2018 09:09:34 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f79caf1c526877f3b18bc965f8a4afb04a5fc9b807f15a8feb5fd596d59751`  
		Last Modified: Fri, 21 Dec 2018 09:10:13 GMT  
		Size: 8.2 MB (8181973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cdf40ac73c279fc4c6523376d3904814bc17ea2c8bf9a0d70743be8f71e85369
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51544421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d2f9af13343a8b871ab82833c5eebc898f989688adaf38ae5ff1c22dab6096`
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
# Fri, 21 Dec 2018 10:02:31 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 10:02:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 10:02:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:02:44 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 10:03:08 GMT
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
	-	`sha256:2fa322e27459258bd81a230c3c1b0368b4b0b8d93efdbe1395bd635b3b9b7801`  
		Last Modified: Fri, 21 Dec 2018 10:06:18 GMT  
		Size: 41.2 MB (41215074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773685c60f2a96759907dddc37f26a6cd13bf9510712b353ebef0865157cc5e7`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f14cee200d66b8ededdb065b086d6a262cd57eb1d19b8cce288925dd6ee36`  
		Last Modified: Fri, 21 Dec 2018 10:06:00 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21c1f84e63a73a2f04e844a1cd2cef1907978e2a85c77e69f783946bd32fdab`  
		Last Modified: Fri, 21 Dec 2018 10:06:52 GMT  
		Size: 7.9 MB (7919212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; ppc64le

```console
$ docker pull docker@sha256:73f8d28876e41f4b567c3350080af58ff7434878dbe0fb89c78f112c9a997ea0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0757213172643ab5550921e333d835f694ee7925bc5cd273ff1aca4ff118f237`
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
# Fri, 21 Dec 2018 12:16:25 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 12:16:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 12:16:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 12:16:40 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:16:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:16:45 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 12:17:42 GMT
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
	-	`sha256:37b260caabf93dfe72f425c6af43ba6626614a11fd40fbdc034fa4e4b6583dec`  
		Last Modified: Fri, 21 Dec 2018 12:18:09 GMT  
		Size: 40.8 MB (40795930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fa867678db3e08af844539851aa963c46a4420df92c8c7c56f09156d23545`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee766c08a25f89b20338e9f27d11eeb0c0e9487d30ad53cf20d2f5842537fc`  
		Last Modified: Fri, 21 Dec 2018 12:17:59 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4053b47bcd917c774fdc7a2a4b2adf6104e249f3d96f0c64b3eb685b4de215c9`  
		Last Modified: Fri, 21 Dec 2018 12:18:49 GMT  
		Size: 8.4 MB (8400659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; s390x

```console
$ docker pull docker@sha256:99f7facc2ab6fc725ce165aa4ec602d850201402174e5a2ed294fc742795eb08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55464046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e638ee19a68d842d82a3528951e7ccf1b2caa95f8864612f6fac462bb654d`
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
# Fri, 21 Dec 2018 14:37:01 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Fri, 21 Dec 2018 14:37:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 14:37:06 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 14:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:37:06 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 14:37:23 GMT
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
	-	`sha256:e331296b5855599ec6c332f32a7ee08967babfcb53e3c0984056f4906db5e1b2`  
		Last Modified: Fri, 21 Dec 2018 14:37:47 GMT  
		Size: 44.0 MB (43978053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf720b05220cc08680cef348d95fd233752bcd54baa51ec00a8ee571cf8b1b6c`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060a626d13cd639c7a23a0381e079bd57c5a18a897e7edd584dc8cf5a0979a6`  
		Last Modified: Fri, 21 Dec 2018 14:37:37 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0143133e0abce5937c3e8bbd0dfe4802f652b4c3daa97c41ab118f1005ef48c4`  
		Last Modified: Fri, 21 Dec 2018 14:38:04 GMT  
		Size: 8.9 MB (8866961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:05174d5aebaef6af30bab658c303146a85571f96bf8a7a76ee4c9c9a14bd8ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:099367b2e05a860065b7989f325d9527ce0ffee4b2df7ba743f47f38588c6cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59630848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fc6354da7f27de9f636d3b7fe118309fa269f60341a9b3783f5ca596741b24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425255320dadd927303b66610f010143571c5832e9dc87619ae86d6188673e5a`  
		Last Modified: Fri, 11 Jan 2019 00:20:52 GMT  
		Size: 8.6 MB (8628244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5fc2bd292e24b9edaf7cf9bbf13c481d1bd667d02a45184411c9ed764ee895d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56318191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043d789deb6d1b8f9eb3f9e0785f259805df33b8e35c1f53b70a54f6f266fb99`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:50 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce73ea0281f57d431dcf299a225e1c998130b7e08975c1a0802019797aa3bbc5`  
		Last Modified: Fri, 11 Jan 2019 08:51:04 GMT  
		Size: 8.2 MB (8181959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3335fe42bbf21d0cb1fee0474cdd0cab6d21e485e000849342f4f795c8a0dc37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53939587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168524d0b08dacd7cb5be1c35bdb4ee116bae36f0656a1fc51b22873377d797b`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:40:17 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbf1470df51af3f17f6bc0293c3167746c2e33befe67a7f2a3cd9334dfe9231`  
		Last Modified: Fri, 11 Jan 2019 09:42:02 GMT  
		Size: 7.9 MB (7919240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:7a51f8295b75e8a115b24de95677a02cc5fbb7e849a0c1f57dd832431f85c1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:a511ffa2fb521da98f51eccb286ff53b7781bcb843ab63c53ca8a7c1632b3b9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51002604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807ae0a9bb114888a6e604c7c3edada6b4318b5c916788e7eea0971903eb3c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:db435913c75de41324b3aeef7a017a1d672576716d07f2afb55ce6df93bb6bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48136232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9f0d98bd5a1764dfbffca7478edbbdda9e6f51f168a295dc68b1646f059ad1`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c5a68b8f55064fd80d987e598339ffc306ffefac0807532f6368c28278c10b28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46020347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6fcf53115770a2c37e59b540bec79296dda17c59c278f7dde8424433271897`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:7a51f8295b75e8a115b24de95677a02cc5fbb7e849a0c1f57dd832431f85c1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:a511ffa2fb521da98f51eccb286ff53b7781bcb843ab63c53ca8a7c1632b3b9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51002604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807ae0a9bb114888a6e604c7c3edada6b4318b5c916788e7eea0971903eb3c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:db435913c75de41324b3aeef7a017a1d672576716d07f2afb55ce6df93bb6bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48136232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9f0d98bd5a1764dfbffca7478edbbdda9e6f51f168a295dc68b1646f059ad1`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c5a68b8f55064fd80d987e598339ffc306ffefac0807532f6368c28278c10b28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46020347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6fcf53115770a2c37e59b540bec79296dda17c59c278f7dde8424433271897`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:b3daf04c597a24a20451bec6114502cff367151efe51793b1951a628ce640aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:f6b9adf14dadcdc59944a5fa41d3c936c9712f3c44c6a2e5a70f34a561cb2b01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55696583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a1fe9503d86a38586f188372238225d802c6b753e7c973c7f1bc2eb3e5a7a9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 00:19:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 00:19:41 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 00:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 00:19:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 00:19:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 00:19:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:43 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a78724140168b1d6b0ab8278910ba046ec1fb7716e3da30617c0535bb49ea`  
		Last Modified: Fri, 11 Jan 2019 00:20:43 GMT  
		Size: 4.7 MB (4691335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19adab9552f147d5db75771e8159888c0ecc1406512ece23c0c97c6eef2a573d`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25582e52fd6ec080750d43a19db6e27dc35320f3dd44e35a01983b358fdc73ce`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711fd77889b76cf0f7f811d3798a6ed5802f1cab4e41c8237409be38cb96163`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91a269c3d517807c3ad7455d2f8dbfc0381ac71225e57cd1c5e8bd5223351fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9bfc5f950965666a4fac130c0b6b27798b1ef3448b6f0940b2c468861c061b`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 08:49:39 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 08:49:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 08:49:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:44 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696a9dfc41dbfac878ddeae60bd3fb27a873d9b69bf5afb9cbd9b4fc89db3b4`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 2.7 MB (2651106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666881d060dc7a7321be335e3d21ab0e198b8b625633bffb47ccfb1e00555785`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321d9601ec5f1a0a88d86748f7b302b48fa4cbc899af69be3d446b8c064bf7e`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3edf29fe105c76445f9dcbe93521ef8d59cf6568620f6dbd16e68e3a000d689`  
		Last Modified: Fri, 11 Jan 2019 08:50:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:499a02b0e5adf6e50209a723fc89dd34172c97839fab248e9c4485c1b08b750a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50278420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5779a91c0fb6dadb983690d6a5d97d81f0560b1fc11b6f57e9512eca32519ad`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 09:39:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 09:40:00 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 09:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 09:40:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:40:03 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 09:40:04 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 09:40:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 09:40:05 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7a9d0bd5a91daa58a4958b250ccb0bd1fa7b5291402d673860412c421658eb`  
		Last Modified: Fri, 11 Jan 2019 09:41:41 GMT  
		Size: 4.3 MB (4255419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e2425b96ee71af0912ae13ec0f1010a6a4ce93f9b62b7a1714e7158579a9a`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c880f6d767e9a63cb0e9c3709a3297351f8e2bc4bf04977c272a349d5e95a9`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a089b5ee50b55602c76f1705c036e6ebf366ce8c90fe7fb6898abcf1641c1`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:05174d5aebaef6af30bab658c303146a85571f96bf8a7a76ee4c9c9a14bd8ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:099367b2e05a860065b7989f325d9527ce0ffee4b2df7ba743f47f38588c6cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59630848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fc6354da7f27de9f636d3b7fe118309fa269f60341a9b3783f5ca596741b24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425255320dadd927303b66610f010143571c5832e9dc87619ae86d6188673e5a`  
		Last Modified: Fri, 11 Jan 2019 00:20:52 GMT  
		Size: 8.6 MB (8628244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5fc2bd292e24b9edaf7cf9bbf13c481d1bd667d02a45184411c9ed764ee895d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56318191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043d789deb6d1b8f9eb3f9e0785f259805df33b8e35c1f53b70a54f6f266fb99`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:50 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce73ea0281f57d431dcf299a225e1c998130b7e08975c1a0802019797aa3bbc5`  
		Last Modified: Fri, 11 Jan 2019 08:51:04 GMT  
		Size: 8.2 MB (8181959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3335fe42bbf21d0cb1fee0474cdd0cab6d21e485e000849342f4f795c8a0dc37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53939587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168524d0b08dacd7cb5be1c35bdb4ee116bae36f0656a1fc51b22873377d797b`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:40:17 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbf1470df51af3f17f6bc0293c3167746c2e33befe67a7f2a3cd9334dfe9231`  
		Last Modified: Fri, 11 Jan 2019 09:42:02 GMT  
		Size: 7.9 MB (7919240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:7a51f8295b75e8a115b24de95677a02cc5fbb7e849a0c1f57dd832431f85c1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:a511ffa2fb521da98f51eccb286ff53b7781bcb843ab63c53ca8a7c1632b3b9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51002604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807ae0a9bb114888a6e604c7c3edada6b4318b5c916788e7eea0971903eb3c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:db435913c75de41324b3aeef7a017a1d672576716d07f2afb55ce6df93bb6bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48136232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9f0d98bd5a1764dfbffca7478edbbdda9e6f51f168a295dc68b1646f059ad1`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c5a68b8f55064fd80d987e598339ffc306ffefac0807532f6368c28278c10b28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46020347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6fcf53115770a2c37e59b540bec79296dda17c59c278f7dde8424433271897`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:b3daf04c597a24a20451bec6114502cff367151efe51793b1951a628ce640aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:f6b9adf14dadcdc59944a5fa41d3c936c9712f3c44c6a2e5a70f34a561cb2b01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55696583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a1fe9503d86a38586f188372238225d802c6b753e7c973c7f1bc2eb3e5a7a9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 00:19:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 00:19:41 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 00:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 00:19:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 00:19:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 00:19:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:43 GMT
CMD []
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a78724140168b1d6b0ab8278910ba046ec1fb7716e3da30617c0535bb49ea`  
		Last Modified: Fri, 11 Jan 2019 00:20:43 GMT  
		Size: 4.7 MB (4691335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19adab9552f147d5db75771e8159888c0ecc1406512ece23c0c97c6eef2a573d`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25582e52fd6ec080750d43a19db6e27dc35320f3dd44e35a01983b358fdc73ce`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711fd77889b76cf0f7f811d3798a6ed5802f1cab4e41c8237409be38cb96163`  
		Last Modified: Fri, 11 Jan 2019 00:20:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91a269c3d517807c3ad7455d2f8dbfc0381ac71225e57cd1c5e8bd5223351fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9bfc5f950965666a4fac130c0b6b27798b1ef3448b6f0940b2c468861c061b`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 08:49:39 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 08:49:42 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 08:49:42 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:44 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696a9dfc41dbfac878ddeae60bd3fb27a873d9b69bf5afb9cbd9b4fc89db3b4`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 2.7 MB (2651106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666881d060dc7a7321be335e3d21ab0e198b8b625633bffb47ccfb1e00555785`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c321d9601ec5f1a0a88d86748f7b302b48fa4cbc899af69be3d446b8c064bf7e`  
		Last Modified: Fri, 11 Jan 2019 08:50:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3edf29fe105c76445f9dcbe93521ef8d59cf6568620f6dbd16e68e3a000d689`  
		Last Modified: Fri, 11 Jan 2019 08:50:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:499a02b0e5adf6e50209a723fc89dd34172c97839fab248e9c4485c1b08b750a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50278420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5779a91c0fb6dadb983690d6a5d97d81f0560b1fc11b6f57e9512eca32519ad`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 11 Jan 2019 09:39:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 11 Jan 2019 09:40:00 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 11 Jan 2019 09:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 11 Jan 2019 09:40:03 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:40:03 GMT
VOLUME [/var/lib/docker]
# Fri, 11 Jan 2019 09:40:04 GMT
EXPOSE 2375
# Fri, 11 Jan 2019 09:40:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 11 Jan 2019 09:40:05 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7a9d0bd5a91daa58a4958b250ccb0bd1fa7b5291402d673860412c421658eb`  
		Last Modified: Fri, 11 Jan 2019 09:41:41 GMT  
		Size: 4.3 MB (4255419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25e2425b96ee71af0912ae13ec0f1010a6a4ce93f9b62b7a1714e7158579a9a`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c880f6d767e9a63cb0e9c3709a3297351f8e2bc4bf04977c272a349d5e95a9`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a089b5ee50b55602c76f1705c036e6ebf366ce8c90fe7fb6898abcf1641c1`  
		Last Modified: Fri, 11 Jan 2019 09:41:39 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:05174d5aebaef6af30bab658c303146a85571f96bf8a7a76ee4c9c9a14bd8ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:099367b2e05a860065b7989f325d9527ce0ffee4b2df7ba743f47f38588c6cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59630848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fc6354da7f27de9f636d3b7fe118309fa269f60341a9b3783f5ca596741b24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 01:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 11 Jan 2019 00:19:29 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 00:19:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 00:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:19:35 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 00:19:47 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e273b0dfc4495c47d06ba7dd422674d4a1afeb5e938975c26d4524e8eaa56aa`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 309.1 KB (309123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c3806fd1a59736d7e729f9a40aea3b2511dce11b957e5c3e96f155a185eb3`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993add36f8e5f70e76b8f4fd09401f6a6d7ec04f33fb2193185696588efcad1a`  
		Last Modified: Fri, 11 Jan 2019 00:20:29 GMT  
		Size: 48.5 MB (48485022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51d330bf5ed386b653848664901840303697a9d0010353b2c01d95ecb9c9a1`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974cc9336ccede2043fa4b47abd27add25bc66ef8452a40d4207e0f4a55f1381`  
		Last Modified: Fri, 11 Jan 2019 00:20:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425255320dadd927303b66610f010143571c5832e9dc87619ae86d6188673e5a`  
		Last Modified: Fri, 11 Jan 2019 00:20:52 GMT  
		Size: 8.6 MB (8628244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:5fc2bd292e24b9edaf7cf9bbf13c481d1bd667d02a45184411c9ed764ee895d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56318191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043d789deb6d1b8f9eb3f9e0785f259805df33b8e35c1f53b70a54f6f266fb99`
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
# Fri, 11 Jan 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 08:49:30 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 08:49:50 GMT
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
	-	`sha256:9dd302fcc063554792e6e5c1d064da017dd047f6683470e8b04fb98ff3d581d5`  
		Last Modified: Fri, 11 Jan 2019 08:50:34 GMT  
		Size: 45.7 MB (45679600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b75b7e60f26d95f9b94d411ffa9545d9d4b1cd71cfab28dd80b463b620a089`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358885fd9b86e7c6d72aea2b06adf906522853f5e0bdbd09e5ed692520ba5d1a`  
		Last Modified: Fri, 11 Jan 2019 08:50:19 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce73ea0281f57d431dcf299a225e1c998130b7e08975c1a0802019797aa3bbc5`  
		Last Modified: Fri, 11 Jan 2019 08:51:04 GMT  
		Size: 8.2 MB (8181959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3335fe42bbf21d0cb1fee0474cdd0cab6d21e485e000849342f4f795c8a0dc37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53939587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168524d0b08dacd7cb5be1c35bdb4ee116bae36f0656a1fc51b22873377d797b`
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
# Fri, 11 Jan 2019 09:39:32 GMT
ENV DOCKER_VERSION=18.09.1
# Fri, 11 Jan 2019 09:39:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 11 Jan 2019 09:39:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 11 Jan 2019 09:39:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:39:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:39:46 GMT
CMD ["sh"]
# Fri, 11 Jan 2019 09:40:17 GMT
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
	-	`sha256:2a3fb029b11152385e394d7d43800f8b3d68aa7061cbc0c05d0348e8cb32af4d`  
		Last Modified: Fri, 11 Jan 2019 09:41:22 GMT  
		Size: 43.6 MB (43610213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c879e3dedfba6cff325f54ebfa60be1bbb667563d187f0d3b6b06f84e9382553`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d2e6a6ec05ef33fb965cf23c8742f0d7a87100d5532a2c3cf12e10ad1ab498`  
		Last Modified: Fri, 11 Jan 2019 09:41:04 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbf1470df51af3f17f6bc0293c3167746c2e33befe67a7f2a3cd9334dfe9231`  
		Last Modified: Fri, 11 Jan 2019 09:42:02 GMT  
		Size: 7.9 MB (7919240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
