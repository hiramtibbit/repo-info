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
$ docker pull docker@sha256:683afd3e5d5f8904fb8aa7874a84325970ac82b720d02336a380a77f874bc51e
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
$ docker pull docker@sha256:8d9511f22961447a2c82a023d8cbe751c92881171a15f219d928142f44da9a49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48529773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f7d3233066453ab4ddd4772425d7942a05e976fc2af9b9918e3a75bf4422e5`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:07a266f5866c0597311036e064e48d27062739060595ff8b6192ccabe1812c30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd7eaa03404f8358172c7cf7ae3ff472411dd8186efd7ed62de61588c96c660`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06`

```console
$ docker pull docker@sha256:7c14f303d966fe5f8a6d4685ad3f3ae9d7347b87a72e549201c738234aad1f12
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
$ docker pull docker@sha256:7c14f303d966fe5f8a6d4685ad3f3ae9d7347b87a72e549201c738234aad1f12
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
$ docker pull docker@sha256:7c14f303d966fe5f8a6d4685ad3f3ae9d7347b87a72e549201c738234aad1f12
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
$ docker pull docker@sha256:bfc7ec2083006e732ecd34a7082a635369ea3cc66672b7e41cf622f22bd3c365
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
$ docker pull docker@sha256:66ea801d040b8faa4f8fcbf201b03a50646c6bd4b2b1f28c47aa120d5165f94d
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
$ docker pull docker@sha256:bfc7ec2083006e732ecd34a7082a635369ea3cc66672b7e41cf622f22bd3c365
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
$ docker pull docker@sha256:66ea801d040b8faa4f8fcbf201b03a50646c6bd4b2b1f28c47aa120d5165f94d
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
$ docker pull docker@sha256:bfc7ec2083006e732ecd34a7082a635369ea3cc66672b7e41cf622f22bd3c365
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
$ docker pull docker@sha256:66ea801d040b8faa4f8fcbf201b03a50646c6bd4b2b1f28c47aa120d5165f94d
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
$ docker pull docker@sha256:683afd3e5d5f8904fb8aa7874a84325970ac82b720d02336a380a77f874bc51e
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
$ docker pull docker@sha256:8d9511f22961447a2c82a023d8cbe751c92881171a15f219d928142f44da9a49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48529773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f7d3233066453ab4ddd4772425d7942a05e976fc2af9b9918e3a75bf4422e5`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:07a266f5866c0597311036e064e48d27062739060595ff8b6192ccabe1812c30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd7eaa03404f8358172c7cf7ae3ff472411dd8186efd7ed62de61588c96c660`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.2`

```console
$ docker pull docker@sha256:683afd3e5d5f8904fb8aa7874a84325970ac82b720d02336a380a77f874bc51e
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
$ docker pull docker@sha256:8d9511f22961447a2c82a023d8cbe751c92881171a15f219d928142f44da9a49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48529773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f7d3233066453ab4ddd4772425d7942a05e976fc2af9b9918e3a75bf4422e5`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:07a266f5866c0597311036e064e48d27062739060595ff8b6192ccabe1812c30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd7eaa03404f8358172c7cf7ae3ff472411dd8186efd7ed62de61588c96c660`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.2-dind`

```console
$ docker pull docker@sha256:699838c9f0a4396b56c1d946fea8d88a07e5224f11ccb743946a76b5947afd36
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
$ docker pull docker@sha256:f8bed6633aca7fa0a1cff5b4e6abdd4fa76495d50b4471ad77f39a7ec3a9c8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51297327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed002c7508b3fb6d610b95b02d40a9e9087e535034d5836ba1d281f31098ec22`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:17 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:19 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:20 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:20 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:21 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafb14b88fc4630f7083d22d382063b29b94c1ed9760cc109bdd81b739d377d8`  
		Last Modified: Thu, 28 Feb 2019 08:52:46 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14660ff2fe9dc2ce463ed163b4a74376bc9a88a4c5e1ad999e176c2150b77ad8`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd114497ccf7df36062b3b50dd0b92525a34fdd9e4a93155d483d1649ad4eb5`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3290b9d105f8b001fd3728bd87ce5b08158b030204d5f0df0cf13fab54edab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4deafc0a05146987076925a3c1a5ea07818948458d10214af0df00f4117c63ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51417215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317071b4b8fa32bc1be838e96673e2dd2cb2ea2ed039524e38532f30b741c2f5`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:05 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:06 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:07 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79438251dd0380ba88f2dbfe62a9a71d6e6e68ff18d4a662e07a8f0ac1f84b3`  
		Last Modified: Thu, 28 Feb 2019 09:44:26 GMT  
		Size: 4.8 MB (4809786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e4363d9157c551533716a9bee201af2edcd8962d89d0360462b0eb54fade7e`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30392ce49a90d31ffdddffe3bf7ffad11112ddfc93cf5cf2ab9b6645a07b259f`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f109538ab2844315cccc1917be324482f752b0d4b2431c1d711a5a240a98ac2b`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.2-git`

```console
$ docker pull docker@sha256:99240c584aacef5019559d0351a3017f1911f9bb618167306c490c5938bd6b77
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
$ docker pull docker@sha256:99786077e608c30c1ca1045ad54e9de4b62a8ed00ef94aca47d8bb8e8d4c69d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57296558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b051ce505dc1e14f001fe1d20069278f873996b448ac4771d1138c6ab2694600`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:29 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08551d647628adddb18e37493d0674aba8cbd1813ef2e4fa41d89a1aa80b2f2`  
		Last Modified: Thu, 28 Feb 2019 08:53:00 GMT  
		Size: 8.8 MB (8766785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.2-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:06ad4de5fba8aef01ae45f149052ffdbe2f86ab33406b392d8c43769c9f4a2fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56122242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28194f04b9ad3649cd04e72f3b2624a90c5ad4c1edff0e0c252c11038fcf3127`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:17 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3513d5b2b3e9c313aac4fe1d06901613c7115bba499be9bdfa344dfa8cf62`  
		Last Modified: Thu, 28 Feb 2019 09:44:44 GMT  
		Size: 9.5 MB (9517425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-rc1`

```console
$ docker pull docker@sha256:ef0ac6fc7a752e36b41a1f84915fd12d61e5b854b22a2dd68a33c47aa3bfcdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:18.09.3-rc1` - linux; arm variant v6

```console
$ docker pull docker@sha256:d78c891512c3208d449f1cc80669db91ae6f4eda571a18163a4589ccd4cf43c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72389ebb18041498d08fce4a35e5ed9b41907d1990836976405b9dd93fe44937`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-rc1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2e4f3fe637a2ccca876a078bba4e36ead31ad0033be11d2046d7ee2f73187025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46629268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8ca053926e7243aa74935d7795a0d0e602d66f48135686c4b734cc33e7310d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-rc1-dind`

```console
$ docker pull docker@sha256:8ef79b89fa53586782973a41e2db67695749ece46d93de9ff0e44d7d219dcaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:18.09.3-rc1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:00a257a597998ff3c1811d3c20a49485eee7abf54a91535e1ccaa7e4d2520c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04a23fa0ae092df464a67e4443a4f747814b5dc7183342704a6d1bc9815d1d8`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:49:41 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:49:43 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:44 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:49:44 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:45 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17888cdb2bf75e6290b347f53c4d3672d3f55447c74f4e5d42f16c6c8842a52f`  
		Last Modified: Thu, 28 Feb 2019 08:51:57 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c2daf4f6420febaadb9cee63af3917b256e5e63a9363d8d058261eaadb7d4e`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f34719728cbbe1f62e9a5abab46a734863b7451b1d90d9ba297017a994db8d9`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4bb607f28f71a5cc38de6fdae10057ddae0b6e1d9730e1077e5f9c7be2266`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-rc1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d8777c62297d95f1e875030a11e7e4b9d99d6df71ba96923057b3421a03c7b56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51441677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf40f66b30838ff7cd844377676167225264764f77a1b4a70e3a7fbbed8b5d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:40:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:40:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:12 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:40:13 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:14 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c4bde04024da260d355787000937bc5cf290c5d43548e38360d33f77326719`  
		Last Modified: Thu, 28 Feb 2019 09:43:17 GMT  
		Size: 4.8 MB (4809799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f403e509a3bf2aa3cb8b96a0c6b74eb3624befa2e6f12362cbd8d524eb244a10`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918a564393c8e8d019422fa031babca0a03db2d94fe4667483d298ebfc644ec2`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c6226e922b14539cde700cb319fb611b00e1116735777685f4181aba9ba88`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-rc1-git`

```console
$ docker pull docker@sha256:feeae22ed32852693290b565c609edae3ab064ff025a96456da0eb57fbb961c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:18.09.3-rc1-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:9d2e76fa518f55d59326a4f9599d2b64ec6ca476cb67f9839ee2412fc6a99e6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57328419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27651d9e537cdb8d93f7a1bfe6b79f0b13a58cd161ff872cb875c3565626657`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:53 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10d8ff7e0783e1f9db079e34b423c9a29448257c3e39425b1a546af79a8f6d9`  
		Last Modified: Thu, 28 Feb 2019 08:52:08 GMT  
		Size: 8.8 MB (8766784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-rc1-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:903bb1fcf81ae996ff631324b05ba592f41af0c39511ac5885563f82142b0dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56146670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31c6cf5fc8bbaaa4fdfa05081108d39cec9780e9b1885507e543a64297fc65b`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:27 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872ff01c35f39a43e282ffbdcb087401acf9ac861737450716148daf7d12dbaa`  
		Last Modified: Thu, 28 Feb 2019 09:43:34 GMT  
		Size: 9.5 MB (9517402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:699838c9f0a4396b56c1d946fea8d88a07e5224f11ccb743946a76b5947afd36
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
$ docker pull docker@sha256:f8bed6633aca7fa0a1cff5b4e6abdd4fa76495d50b4471ad77f39a7ec3a9c8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51297327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed002c7508b3fb6d610b95b02d40a9e9087e535034d5836ba1d281f31098ec22`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:17 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:19 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:20 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:20 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:21 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafb14b88fc4630f7083d22d382063b29b94c1ed9760cc109bdd81b739d377d8`  
		Last Modified: Thu, 28 Feb 2019 08:52:46 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14660ff2fe9dc2ce463ed163b4a74376bc9a88a4c5e1ad999e176c2150b77ad8`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd114497ccf7df36062b3b50dd0b92525a34fdd9e4a93155d483d1649ad4eb5`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3290b9d105f8b001fd3728bd87ce5b08158b030204d5f0df0cf13fab54edab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4deafc0a05146987076925a3c1a5ea07818948458d10214af0df00f4117c63ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51417215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317071b4b8fa32bc1be838e96673e2dd2cb2ea2ed039524e38532f30b741c2f5`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:05 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:06 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:07 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79438251dd0380ba88f2dbfe62a9a71d6e6e68ff18d4a662e07a8f0ac1f84b3`  
		Last Modified: Thu, 28 Feb 2019 09:44:26 GMT  
		Size: 4.8 MB (4809786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e4363d9157c551533716a9bee201af2edcd8962d89d0360462b0eb54fade7e`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30392ce49a90d31ffdddffe3bf7ffad11112ddfc93cf5cf2ab9b6645a07b259f`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f109538ab2844315cccc1917be324482f752b0d4b2431c1d711a5a240a98ac2b`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:99240c584aacef5019559d0351a3017f1911f9bb618167306c490c5938bd6b77
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
$ docker pull docker@sha256:99786077e608c30c1ca1045ad54e9de4b62a8ed00ef94aca47d8bb8e8d4c69d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57296558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b051ce505dc1e14f001fe1d20069278f873996b448ac4771d1138c6ab2694600`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:29 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08551d647628adddb18e37493d0674aba8cbd1813ef2e4fa41d89a1aa80b2f2`  
		Last Modified: Thu, 28 Feb 2019 08:53:00 GMT  
		Size: 8.8 MB (8766785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:06ad4de5fba8aef01ae45f149052ffdbe2f86ab33406b392d8c43769c9f4a2fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56122242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28194f04b9ad3649cd04e72f3b2624a90c5ad4c1edff0e0c252c11038fcf3127`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:17 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3513d5b2b3e9c313aac4fe1d06901613c7115bba499be9bdfa344dfa8cf62`  
		Last Modified: Thu, 28 Feb 2019 09:44:44 GMT  
		Size: 9.5 MB (9517425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc`

```console
$ docker pull docker@sha256:ef0ac6fc7a752e36b41a1f84915fd12d61e5b854b22a2dd68a33c47aa3bfcdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:18.09-rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:d78c891512c3208d449f1cc80669db91ae6f4eda571a18163a4589ccd4cf43c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72389ebb18041498d08fce4a35e5ed9b41907d1990836976405b9dd93fe44937`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2e4f3fe637a2ccca876a078bba4e36ead31ad0033be11d2046d7ee2f73187025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46629268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8ca053926e7243aa74935d7795a0d0e602d66f48135686c4b734cc33e7310d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-dind`

```console
$ docker pull docker@sha256:8ef79b89fa53586782973a41e2db67695749ece46d93de9ff0e44d7d219dcaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:18.09-rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:00a257a597998ff3c1811d3c20a49485eee7abf54a91535e1ccaa7e4d2520c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04a23fa0ae092df464a67e4443a4f747814b5dc7183342704a6d1bc9815d1d8`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:49:41 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:49:43 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:44 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:49:44 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:45 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17888cdb2bf75e6290b347f53c4d3672d3f55447c74f4e5d42f16c6c8842a52f`  
		Last Modified: Thu, 28 Feb 2019 08:51:57 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c2daf4f6420febaadb9cee63af3917b256e5e63a9363d8d058261eaadb7d4e`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f34719728cbbe1f62e9a5abab46a734863b7451b1d90d9ba297017a994db8d9`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4bb607f28f71a5cc38de6fdae10057ddae0b6e1d9730e1077e5f9c7be2266`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d8777c62297d95f1e875030a11e7e4b9d99d6df71ba96923057b3421a03c7b56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51441677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf40f66b30838ff7cd844377676167225264764f77a1b4a70e3a7fbbed8b5d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:40:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:40:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:12 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:40:13 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:14 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c4bde04024da260d355787000937bc5cf290c5d43548e38360d33f77326719`  
		Last Modified: Thu, 28 Feb 2019 09:43:17 GMT  
		Size: 4.8 MB (4809799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f403e509a3bf2aa3cb8b96a0c6b74eb3624befa2e6f12362cbd8d524eb244a10`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918a564393c8e8d019422fa031babca0a03db2d94fe4667483d298ebfc644ec2`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c6226e922b14539cde700cb319fb611b00e1116735777685f4181aba9ba88`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-git`

```console
$ docker pull docker@sha256:feeae22ed32852693290b565c609edae3ab064ff025a96456da0eb57fbb961c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:18.09-rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:9d2e76fa518f55d59326a4f9599d2b64ec6ca476cb67f9839ee2412fc6a99e6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57328419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27651d9e537cdb8d93f7a1bfe6b79f0b13a58cd161ff872cb875c3565626657`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:53 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10d8ff7e0783e1f9db079e34b423c9a29448257c3e39425b1a546af79a8f6d9`  
		Last Modified: Thu, 28 Feb 2019 08:52:08 GMT  
		Size: 8.8 MB (8766784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:903bb1fcf81ae996ff631324b05ba592f41af0c39511ac5885563f82142b0dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56146670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31c6cf5fc8bbaaa4fdfa05081108d39cec9780e9b1885507e543a64297fc65b`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:27 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872ff01c35f39a43e282ffbdcb087401acf9ac861737450716148daf7d12dbaa`  
		Last Modified: Thu, 28 Feb 2019 09:43:34 GMT  
		Size: 9.5 MB (9517402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:699838c9f0a4396b56c1d946fea8d88a07e5224f11ccb743946a76b5947afd36
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
$ docker pull docker@sha256:f8bed6633aca7fa0a1cff5b4e6abdd4fa76495d50b4471ad77f39a7ec3a9c8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51297327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed002c7508b3fb6d610b95b02d40a9e9087e535034d5836ba1d281f31098ec22`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:17 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:19 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:20 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:20 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:21 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafb14b88fc4630f7083d22d382063b29b94c1ed9760cc109bdd81b739d377d8`  
		Last Modified: Thu, 28 Feb 2019 08:52:46 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14660ff2fe9dc2ce463ed163b4a74376bc9a88a4c5e1ad999e176c2150b77ad8`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd114497ccf7df36062b3b50dd0b92525a34fdd9e4a93155d483d1649ad4eb5`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3290b9d105f8b001fd3728bd87ce5b08158b030204d5f0df0cf13fab54edab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4deafc0a05146987076925a3c1a5ea07818948458d10214af0df00f4117c63ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51417215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317071b4b8fa32bc1be838e96673e2dd2cb2ea2ed039524e38532f30b741c2f5`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:05 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:06 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:07 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79438251dd0380ba88f2dbfe62a9a71d6e6e68ff18d4a662e07a8f0ac1f84b3`  
		Last Modified: Thu, 28 Feb 2019 09:44:26 GMT  
		Size: 4.8 MB (4809786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e4363d9157c551533716a9bee201af2edcd8962d89d0360462b0eb54fade7e`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30392ce49a90d31ffdddffe3bf7ffad11112ddfc93cf5cf2ab9b6645a07b259f`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f109538ab2844315cccc1917be324482f752b0d4b2431c1d711a5a240a98ac2b`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:99240c584aacef5019559d0351a3017f1911f9bb618167306c490c5938bd6b77
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
$ docker pull docker@sha256:99786077e608c30c1ca1045ad54e9de4b62a8ed00ef94aca47d8bb8e8d4c69d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57296558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b051ce505dc1e14f001fe1d20069278f873996b448ac4771d1138c6ab2694600`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:29 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08551d647628adddb18e37493d0674aba8cbd1813ef2e4fa41d89a1aa80b2f2`  
		Last Modified: Thu, 28 Feb 2019 08:53:00 GMT  
		Size: 8.8 MB (8766785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:06ad4de5fba8aef01ae45f149052ffdbe2f86ab33406b392d8c43769c9f4a2fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56122242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28194f04b9ad3649cd04e72f3b2624a90c5ad4c1edff0e0c252c11038fcf3127`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:17 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3513d5b2b3e9c313aac4fe1d06901613c7115bba499be9bdfa344dfa8cf62`  
		Last Modified: Thu, 28 Feb 2019 09:44:44 GMT  
		Size: 9.5 MB (9517425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:699838c9f0a4396b56c1d946fea8d88a07e5224f11ccb743946a76b5947afd36
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
$ docker pull docker@sha256:f8bed6633aca7fa0a1cff5b4e6abdd4fa76495d50b4471ad77f39a7ec3a9c8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51297327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed002c7508b3fb6d610b95b02d40a9e9087e535034d5836ba1d281f31098ec22`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:17 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:19 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:20 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:20 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:21 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafb14b88fc4630f7083d22d382063b29b94c1ed9760cc109bdd81b739d377d8`  
		Last Modified: Thu, 28 Feb 2019 08:52:46 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14660ff2fe9dc2ce463ed163b4a74376bc9a88a4c5e1ad999e176c2150b77ad8`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd114497ccf7df36062b3b50dd0b92525a34fdd9e4a93155d483d1649ad4eb5`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3290b9d105f8b001fd3728bd87ce5b08158b030204d5f0df0cf13fab54edab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4deafc0a05146987076925a3c1a5ea07818948458d10214af0df00f4117c63ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51417215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317071b4b8fa32bc1be838e96673e2dd2cb2ea2ed039524e38532f30b741c2f5`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:05 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:06 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:07 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79438251dd0380ba88f2dbfe62a9a71d6e6e68ff18d4a662e07a8f0ac1f84b3`  
		Last Modified: Thu, 28 Feb 2019 09:44:26 GMT  
		Size: 4.8 MB (4809786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e4363d9157c551533716a9bee201af2edcd8962d89d0360462b0eb54fade7e`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30392ce49a90d31ffdddffe3bf7ffad11112ddfc93cf5cf2ab9b6645a07b259f`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f109538ab2844315cccc1917be324482f752b0d4b2431c1d711a5a240a98ac2b`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:7c14f303d966fe5f8a6d4685ad3f3ae9d7347b87a72e549201c738234aad1f12
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
$ docker pull docker@sha256:bfc7ec2083006e732ecd34a7082a635369ea3cc66672b7e41cf622f22bd3c365
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
$ docker pull docker@sha256:66ea801d040b8faa4f8fcbf201b03a50646c6bd4b2b1f28c47aa120d5165f94d
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
$ docker pull docker@sha256:99240c584aacef5019559d0351a3017f1911f9bb618167306c490c5938bd6b77
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
$ docker pull docker@sha256:99786077e608c30c1ca1045ad54e9de4b62a8ed00ef94aca47d8bb8e8d4c69d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57296558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b051ce505dc1e14f001fe1d20069278f873996b448ac4771d1138c6ab2694600`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:29 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08551d647628adddb18e37493d0674aba8cbd1813ef2e4fa41d89a1aa80b2f2`  
		Last Modified: Thu, 28 Feb 2019 08:53:00 GMT  
		Size: 8.8 MB (8766785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:06ad4de5fba8aef01ae45f149052ffdbe2f86ab33406b392d8c43769c9f4a2fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56122242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28194f04b9ad3649cd04e72f3b2624a90c5ad4c1edff0e0c252c11038fcf3127`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:17 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3513d5b2b3e9c313aac4fe1d06901613c7115bba499be9bdfa344dfa8cf62`  
		Last Modified: Thu, 28 Feb 2019 09:44:44 GMT  
		Size: 9.5 MB (9517425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:683afd3e5d5f8904fb8aa7874a84325970ac82b720d02336a380a77f874bc51e
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
$ docker pull docker@sha256:8d9511f22961447a2c82a023d8cbe751c92881171a15f219d928142f44da9a49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48529773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f7d3233066453ab4ddd4772425d7942a05e976fc2af9b9918e3a75bf4422e5`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:07a266f5866c0597311036e064e48d27062739060595ff8b6192ccabe1812c30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd7eaa03404f8358172c7cf7ae3ff472411dd8186efd7ed62de61588c96c660`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:ef0ac6fc7a752e36b41a1f84915fd12d61e5b854b22a2dd68a33c47aa3bfcdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:d78c891512c3208d449f1cc80669db91ae6f4eda571a18163a4589ccd4cf43c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72389ebb18041498d08fce4a35e5ed9b41907d1990836976405b9dd93fe44937`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2e4f3fe637a2ccca876a078bba4e36ead31ad0033be11d2046d7ee2f73187025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46629268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8ca053926e7243aa74935d7795a0d0e602d66f48135686c4b734cc33e7310d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:8ef79b89fa53586782973a41e2db67695749ece46d93de9ff0e44d7d219dcaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:00a257a597998ff3c1811d3c20a49485eee7abf54a91535e1ccaa7e4d2520c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04a23fa0ae092df464a67e4443a4f747814b5dc7183342704a6d1bc9815d1d8`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:49:41 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:49:43 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:44 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:49:44 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:45 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17888cdb2bf75e6290b347f53c4d3672d3f55447c74f4e5d42f16c6c8842a52f`  
		Last Modified: Thu, 28 Feb 2019 08:51:57 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c2daf4f6420febaadb9cee63af3917b256e5e63a9363d8d058261eaadb7d4e`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f34719728cbbe1f62e9a5abab46a734863b7451b1d90d9ba297017a994db8d9`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4bb607f28f71a5cc38de6fdae10057ddae0b6e1d9730e1077e5f9c7be2266`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d8777c62297d95f1e875030a11e7e4b9d99d6df71ba96923057b3421a03c7b56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51441677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf40f66b30838ff7cd844377676167225264764f77a1b4a70e3a7fbbed8b5d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:40:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:40:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:12 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:40:13 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:14 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c4bde04024da260d355787000937bc5cf290c5d43548e38360d33f77326719`  
		Last Modified: Thu, 28 Feb 2019 09:43:17 GMT  
		Size: 4.8 MB (4809799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f403e509a3bf2aa3cb8b96a0c6b74eb3624befa2e6f12362cbd8d524eb244a10`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918a564393c8e8d019422fa031babca0a03db2d94fe4667483d298ebfc644ec2`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c6226e922b14539cde700cb319fb611b00e1116735777685f4181aba9ba88`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:feeae22ed32852693290b565c609edae3ab064ff025a96456da0eb57fbb961c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:9d2e76fa518f55d59326a4f9599d2b64ec6ca476cb67f9839ee2412fc6a99e6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57328419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27651d9e537cdb8d93f7a1bfe6b79f0b13a58cd161ff872cb875c3565626657`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:53 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10d8ff7e0783e1f9db079e34b423c9a29448257c3e39425b1a546af79a8f6d9`  
		Last Modified: Thu, 28 Feb 2019 08:52:08 GMT  
		Size: 8.8 MB (8766784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:903bb1fcf81ae996ff631324b05ba592f41af0c39511ac5885563f82142b0dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56146670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31c6cf5fc8bbaaa4fdfa05081108d39cec9780e9b1885507e543a64297fc65b`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:27 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872ff01c35f39a43e282ffbdcb087401acf9ac861737450716148daf7d12dbaa`  
		Last Modified: Thu, 28 Feb 2019 09:43:34 GMT  
		Size: 9.5 MB (9517402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:683afd3e5d5f8904fb8aa7874a84325970ac82b720d02336a380a77f874bc51e
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
$ docker pull docker@sha256:8d9511f22961447a2c82a023d8cbe751c92881171a15f219d928142f44da9a49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48529773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f7d3233066453ab4ddd4772425d7942a05e976fc2af9b9918e3a75bf4422e5`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:07a266f5866c0597311036e064e48d27062739060595ff8b6192ccabe1812c30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46604817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd7eaa03404f8358172c7cf7ae3ff472411dd8186efd7ed62de61588c96c660`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:699838c9f0a4396b56c1d946fea8d88a07e5224f11ccb743946a76b5947afd36
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
$ docker pull docker@sha256:f8bed6633aca7fa0a1cff5b4e6abdd4fa76495d50b4471ad77f39a7ec3a9c8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51297327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed002c7508b3fb6d610b95b02d40a9e9087e535034d5836ba1d281f31098ec22`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:17 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:19 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:20 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:20 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:21 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafb14b88fc4630f7083d22d382063b29b94c1ed9760cc109bdd81b739d377d8`  
		Last Modified: Thu, 28 Feb 2019 08:52:46 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14660ff2fe9dc2ce463ed163b4a74376bc9a88a4c5e1ad999e176c2150b77ad8`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd114497ccf7df36062b3b50dd0b92525a34fdd9e4a93155d483d1649ad4eb5`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3290b9d105f8b001fd3728bd87ce5b08158b030204d5f0df0cf13fab54edab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4deafc0a05146987076925a3c1a5ea07818948458d10214af0df00f4117c63ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51417215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317071b4b8fa32bc1be838e96673e2dd2cb2ea2ed039524e38532f30b741c2f5`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:05 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:06 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:07 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79438251dd0380ba88f2dbfe62a9a71d6e6e68ff18d4a662e07a8f0ac1f84b3`  
		Last Modified: Thu, 28 Feb 2019 09:44:26 GMT  
		Size: 4.8 MB (4809786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e4363d9157c551533716a9bee201af2edcd8962d89d0360462b0eb54fade7e`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30392ce49a90d31ffdddffe3bf7ffad11112ddfc93cf5cf2ab9b6645a07b259f`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f109538ab2844315cccc1917be324482f752b0d4b2431c1d711a5a240a98ac2b`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:99240c584aacef5019559d0351a3017f1911f9bb618167306c490c5938bd6b77
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
$ docker pull docker@sha256:99786077e608c30c1ca1045ad54e9de4b62a8ed00ef94aca47d8bb8e8d4c69d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57296558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b051ce505dc1e14f001fe1d20069278f873996b448ac4771d1138c6ab2694600`
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
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:29 GMT
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
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08551d647628adddb18e37493d0674aba8cbd1813ef2e4fa41d89a1aa80b2f2`  
		Last Modified: Thu, 28 Feb 2019 08:53:00 GMT  
		Size: 8.8 MB (8766785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:06ad4de5fba8aef01ae45f149052ffdbe2f86ab33406b392d8c43769c9f4a2fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56122242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28194f04b9ad3649cd04e72f3b2624a90c5ad4c1edff0e0c252c11038fcf3127`
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
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:41:17 GMT
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
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3513d5b2b3e9c313aac4fe1d06901613c7115bba499be9bdfa344dfa8cf62`  
		Last Modified: Thu, 28 Feb 2019 09:44:44 GMT  
		Size: 9.5 MB (9517425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:ef0ac6fc7a752e36b41a1f84915fd12d61e5b854b22a2dd68a33c47aa3bfcdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:d78c891512c3208d449f1cc80669db91ae6f4eda571a18163a4589ccd4cf43c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72389ebb18041498d08fce4a35e5ed9b41907d1990836976405b9dd93fe44937`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2e4f3fe637a2ccca876a078bba4e36ead31ad0033be11d2046d7ee2f73187025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46629268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8ca053926e7243aa74935d7795a0d0e602d66f48135686c4b734cc33e7310d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:8ef79b89fa53586782973a41e2db67695749ece46d93de9ff0e44d7d219dcaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:00a257a597998ff3c1811d3c20a49485eee7abf54a91535e1ccaa7e4d2520c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04a23fa0ae092df464a67e4443a4f747814b5dc7183342704a6d1bc9815d1d8`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:49:41 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:49:43 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:44 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:49:44 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:45 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17888cdb2bf75e6290b347f53c4d3672d3f55447c74f4e5d42f16c6c8842a52f`  
		Last Modified: Thu, 28 Feb 2019 08:51:57 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c2daf4f6420febaadb9cee63af3917b256e5e63a9363d8d058261eaadb7d4e`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f34719728cbbe1f62e9a5abab46a734863b7451b1d90d9ba297017a994db8d9`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4bb607f28f71a5cc38de6fdae10057ddae0b6e1d9730e1077e5f9c7be2266`  
		Last Modified: Thu, 28 Feb 2019 08:51:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d8777c62297d95f1e875030a11e7e4b9d99d6df71ba96923057b3421a03c7b56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51441677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf40f66b30838ff7cd844377676167225264764f77a1b4a70e3a7fbbed8b5d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:40:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:40:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:12 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:40:13 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:14 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c4bde04024da260d355787000937bc5cf290c5d43548e38360d33f77326719`  
		Last Modified: Thu, 28 Feb 2019 09:43:17 GMT  
		Size: 4.8 MB (4809799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f403e509a3bf2aa3cb8b96a0c6b74eb3624befa2e6f12362cbd8d524eb244a10`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918a564393c8e8d019422fa031babca0a03db2d94fe4667483d298ebfc644ec2`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c6226e922b14539cde700cb319fb611b00e1116735777685f4181aba9ba88`  
		Last Modified: Thu, 28 Feb 2019 09:43:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:feeae22ed32852693290b565c609edae3ab064ff025a96456da0eb57fbb961c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:9d2e76fa518f55d59326a4f9599d2b64ec6ca476cb67f9839ee2412fc6a99e6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57328419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27651d9e537cdb8d93f7a1bfe6b79f0b13a58cd161ff872cb875c3565626657`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:49:53 GMT
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10d8ff7e0783e1f9db079e34b423c9a29448257c3e39425b1a546af79a8f6d9`  
		Last Modified: Thu, 28 Feb 2019 08:52:08 GMT  
		Size: 8.8 MB (8766784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:903bb1fcf81ae996ff631324b05ba592f41af0c39511ac5885563f82142b0dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56146670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31c6cf5fc8bbaaa4fdfa05081108d39cec9780e9b1885507e543a64297fc65b`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:27 GMT
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872ff01c35f39a43e282ffbdcb087401acf9ac861737450716148daf7d12dbaa`  
		Last Modified: Thu, 28 Feb 2019 09:43:34 GMT  
		Size: 9.5 MB (9517402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
