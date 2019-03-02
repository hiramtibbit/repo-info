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
-	[`docker:18.09.3`](#docker18093)
-	[`docker:18.09.3-dind`](#docker18093-dind)
-	[`docker:18.09.3-git`](#docker18093-git)
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
$ docker pull docker@sha256:75710c661c9768b1952f09be82855cd4c922b692cb18c95cb768917a456469c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:53999870f7ad1b5c47dfd60a0a091642180342cc4c66f41d3dad503902c5bd7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a057b92365258668aa6d0434f87bd367da4393abd0b271212697d45b247597`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:7c517d56681c0fdcd4772dd1a4bb53a87e02cc6a30f968053866c16da1ad15b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48562239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29815233c731570eba49ba1f63339af766eb576e68be118244c6127cc50f7f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e01a6f0ec1d6a07dec2fcb23f0caae5e3b3413e15aa2aa253f4a17dd40e7f313
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c4761432b64a7b39f703cda03250702902eda6c5975e8453cf2f1707646552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06`

```console
$ docker pull docker@sha256:5ef7188aea53544782b1444d475fe8ea76bf89322f3cc582f8f842ff1120cc86
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
$ docker pull docker@sha256:2474bdf203c1ca30f18f46b1c30dd1a678a38ea05a8d36945ef59d9438568ef7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9e19f9165196d97e218798f080a0964dabadf72cc464b82fbb13060668fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3ee33298eccfa8f865c576d711b853a94a3cc795c4154e6f2b44a00d94483106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be45be28480414d8d5ba9dcd21ecfe2240e88d1736376918645cde6c0f50cad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; ppc64le

```console
$ docker pull docker@sha256:f04d7406a58f3da14061720cd20c47e77a87be585e4e8f867e21f6af4bc4157e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350b042d3e235294bfcfc0ebf17e08fadda604dd7ad5647f929d2e5fe6af0a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; s390x

```console
$ docker pull docker@sha256:b5ff14764a7188e6378407359ae53be6df54c4c1ef495edec6fd8d3bee836173
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9ec4e9d86b93f5550dfba345dfe5c2398d1a10fedc027354a8814abd57dfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3`

```console
$ docker pull docker@sha256:5ef7188aea53544782b1444d475fe8ea76bf89322f3cc582f8f842ff1120cc86
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
$ docker pull docker@sha256:2474bdf203c1ca30f18f46b1c30dd1a678a38ea05a8d36945ef59d9438568ef7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9e19f9165196d97e218798f080a0964dabadf72cc464b82fbb13060668fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3ee33298eccfa8f865c576d711b853a94a3cc795c4154e6f2b44a00d94483106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be45be28480414d8d5ba9dcd21ecfe2240e88d1736376918645cde6c0f50cad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; ppc64le

```console
$ docker pull docker@sha256:f04d7406a58f3da14061720cd20c47e77a87be585e4e8f867e21f6af4bc4157e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350b042d3e235294bfcfc0ebf17e08fadda604dd7ad5647f929d2e5fe6af0a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; s390x

```console
$ docker pull docker@sha256:b5ff14764a7188e6378407359ae53be6df54c4c1ef495edec6fd8d3bee836173
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9ec4e9d86b93f5550dfba345dfe5c2398d1a10fedc027354a8814abd57dfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce`

```console
$ docker pull docker@sha256:5ef7188aea53544782b1444d475fe8ea76bf89322f3cc582f8f842ff1120cc86
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
$ docker pull docker@sha256:2474bdf203c1ca30f18f46b1c30dd1a678a38ea05a8d36945ef59d9438568ef7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9e19f9165196d97e218798f080a0964dabadf72cc464b82fbb13060668fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3ee33298eccfa8f865c576d711b853a94a3cc795c4154e6f2b44a00d94483106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be45be28480414d8d5ba9dcd21ecfe2240e88d1736376918645cde6c0f50cad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:f04d7406a58f3da14061720cd20c47e77a87be585e4e8f867e21f6af4bc4157e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350b042d3e235294bfcfc0ebf17e08fadda604dd7ad5647f929d2e5fe6af0a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; s390x

```console
$ docker pull docker@sha256:b5ff14764a7188e6378407359ae53be6df54c4c1ef495edec6fd8d3bee836173
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9ec4e9d86b93f5550dfba345dfe5c2398d1a10fedc027354a8814abd57dfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-dind`

```console
$ docker pull docker@sha256:c2f2ac60b36763690b1b347396e8136e0b428d91f787e797fae8723c97e735f7
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
$ docker pull docker@sha256:3703666080d447fc074c03c47798baaf660528e3f32498bdf1e7ab4b1182bdb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78778626ffdb935e4c288c6f42da06f725a7b280138ff8fbcb78e20d8b3bc49`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:53 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:55 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:55 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:56 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:57 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0833deec7a98a84c13c4f4e1021aa9b63c0a0df761846544edda3ed6545756`  
		Last Modified: Thu, 28 Feb 2019 08:53:34 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdaef69fbcc1cf6a602ffc41303905a146d2c26e3fa56b59670b04815d2500`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19299eed3db7a4131102cfceef43eb2a7139bcc65425d0531aa78570a1feefa4`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24779a7632097943253580845e2451565c7734ca6844ee2fcb287e92296f6aa8`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fda39a1550e39cd75e8ab47aa581ad3a1ea5f7df6da62f521d96f1b535a3f63a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedc8dccad81a0c26a1f475a7f19f97d857de33a764b817f8459d714811e327`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:51 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:52 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:53 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820a50dfaaaf1e836043e83145e6515b39b5db464618ca3d804f774e412bb20`  
		Last Modified: Thu, 28 Feb 2019 09:45:34 GMT  
		Size: 4.8 MB (4809756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcec727709751d55ef9e0f3037b627d732b64d86f83be43a527cf7988e266eff`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7753588a25e5534690d89a9e1b546157f2c719bfb15750c10cf9e4c73c1e738`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b637f13dc81fccb0afd01a3698e2800dd21cb6d811a6ead330496ed39a22f089`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:99b4203cbf86f16bb9e1fc01f4f9be6bfc95e294316b3ba76afc626e11a440f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58679f0a9ecb6bc901236f166f2b3ba9ad5a5982c49bdd11bad81ec2e3ec284`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:19:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:19:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:19:35 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:19:45 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:19:58 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:20:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284597952e64de7e3e030cffe8e052a66570383a5b4acd5308829ccb2e1174a6`  
		Last Modified: Thu, 28 Feb 2019 09:21:27 GMT  
		Size: 5.1 MB (5145103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e503fa44ec8d3a5d09af6aede65bd29fa319d0d270ff0094d6bbd17eef3b17b`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9b5d7b312973ac9441d8c9508e8d42f066bd6aac91feb8d76442a6952e07a0`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405cfb8b1c1570a5f08155a14464bce4493d29912335242098c1e95528d1e64a`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:22055ddcaabb17b1f21a0909630945017d99461ac762b1d34f9535f3d9103a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4bf4677e8ff169cb57bdce0adeaa71cba5d9088e5c299fb8d10b73c255aa1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:41:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 12:41:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 12:41:59 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 12:42:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 12:42:00 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:42:00 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 12:42:00 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 12:42:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 12:42:01 GMT
CMD []
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740fbe77beefe6d9de0899d702c9e008bfed08bab6ee1fc010d998b32b3652c9`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 4.9 MB (4862753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59871e2e00a2d65bcbb54198a43bd8c5d19c11d5d903411e95b2accde7926`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99222c3d245dc17121abc2faea25f2465a5500f5f110621c998757918fd7045e`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338eb0b28e8f833e79df8bc7854f1741514afed4d9b97c3f72ffb52478244957`  
		Last Modified: Thu, 28 Feb 2019 12:42:33 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-git`

```console
$ docker pull docker@sha256:5b3ca5c7a353ca61412e9c960165d83951a44abdf9b20235b5136b0cbc3fc9f0
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
$ docker pull docker@sha256:6aa6298ab0a34f6c6c5fde9bb5cc3d4b4c590e16b984374a2901e50793a27926
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54724217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2253207239616634cf8d5b16273e5964010a42bdb75a353fd02509b44920912`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:51:05 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae792281d5ac8e62932e92732fed8efaeaaae1433f0d483244863914c1017db6`  
		Last Modified: Thu, 28 Feb 2019 08:53:46 GMT  
		Size: 8.8 MB (8766801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7208aac6a08c106736891ab6e6a2f18e58d6f390b7e5ee792a2e27ace8204231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53725950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e485fdc6807421a6f7d6a666310c11827a398bfafd351ee0c45845e5e4dd8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:42:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442cddcefa205062363ee9d571bd7bdb91eba162858b96fdc8a39db1df162873`  
		Last Modified: Thu, 28 Feb 2019 09:45:50 GMT  
		Size: 9.5 MB (9517338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:b4682faf128776b6c10c11ece86eb3f38f6616061d4e5308901e0ce3bb9ca749
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d899ac06bdbb9fdc2bb1f8504d5a5845fab3664da27fc719b6e49fbcb76568`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:20:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d66e4520b1f1c51d9ecd5d4aec5e9f990e63429bf81b496c6562785a6335a8`  
		Last Modified: Thu, 28 Feb 2019 09:21:46 GMT  
		Size: 10.1 MB (10064173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:5ef76a7c33b862d6ec84628594c5d2084dda876fa198cca3635852b94ea179a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cf15f3dc4ab3d0a638f67064e0c6c23426c42ee5cfae0042dda3a150a67bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:42:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d315fa18eeb5c7abae476f5f65e66d8111dd06a3604a761df1a245558caeab`  
		Last Modified: Thu, 28 Feb 2019 12:42:42 GMT  
		Size: 9.4 MB (9398195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-dind`

```console
$ docker pull docker@sha256:c2f2ac60b36763690b1b347396e8136e0b428d91f787e797fae8723c97e735f7
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
$ docker pull docker@sha256:3703666080d447fc074c03c47798baaf660528e3f32498bdf1e7ab4b1182bdb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78778626ffdb935e4c288c6f42da06f725a7b280138ff8fbcb78e20d8b3bc49`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:53 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:55 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:55 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:56 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:57 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0833deec7a98a84c13c4f4e1021aa9b63c0a0df761846544edda3ed6545756`  
		Last Modified: Thu, 28 Feb 2019 08:53:34 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdaef69fbcc1cf6a602ffc41303905a146d2c26e3fa56b59670b04815d2500`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19299eed3db7a4131102cfceef43eb2a7139bcc65425d0531aa78570a1feefa4`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24779a7632097943253580845e2451565c7734ca6844ee2fcb287e92296f6aa8`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fda39a1550e39cd75e8ab47aa581ad3a1ea5f7df6da62f521d96f1b535a3f63a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedc8dccad81a0c26a1f475a7f19f97d857de33a764b817f8459d714811e327`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:51 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:52 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:53 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820a50dfaaaf1e836043e83145e6515b39b5db464618ca3d804f774e412bb20`  
		Last Modified: Thu, 28 Feb 2019 09:45:34 GMT  
		Size: 4.8 MB (4809756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcec727709751d55ef9e0f3037b627d732b64d86f83be43a527cf7988e266eff`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7753588a25e5534690d89a9e1b546157f2c719bfb15750c10cf9e4c73c1e738`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b637f13dc81fccb0afd01a3698e2800dd21cb6d811a6ead330496ed39a22f089`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:99b4203cbf86f16bb9e1fc01f4f9be6bfc95e294316b3ba76afc626e11a440f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58679f0a9ecb6bc901236f166f2b3ba9ad5a5982c49bdd11bad81ec2e3ec284`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:19:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:19:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:19:35 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:19:45 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:19:58 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:20:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284597952e64de7e3e030cffe8e052a66570383a5b4acd5308829ccb2e1174a6`  
		Last Modified: Thu, 28 Feb 2019 09:21:27 GMT  
		Size: 5.1 MB (5145103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e503fa44ec8d3a5d09af6aede65bd29fa319d0d270ff0094d6bbd17eef3b17b`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9b5d7b312973ac9441d8c9508e8d42f066bd6aac91feb8d76442a6952e07a0`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405cfb8b1c1570a5f08155a14464bce4493d29912335242098c1e95528d1e64a`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; s390x

```console
$ docker pull docker@sha256:22055ddcaabb17b1f21a0909630945017d99461ac762b1d34f9535f3d9103a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4bf4677e8ff169cb57bdce0adeaa71cba5d9088e5c299fb8d10b73c255aa1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:41:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 12:41:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 12:41:59 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 12:42:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 12:42:00 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:42:00 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 12:42:00 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 12:42:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 12:42:01 GMT
CMD []
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740fbe77beefe6d9de0899d702c9e008bfed08bab6ee1fc010d998b32b3652c9`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 4.9 MB (4862753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59871e2e00a2d65bcbb54198a43bd8c5d19c11d5d903411e95b2accde7926`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99222c3d245dc17121abc2faea25f2465a5500f5f110621c998757918fd7045e`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338eb0b28e8f833e79df8bc7854f1741514afed4d9b97c3f72ffb52478244957`  
		Last Modified: Thu, 28 Feb 2019 12:42:33 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-git`

```console
$ docker pull docker@sha256:5b3ca5c7a353ca61412e9c960165d83951a44abdf9b20235b5136b0cbc3fc9f0
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
$ docker pull docker@sha256:6aa6298ab0a34f6c6c5fde9bb5cc3d4b4c590e16b984374a2901e50793a27926
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54724217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2253207239616634cf8d5b16273e5964010a42bdb75a353fd02509b44920912`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:51:05 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae792281d5ac8e62932e92732fed8efaeaaae1433f0d483244863914c1017db6`  
		Last Modified: Thu, 28 Feb 2019 08:53:46 GMT  
		Size: 8.8 MB (8766801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7208aac6a08c106736891ab6e6a2f18e58d6f390b7e5ee792a2e27ace8204231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53725950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e485fdc6807421a6f7d6a666310c11827a398bfafd351ee0c45845e5e4dd8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:42:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442cddcefa205062363ee9d571bd7bdb91eba162858b96fdc8a39db1df162873`  
		Last Modified: Thu, 28 Feb 2019 09:45:50 GMT  
		Size: 9.5 MB (9517338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; ppc64le

```console
$ docker pull docker@sha256:b4682faf128776b6c10c11ece86eb3f38f6616061d4e5308901e0ce3bb9ca749
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d899ac06bdbb9fdc2bb1f8504d5a5845fab3664da27fc719b6e49fbcb76568`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:20:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d66e4520b1f1c51d9ecd5d4aec5e9f990e63429bf81b496c6562785a6335a8`  
		Last Modified: Thu, 28 Feb 2019 09:21:46 GMT  
		Size: 10.1 MB (10064173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; s390x

```console
$ docker pull docker@sha256:5ef76a7c33b862d6ec84628594c5d2084dda876fa198cca3635852b94ea179a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cf15f3dc4ab3d0a638f67064e0c6c23426c42ee5cfae0042dda3a150a67bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:42:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d315fa18eeb5c7abae476f5f65e66d8111dd06a3604a761df1a245558caeab`  
		Last Modified: Thu, 28 Feb 2019 12:42:42 GMT  
		Size: 9.4 MB (9398195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-dind`

```console
$ docker pull docker@sha256:c2f2ac60b36763690b1b347396e8136e0b428d91f787e797fae8723c97e735f7
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
$ docker pull docker@sha256:3703666080d447fc074c03c47798baaf660528e3f32498bdf1e7ab4b1182bdb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78778626ffdb935e4c288c6f42da06f725a7b280138ff8fbcb78e20d8b3bc49`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:53 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:55 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:55 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:56 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:57 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0833deec7a98a84c13c4f4e1021aa9b63c0a0df761846544edda3ed6545756`  
		Last Modified: Thu, 28 Feb 2019 08:53:34 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdaef69fbcc1cf6a602ffc41303905a146d2c26e3fa56b59670b04815d2500`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19299eed3db7a4131102cfceef43eb2a7139bcc65425d0531aa78570a1feefa4`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24779a7632097943253580845e2451565c7734ca6844ee2fcb287e92296f6aa8`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fda39a1550e39cd75e8ab47aa581ad3a1ea5f7df6da62f521d96f1b535a3f63a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedc8dccad81a0c26a1f475a7f19f97d857de33a764b817f8459d714811e327`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:51 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:52 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:53 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820a50dfaaaf1e836043e83145e6515b39b5db464618ca3d804f774e412bb20`  
		Last Modified: Thu, 28 Feb 2019 09:45:34 GMT  
		Size: 4.8 MB (4809756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcec727709751d55ef9e0f3037b627d732b64d86f83be43a527cf7988e266eff`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7753588a25e5534690d89a9e1b546157f2c719bfb15750c10cf9e4c73c1e738`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b637f13dc81fccb0afd01a3698e2800dd21cb6d811a6ead330496ed39a22f089`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:99b4203cbf86f16bb9e1fc01f4f9be6bfc95e294316b3ba76afc626e11a440f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58679f0a9ecb6bc901236f166f2b3ba9ad5a5982c49bdd11bad81ec2e3ec284`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:19:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:19:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:19:35 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:19:45 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:19:58 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:20:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284597952e64de7e3e030cffe8e052a66570383a5b4acd5308829ccb2e1174a6`  
		Last Modified: Thu, 28 Feb 2019 09:21:27 GMT  
		Size: 5.1 MB (5145103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e503fa44ec8d3a5d09af6aede65bd29fa319d0d270ff0094d6bbd17eef3b17b`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9b5d7b312973ac9441d8c9508e8d42f066bd6aac91feb8d76442a6952e07a0`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405cfb8b1c1570a5f08155a14464bce4493d29912335242098c1e95528d1e64a`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; s390x

```console
$ docker pull docker@sha256:22055ddcaabb17b1f21a0909630945017d99461ac762b1d34f9535f3d9103a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4bf4677e8ff169cb57bdce0adeaa71cba5d9088e5c299fb8d10b73c255aa1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:41:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 12:41:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 12:41:59 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 12:42:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 12:42:00 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:42:00 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 12:42:00 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 12:42:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 12:42:01 GMT
CMD []
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740fbe77beefe6d9de0899d702c9e008bfed08bab6ee1fc010d998b32b3652c9`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 4.9 MB (4862753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59871e2e00a2d65bcbb54198a43bd8c5d19c11d5d903411e95b2accde7926`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99222c3d245dc17121abc2faea25f2465a5500f5f110621c998757918fd7045e`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338eb0b28e8f833e79df8bc7854f1741514afed4d9b97c3f72ffb52478244957`  
		Last Modified: Thu, 28 Feb 2019 12:42:33 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-git`

```console
$ docker pull docker@sha256:5b3ca5c7a353ca61412e9c960165d83951a44abdf9b20235b5136b0cbc3fc9f0
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
$ docker pull docker@sha256:6aa6298ab0a34f6c6c5fde9bb5cc3d4b4c590e16b984374a2901e50793a27926
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54724217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2253207239616634cf8d5b16273e5964010a42bdb75a353fd02509b44920912`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:51:05 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae792281d5ac8e62932e92732fed8efaeaaae1433f0d483244863914c1017db6`  
		Last Modified: Thu, 28 Feb 2019 08:53:46 GMT  
		Size: 8.8 MB (8766801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7208aac6a08c106736891ab6e6a2f18e58d6f390b7e5ee792a2e27ace8204231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53725950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e485fdc6807421a6f7d6a666310c11827a398bfafd351ee0c45845e5e4dd8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:42:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442cddcefa205062363ee9d571bd7bdb91eba162858b96fdc8a39db1df162873`  
		Last Modified: Thu, 28 Feb 2019 09:45:50 GMT  
		Size: 9.5 MB (9517338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; ppc64le

```console
$ docker pull docker@sha256:b4682faf128776b6c10c11ece86eb3f38f6616061d4e5308901e0ce3bb9ca749
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d899ac06bdbb9fdc2bb1f8504d5a5845fab3664da27fc719b6e49fbcb76568`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:20:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d66e4520b1f1c51d9ecd5d4aec5e9f990e63429bf81b496c6562785a6335a8`  
		Last Modified: Thu, 28 Feb 2019 09:21:46 GMT  
		Size: 10.1 MB (10064173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; s390x

```console
$ docker pull docker@sha256:5ef76a7c33b862d6ec84628594c5d2084dda876fa198cca3635852b94ea179a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cf15f3dc4ab3d0a638f67064e0c6c23426c42ee5cfae0042dda3a150a67bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:42:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d315fa18eeb5c7abae476f5f65e66d8111dd06a3604a761df1a245558caeab`  
		Last Modified: Thu, 28 Feb 2019 12:42:42 GMT  
		Size: 9.4 MB (9398195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09`

```console
$ docker pull docker@sha256:75710c661c9768b1952f09be82855cd4c922b692cb18c95cb768917a456469c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:53999870f7ad1b5c47dfd60a0a091642180342cc4c66f41d3dad503902c5bd7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a057b92365258668aa6d0434f87bd367da4393abd0b271212697d45b247597`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v6

```console
$ docker pull docker@sha256:7c517d56681c0fdcd4772dd1a4bb53a87e02cc6a30f968053866c16da1ad15b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48562239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29815233c731570eba49ba1f63339af766eb576e68be118244c6127cc50f7f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e01a6f0ec1d6a07dec2fcb23f0caae5e3b3413e15aa2aa253f4a17dd40e7f313
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c4761432b64a7b39f703cda03250702902eda6c5975e8453cf2f1707646552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3`

```console
$ docker pull docker@sha256:75710c661c9768b1952f09be82855cd4c922b692cb18c95cb768917a456469c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.3` - linux; amd64

```console
$ docker pull docker@sha256:53999870f7ad1b5c47dfd60a0a091642180342cc4c66f41d3dad503902c5bd7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a057b92365258668aa6d0434f87bd367da4393abd0b271212697d45b247597`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3` - linux; arm variant v6

```console
$ docker pull docker@sha256:7c517d56681c0fdcd4772dd1a4bb53a87e02cc6a30f968053866c16da1ad15b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48562239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29815233c731570eba49ba1f63339af766eb576e68be118244c6127cc50f7f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e01a6f0ec1d6a07dec2fcb23f0caae5e3b3413e15aa2aa253f4a17dd40e7f313
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c4761432b64a7b39f703cda03250702902eda6c5975e8453cf2f1707646552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-dind`

```console
$ docker pull docker@sha256:09ee3715e7dfca38ad4e264ab790b1f13e7fc4b6348e937fd1a0123eb123c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.3-dind` - linux; amd64

```console
$ docker pull docker@sha256:914eab70455bc0069ebf151bb7218603a713b5d6a87b76e6f89607a82b3ceee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63964f0d3ceb8b1a00c832b4d03120dbc36ba780d3d26c6b3cc2e895de3b012`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 01:19:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 01:19:37 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 01:19:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 01:19:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:38 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 01:19:38 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 01:19:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:38 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09840a071fed0d7b02da6758e56c0c9bf9afd423ec8eaa1d3273b3653386e4b4`  
		Last Modified: Sat, 02 Mar 2019 01:20:25 GMT  
		Size: 4.8 MB (4769760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31caf057d2dc0460f1fc68562da6bc9ec27f83f9e530c4be70c113741fc0f1da`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30baa17d0d2b8f66629af5e08975d43fcc19969da6a7eb545fb82f1da47fbd2`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c4191cd5d8e6647603f5c33da0932062c4e9f93a282e32f521ea0b70ecb475`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3c40ff262a47e787cd46b57cb63c61e3fd223d3e2895d43c78b06b8de7da1823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfda491998d8faf78a8d02fa7a525ec8e58d51615306775c154475f2e3a3276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 08:49:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 08:49:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 08:49:42 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a84719ed745d998cd03822bc2609789241c207ad9f6ea5ef3e223824e132a21`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9202b5bd68b3b25a992abd8ec4f07921b893f9de6a5bb847d0c90a47bdf60fd8`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608de6ca6c33ace31c5fef6214bbcc30396a03e9e07eeb66f1e05c86b9e4ad58`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5444fc7855ecde27e6067f0dfcb964b628f8b7fd832a7e08a13eacc2ce6f3f81`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cc17ba23fbec4a47e52249871aaf02aee9f5db873cd930852181c13bb791cb64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51443039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e917010a328deaa7bdb1502b05126433303a74ca010ed49fc2e0a58d6e0d69`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:48:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 09:48:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 09:48:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 09:48:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 09:48:50 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:51 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 09:48:52 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 09:48:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100e50909d25f1caa6a16839dc2d28626dba0be099cfa333a4282f935a7ae26`  
		Last Modified: Sat, 02 Mar 2019 09:50:28 GMT  
		Size: 4.8 MB (4809812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4214331a460c8eeeb11d01a738d9ec4c72593ae94952d133ac4775fddd623`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed4b9a8d2a2a137e631d7825ca9586009ebd9a74578547ccd96abc1428614e`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827ac8284eacff60aba25a29c039f7bec3fe0a567548d9ded489fb6777378ec1`  
		Last Modified: Sat, 02 Mar 2019 09:50:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-git`

```console
$ docker pull docker@sha256:dd5636d34cb1a66609b90d461f36969b1f3221b8b6e922d960b406c93b12437c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.3-git` - linux; amd64

```console
$ docker pull docker@sha256:690ce07cb0e2fc1e3d987f3ae6ede1c672886ff7d257ba64b42ff0c375d29101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccb4c1db1e6d2076806d3e1565544d028eb0721eff3a0c25ab1c25e8c0d6fca`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:43 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c75fbb60b9659be16a3031b8f2d30c3e503e93ba3ec5f2b6d81d988321804`  
		Last Modified: Sat, 02 Mar 2019 01:20:33 GMT  
		Size: 9.3 MB (9270664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:d2230f8e3683bf4cff67de6258d48b82fe9ab048d2200d1492eff33979133048
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85a5bb4865489001d347d031f56a054fa205a166de9d25aa7240f92e5f248ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69fd0116a35befaa4efb2d567fa8eab49d932bf8cc2b5b54f8d34614047e5e3`  
		Last Modified: Sat, 02 Mar 2019 08:51:13 GMT  
		Size: 8.8 MB (8766765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:334b437c7147cdace3d207e0b8b478a73a087524a30b5fb3f81b32b632df3419
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56148094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bf55796ff7cefa5d518b6004cc7cf207c816d609544c0107fe1b59403e28b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:49:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3df0e3807173d6c17c401878b4df738653347b0e649b58468318bb41e9492b`  
		Last Modified: Sat, 02 Mar 2019 09:50:49 GMT  
		Size: 9.5 MB (9517479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:09ee3715e7dfca38ad4e264ab790b1f13e7fc4b6348e937fd1a0123eb123c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:914eab70455bc0069ebf151bb7218603a713b5d6a87b76e6f89607a82b3ceee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63964f0d3ceb8b1a00c832b4d03120dbc36ba780d3d26c6b3cc2e895de3b012`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 01:19:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 01:19:37 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 01:19:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 01:19:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:38 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 01:19:38 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 01:19:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:38 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09840a071fed0d7b02da6758e56c0c9bf9afd423ec8eaa1d3273b3653386e4b4`  
		Last Modified: Sat, 02 Mar 2019 01:20:25 GMT  
		Size: 4.8 MB (4769760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31caf057d2dc0460f1fc68562da6bc9ec27f83f9e530c4be70c113741fc0f1da`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30baa17d0d2b8f66629af5e08975d43fcc19969da6a7eb545fb82f1da47fbd2`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c4191cd5d8e6647603f5c33da0932062c4e9f93a282e32f521ea0b70ecb475`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3c40ff262a47e787cd46b57cb63c61e3fd223d3e2895d43c78b06b8de7da1823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfda491998d8faf78a8d02fa7a525ec8e58d51615306775c154475f2e3a3276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 08:49:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 08:49:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 08:49:42 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a84719ed745d998cd03822bc2609789241c207ad9f6ea5ef3e223824e132a21`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9202b5bd68b3b25a992abd8ec4f07921b893f9de6a5bb847d0c90a47bdf60fd8`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608de6ca6c33ace31c5fef6214bbcc30396a03e9e07eeb66f1e05c86b9e4ad58`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5444fc7855ecde27e6067f0dfcb964b628f8b7fd832a7e08a13eacc2ce6f3f81`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cc17ba23fbec4a47e52249871aaf02aee9f5db873cd930852181c13bb791cb64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51443039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e917010a328deaa7bdb1502b05126433303a74ca010ed49fc2e0a58d6e0d69`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:48:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 09:48:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 09:48:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 09:48:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 09:48:50 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:51 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 09:48:52 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 09:48:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100e50909d25f1caa6a16839dc2d28626dba0be099cfa333a4282f935a7ae26`  
		Last Modified: Sat, 02 Mar 2019 09:50:28 GMT  
		Size: 4.8 MB (4809812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4214331a460c8eeeb11d01a738d9ec4c72593ae94952d133ac4775fddd623`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed4b9a8d2a2a137e631d7825ca9586009ebd9a74578547ccd96abc1428614e`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827ac8284eacff60aba25a29c039f7bec3fe0a567548d9ded489fb6777378ec1`  
		Last Modified: Sat, 02 Mar 2019 09:50:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:dd5636d34cb1a66609b90d461f36969b1f3221b8b6e922d960b406c93b12437c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:690ce07cb0e2fc1e3d987f3ae6ede1c672886ff7d257ba64b42ff0c375d29101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccb4c1db1e6d2076806d3e1565544d028eb0721eff3a0c25ab1c25e8c0d6fca`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:43 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c75fbb60b9659be16a3031b8f2d30c3e503e93ba3ec5f2b6d81d988321804`  
		Last Modified: Sat, 02 Mar 2019 01:20:33 GMT  
		Size: 9.3 MB (9270664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:d2230f8e3683bf4cff67de6258d48b82fe9ab048d2200d1492eff33979133048
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85a5bb4865489001d347d031f56a054fa205a166de9d25aa7240f92e5f248ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69fd0116a35befaa4efb2d567fa8eab49d932bf8cc2b5b54f8d34614047e5e3`  
		Last Modified: Sat, 02 Mar 2019 08:51:13 GMT  
		Size: 8.8 MB (8766765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:334b437c7147cdace3d207e0b8b478a73a087524a30b5fb3f81b32b632df3419
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56148094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bf55796ff7cefa5d518b6004cc7cf207c816d609544c0107fe1b59403e28b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:49:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3df0e3807173d6c17c401878b4df738653347b0e649b58468318bb41e9492b`  
		Last Modified: Sat, 02 Mar 2019 09:50:49 GMT  
		Size: 9.5 MB (9517479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:09ee3715e7dfca38ad4e264ab790b1f13e7fc4b6348e937fd1a0123eb123c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:914eab70455bc0069ebf151bb7218603a713b5d6a87b76e6f89607a82b3ceee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63964f0d3ceb8b1a00c832b4d03120dbc36ba780d3d26c6b3cc2e895de3b012`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 01:19:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 01:19:37 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 01:19:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 01:19:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:38 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 01:19:38 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 01:19:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:38 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09840a071fed0d7b02da6758e56c0c9bf9afd423ec8eaa1d3273b3653386e4b4`  
		Last Modified: Sat, 02 Mar 2019 01:20:25 GMT  
		Size: 4.8 MB (4769760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31caf057d2dc0460f1fc68562da6bc9ec27f83f9e530c4be70c113741fc0f1da`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30baa17d0d2b8f66629af5e08975d43fcc19969da6a7eb545fb82f1da47fbd2`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c4191cd5d8e6647603f5c33da0932062c4e9f93a282e32f521ea0b70ecb475`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3c40ff262a47e787cd46b57cb63c61e3fd223d3e2895d43c78b06b8de7da1823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfda491998d8faf78a8d02fa7a525ec8e58d51615306775c154475f2e3a3276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 08:49:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 08:49:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 08:49:42 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a84719ed745d998cd03822bc2609789241c207ad9f6ea5ef3e223824e132a21`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9202b5bd68b3b25a992abd8ec4f07921b893f9de6a5bb847d0c90a47bdf60fd8`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608de6ca6c33ace31c5fef6214bbcc30396a03e9e07eeb66f1e05c86b9e4ad58`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5444fc7855ecde27e6067f0dfcb964b628f8b7fd832a7e08a13eacc2ce6f3f81`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cc17ba23fbec4a47e52249871aaf02aee9f5db873cd930852181c13bb791cb64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51443039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e917010a328deaa7bdb1502b05126433303a74ca010ed49fc2e0a58d6e0d69`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:48:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 09:48:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 09:48:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 09:48:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 09:48:50 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:51 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 09:48:52 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 09:48:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100e50909d25f1caa6a16839dc2d28626dba0be099cfa333a4282f935a7ae26`  
		Last Modified: Sat, 02 Mar 2019 09:50:28 GMT  
		Size: 4.8 MB (4809812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4214331a460c8eeeb11d01a738d9ec4c72593ae94952d133ac4775fddd623`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed4b9a8d2a2a137e631d7825ca9586009ebd9a74578547ccd96abc1428614e`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827ac8284eacff60aba25a29c039f7bec3fe0a567548d9ded489fb6777378ec1`  
		Last Modified: Sat, 02 Mar 2019 09:50:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:dd5636d34cb1a66609b90d461f36969b1f3221b8b6e922d960b406c93b12437c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:690ce07cb0e2fc1e3d987f3ae6ede1c672886ff7d257ba64b42ff0c375d29101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccb4c1db1e6d2076806d3e1565544d028eb0721eff3a0c25ab1c25e8c0d6fca`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:43 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c75fbb60b9659be16a3031b8f2d30c3e503e93ba3ec5f2b6d81d988321804`  
		Last Modified: Sat, 02 Mar 2019 01:20:33 GMT  
		Size: 9.3 MB (9270664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:d2230f8e3683bf4cff67de6258d48b82fe9ab048d2200d1492eff33979133048
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85a5bb4865489001d347d031f56a054fa205a166de9d25aa7240f92e5f248ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69fd0116a35befaa4efb2d567fa8eab49d932bf8cc2b5b54f8d34614047e5e3`  
		Last Modified: Sat, 02 Mar 2019 08:51:13 GMT  
		Size: 8.8 MB (8766765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:334b437c7147cdace3d207e0b8b478a73a087524a30b5fb3f81b32b632df3419
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56148094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bf55796ff7cefa5d518b6004cc7cf207c816d609544c0107fe1b59403e28b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:49:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3df0e3807173d6c17c401878b4df738653347b0e649b58468318bb41e9492b`  
		Last Modified: Sat, 02 Mar 2019 09:50:49 GMT  
		Size: 9.5 MB (9517479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:09ee3715e7dfca38ad4e264ab790b1f13e7fc4b6348e937fd1a0123eb123c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:914eab70455bc0069ebf151bb7218603a713b5d6a87b76e6f89607a82b3ceee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63964f0d3ceb8b1a00c832b4d03120dbc36ba780d3d26c6b3cc2e895de3b012`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 01:19:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 01:19:37 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 01:19:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 01:19:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:38 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 01:19:38 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 01:19:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:38 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09840a071fed0d7b02da6758e56c0c9bf9afd423ec8eaa1d3273b3653386e4b4`  
		Last Modified: Sat, 02 Mar 2019 01:20:25 GMT  
		Size: 4.8 MB (4769760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31caf057d2dc0460f1fc68562da6bc9ec27f83f9e530c4be70c113741fc0f1da`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30baa17d0d2b8f66629af5e08975d43fcc19969da6a7eb545fb82f1da47fbd2`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c4191cd5d8e6647603f5c33da0932062c4e9f93a282e32f521ea0b70ecb475`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3c40ff262a47e787cd46b57cb63c61e3fd223d3e2895d43c78b06b8de7da1823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfda491998d8faf78a8d02fa7a525ec8e58d51615306775c154475f2e3a3276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 08:49:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 08:49:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 08:49:42 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a84719ed745d998cd03822bc2609789241c207ad9f6ea5ef3e223824e132a21`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9202b5bd68b3b25a992abd8ec4f07921b893f9de6a5bb847d0c90a47bdf60fd8`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608de6ca6c33ace31c5fef6214bbcc30396a03e9e07eeb66f1e05c86b9e4ad58`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5444fc7855ecde27e6067f0dfcb964b628f8b7fd832a7e08a13eacc2ce6f3f81`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cc17ba23fbec4a47e52249871aaf02aee9f5db873cd930852181c13bb791cb64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51443039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e917010a328deaa7bdb1502b05126433303a74ca010ed49fc2e0a58d6e0d69`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:48:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 09:48:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 09:48:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 09:48:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 09:48:50 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:51 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 09:48:52 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 09:48:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100e50909d25f1caa6a16839dc2d28626dba0be099cfa333a4282f935a7ae26`  
		Last Modified: Sat, 02 Mar 2019 09:50:28 GMT  
		Size: 4.8 MB (4809812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4214331a460c8eeeb11d01a738d9ec4c72593ae94952d133ac4775fddd623`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed4b9a8d2a2a137e631d7825ca9586009ebd9a74578547ccd96abc1428614e`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827ac8284eacff60aba25a29c039f7bec3fe0a567548d9ded489fb6777378ec1`  
		Last Modified: Sat, 02 Mar 2019 09:50:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:5ef7188aea53544782b1444d475fe8ea76bf89322f3cc582f8f842ff1120cc86
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
$ docker pull docker@sha256:2474bdf203c1ca30f18f46b1c30dd1a678a38ea05a8d36945ef59d9438568ef7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9e19f9165196d97e218798f080a0964dabadf72cc464b82fbb13060668fd7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3ee33298eccfa8f865c576d711b853a94a3cc795c4154e6f2b44a00d94483106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be45be28480414d8d5ba9dcd21ecfe2240e88d1736376918645cde6c0f50cad7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; ppc64le

```console
$ docker pull docker@sha256:f04d7406a58f3da14061720cd20c47e77a87be585e4e8f867e21f6af4bc4157e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350b042d3e235294bfcfc0ebf17e08fadda604dd7ad5647f929d2e5fe6af0a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; s390x

```console
$ docker pull docker@sha256:b5ff14764a7188e6378407359ae53be6df54c4c1ef495edec6fd8d3bee836173
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9ec4e9d86b93f5550dfba345dfe5c2398d1a10fedc027354a8814abd57dfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:c2f2ac60b36763690b1b347396e8136e0b428d91f787e797fae8723c97e735f7
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
$ docker pull docker@sha256:3703666080d447fc074c03c47798baaf660528e3f32498bdf1e7ab4b1182bdb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78778626ffdb935e4c288c6f42da06f725a7b280138ff8fbcb78e20d8b3bc49`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:53 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:55 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:55 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:56 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:57 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0833deec7a98a84c13c4f4e1021aa9b63c0a0df761846544edda3ed6545756`  
		Last Modified: Thu, 28 Feb 2019 08:53:34 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdaef69fbcc1cf6a602ffc41303905a146d2c26e3fa56b59670b04815d2500`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19299eed3db7a4131102cfceef43eb2a7139bcc65425d0531aa78570a1feefa4`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24779a7632097943253580845e2451565c7734ca6844ee2fcb287e92296f6aa8`  
		Last Modified: Thu, 28 Feb 2019 08:53:33 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fda39a1550e39cd75e8ab47aa581ad3a1ea5f7df6da62f521d96f1b535a3f63a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aedc8dccad81a0c26a1f475a7f19f97d857de33a764b817f8459d714811e327`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:51 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:52 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:53 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820a50dfaaaf1e836043e83145e6515b39b5db464618ca3d804f774e412bb20`  
		Last Modified: Thu, 28 Feb 2019 09:45:34 GMT  
		Size: 4.8 MB (4809756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcec727709751d55ef9e0f3037b627d732b64d86f83be43a527cf7988e266eff`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7753588a25e5534690d89a9e1b546157f2c719bfb15750c10cf9e4c73c1e738`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b637f13dc81fccb0afd01a3698e2800dd21cb6d811a6ead330496ed39a22f089`  
		Last Modified: Thu, 28 Feb 2019 09:45:32 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:99b4203cbf86f16bb9e1fc01f4f9be6bfc95e294316b3ba76afc626e11a440f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58679f0a9ecb6bc901236f166f2b3ba9ad5a5982c49bdd11bad81ec2e3ec284`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:19:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:19:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:19:35 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:19:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:19:45 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:19:58 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:20:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284597952e64de7e3e030cffe8e052a66570383a5b4acd5308829ccb2e1174a6`  
		Last Modified: Thu, 28 Feb 2019 09:21:27 GMT  
		Size: 5.1 MB (5145103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e503fa44ec8d3a5d09af6aede65bd29fa319d0d270ff0094d6bbd17eef3b17b`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9b5d7b312973ac9441d8c9508e8d42f066bd6aac91feb8d76442a6952e07a0`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405cfb8b1c1570a5f08155a14464bce4493d29912335242098c1e95528d1e64a`  
		Last Modified: Thu, 28 Feb 2019 09:21:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:22055ddcaabb17b1f21a0909630945017d99461ac762b1d34f9535f3d9103a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4bf4677e8ff169cb57bdce0adeaa71cba5d9088e5c299fb8d10b73c255aa1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:41:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 12:41:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 12:41:59 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 12:42:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 12:42:00 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:42:00 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 12:42:00 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 12:42:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 12:42:01 GMT
CMD []
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740fbe77beefe6d9de0899d702c9e008bfed08bab6ee1fc010d998b32b3652c9`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 4.9 MB (4862753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59871e2e00a2d65bcbb54198a43bd8c5d19c11d5d903411e95b2accde7926`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99222c3d245dc17121abc2faea25f2465a5500f5f110621c998757918fd7045e`  
		Last Modified: Thu, 28 Feb 2019 12:42:34 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338eb0b28e8f833e79df8bc7854f1741514afed4d9b97c3f72ffb52478244957`  
		Last Modified: Thu, 28 Feb 2019 12:42:33 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:5b3ca5c7a353ca61412e9c960165d83951a44abdf9b20235b5136b0cbc3fc9f0
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
$ docker pull docker@sha256:6aa6298ab0a34f6c6c5fde9bb5cc3d4b4c590e16b984374a2901e50793a27926
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54724217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2253207239616634cf8d5b16273e5964010a42bdb75a353fd02509b44920912`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:50:33 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 08:50:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:43 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:51:05 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfebaa11c709d32d3e891a0612505a7f68e69ba7ed7e96553dae26552bcdd14`  
		Last Modified: Thu, 28 Feb 2019 08:53:24 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd3da71564782a2836f16bb4a8a224a6ed83d067116e36c7c21ec40ba54f0b3`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8405c07fed986deec6982f23f830b9916b5b977b27f393060c9666e9f1403ccb`  
		Last Modified: Thu, 28 Feb 2019 08:53:09 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae792281d5ac8e62932e92732fed8efaeaaae1433f0d483244863914c1017db6`  
		Last Modified: Thu, 28 Feb 2019 08:53:46 GMT  
		Size: 8.8 MB (8766801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7208aac6a08c106736891ab6e6a2f18e58d6f390b7e5ee792a2e27ace8204231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53725950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e485fdc6807421a6f7d6a666310c11827a398bfafd351ee0c45845e5e4dd8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:41:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:41:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:41:35 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:41:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:37 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:42:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49369f7ad02f663de578a68914a6b2b3a4707ced4ac2a438fcb8fedb56d070ce`  
		Last Modified: Thu, 28 Feb 2019 09:45:16 GMT  
		Size: 41.2 MB (41216780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b19efb623450db01f05ca6c7a6b857f5f42a3855720d977df8447b44300e3`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade28cfe2be8d50d631cf53f6e69b06b543956f0af0fa3b5540b2d74bbdbc7c9`  
		Last Modified: Thu, 28 Feb 2019 09:44:59 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442cddcefa205062363ee9d571bd7bdb91eba162858b96fdc8a39db1df162873`  
		Last Modified: Thu, 28 Feb 2019 09:45:50 GMT  
		Size: 9.5 MB (9517338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; ppc64le

```console
$ docker pull docker@sha256:b4682faf128776b6c10c11ece86eb3f38f6616061d4e5308901e0ce3bb9ca749
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d899ac06bdbb9fdc2bb1f8504d5a5845fab3664da27fc719b6e49fbcb76568`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:55:46 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 09:55:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:17:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:18:24 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 09:18:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:18:40 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:18:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:18:53 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:20:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f057cc6e386a86bc1c44d26d648e5df451f290847a21d41bc54e393b88b54b31`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef83b59201bb6bc715da580e985705ad0f7c069c42fdc95b1cfeec7e09c852`  
		Last Modified: Wed, 06 Feb 2019 10:06:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc2ee8f2a407ecdf5171fbdacb14f2d73c8c86d0c70290f0f0f540e577d5162`  
		Last Modified: Thu, 28 Feb 2019 09:21:02 GMT  
		Size: 40.8 MB (40802867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f54498bcd87f92ee1c5409d269165733839d6b606d1a437bd6be5408b96ff`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e4fb00898b725a4ce1e30eb49c44255759e96ff4578b6d03a7e740f792b13`  
		Last Modified: Thu, 28 Feb 2019 09:20:53 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d66e4520b1f1c51d9ecd5d4aec5e9f990e63429bf81b496c6562785a6335a8`  
		Last Modified: Thu, 28 Feb 2019 09:21:46 GMT  
		Size: 10.1 MB (10064173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; s390x

```console
$ docker pull docker@sha256:5ef76a7c33b862d6ec84628594c5d2084dda876fa198cca3635852b94ea179a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cf15f3dc4ab3d0a638f67064e0c6c23426c42ee5cfae0042dda3a150a67bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:49:37 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 12:49:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 12:41:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 12:41:48 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 28 Feb 2019 12:41:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 12:41:52 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 12:41:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 12:41:52 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 12:42:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b318dd5391726da366dd4f5b400c596b9e6c313a0ac4725e2411daca25c81f`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 302.4 KB (302393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46da44ee63ba4003229bedc359e6b75c56083b2069857461a3f3dc4421728ec6`  
		Last Modified: Wed, 06 Feb 2019 12:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1ae4db16563076e05f9b7880201e3111aa4b8e1e0fc73b58d63d55b7223e1`  
		Last Modified: Thu, 28 Feb 2019 12:42:27 GMT  
		Size: 44.0 MB (43986040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3698d24d947a447a48a94f5d78851dce01a5a21a6dda294a72fb2d854327592e`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3ebee1b297db2a2a214d3815ffc4e712942c0fe56e4c67d67896ab01f11a29`  
		Last Modified: Thu, 28 Feb 2019 12:42:17 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d315fa18eeb5c7abae476f5f65e66d8111dd06a3604a761df1a245558caeab`  
		Last Modified: Thu, 28 Feb 2019 12:42:42 GMT  
		Size: 9.4 MB (9398195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:dd5636d34cb1a66609b90d461f36969b1f3221b8b6e922d960b406c93b12437c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:690ce07cb0e2fc1e3d987f3ae6ede1c672886ff7d257ba64b42ff0c375d29101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccb4c1db1e6d2076806d3e1565544d028eb0721eff3a0c25ab1c25e8c0d6fca`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:43 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c75fbb60b9659be16a3031b8f2d30c3e503e93ba3ec5f2b6d81d988321804`  
		Last Modified: Sat, 02 Mar 2019 01:20:33 GMT  
		Size: 9.3 MB (9270664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:d2230f8e3683bf4cff67de6258d48b82fe9ab048d2200d1492eff33979133048
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85a5bb4865489001d347d031f56a054fa205a166de9d25aa7240f92e5f248ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69fd0116a35befaa4efb2d567fa8eab49d932bf8cc2b5b54f8d34614047e5e3`  
		Last Modified: Sat, 02 Mar 2019 08:51:13 GMT  
		Size: 8.8 MB (8766765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:334b437c7147cdace3d207e0b8b478a73a087524a30b5fb3f81b32b632df3419
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56148094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bf55796ff7cefa5d518b6004cc7cf207c816d609544c0107fe1b59403e28b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:49:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3df0e3807173d6c17c401878b4df738653347b0e649b58468318bb41e9492b`  
		Last Modified: Sat, 02 Mar 2019 09:50:49 GMT  
		Size: 9.5 MB (9517479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:75710c661c9768b1952f09be82855cd4c922b692cb18c95cb768917a456469c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:53999870f7ad1b5c47dfd60a0a091642180342cc4c66f41d3dad503902c5bd7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a057b92365258668aa6d0434f87bd367da4393abd0b271212697d45b247597`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:7c517d56681c0fdcd4772dd1a4bb53a87e02cc6a30f968053866c16da1ad15b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48562239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29815233c731570eba49ba1f63339af766eb576e68be118244c6127cc50f7f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e01a6f0ec1d6a07dec2fcb23f0caae5e3b3413e15aa2aa253f4a17dd40e7f313
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c4761432b64a7b39f703cda03250702902eda6c5975e8453cf2f1707646552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:75710c661c9768b1952f09be82855cd4c922b692cb18c95cb768917a456469c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:53999870f7ad1b5c47dfd60a0a091642180342cc4c66f41d3dad503902c5bd7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a057b92365258668aa6d0434f87bd367da4393abd0b271212697d45b247597`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:7c517d56681c0fdcd4772dd1a4bb53a87e02cc6a30f968053866c16da1ad15b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48562239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29815233c731570eba49ba1f63339af766eb576e68be118244c6127cc50f7f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e01a6f0ec1d6a07dec2fcb23f0caae5e3b3413e15aa2aa253f4a17dd40e7f313
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c4761432b64a7b39f703cda03250702902eda6c5975e8453cf2f1707646552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:09ee3715e7dfca38ad4e264ab790b1f13e7fc4b6348e937fd1a0123eb123c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:914eab70455bc0069ebf151bb7218603a713b5d6a87b76e6f89607a82b3ceee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63964f0d3ceb8b1a00c832b4d03120dbc36ba780d3d26c6b3cc2e895de3b012`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 01:19:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 01:19:37 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 01:19:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 01:19:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:38 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 01:19:38 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 01:19:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:38 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09840a071fed0d7b02da6758e56c0c9bf9afd423ec8eaa1d3273b3653386e4b4`  
		Last Modified: Sat, 02 Mar 2019 01:20:25 GMT  
		Size: 4.8 MB (4769760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31caf057d2dc0460f1fc68562da6bc9ec27f83f9e530c4be70c113741fc0f1da`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30baa17d0d2b8f66629af5e08975d43fcc19969da6a7eb545fb82f1da47fbd2`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c4191cd5d8e6647603f5c33da0932062c4e9f93a282e32f521ea0b70ecb475`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3c40ff262a47e787cd46b57cb63c61e3fd223d3e2895d43c78b06b8de7da1823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfda491998d8faf78a8d02fa7a525ec8e58d51615306775c154475f2e3a3276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 08:49:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 08:49:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 08:49:42 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a84719ed745d998cd03822bc2609789241c207ad9f6ea5ef3e223824e132a21`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9202b5bd68b3b25a992abd8ec4f07921b893f9de6a5bb847d0c90a47bdf60fd8`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608de6ca6c33ace31c5fef6214bbcc30396a03e9e07eeb66f1e05c86b9e4ad58`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5444fc7855ecde27e6067f0dfcb964b628f8b7fd832a7e08a13eacc2ce6f3f81`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cc17ba23fbec4a47e52249871aaf02aee9f5db873cd930852181c13bb791cb64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51443039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e917010a328deaa7bdb1502b05126433303a74ca010ed49fc2e0a58d6e0d69`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:48:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 09:48:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 09:48:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 09:48:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 09:48:50 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:51 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 09:48:52 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 09:48:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100e50909d25f1caa6a16839dc2d28626dba0be099cfa333a4282f935a7ae26`  
		Last Modified: Sat, 02 Mar 2019 09:50:28 GMT  
		Size: 4.8 MB (4809812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4214331a460c8eeeb11d01a738d9ec4c72593ae94952d133ac4775fddd623`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed4b9a8d2a2a137e631d7825ca9586009ebd9a74578547ccd96abc1428614e`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827ac8284eacff60aba25a29c039f7bec3fe0a567548d9ded489fb6777378ec1`  
		Last Modified: Sat, 02 Mar 2019 09:50:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:dd5636d34cb1a66609b90d461f36969b1f3221b8b6e922d960b406c93b12437c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:690ce07cb0e2fc1e3d987f3ae6ede1c672886ff7d257ba64b42ff0c375d29101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccb4c1db1e6d2076806d3e1565544d028eb0721eff3a0c25ab1c25e8c0d6fca`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:43 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c75fbb60b9659be16a3031b8f2d30c3e503e93ba3ec5f2b6d81d988321804`  
		Last Modified: Sat, 02 Mar 2019 01:20:33 GMT  
		Size: 9.3 MB (9270664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:d2230f8e3683bf4cff67de6258d48b82fe9ab048d2200d1492eff33979133048
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85a5bb4865489001d347d031f56a054fa205a166de9d25aa7240f92e5f248ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69fd0116a35befaa4efb2d567fa8eab49d932bf8cc2b5b54f8d34614047e5e3`  
		Last Modified: Sat, 02 Mar 2019 08:51:13 GMT  
		Size: 8.8 MB (8766765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:334b437c7147cdace3d207e0b8b478a73a087524a30b5fb3f81b32b632df3419
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56148094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bf55796ff7cefa5d518b6004cc7cf207c816d609544c0107fe1b59403e28b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:49:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3df0e3807173d6c17c401878b4df738653347b0e649b58468318bb41e9492b`  
		Last Modified: Sat, 02 Mar 2019 09:50:49 GMT  
		Size: 9.5 MB (9517479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:75710c661c9768b1952f09be82855cd4c922b692cb18c95cb768917a456469c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:53999870f7ad1b5c47dfd60a0a091642180342cc4c66f41d3dad503902c5bd7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a057b92365258668aa6d0434f87bd367da4393abd0b271212697d45b247597`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:7c517d56681c0fdcd4772dd1a4bb53a87e02cc6a30f968053866c16da1ad15b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48562239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29815233c731570eba49ba1f63339af766eb576e68be118244c6127cc50f7f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e01a6f0ec1d6a07dec2fcb23f0caae5e3b3413e15aa2aa253f4a17dd40e7f313
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c4761432b64a7b39f703cda03250702902eda6c5975e8453cf2f1707646552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:09ee3715e7dfca38ad4e264ab790b1f13e7fc4b6348e937fd1a0123eb123c535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:914eab70455bc0069ebf151bb7218603a713b5d6a87b76e6f89607a82b3ceee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63964f0d3ceb8b1a00c832b4d03120dbc36ba780d3d26c6b3cc2e895de3b012`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 01:19:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 01:19:37 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 01:19:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 01:19:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:38 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 01:19:38 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 01:19:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:38 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09840a071fed0d7b02da6758e56c0c9bf9afd423ec8eaa1d3273b3653386e4b4`  
		Last Modified: Sat, 02 Mar 2019 01:20:25 GMT  
		Size: 4.8 MB (4769760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31caf057d2dc0460f1fc68562da6bc9ec27f83f9e530c4be70c113741fc0f1da`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30baa17d0d2b8f66629af5e08975d43fcc19969da6a7eb545fb82f1da47fbd2`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c4191cd5d8e6647603f5c33da0932062c4e9f93a282e32f521ea0b70ecb475`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3c40ff262a47e787cd46b57cb63c61e3fd223d3e2895d43c78b06b8de7da1823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfda491998d8faf78a8d02fa7a525ec8e58d51615306775c154475f2e3a3276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 08:49:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 08:49:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 08:49:42 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a84719ed745d998cd03822bc2609789241c207ad9f6ea5ef3e223824e132a21`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9202b5bd68b3b25a992abd8ec4f07921b893f9de6a5bb847d0c90a47bdf60fd8`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608de6ca6c33ace31c5fef6214bbcc30396a03e9e07eeb66f1e05c86b9e4ad58`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5444fc7855ecde27e6067f0dfcb964b628f8b7fd832a7e08a13eacc2ce6f3f81`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cc17ba23fbec4a47e52249871aaf02aee9f5db873cd930852181c13bb791cb64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51443039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e917010a328deaa7bdb1502b05126433303a74ca010ed49fc2e0a58d6e0d69`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:48:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 09:48:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 09:48:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 09:48:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 09:48:50 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:51 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 09:48:52 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 09:48:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100e50909d25f1caa6a16839dc2d28626dba0be099cfa333a4282f935a7ae26`  
		Last Modified: Sat, 02 Mar 2019 09:50:28 GMT  
		Size: 4.8 MB (4809812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4214331a460c8eeeb11d01a738d9ec4c72593ae94952d133ac4775fddd623`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed4b9a8d2a2a137e631d7825ca9586009ebd9a74578547ccd96abc1428614e`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827ac8284eacff60aba25a29c039f7bec3fe0a567548d9ded489fb6777378ec1`  
		Last Modified: Sat, 02 Mar 2019 09:50:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:dd5636d34cb1a66609b90d461f36969b1f3221b8b6e922d960b406c93b12437c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:690ce07cb0e2fc1e3d987f3ae6ede1c672886ff7d257ba64b42ff0c375d29101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccb4c1db1e6d2076806d3e1565544d028eb0721eff3a0c25ab1c25e8c0d6fca`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:43 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3c75fbb60b9659be16a3031b8f2d30c3e503e93ba3ec5f2b6d81d988321804`  
		Last Modified: Sat, 02 Mar 2019 01:20:33 GMT  
		Size: 9.3 MB (9270664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:d2230f8e3683bf4cff67de6258d48b82fe9ab048d2200d1492eff33979133048
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85a5bb4865489001d347d031f56a054fa205a166de9d25aa7240f92e5f248ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69fd0116a35befaa4efb2d567fa8eab49d932bf8cc2b5b54f8d34614047e5e3`  
		Last Modified: Sat, 02 Mar 2019 08:51:13 GMT  
		Size: 8.8 MB (8766765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:334b437c7147cdace3d207e0b8b478a73a087524a30b5fb3f81b32b632df3419
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56148094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bf55796ff7cefa5d518b6004cc7cf207c816d609544c0107fe1b59403e28b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:49:06 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3df0e3807173d6c17c401878b4df738653347b0e649b58468318bb41e9492b`  
		Last Modified: Sat, 02 Mar 2019 09:50:49 GMT  
		Size: 9.5 MB (9517479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
