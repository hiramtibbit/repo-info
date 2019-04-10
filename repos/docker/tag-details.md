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
-	[`docker:18.09.4`](#docker18094)
-	[`docker:18.09.4-dind`](#docker18094-dind)
-	[`docker:18.09.4-git`](#docker18094-git)
-	[`docker:18.09.5-rc1`](#docker18095-rc1)
-	[`docker:18.09.5-rc1-dind`](#docker18095-rc1-dind)
-	[`docker:18.09.5-rc1-git`](#docker18095-rc1-git)
-	[`docker:18.09-dind`](#docker1809-dind)
-	[`docker:18.09-git`](#docker1809-git)
-	[`docker:18.09-rc`](#docker1809-rc)
-	[`docker:18.09-rc-dind`](#docker1809-rc-dind)
-	[`docker:18.09-rc-git`](#docker1809-rc-git)
-	[`docker:18-dind`](#docker18-dind)
-	[`docker:18-git`](#docker18-git)
-	[`docker:19.03.0-beta1`](#docker19030-beta1)
-	[`docker:19.03.0-beta1-dind`](#docker19030-beta1-dind)
-	[`docker:19.03.0-beta1-git`](#docker19030-beta1-git)
-	[`docker:19.03-rc`](#docker1903-rc)
-	[`docker:19.03-rc-dind`](#docker1903-rc-dind)
-	[`docker:19.03-rc-git`](#docker1903-rc-git)
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
$ docker pull docker@sha256:73df00cec6b4703c5d157cb3b30e1ed6dbc8fea66306c7c42aa0d11fbbb1a320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:d2788192808ca3b8080a01d6673198ba12f274b6fd4b74527df3cbb33223bd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51598110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c56b93c80c39309ae9d7e0575d7e2e700fdd4f1bbef4c0cfb00f2dcda5c2bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa235ac6c68cf4c9139bb119f35a04760e52d4967d50d65597b82e8a7db49880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48572515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069cd81aab9a8be8b5edf1763b8c1cd35222438d090e2ab21c46effbfe60eee1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b97753e950c0ebe031845406684c0e8d8e5ed15244db64a5ac3c4565d164be40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f696518cc6f631d57127ebf06940216aa8fd8a69116a3d40a934038ffb04bf5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06`

```console
$ docker pull docker@sha256:598ac36d39a3849fccfbdfc6e932c3ee8a0db4fdfb05d1f9868f14eea52afe5e
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
$ docker pull docker@sha256:a379bde75b742936ac60746178ae4edf5a029e3c85c202e1c68f210bbb9fb459
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47377678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60402e528d8a8984ccf117c85e6abad81e3a4a6ad8bf16e014c9441c8bfe5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm variant v6

```console
$ docker pull docker@sha256:90c9921489ac0746eb6e552fcc9ab47bb2223a0aa9d00299fba00b3d58bf97e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079a7a81590b2eafbd5f5d19c3add5521be87f0b823a98a6d37b4400023979cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:593eac89ad94451eac081ab35936c3ea0160429cc024e1aaacfa984884a0e887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543641af69923b990eafdaeb2dbef30429e16702cd7b8db1be9ec61bc67bb916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; ppc64le

```console
$ docker pull docker@sha256:017a2e5b58e08bcb9a65a3f03112fffd77e90ef5a5c53b3b4962c6126916d99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6205e53fb98afbaf69822228800ca8dd5df15d131d060ccdf63a48d54f35798b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06` - linux; s390x

```console
$ docker pull docker@sha256:be671c212cb7c2eb7f19d0fba97c9f8368ccd06ced155557246a98fa9592b753
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead9c6e6c0ad8f4545929177471a70d6c52f23f6063b00a4bd31490bd36f6701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3`

```console
$ docker pull docker@sha256:598ac36d39a3849fccfbdfc6e932c3ee8a0db4fdfb05d1f9868f14eea52afe5e
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
$ docker pull docker@sha256:a379bde75b742936ac60746178ae4edf5a029e3c85c202e1c68f210bbb9fb459
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47377678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60402e528d8a8984ccf117c85e6abad81e3a4a6ad8bf16e014c9441c8bfe5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; arm variant v6

```console
$ docker pull docker@sha256:90c9921489ac0746eb6e552fcc9ab47bb2223a0aa9d00299fba00b3d58bf97e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079a7a81590b2eafbd5f5d19c3add5521be87f0b823a98a6d37b4400023979cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:593eac89ad94451eac081ab35936c3ea0160429cc024e1aaacfa984884a0e887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543641af69923b990eafdaeb2dbef30429e16702cd7b8db1be9ec61bc67bb916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; ppc64le

```console
$ docker pull docker@sha256:017a2e5b58e08bcb9a65a3f03112fffd77e90ef5a5c53b3b4962c6126916d99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6205e53fb98afbaf69822228800ca8dd5df15d131d060ccdf63a48d54f35798b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3` - linux; s390x

```console
$ docker pull docker@sha256:be671c212cb7c2eb7f19d0fba97c9f8368ccd06ced155557246a98fa9592b753
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead9c6e6c0ad8f4545929177471a70d6c52f23f6063b00a4bd31490bd36f6701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce`

```console
$ docker pull docker@sha256:598ac36d39a3849fccfbdfc6e932c3ee8a0db4fdfb05d1f9868f14eea52afe5e
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
$ docker pull docker@sha256:a379bde75b742936ac60746178ae4edf5a029e3c85c202e1c68f210bbb9fb459
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47377678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60402e528d8a8984ccf117c85e6abad81e3a4a6ad8bf16e014c9441c8bfe5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; arm variant v6

```console
$ docker pull docker@sha256:90c9921489ac0746eb6e552fcc9ab47bb2223a0aa9d00299fba00b3d58bf97e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079a7a81590b2eafbd5f5d19c3add5521be87f0b823a98a6d37b4400023979cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:593eac89ad94451eac081ab35936c3ea0160429cc024e1aaacfa984884a0e887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543641af69923b990eafdaeb2dbef30429e16702cd7b8db1be9ec61bc67bb916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:017a2e5b58e08bcb9a65a3f03112fffd77e90ef5a5c53b3b4962c6126916d99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6205e53fb98afbaf69822228800ca8dd5df15d131d060ccdf63a48d54f35798b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce` - linux; s390x

```console
$ docker pull docker@sha256:be671c212cb7c2eb7f19d0fba97c9f8368ccd06ced155557246a98fa9592b753
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead9c6e6c0ad8f4545929177471a70d6c52f23f6063b00a4bd31490bd36f6701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-dind`

```console
$ docker pull docker@sha256:c4da5b268079eb5bf04d77d7aff0082a3d2c795000d9da3d4c4f27511cd205a3
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
$ docker pull docker@sha256:ab8458865018a06596a8727fd9371ac858a3319d647ceb33f58198ade71e5789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52150071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765266e8f69ae70d04d51f180ddc0e552ca562d737aa1d9811a8255c04b14eb7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:21:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:21:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:21:21 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:21 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:21:21 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:21:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:21 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec858ab88f563c6207ba63ea2e785e529265d4f192fecfdf9774800f15989447`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 4.8 MB (4769772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf53978d3cd7d7156e2e57f278be4c3576b1e8b34e7fb295ab20f7aac81020`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ba1f3dd4cdf48b70f0710b851f549e3c82bdd8947800a37d260f08ba69ae1`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd3f51b70a0c95d820b331dc6760464a22319971f6347dd54663ff9ca78917`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:255d6219fa750ef68af32bec25ca1d584175a841c722a8d3a817f35c502da346
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121eeced307caa3b28e41d4868cd7d1fb58eeebec4b829f042c579a58d1a8477`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:54:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:54:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:54:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:54:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:54:15 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:54:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:16 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3a1286cfbc486936841f486fe94f2f4734422de199024d8cc62b2db320fdf2`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 2.8 MB (2764919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f5a067f69655d6f2216aa9152d3d5764ce7aa5edf1518a96658dce70705bd`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f69c7f8da525ae777149cc23a060c44448fb30456a203db733a0431df93a34`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449065dcd25d2c306d3f2858dc218f5e141ff13cf2788c19d7db29fcc1dd79c3`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2f9d39c1f55035dbbec7a68a759d94899ef96737d828be889d278630d0e182e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39b2d5122d5c960d814e12274d367b8825931ddb4ebf51ca7af1f7fd0601fc0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:20:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:20:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:20:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:31 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:20:32 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:20:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4e9f7c018ba67fd5578d993b8efde330e6ec8be40fb4257be311c87dd84ec`  
		Last Modified: Fri, 08 Mar 2019 04:23:19 GMT  
		Size: 4.8 MB (4809769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a270647959b165a9a04e9c29fdd595ee660afc9183e7becb58334b990e673fca`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7ac5e83b7e40652969f02dee758199a2d9cd5aa6d76ddea829bee3982932c8`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4b69da51b6b91793511a7c9bea238ff94555d4b6bea9f8870e1d61c5bdb8c6`  
		Last Modified: Fri, 08 Mar 2019 04:23:18 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a6252c5aabf817829309273f21e7535c06e97b83ea6208e451624c3c7a208fe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94088c7f25288581ede88a418bdbb8c732c99e31661ddd063cf5aca2bc176f36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:42:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:43:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:43:05 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:43:11 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:43:12 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:43:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:43:18 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:43:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:43:27 GMT
CMD []
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069cd5869667867b64a17e5ac0828679fdfc4736a57c4c68b9fea731f553f396`  
		Last Modified: Fri, 08 Mar 2019 04:44:32 GMT  
		Size: 5.1 MB (5145080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08145056ca3bb28993caf6960c9f64e4a259abdbceb7b069eaad171d34fad940`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6f46e7d294640f80843b94af76f4d6aba417beb21123e47db82faacb0fe44c`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7aa15ee2f21624d003e17b08f808ade7b89ace124c251862cf53359c364788`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:7370ef26f3f8cf645c32e63225dc0e01e9c4d240c129e9f34507b67897d5dbaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b25c9207c3cf7b25f938929a7cb796870ba88274f536b9bbe8fcc8f10d9e7fb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:06:25 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:06:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:06:27 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:27 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:06:27 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:06:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:27 GMT
CMD []
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e851a97c3103596b37130beba6c254391e33024714ac0eb3d1647995fdadfb`  
		Last Modified: Fri, 08 Mar 2019 04:07:05 GMT  
		Size: 4.9 MB (4862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb285fea6c35f637d016f7adf40ef729818c43565faf0a74008f337b376448`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820d630667eaa3e311de2aaa0f58ce23a5f9f60bc077896519c4a82ed8b0004c`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b927938b74544ebb2b74735d168b9963e32e8ee02d7470346f0c1a0918e3af1`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-ce-git`

```console
$ docker pull docker@sha256:3434c9acae8cd2c6edeb57dd8eafcdd74f5f6b5d120ca688c14fe98b78c42502
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
$ docker pull docker@sha256:7c1e748c3ae1c7f25fe3b40746523c06ba67d487b2fd399dd99dc24bfae5c2d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56649605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5078ea0ab23f01da0bd3fb61277e6981ee32266bf5a10b74438fdedaafb9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb09f2b4dee11c3e557e2f82d007c8ee9a2ad82250370a2d242477393a0c5d3f`  
		Last Modified: Tue, 09 Apr 2019 23:23:21 GMT  
		Size: 9.3 MB (9271927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa981f3cbdb824e41a49b30e1b58f51aca554646c85f36df5635520630462c89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54725135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0daef2c8d61c81dd7949c3e0a152802d8b3b82006c7ebfe197b08f0589d1cc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4eb4d6fe68aa39d9569076b3ddc20dd2df4f184865a3cbde67c7f56541fce7`  
		Last Modified: Fri, 08 Mar 2019 03:56:20 GMT  
		Size: 8.8 MB (8767951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7d37b77f524fc7ae7d7e165b4054d3fe9d44bb20e97b4b943969e87366ae8fe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53727011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a98237f86a11dbf1061842282ad73f89a8f37805b04aa385b7d7382d35ee67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb44524e1b36cfe74b34b47aacf50d02ff87d244f82c0dcc97e766ffa241e3d`  
		Last Modified: Fri, 08 Mar 2019 04:23:40 GMT  
		Size: 9.5 MB (9518539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:805933b33510b2c36a9d1821f0a916cf69721ffd72c63afc08f746d19d481157
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30adab44b9add2970e279a015f44fbb976f6cdc142ab01b20ae12d99ed981221`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:43:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f75ad96055339f101c1088e01d01064df4f1ccd99c20206ab478b8181951d`  
		Last Modified: Fri, 08 Mar 2019 04:44:51 GMT  
		Size: 10.1 MB (10064259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:de80250e09543167ec98dc452c2c29a9239e2ebe65fcaa4f0c7b12c9435b6512
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:035099054eb5132f714ab821ab6d15ba1c222f493294eef3d66463ff2d3adac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:34 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4862b13d44dc71a15ad2baec22fa31e4631a2f367af08af2fa882203bff9841`  
		Last Modified: Fri, 08 Mar 2019 04:07:13 GMT  
		Size: 9.4 MB (9398462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-dind`

```console
$ docker pull docker@sha256:c4da5b268079eb5bf04d77d7aff0082a3d2c795000d9da3d4c4f27511cd205a3
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
$ docker pull docker@sha256:ab8458865018a06596a8727fd9371ac858a3319d647ceb33f58198ade71e5789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52150071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765266e8f69ae70d04d51f180ddc0e552ca562d737aa1d9811a8255c04b14eb7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:21:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:21:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:21:21 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:21 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:21:21 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:21:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:21 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec858ab88f563c6207ba63ea2e785e529265d4f192fecfdf9774800f15989447`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 4.8 MB (4769772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf53978d3cd7d7156e2e57f278be4c3576b1e8b34e7fb295ab20f7aac81020`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ba1f3dd4cdf48b70f0710b851f549e3c82bdd8947800a37d260f08ba69ae1`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd3f51b70a0c95d820b331dc6760464a22319971f6347dd54663ff9ca78917`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:255d6219fa750ef68af32bec25ca1d584175a841c722a8d3a817f35c502da346
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121eeced307caa3b28e41d4868cd7d1fb58eeebec4b829f042c579a58d1a8477`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:54:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:54:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:54:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:54:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:54:15 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:54:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:16 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3a1286cfbc486936841f486fe94f2f4734422de199024d8cc62b2db320fdf2`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 2.8 MB (2764919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f5a067f69655d6f2216aa9152d3d5764ce7aa5edf1518a96658dce70705bd`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f69c7f8da525ae777149cc23a060c44448fb30456a203db733a0431df93a34`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449065dcd25d2c306d3f2858dc218f5e141ff13cf2788c19d7db29fcc1dd79c3`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2f9d39c1f55035dbbec7a68a759d94899ef96737d828be889d278630d0e182e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39b2d5122d5c960d814e12274d367b8825931ddb4ebf51ca7af1f7fd0601fc0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:20:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:20:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:20:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:31 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:20:32 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:20:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4e9f7c018ba67fd5578d993b8efde330e6ec8be40fb4257be311c87dd84ec`  
		Last Modified: Fri, 08 Mar 2019 04:23:19 GMT  
		Size: 4.8 MB (4809769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a270647959b165a9a04e9c29fdd595ee660afc9183e7becb58334b990e673fca`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7ac5e83b7e40652969f02dee758199a2d9cd5aa6d76ddea829bee3982932c8`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4b69da51b6b91793511a7c9bea238ff94555d4b6bea9f8870e1d61c5bdb8c6`  
		Last Modified: Fri, 08 Mar 2019 04:23:18 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a6252c5aabf817829309273f21e7535c06e97b83ea6208e451624c3c7a208fe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94088c7f25288581ede88a418bdbb8c732c99e31661ddd063cf5aca2bc176f36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:42:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:43:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:43:05 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:43:11 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:43:12 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:43:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:43:18 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:43:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:43:27 GMT
CMD []
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069cd5869667867b64a17e5ac0828679fdfc4736a57c4c68b9fea731f553f396`  
		Last Modified: Fri, 08 Mar 2019 04:44:32 GMT  
		Size: 5.1 MB (5145080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08145056ca3bb28993caf6960c9f64e4a259abdbceb7b069eaad171d34fad940`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6f46e7d294640f80843b94af76f4d6aba417beb21123e47db82faacb0fe44c`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7aa15ee2f21624d003e17b08f808ade7b89ace124c251862cf53359c364788`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-dind` - linux; s390x

```console
$ docker pull docker@sha256:7370ef26f3f8cf645c32e63225dc0e01e9c4d240c129e9f34507b67897d5dbaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b25c9207c3cf7b25f938929a7cb796870ba88274f536b9bbe8fcc8f10d9e7fb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:06:25 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:06:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:06:27 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:27 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:06:27 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:06:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:27 GMT
CMD []
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e851a97c3103596b37130beba6c254391e33024714ac0eb3d1647995fdadfb`  
		Last Modified: Fri, 08 Mar 2019 04:07:05 GMT  
		Size: 4.9 MB (4862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb285fea6c35f637d016f7adf40ef729818c43565faf0a74008f337b376448`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820d630667eaa3e311de2aaa0f58ce23a5f9f60bc077896519c4a82ed8b0004c`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b927938b74544ebb2b74735d168b9963e32e8ee02d7470346f0c1a0918e3af1`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06.3-git`

```console
$ docker pull docker@sha256:3434c9acae8cd2c6edeb57dd8eafcdd74f5f6b5d120ca688c14fe98b78c42502
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
$ docker pull docker@sha256:7c1e748c3ae1c7f25fe3b40746523c06ba67d487b2fd399dd99dc24bfae5c2d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56649605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5078ea0ab23f01da0bd3fb61277e6981ee32266bf5a10b74438fdedaafb9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb09f2b4dee11c3e557e2f82d007c8ee9a2ad82250370a2d242477393a0c5d3f`  
		Last Modified: Tue, 09 Apr 2019 23:23:21 GMT  
		Size: 9.3 MB (9271927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa981f3cbdb824e41a49b30e1b58f51aca554646c85f36df5635520630462c89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54725135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0daef2c8d61c81dd7949c3e0a152802d8b3b82006c7ebfe197b08f0589d1cc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4eb4d6fe68aa39d9569076b3ddc20dd2df4f184865a3cbde67c7f56541fce7`  
		Last Modified: Fri, 08 Mar 2019 03:56:20 GMT  
		Size: 8.8 MB (8767951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7d37b77f524fc7ae7d7e165b4054d3fe9d44bb20e97b4b943969e87366ae8fe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53727011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a98237f86a11dbf1061842282ad73f89a8f37805b04aa385b7d7382d35ee67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb44524e1b36cfe74b34b47aacf50d02ff87d244f82c0dcc97e766ffa241e3d`  
		Last Modified: Fri, 08 Mar 2019 04:23:40 GMT  
		Size: 9.5 MB (9518539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; ppc64le

```console
$ docker pull docker@sha256:805933b33510b2c36a9d1821f0a916cf69721ffd72c63afc08f746d19d481157
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30adab44b9add2970e279a015f44fbb976f6cdc142ab01b20ae12d99ed981221`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:43:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f75ad96055339f101c1088e01d01064df4f1ccd99c20206ab478b8181951d`  
		Last Modified: Fri, 08 Mar 2019 04:44:51 GMT  
		Size: 10.1 MB (10064259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06.3-git` - linux; s390x

```console
$ docker pull docker@sha256:de80250e09543167ec98dc452c2c29a9239e2ebe65fcaa4f0c7b12c9435b6512
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:035099054eb5132f714ab821ab6d15ba1c222f493294eef3d66463ff2d3adac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:34 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4862b13d44dc71a15ad2baec22fa31e4631a2f367af08af2fa882203bff9841`  
		Last Modified: Fri, 08 Mar 2019 04:07:13 GMT  
		Size: 9.4 MB (9398462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-dind`

```console
$ docker pull docker@sha256:c4da5b268079eb5bf04d77d7aff0082a3d2c795000d9da3d4c4f27511cd205a3
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
$ docker pull docker@sha256:ab8458865018a06596a8727fd9371ac858a3319d647ceb33f58198ade71e5789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52150071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765266e8f69ae70d04d51f180ddc0e552ca562d737aa1d9811a8255c04b14eb7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:21:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:21:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:21:21 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:21 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:21:21 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:21:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:21 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec858ab88f563c6207ba63ea2e785e529265d4f192fecfdf9774800f15989447`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 4.8 MB (4769772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf53978d3cd7d7156e2e57f278be4c3576b1e8b34e7fb295ab20f7aac81020`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ba1f3dd4cdf48b70f0710b851f549e3c82bdd8947800a37d260f08ba69ae1`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd3f51b70a0c95d820b331dc6760464a22319971f6347dd54663ff9ca78917`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:255d6219fa750ef68af32bec25ca1d584175a841c722a8d3a817f35c502da346
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121eeced307caa3b28e41d4868cd7d1fb58eeebec4b829f042c579a58d1a8477`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:54:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:54:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:54:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:54:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:54:15 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:54:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:16 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3a1286cfbc486936841f486fe94f2f4734422de199024d8cc62b2db320fdf2`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 2.8 MB (2764919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f5a067f69655d6f2216aa9152d3d5764ce7aa5edf1518a96658dce70705bd`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f69c7f8da525ae777149cc23a060c44448fb30456a203db733a0431df93a34`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449065dcd25d2c306d3f2858dc218f5e141ff13cf2788c19d7db29fcc1dd79c3`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2f9d39c1f55035dbbec7a68a759d94899ef96737d828be889d278630d0e182e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39b2d5122d5c960d814e12274d367b8825931ddb4ebf51ca7af1f7fd0601fc0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:20:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:20:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:20:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:31 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:20:32 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:20:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4e9f7c018ba67fd5578d993b8efde330e6ec8be40fb4257be311c87dd84ec`  
		Last Modified: Fri, 08 Mar 2019 04:23:19 GMT  
		Size: 4.8 MB (4809769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a270647959b165a9a04e9c29fdd595ee660afc9183e7becb58334b990e673fca`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7ac5e83b7e40652969f02dee758199a2d9cd5aa6d76ddea829bee3982932c8`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4b69da51b6b91793511a7c9bea238ff94555d4b6bea9f8870e1d61c5bdb8c6`  
		Last Modified: Fri, 08 Mar 2019 04:23:18 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a6252c5aabf817829309273f21e7535c06e97b83ea6208e451624c3c7a208fe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94088c7f25288581ede88a418bdbb8c732c99e31661ddd063cf5aca2bc176f36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:42:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:43:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:43:05 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:43:11 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:43:12 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:43:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:43:18 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:43:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:43:27 GMT
CMD []
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069cd5869667867b64a17e5ac0828679fdfc4736a57c4c68b9fea731f553f396`  
		Last Modified: Fri, 08 Mar 2019 04:44:32 GMT  
		Size: 5.1 MB (5145080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08145056ca3bb28993caf6960c9f64e4a259abdbceb7b069eaad171d34fad940`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6f46e7d294640f80843b94af76f4d6aba417beb21123e47db82faacb0fe44c`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7aa15ee2f21624d003e17b08f808ade7b89ace124c251862cf53359c364788`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-dind` - linux; s390x

```console
$ docker pull docker@sha256:7370ef26f3f8cf645c32e63225dc0e01e9c4d240c129e9f34507b67897d5dbaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b25c9207c3cf7b25f938929a7cb796870ba88274f536b9bbe8fcc8f10d9e7fb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:06:25 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:06:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:06:27 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:27 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:06:27 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:06:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:27 GMT
CMD []
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e851a97c3103596b37130beba6c254391e33024714ac0eb3d1647995fdadfb`  
		Last Modified: Fri, 08 Mar 2019 04:07:05 GMT  
		Size: 4.9 MB (4862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb285fea6c35f637d016f7adf40ef729818c43565faf0a74008f337b376448`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820d630667eaa3e311de2aaa0f58ce23a5f9f60bc077896519c4a82ed8b0004c`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b927938b74544ebb2b74735d168b9963e32e8ee02d7470346f0c1a0918e3af1`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06-git`

```console
$ docker pull docker@sha256:3434c9acae8cd2c6edeb57dd8eafcdd74f5f6b5d120ca688c14fe98b78c42502
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
$ docker pull docker@sha256:7c1e748c3ae1c7f25fe3b40746523c06ba67d487b2fd399dd99dc24bfae5c2d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56649605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5078ea0ab23f01da0bd3fb61277e6981ee32266bf5a10b74438fdedaafb9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb09f2b4dee11c3e557e2f82d007c8ee9a2ad82250370a2d242477393a0c5d3f`  
		Last Modified: Tue, 09 Apr 2019 23:23:21 GMT  
		Size: 9.3 MB (9271927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa981f3cbdb824e41a49b30e1b58f51aca554646c85f36df5635520630462c89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54725135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0daef2c8d61c81dd7949c3e0a152802d8b3b82006c7ebfe197b08f0589d1cc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4eb4d6fe68aa39d9569076b3ddc20dd2df4f184865a3cbde67c7f56541fce7`  
		Last Modified: Fri, 08 Mar 2019 03:56:20 GMT  
		Size: 8.8 MB (8767951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7d37b77f524fc7ae7d7e165b4054d3fe9d44bb20e97b4b943969e87366ae8fe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53727011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a98237f86a11dbf1061842282ad73f89a8f37805b04aa385b7d7382d35ee67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb44524e1b36cfe74b34b47aacf50d02ff87d244f82c0dcc97e766ffa241e3d`  
		Last Modified: Fri, 08 Mar 2019 04:23:40 GMT  
		Size: 9.5 MB (9518539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; ppc64le

```console
$ docker pull docker@sha256:805933b33510b2c36a9d1821f0a916cf69721ffd72c63afc08f746d19d481157
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30adab44b9add2970e279a015f44fbb976f6cdc142ab01b20ae12d99ed981221`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:43:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f75ad96055339f101c1088e01d01064df4f1ccd99c20206ab478b8181951d`  
		Last Modified: Fri, 08 Mar 2019 04:44:51 GMT  
		Size: 10.1 MB (10064259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.06-git` - linux; s390x

```console
$ docker pull docker@sha256:de80250e09543167ec98dc452c2c29a9239e2ebe65fcaa4f0c7b12c9435b6512
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:035099054eb5132f714ab821ab6d15ba1c222f493294eef3d66463ff2d3adac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:34 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4862b13d44dc71a15ad2baec22fa31e4631a2f367af08af2fa882203bff9841`  
		Last Modified: Fri, 08 Mar 2019 04:07:13 GMT  
		Size: 9.4 MB (9398462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09`

```console
$ docker pull docker@sha256:73df00cec6b4703c5d157cb3b30e1ed6dbc8fea66306c7c42aa0d11fbbb1a320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:d2788192808ca3b8080a01d6673198ba12f274b6fd4b74527df3cbb33223bd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51598110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c56b93c80c39309ae9d7e0575d7e2e700fdd4f1bbef4c0cfb00f2dcda5c2bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa235ac6c68cf4c9139bb119f35a04760e52d4967d50d65597b82e8a7db49880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48572515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069cd81aab9a8be8b5edf1763b8c1cd35222438d090e2ab21c46effbfe60eee1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b97753e950c0ebe031845406684c0e8d8e5ed15244db64a5ac3c4565d164be40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f696518cc6f631d57127ebf06940216aa8fd8a69116a3d40a934038ffb04bf5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.4`

```console
$ docker pull docker@sha256:73df00cec6b4703c5d157cb3b30e1ed6dbc8fea66306c7c42aa0d11fbbb1a320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.4` - linux; amd64

```console
$ docker pull docker@sha256:d2788192808ca3b8080a01d6673198ba12f274b6fd4b74527df3cbb33223bd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51598110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c56b93c80c39309ae9d7e0575d7e2e700fdd4f1bbef4c0cfb00f2dcda5c2bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.4` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa235ac6c68cf4c9139bb119f35a04760e52d4967d50d65597b82e8a7db49880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48572515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069cd81aab9a8be8b5edf1763b8c1cd35222438d090e2ab21c46effbfe60eee1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.4` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b97753e950c0ebe031845406684c0e8d8e5ed15244db64a5ac3c4565d164be40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f696518cc6f631d57127ebf06940216aa8fd8a69116a3d40a934038ffb04bf5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.4-dind`

```console
$ docker pull docker@sha256:fa6025399dcc96d8ea04cbf1e0b325d965f85459bd22846b21a556c669c43515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.4-dind` - linux; amd64

```console
$ docker pull docker@sha256:034e7d81f7579e224b23cd1b178bc54e69c1bacf8470e9cd2578e5ce483dcf31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56370551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d299612bbebc737ad2c9978cda83b2d9bc60b66031db3736c2897c4cb26e31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:20:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:20:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:20:57 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:20:58 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:20:58 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:58 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:20:59 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:20:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:59 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdfe6c32c38e81e52ac2d639fec5184bc9467928abae060eed95903567c9e82`  
		Last Modified: Tue, 09 Apr 2019 23:22:31 GMT  
		Size: 4.8 MB (4769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6247ea411db2deee2726683f785beafa98d57efb45cbc0d65a7831316ac6d23`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10e745dc4c90ab37f4154f4a9dfefca4f97753dacc8cac6d2e138aba83de007`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5ad8f11b5531436bada5cd5426f7695373e21a1f0486fa2398996104f42aa`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.4-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d98591b334b39504d5fbdf14109421e774976647c49423737663bb39a80ef20c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51340088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b3478eed01cdd42dca103d883043fe1ee984b8d42be9eecd0002b1ca28276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 07:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 07:49:42 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 07:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 07:49:44 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:44 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 07:49:44 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 07:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:45 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcdf9d79309f39478dcb9f0cba0f1731360a1086fdb1aa1cc789ade23344646`  
		Last Modified: Sat, 30 Mar 2019 07:50:53 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89b586be8a16ec40e918944107658d56edaa96c52353b293f4855c2423d31c0`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab4b28dbec04294f5efd99cb6f87e93ce805a14982a87af5c82263abcbf410`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6566a06523efc499e91fea2a925a9d8fc3578ccff22887266c9b4d481fd480a`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.4-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23eab83fd6d81ac1ebd1867c8e3ba50f349669beada9074cdb71f81c832fd07f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4006dc52e20bba46a9c585d26a397fdf00591093fc83e9714fbed7a69ba4efe3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 08:40:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 08:40:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 08:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 08:40:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:40:04 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 08:40:05 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 08:40:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 08:40:06 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33fa1aa4d1b92ac03fb3b3e17b09c7c168b68d509fd3651cb1b95e901ded82b`  
		Last Modified: Sat, 30 Mar 2019 08:41:33 GMT  
		Size: 4.8 MB (4809793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68624f93064d2cb2d89a1a2fc2df111f7f3fde1dd41ec0258340426c29e01c51`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e5ebc3b9cfa0b55d2473aecf3bd888cd04bd75b333be22bc667b3a122c8cd`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315781efb5b4f20c86f6227b2ed03495a63899286e8be0d4e8e33ce109c81377`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.4-git`

```console
$ docker pull docker@sha256:604be9417068c7ea23340b98cfe474276d68953242589e20fd58dde534f47dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.4-git` - linux; amd64

```console
$ docker pull docker@sha256:bfde951d160d78725efc032a45af350f8230007984efb149e184f4bc8fc2c3e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60870034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f3247aee6e491dba6a25fae31a37d3421acf3115aeac0a019d0840c190da04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4756f2b35cee2f3866b8c482ef68f9cabac9c2bc9042362c3a6ee8a1b600ad7b`  
		Last Modified: Tue, 09 Apr 2019 23:22:46 GMT  
		Size: 9.3 MB (9271924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.4-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:dc04b60813f802d4d5048da272de58bb0ef3cfb578f468d515059cd75b81ca82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57341486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34919451a1bf38a279b54d72d436618dd11b1867f4aed50c8b33c898cc52eafb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d68217a87ecd84831ca898e3af4dd342c6cc3c5d93cab0f975fada074ee90d7`  
		Last Modified: Sat, 30 Mar 2019 07:51:08 GMT  
		Size: 8.8 MB (8768971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.4-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23b10324197ec07310f4dc2e5b1dd661782e22a811f718adaf7f1ea2165e8c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56171846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435664024363c33dae3285275e18c07e262c9c3459c5f46479d8f7facf5c4504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:40:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a3dc242ab69c616fe694bf6fc23773acb44a64ea68c1f11a85bedfbd3c0bd2`  
		Last Modified: Sat, 30 Mar 2019 08:41:52 GMT  
		Size: 9.5 MB (9520197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.5-rc1`

```console
$ docker pull docker@sha256:930a43d2a8e7d5892b80e914c5eed8589dc89581e7da2decbbd4c67a1bc90f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09.5-rc1` - linux; amd64

```console
$ docker pull docker@sha256:0584fb13bf760ae59e109b3bd8715ed28cbc79d324fb4bedd8b01009b02ac28c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51588611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c14a3eefed46ad006bda69b1abc7c18a9b12294c25a3796b40ab51de90048d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:37:14 GMT
ENV DOCKER_VERSION=18.09.5-rc1
# Tue, 09 Apr 2019 23:37:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:37:20 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:37:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69415b32808988447c138a06bddb37efe37e57b6bb26fd0959c03c5d3cf3ca15`  
		Last Modified: Tue, 09 Apr 2019 23:39:07 GMT  
		Size: 48.5 MB (48528294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8faff7c2863151ac7ab599dea76cf87096d7fbce9544fea0cb06d82755bac`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14a293dabc88ad94097a7c1ed91eb922f0495404402d16c8507c29e98b0d7`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.5-rc1-dind`

```console
$ docker pull docker@sha256:230f45394ff1bfc233ded4648683b645ebae8dfeb621eb259f0b825700f4b0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09.5-rc1-dind` - linux; amd64

```console
$ docker pull docker@sha256:b66a7b7770a46bd48a4bead86eb21c11ae51ca9f1c70309ee2dd087ff35589f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56360997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d93f0ec8291fe8e65acb2c5a2225709c5749d6b7708f553e51829861dec30a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:37:14 GMT
ENV DOCKER_VERSION=18.09.5-rc1
# Tue, 09 Apr 2019 23:37:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:37:20 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:37:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:21 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:37:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:37:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:37:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:37:27 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:27 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:37:27 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:37:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69415b32808988447c138a06bddb37efe37e57b6bb26fd0959c03c5d3cf3ca15`  
		Last Modified: Tue, 09 Apr 2019 23:39:07 GMT  
		Size: 48.5 MB (48528294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8faff7c2863151ac7ab599dea76cf87096d7fbce9544fea0cb06d82755bac`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14a293dabc88ad94097a7c1ed91eb922f0495404402d16c8507c29e98b0d7`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2551805dbecfd35763de98f6175f817b2b9d55b7b0e64b800f88764f9bd7ca`  
		Last Modified: Tue, 09 Apr 2019 23:39:12 GMT  
		Size: 4.8 MB (4769768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1068ff05a043ea318afb0b0dddea759fda2fff1d7200c62529beee9613528170`  
		Last Modified: Tue, 09 Apr 2019 23:39:11 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5781172736801cb10ee617919ef82096732066ff730cd38e9fd3010128e20e9f`  
		Last Modified: Tue, 09 Apr 2019 23:39:11 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4676a5bc4d84a652377e27c4ce748816d416a149460a6e636f539e0d581c7f7f`  
		Last Modified: Tue, 09 Apr 2019 23:39:11 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.5-rc1-git`

```console
$ docker pull docker@sha256:a04ebc12f9f51afa5a047962c1de61c2f4314e898e964d8e8fb9e82bd6de7921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09.5-rc1-git` - linux; amd64

```console
$ docker pull docker@sha256:39a87fe71bc9b2875a09bc0e0f5e524dd002da13e86a88e9dcea84d1f68bc262
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60860490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbae8979cf0a0f1c59e51b26d59222e762cea80bcca92e02c6cb3ccb0676708`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:37:14 GMT
ENV DOCKER_VERSION=18.09.5-rc1
# Tue, 09 Apr 2019 23:37:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:37:20 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:37:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:21 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69415b32808988447c138a06bddb37efe37e57b6bb26fd0959c03c5d3cf3ca15`  
		Last Modified: Tue, 09 Apr 2019 23:39:07 GMT  
		Size: 48.5 MB (48528294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8faff7c2863151ac7ab599dea76cf87096d7fbce9544fea0cb06d82755bac`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14a293dabc88ad94097a7c1ed91eb922f0495404402d16c8507c29e98b0d7`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c74437bbad39d6d4c01e0e2c7ff051ebaa08dd17f8f2372ff9d82a5d73d90c`  
		Last Modified: Tue, 09 Apr 2019 23:39:21 GMT  
		Size: 9.3 MB (9271879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:fa6025399dcc96d8ea04cbf1e0b325d965f85459bd22846b21a556c669c43515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:034e7d81f7579e224b23cd1b178bc54e69c1bacf8470e9cd2578e5ce483dcf31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56370551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d299612bbebc737ad2c9978cda83b2d9bc60b66031db3736c2897c4cb26e31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:20:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:20:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:20:57 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:20:58 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:20:58 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:58 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:20:59 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:20:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:59 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdfe6c32c38e81e52ac2d639fec5184bc9467928abae060eed95903567c9e82`  
		Last Modified: Tue, 09 Apr 2019 23:22:31 GMT  
		Size: 4.8 MB (4769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6247ea411db2deee2726683f785beafa98d57efb45cbc0d65a7831316ac6d23`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10e745dc4c90ab37f4154f4a9dfefca4f97753dacc8cac6d2e138aba83de007`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5ad8f11b5531436bada5cd5426f7695373e21a1f0486fa2398996104f42aa`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d98591b334b39504d5fbdf14109421e774976647c49423737663bb39a80ef20c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51340088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b3478eed01cdd42dca103d883043fe1ee984b8d42be9eecd0002b1ca28276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 07:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 07:49:42 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 07:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 07:49:44 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:44 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 07:49:44 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 07:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:45 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcdf9d79309f39478dcb9f0cba0f1731360a1086fdb1aa1cc789ade23344646`  
		Last Modified: Sat, 30 Mar 2019 07:50:53 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89b586be8a16ec40e918944107658d56edaa96c52353b293f4855c2423d31c0`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab4b28dbec04294f5efd99cb6f87e93ce805a14982a87af5c82263abcbf410`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6566a06523efc499e91fea2a925a9d8fc3578ccff22887266c9b4d481fd480a`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23eab83fd6d81ac1ebd1867c8e3ba50f349669beada9074cdb71f81c832fd07f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4006dc52e20bba46a9c585d26a397fdf00591093fc83e9714fbed7a69ba4efe3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 08:40:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 08:40:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 08:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 08:40:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:40:04 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 08:40:05 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 08:40:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 08:40:06 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33fa1aa4d1b92ac03fb3b3e17b09c7c168b68d509fd3651cb1b95e901ded82b`  
		Last Modified: Sat, 30 Mar 2019 08:41:33 GMT  
		Size: 4.8 MB (4809793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68624f93064d2cb2d89a1a2fc2df111f7f3fde1dd41ec0258340426c29e01c51`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e5ebc3b9cfa0b55d2473aecf3bd888cd04bd75b333be22bc667b3a122c8cd`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315781efb5b4f20c86f6227b2ed03495a63899286e8be0d4e8e33ce109c81377`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:604be9417068c7ea23340b98cfe474276d68953242589e20fd58dde534f47dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:bfde951d160d78725efc032a45af350f8230007984efb149e184f4bc8fc2c3e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60870034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f3247aee6e491dba6a25fae31a37d3421acf3115aeac0a019d0840c190da04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4756f2b35cee2f3866b8c482ef68f9cabac9c2bc9042362c3a6ee8a1b600ad7b`  
		Last Modified: Tue, 09 Apr 2019 23:22:46 GMT  
		Size: 9.3 MB (9271924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:dc04b60813f802d4d5048da272de58bb0ef3cfb578f468d515059cd75b81ca82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57341486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34919451a1bf38a279b54d72d436618dd11b1867f4aed50c8b33c898cc52eafb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d68217a87ecd84831ca898e3af4dd342c6cc3c5d93cab0f975fada074ee90d7`  
		Last Modified: Sat, 30 Mar 2019 07:51:08 GMT  
		Size: 8.8 MB (8768971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23b10324197ec07310f4dc2e5b1dd661782e22a811f718adaf7f1ea2165e8c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56171846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435664024363c33dae3285275e18c07e262c9c3459c5f46479d8f7facf5c4504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:40:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a3dc242ab69c616fe694bf6fc23773acb44a64ea68c1f11a85bedfbd3c0bd2`  
		Last Modified: Sat, 30 Mar 2019 08:41:52 GMT  
		Size: 9.5 MB (9520197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc`

```console
$ docker pull docker@sha256:930a43d2a8e7d5892b80e914c5eed8589dc89581e7da2decbbd4c67a1bc90f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09-rc` - linux; amd64

```console
$ docker pull docker@sha256:0584fb13bf760ae59e109b3bd8715ed28cbc79d324fb4bedd8b01009b02ac28c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51588611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c14a3eefed46ad006bda69b1abc7c18a9b12294c25a3796b40ab51de90048d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:37:14 GMT
ENV DOCKER_VERSION=18.09.5-rc1
# Tue, 09 Apr 2019 23:37:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:37:20 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:37:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69415b32808988447c138a06bddb37efe37e57b6bb26fd0959c03c5d3cf3ca15`  
		Last Modified: Tue, 09 Apr 2019 23:39:07 GMT  
		Size: 48.5 MB (48528294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8faff7c2863151ac7ab599dea76cf87096d7fbce9544fea0cb06d82755bac`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14a293dabc88ad94097a7c1ed91eb922f0495404402d16c8507c29e98b0d7`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-dind`

```console
$ docker pull docker@sha256:230f45394ff1bfc233ded4648683b645ebae8dfeb621eb259f0b825700f4b0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:b66a7b7770a46bd48a4bead86eb21c11ae51ca9f1c70309ee2dd087ff35589f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56360997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d93f0ec8291fe8e65acb2c5a2225709c5749d6b7708f553e51829861dec30a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:37:14 GMT
ENV DOCKER_VERSION=18.09.5-rc1
# Tue, 09 Apr 2019 23:37:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:37:20 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:37:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:21 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:37:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:37:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:37:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:37:27 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:27 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:37:27 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:37:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69415b32808988447c138a06bddb37efe37e57b6bb26fd0959c03c5d3cf3ca15`  
		Last Modified: Tue, 09 Apr 2019 23:39:07 GMT  
		Size: 48.5 MB (48528294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8faff7c2863151ac7ab599dea76cf87096d7fbce9544fea0cb06d82755bac`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14a293dabc88ad94097a7c1ed91eb922f0495404402d16c8507c29e98b0d7`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2551805dbecfd35763de98f6175f817b2b9d55b7b0e64b800f88764f9bd7ca`  
		Last Modified: Tue, 09 Apr 2019 23:39:12 GMT  
		Size: 4.8 MB (4769768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1068ff05a043ea318afb0b0dddea759fda2fff1d7200c62529beee9613528170`  
		Last Modified: Tue, 09 Apr 2019 23:39:11 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5781172736801cb10ee617919ef82096732066ff730cd38e9fd3010128e20e9f`  
		Last Modified: Tue, 09 Apr 2019 23:39:11 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4676a5bc4d84a652377e27c4ce748816d416a149460a6e636f539e0d581c7f7f`  
		Last Modified: Tue, 09 Apr 2019 23:39:11 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-rc-git`

```console
$ docker pull docker@sha256:a04ebc12f9f51afa5a047962c1de61c2f4314e898e964d8e8fb9e82bd6de7921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:18.09-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:39a87fe71bc9b2875a09bc0e0f5e524dd002da13e86a88e9dcea84d1f68bc262
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60860490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbae8979cf0a0f1c59e51b26d59222e762cea80bcca92e02c6cb3ccb0676708`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:37:14 GMT
ENV DOCKER_VERSION=18.09.5-rc1
# Tue, 09 Apr 2019 23:37:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:37:20 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:37:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:21 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69415b32808988447c138a06bddb37efe37e57b6bb26fd0959c03c5d3cf3ca15`  
		Last Modified: Tue, 09 Apr 2019 23:39:07 GMT  
		Size: 48.5 MB (48528294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8faff7c2863151ac7ab599dea76cf87096d7fbce9544fea0cb06d82755bac`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14a293dabc88ad94097a7c1ed91eb922f0495404402d16c8507c29e98b0d7`  
		Last Modified: Tue, 09 Apr 2019 23:38:52 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c74437bbad39d6d4c01e0e2c7ff051ebaa08dd17f8f2372ff9d82a5d73d90c`  
		Last Modified: Tue, 09 Apr 2019 23:39:21 GMT  
		Size: 9.3 MB (9271879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:fa6025399dcc96d8ea04cbf1e0b325d965f85459bd22846b21a556c669c43515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:034e7d81f7579e224b23cd1b178bc54e69c1bacf8470e9cd2578e5ce483dcf31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56370551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d299612bbebc737ad2c9978cda83b2d9bc60b66031db3736c2897c4cb26e31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:20:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:20:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:20:57 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:20:58 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:20:58 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:58 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:20:59 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:20:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:59 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdfe6c32c38e81e52ac2d639fec5184bc9467928abae060eed95903567c9e82`  
		Last Modified: Tue, 09 Apr 2019 23:22:31 GMT  
		Size: 4.8 MB (4769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6247ea411db2deee2726683f785beafa98d57efb45cbc0d65a7831316ac6d23`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10e745dc4c90ab37f4154f4a9dfefca4f97753dacc8cac6d2e138aba83de007`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5ad8f11b5531436bada5cd5426f7695373e21a1f0486fa2398996104f42aa`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d98591b334b39504d5fbdf14109421e774976647c49423737663bb39a80ef20c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51340088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b3478eed01cdd42dca103d883043fe1ee984b8d42be9eecd0002b1ca28276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 07:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 07:49:42 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 07:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 07:49:44 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:44 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 07:49:44 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 07:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:45 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcdf9d79309f39478dcb9f0cba0f1731360a1086fdb1aa1cc789ade23344646`  
		Last Modified: Sat, 30 Mar 2019 07:50:53 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89b586be8a16ec40e918944107658d56edaa96c52353b293f4855c2423d31c0`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab4b28dbec04294f5efd99cb6f87e93ce805a14982a87af5c82263abcbf410`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6566a06523efc499e91fea2a925a9d8fc3578ccff22887266c9b4d481fd480a`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23eab83fd6d81ac1ebd1867c8e3ba50f349669beada9074cdb71f81c832fd07f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4006dc52e20bba46a9c585d26a397fdf00591093fc83e9714fbed7a69ba4efe3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 08:40:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 08:40:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 08:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 08:40:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:40:04 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 08:40:05 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 08:40:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 08:40:06 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33fa1aa4d1b92ac03fb3b3e17b09c7c168b68d509fd3651cb1b95e901ded82b`  
		Last Modified: Sat, 30 Mar 2019 08:41:33 GMT  
		Size: 4.8 MB (4809793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68624f93064d2cb2d89a1a2fc2df111f7f3fde1dd41ec0258340426c29e01c51`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e5ebc3b9cfa0b55d2473aecf3bd888cd04bd75b333be22bc667b3a122c8cd`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315781efb5b4f20c86f6227b2ed03495a63899286e8be0d4e8e33ce109c81377`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:604be9417068c7ea23340b98cfe474276d68953242589e20fd58dde534f47dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:bfde951d160d78725efc032a45af350f8230007984efb149e184f4bc8fc2c3e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60870034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f3247aee6e491dba6a25fae31a37d3421acf3115aeac0a019d0840c190da04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4756f2b35cee2f3866b8c482ef68f9cabac9c2bc9042362c3a6ee8a1b600ad7b`  
		Last Modified: Tue, 09 Apr 2019 23:22:46 GMT  
		Size: 9.3 MB (9271924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:dc04b60813f802d4d5048da272de58bb0ef3cfb578f468d515059cd75b81ca82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57341486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34919451a1bf38a279b54d72d436618dd11b1867f4aed50c8b33c898cc52eafb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d68217a87ecd84831ca898e3af4dd342c6cc3c5d93cab0f975fada074ee90d7`  
		Last Modified: Sat, 30 Mar 2019 07:51:08 GMT  
		Size: 8.8 MB (8768971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23b10324197ec07310f4dc2e5b1dd661782e22a811f718adaf7f1ea2165e8c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56171846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435664024363c33dae3285275e18c07e262c9c3459c5f46479d8f7facf5c4504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:40:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a3dc242ab69c616fe694bf6fc23773acb44a64ea68c1f11a85bedfbd3c0bd2`  
		Last Modified: Sat, 30 Mar 2019 08:41:52 GMT  
		Size: 9.5 MB (9520197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-beta1`

```console
$ docker pull docker@sha256:787d5c1bbf52b25036186bb201c4c4d7b6960347407a78f5e80e62c7272ea30d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03.0-beta1` - linux; amd64

```console
$ docker pull docker@sha256:a046ca91ed7d4d0dd039c9d23eb5d0796e8eb729413b2587002e59953270f189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66305166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88dbd946db0fe7e4da3accb84c2d550c92069eceae5006564729f14d7b0fb09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-beta1` - linux; arm variant v6

```console
$ docker pull docker@sha256:d28f079237f0a7a1e45164a821f2ab512366c17392b160129942dd6ceed257d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61879035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f67a9e1b0deb3571ffc0c661c9d9f4a8172dc33364a340528db00deb060c4c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-beta1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:58dc6c8bcbaeebc8bfe674d298d240dcd7d235b76fc4d18900a86b25ec714e26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59534941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a8c5034e299f9d634cd4d172db08892f009f4355a584ed05a4e9a709e8a6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-beta1-dind`

```console
$ docker pull docker@sha256:d5561b476667ebacec530164d09d76536fe86f0537c273865cccb368353b4b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03.0-beta1-dind` - linux; amd64

```console
$ docker pull docker@sha256:77a91ba5ee4aa17940c4796c33ea7968f4f35527413ef2f215f5434e2b70323b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71077549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f3746f7033ed1cfb0b25ffa73a04e38fcc898d5abd542df67b66efcd1fb019`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:36:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:37:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:37:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:37:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:37:01 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:02 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:37:02 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:37:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:02 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed6c333ad2e27d51fce8b3dad0aa31cf7c51256ac77dbf417ff716454f20671`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 4.8 MB (4769764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952cb42ffbcfba02026fa1bf0879ab70f1838c31fb496ef72c14c43b4f30422`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e736896fe1ad5b09ff441efc429dec296fc7000c1d83e964c263927887d6042`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af941b55a9c5f2506c398cada296cb302e8d68063e1e9219bd7b3407f470f85e`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-beta1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:278ce4b323e9263b4fd1b30ea577281d127c298871afc6257d75ad575a5bd62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64646634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2237c362868daab678940bc3007d6da6b660d95b55b1124b653fd692af61f1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 07:50:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 07:50:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 07:50:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 07:50:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:50:14 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 07:50:15 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 07:50:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 07:50:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4778314398b119e77d913449c13a550206e52ae0fb69592b6f60bc39106a2`  
		Last Modified: Sat, 06 Apr 2019 07:51:42 GMT  
		Size: 2.8 MB (2764948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9111b03d381f57bffea01e9a19d500b9b006e568654e91ad36f374075ad6`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb86b65f284d702843065f6e38ab2469feb09e05bbbd3c8b8cf603d3a0f90fb`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ba283821e5ab41e8731c6dc901218d88b0e6e7c03190c78ed0699a25859340`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-beta1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ee36da39396b99e24b9c33449172318790fa3cff083eb9e85b10a0f7efd2b71f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e71b6a3e72a05f8660715dbfd2fc5e0a2e3103c0dbbe867bd0bd4cb093ccb8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 08:40:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 08:40:07 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 08:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 08:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:40:11 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 08:40:12 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 08:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 08:40:14 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ae6e9b467132350228ddff01c8bfde47d99ffccbf1565f8402ada43d505397`  
		Last Modified: Sat, 06 Apr 2019 08:42:12 GMT  
		Size: 4.8 MB (4809852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434385bcfadd41f89e8968c25550d83fc3fde8237f29f7ba1402e9d8b6a35da1`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d107aabcdb1fcb124e0d100f8b3da147b60e7d2a33e782d54fc78d683f76f3`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fd8516ccfc138f5cfe5021787b66c0ef468bfd077d30075bb0dd2b4aa73220`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-beta1-git`

```console
$ docker pull docker@sha256:ef7e4046e4bc8583bb1c68fa7965797ca09731023714459aee9955ec92e570a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03.0-beta1-git` - linux; amd64

```console
$ docker pull docker@sha256:0af1d712e2f4df7604b3d68d9937e30c1c35aafe1069107bd221b6ad05ebe4be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75577072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7055351c443ea3b90d1632345942fbe4eec543287684e28cf706c796ba3c438b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd84975669ef228c44e699d3ebe89b2ee5cf78384c833f1a7c8d5ef2fb9e1c4`  
		Last Modified: Tue, 09 Apr 2019 23:38:45 GMT  
		Size: 9.3 MB (9271906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-beta1-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:ed1f01b54be7e308b3927fd813a46c7da29dd71cfa3cf20a3284166efa7798eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70648092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85daf7d57814786ecf55c3bc338988b0774b0693782e5a044bc2db3c9e849b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f09d3ce9cecb95d001326fb8aea81e2b499c5449759daeeedb2b6e65b7734a`  
		Last Modified: Sat, 06 Apr 2019 07:51:54 GMT  
		Size: 8.8 MB (8769057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-beta1-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5ccc906cb74786ef68524c332dbab16210e28b2fe312ef7dd10513d501e44d44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69055151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50fed0974910513648e62bac347b95077f2557dfef626a3cddefd70241e7d0e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14a22c67efb4c116c5faff30ae4fdea403aaae89ac6798ecd498f845792f468`  
		Last Modified: Sat, 06 Apr 2019 08:42:28 GMT  
		Size: 9.5 MB (9520210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc`

```console
$ docker pull docker@sha256:787d5c1bbf52b25036186bb201c4c4d7b6960347407a78f5e80e62c7272ea30d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03-rc` - linux; amd64

```console
$ docker pull docker@sha256:a046ca91ed7d4d0dd039c9d23eb5d0796e8eb729413b2587002e59953270f189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66305166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88dbd946db0fe7e4da3accb84c2d550c92069eceae5006564729f14d7b0fb09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:d28f079237f0a7a1e45164a821f2ab512366c17392b160129942dd6ceed257d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61879035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f67a9e1b0deb3571ffc0c661c9d9f4a8172dc33364a340528db00deb060c4c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:58dc6c8bcbaeebc8bfe674d298d240dcd7d235b76fc4d18900a86b25ec714e26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59534941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a8c5034e299f9d634cd4d172db08892f009f4355a584ed05a4e9a709e8a6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc-dind`

```console
$ docker pull docker@sha256:d5561b476667ebacec530164d09d76536fe86f0537c273865cccb368353b4b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:77a91ba5ee4aa17940c4796c33ea7968f4f35527413ef2f215f5434e2b70323b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71077549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f3746f7033ed1cfb0b25ffa73a04e38fcc898d5abd542df67b66efcd1fb019`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:36:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:37:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:37:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:37:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:37:01 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:02 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:37:02 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:37:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:02 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed6c333ad2e27d51fce8b3dad0aa31cf7c51256ac77dbf417ff716454f20671`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 4.8 MB (4769764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952cb42ffbcfba02026fa1bf0879ab70f1838c31fb496ef72c14c43b4f30422`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e736896fe1ad5b09ff441efc429dec296fc7000c1d83e964c263927887d6042`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af941b55a9c5f2506c398cada296cb302e8d68063e1e9219bd7b3407f470f85e`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:278ce4b323e9263b4fd1b30ea577281d127c298871afc6257d75ad575a5bd62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64646634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2237c362868daab678940bc3007d6da6b660d95b55b1124b653fd692af61f1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 07:50:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 07:50:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 07:50:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 07:50:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:50:14 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 07:50:15 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 07:50:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 07:50:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4778314398b119e77d913449c13a550206e52ae0fb69592b6f60bc39106a2`  
		Last Modified: Sat, 06 Apr 2019 07:51:42 GMT  
		Size: 2.8 MB (2764948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9111b03d381f57bffea01e9a19d500b9b006e568654e91ad36f374075ad6`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb86b65f284d702843065f6e38ab2469feb09e05bbbd3c8b8cf603d3a0f90fb`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ba283821e5ab41e8731c6dc901218d88b0e6e7c03190c78ed0699a25859340`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ee36da39396b99e24b9c33449172318790fa3cff083eb9e85b10a0f7efd2b71f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e71b6a3e72a05f8660715dbfd2fc5e0a2e3103c0dbbe867bd0bd4cb093ccb8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 08:40:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 08:40:07 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 08:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 08:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:40:11 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 08:40:12 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 08:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 08:40:14 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ae6e9b467132350228ddff01c8bfde47d99ffccbf1565f8402ada43d505397`  
		Last Modified: Sat, 06 Apr 2019 08:42:12 GMT  
		Size: 4.8 MB (4809852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434385bcfadd41f89e8968c25550d83fc3fde8237f29f7ba1402e9d8b6a35da1`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d107aabcdb1fcb124e0d100f8b3da147b60e7d2a33e782d54fc78d683f76f3`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fd8516ccfc138f5cfe5021787b66c0ef468bfd077d30075bb0dd2b4aa73220`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc-git`

```console
$ docker pull docker@sha256:ef7e4046e4bc8583bb1c68fa7965797ca09731023714459aee9955ec92e570a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:0af1d712e2f4df7604b3d68d9937e30c1c35aafe1069107bd221b6ad05ebe4be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75577072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7055351c443ea3b90d1632345942fbe4eec543287684e28cf706c796ba3c438b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd84975669ef228c44e699d3ebe89b2ee5cf78384c833f1a7c8d5ef2fb9e1c4`  
		Last Modified: Tue, 09 Apr 2019 23:38:45 GMT  
		Size: 9.3 MB (9271906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:ed1f01b54be7e308b3927fd813a46c7da29dd71cfa3cf20a3284166efa7798eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70648092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85daf7d57814786ecf55c3bc338988b0774b0693782e5a044bc2db3c9e849b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f09d3ce9cecb95d001326fb8aea81e2b499c5449759daeeedb2b6e65b7734a`  
		Last Modified: Sat, 06 Apr 2019 07:51:54 GMT  
		Size: 8.8 MB (8769057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5ccc906cb74786ef68524c332dbab16210e28b2fe312ef7dd10513d501e44d44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69055151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50fed0974910513648e62bac347b95077f2557dfef626a3cddefd70241e7d0e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14a22c67efb4c116c5faff30ae4fdea403aaae89ac6798ecd498f845792f468`  
		Last Modified: Sat, 06 Apr 2019 08:42:28 GMT  
		Size: 9.5 MB (9520210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:fa6025399dcc96d8ea04cbf1e0b325d965f85459bd22846b21a556c669c43515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:034e7d81f7579e224b23cd1b178bc54e69c1bacf8470e9cd2578e5ce483dcf31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56370551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d299612bbebc737ad2c9978cda83b2d9bc60b66031db3736c2897c4cb26e31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:20:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:20:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:20:57 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:20:58 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:20:58 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:58 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:20:59 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:20:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:59 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdfe6c32c38e81e52ac2d639fec5184bc9467928abae060eed95903567c9e82`  
		Last Modified: Tue, 09 Apr 2019 23:22:31 GMT  
		Size: 4.8 MB (4769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6247ea411db2deee2726683f785beafa98d57efb45cbc0d65a7831316ac6d23`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10e745dc4c90ab37f4154f4a9dfefca4f97753dacc8cac6d2e138aba83de007`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5ad8f11b5531436bada5cd5426f7695373e21a1f0486fa2398996104f42aa`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d98591b334b39504d5fbdf14109421e774976647c49423737663bb39a80ef20c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51340088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b3478eed01cdd42dca103d883043fe1ee984b8d42be9eecd0002b1ca28276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 07:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 07:49:42 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 07:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 07:49:44 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:44 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 07:49:44 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 07:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:45 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcdf9d79309f39478dcb9f0cba0f1731360a1086fdb1aa1cc789ade23344646`  
		Last Modified: Sat, 30 Mar 2019 07:50:53 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89b586be8a16ec40e918944107658d56edaa96c52353b293f4855c2423d31c0`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab4b28dbec04294f5efd99cb6f87e93ce805a14982a87af5c82263abcbf410`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6566a06523efc499e91fea2a925a9d8fc3578ccff22887266c9b4d481fd480a`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23eab83fd6d81ac1ebd1867c8e3ba50f349669beada9074cdb71f81c832fd07f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4006dc52e20bba46a9c585d26a397fdf00591093fc83e9714fbed7a69ba4efe3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 08:40:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 08:40:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 08:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 08:40:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:40:04 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 08:40:05 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 08:40:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 08:40:06 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33fa1aa4d1b92ac03fb3b3e17b09c7c168b68d509fd3651cb1b95e901ded82b`  
		Last Modified: Sat, 30 Mar 2019 08:41:33 GMT  
		Size: 4.8 MB (4809793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68624f93064d2cb2d89a1a2fc2df111f7f3fde1dd41ec0258340426c29e01c51`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e5ebc3b9cfa0b55d2473aecf3bd888cd04bd75b333be22bc667b3a122c8cd`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315781efb5b4f20c86f6227b2ed03495a63899286e8be0d4e8e33ce109c81377`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:598ac36d39a3849fccfbdfc6e932c3ee8a0db4fdfb05d1f9868f14eea52afe5e
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
$ docker pull docker@sha256:a379bde75b742936ac60746178ae4edf5a029e3c85c202e1c68f210bbb9fb459
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47377678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60402e528d8a8984ccf117c85e6abad81e3a4a6ad8bf16e014c9441c8bfe5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm variant v6

```console
$ docker pull docker@sha256:90c9921489ac0746eb6e552fcc9ab47bb2223a0aa9d00299fba00b3d58bf97e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45957184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079a7a81590b2eafbd5f5d19c3add5521be87f0b823a98a6d37b4400023979cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:593eac89ad94451eac081ab35936c3ea0160429cc024e1aaacfa984884a0e887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543641af69923b990eafdaeb2dbef30429e16702cd7b8db1be9ec61bc67bb916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; ppc64le

```console
$ docker pull docker@sha256:017a2e5b58e08bcb9a65a3f03112fffd77e90ef5a5c53b3b4962c6126916d99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43887477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6205e53fb98afbaf69822228800ca8dd5df15d131d060ccdf63a48d54f35798b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; s390x

```console
$ docker pull docker@sha256:be671c212cb7c2eb7f19d0fba97c9f8368ccd06ced155557246a98fa9592b753
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46831147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead9c6e6c0ad8f4545929177471a70d6c52f23f6063b00a4bd31490bd36f6701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:c4da5b268079eb5bf04d77d7aff0082a3d2c795000d9da3d4c4f27511cd205a3
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
$ docker pull docker@sha256:ab8458865018a06596a8727fd9371ac858a3319d647ceb33f58198ade71e5789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52150071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765266e8f69ae70d04d51f180ddc0e552ca562d737aa1d9811a8255c04b14eb7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:21:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:21:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:21:21 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:21 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:21:21 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:21:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:21 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec858ab88f563c6207ba63ea2e785e529265d4f192fecfdf9774800f15989447`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 4.8 MB (4769772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf53978d3cd7d7156e2e57f278be4c3576b1e8b34e7fb295ab20f7aac81020`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ba1f3dd4cdf48b70f0710b851f549e3c82bdd8947800a37d260f08ba69ae1`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd3f51b70a0c95d820b331dc6760464a22319971f6347dd54663ff9ca78917`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:255d6219fa750ef68af32bec25ca1d584175a841c722a8d3a817f35c502da346
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121eeced307caa3b28e41d4868cd7d1fb58eeebec4b829f042c579a58d1a8477`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:54:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:54:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:54:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:54:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:54:15 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:54:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:16 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3a1286cfbc486936841f486fe94f2f4734422de199024d8cc62b2db320fdf2`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 2.8 MB (2764919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f5a067f69655d6f2216aa9152d3d5764ce7aa5edf1518a96658dce70705bd`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f69c7f8da525ae777149cc23a060c44448fb30456a203db733a0431df93a34`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449065dcd25d2c306d3f2858dc218f5e141ff13cf2788c19d7db29fcc1dd79c3`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2f9d39c1f55035dbbec7a68a759d94899ef96737d828be889d278630d0e182e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39b2d5122d5c960d814e12274d367b8825931ddb4ebf51ca7af1f7fd0601fc0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:20:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:20:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:20:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:31 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:20:32 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:20:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4e9f7c018ba67fd5578d993b8efde330e6ec8be40fb4257be311c87dd84ec`  
		Last Modified: Fri, 08 Mar 2019 04:23:19 GMT  
		Size: 4.8 MB (4809769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a270647959b165a9a04e9c29fdd595ee660afc9183e7becb58334b990e673fca`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7ac5e83b7e40652969f02dee758199a2d9cd5aa6d76ddea829bee3982932c8`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4b69da51b6b91793511a7c9bea238ff94555d4b6bea9f8870e1d61c5bdb8c6`  
		Last Modified: Fri, 08 Mar 2019 04:23:18 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a6252c5aabf817829309273f21e7535c06e97b83ea6208e451624c3c7a208fe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94088c7f25288581ede88a418bdbb8c732c99e31661ddd063cf5aca2bc176f36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:42:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:43:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:43:05 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:43:11 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:43:12 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:43:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:43:18 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:43:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:43:27 GMT
CMD []
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069cd5869667867b64a17e5ac0828679fdfc4736a57c4c68b9fea731f553f396`  
		Last Modified: Fri, 08 Mar 2019 04:44:32 GMT  
		Size: 5.1 MB (5145080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08145056ca3bb28993caf6960c9f64e4a259abdbceb7b069eaad171d34fad940`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6f46e7d294640f80843b94af76f4d6aba417beb21123e47db82faacb0fe44c`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7aa15ee2f21624d003e17b08f808ade7b89ace124c251862cf53359c364788`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:7370ef26f3f8cf645c32e63225dc0e01e9c4d240c129e9f34507b67897d5dbaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b25c9207c3cf7b25f938929a7cb796870ba88274f536b9bbe8fcc8f10d9e7fb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:06:25 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:06:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:06:27 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:27 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:06:27 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:06:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:27 GMT
CMD []
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e851a97c3103596b37130beba6c254391e33024714ac0eb3d1647995fdadfb`  
		Last Modified: Fri, 08 Mar 2019 04:07:05 GMT  
		Size: 4.9 MB (4862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb285fea6c35f637d016f7adf40ef729818c43565faf0a74008f337b376448`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820d630667eaa3e311de2aaa0f58ce23a5f9f60bc077896519c4a82ed8b0004c`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b927938b74544ebb2b74735d168b9963e32e8ee02d7470346f0c1a0918e3af1`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:3434c9acae8cd2c6edeb57dd8eafcdd74f5f6b5d120ca688c14fe98b78c42502
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
$ docker pull docker@sha256:7c1e748c3ae1c7f25fe3b40746523c06ba67d487b2fd399dd99dc24bfae5c2d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56649605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5078ea0ab23f01da0bd3fb61277e6981ee32266bf5a10b74438fdedaafb9c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb09f2b4dee11c3e557e2f82d007c8ee9a2ad82250370a2d242477393a0c5d3f`  
		Last Modified: Tue, 09 Apr 2019 23:23:21 GMT  
		Size: 9.3 MB (9271927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa981f3cbdb824e41a49b30e1b58f51aca554646c85f36df5635520630462c89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54725135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0daef2c8d61c81dd7949c3e0a152802d8b3b82006c7ebfe197b08f0589d1cc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4eb4d6fe68aa39d9569076b3ddc20dd2df4f184865a3cbde67c7f56541fce7`  
		Last Modified: Fri, 08 Mar 2019 03:56:20 GMT  
		Size: 8.8 MB (8767951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7d37b77f524fc7ae7d7e165b4054d3fe9d44bb20e97b4b943969e87366ae8fe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53727011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a98237f86a11dbf1061842282ad73f89a8f37805b04aa385b7d7382d35ee67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb44524e1b36cfe74b34b47aacf50d02ff87d244f82c0dcc97e766ffa241e3d`  
		Last Modified: Fri, 08 Mar 2019 04:23:40 GMT  
		Size: 9.5 MB (9518539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; ppc64le

```console
$ docker pull docker@sha256:805933b33510b2c36a9d1821f0a916cf69721ffd72c63afc08f746d19d481157
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53951736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30adab44b9add2970e279a015f44fbb976f6cdc142ab01b20ae12d99ed981221`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:43:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f75ad96055339f101c1088e01d01064df4f1ccd99c20206ab478b8181951d`  
		Last Modified: Fri, 08 Mar 2019 04:44:51 GMT  
		Size: 10.1 MB (10064259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; s390x

```console
$ docker pull docker@sha256:de80250e09543167ec98dc452c2c29a9239e2ebe65fcaa4f0c7b12c9435b6512
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56229609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:035099054eb5132f714ab821ab6d15ba1c222f493294eef3d66463ff2d3adac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:34 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4862b13d44dc71a15ad2baec22fa31e4631a2f367af08af2fa882203bff9841`  
		Last Modified: Fri, 08 Mar 2019 04:07:13 GMT  
		Size: 9.4 MB (9398462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:604be9417068c7ea23340b98cfe474276d68953242589e20fd58dde534f47dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:bfde951d160d78725efc032a45af350f8230007984efb149e184f4bc8fc2c3e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60870034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f3247aee6e491dba6a25fae31a37d3421acf3115aeac0a019d0840c190da04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4756f2b35cee2f3866b8c482ef68f9cabac9c2bc9042362c3a6ee8a1b600ad7b`  
		Last Modified: Tue, 09 Apr 2019 23:22:46 GMT  
		Size: 9.3 MB (9271924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:dc04b60813f802d4d5048da272de58bb0ef3cfb578f468d515059cd75b81ca82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57341486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34919451a1bf38a279b54d72d436618dd11b1867f4aed50c8b33c898cc52eafb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d68217a87ecd84831ca898e3af4dd342c6cc3c5d93cab0f975fada074ee90d7`  
		Last Modified: Sat, 30 Mar 2019 07:51:08 GMT  
		Size: 8.8 MB (8768971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23b10324197ec07310f4dc2e5b1dd661782e22a811f718adaf7f1ea2165e8c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56171846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435664024363c33dae3285275e18c07e262c9c3459c5f46479d8f7facf5c4504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:40:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a3dc242ab69c616fe694bf6fc23773acb44a64ea68c1f11a85bedfbd3c0bd2`  
		Last Modified: Sat, 30 Mar 2019 08:41:52 GMT  
		Size: 9.5 MB (9520197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:73df00cec6b4703c5d157cb3b30e1ed6dbc8fea66306c7c42aa0d11fbbb1a320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:d2788192808ca3b8080a01d6673198ba12f274b6fd4b74527df3cbb33223bd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51598110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c56b93c80c39309ae9d7e0575d7e2e700fdd4f1bbef4c0cfb00f2dcda5c2bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa235ac6c68cf4c9139bb119f35a04760e52d4967d50d65597b82e8a7db49880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48572515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069cd81aab9a8be8b5edf1763b8c1cd35222438d090e2ab21c46effbfe60eee1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b97753e950c0ebe031845406684c0e8d8e5ed15244db64a5ac3c4565d164be40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f696518cc6f631d57127ebf06940216aa8fd8a69116a3d40a934038ffb04bf5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:787d5c1bbf52b25036186bb201c4c4d7b6960347407a78f5e80e62c7272ea30d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:a046ca91ed7d4d0dd039c9d23eb5d0796e8eb729413b2587002e59953270f189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66305166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88dbd946db0fe7e4da3accb84c2d550c92069eceae5006564729f14d7b0fb09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:d28f079237f0a7a1e45164a821f2ab512366c17392b160129942dd6ceed257d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61879035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f67a9e1b0deb3571ffc0c661c9d9f4a8172dc33364a340528db00deb060c4c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:58dc6c8bcbaeebc8bfe674d298d240dcd7d235b76fc4d18900a86b25ec714e26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59534941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a8c5034e299f9d634cd4d172db08892f009f4355a584ed05a4e9a709e8a6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:d5561b476667ebacec530164d09d76536fe86f0537c273865cccb368353b4b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:77a91ba5ee4aa17940c4796c33ea7968f4f35527413ef2f215f5434e2b70323b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71077549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f3746f7033ed1cfb0b25ffa73a04e38fcc898d5abd542df67b66efcd1fb019`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:36:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:37:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:37:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:37:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:37:01 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:02 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:37:02 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:37:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:02 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed6c333ad2e27d51fce8b3dad0aa31cf7c51256ac77dbf417ff716454f20671`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 4.8 MB (4769764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952cb42ffbcfba02026fa1bf0879ab70f1838c31fb496ef72c14c43b4f30422`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e736896fe1ad5b09ff441efc429dec296fc7000c1d83e964c263927887d6042`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af941b55a9c5f2506c398cada296cb302e8d68063e1e9219bd7b3407f470f85e`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:278ce4b323e9263b4fd1b30ea577281d127c298871afc6257d75ad575a5bd62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64646634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2237c362868daab678940bc3007d6da6b660d95b55b1124b653fd692af61f1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 07:50:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 07:50:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 07:50:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 07:50:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:50:14 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 07:50:15 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 07:50:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 07:50:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4778314398b119e77d913449c13a550206e52ae0fb69592b6f60bc39106a2`  
		Last Modified: Sat, 06 Apr 2019 07:51:42 GMT  
		Size: 2.8 MB (2764948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9111b03d381f57bffea01e9a19d500b9b006e568654e91ad36f374075ad6`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb86b65f284d702843065f6e38ab2469feb09e05bbbd3c8b8cf603d3a0f90fb`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ba283821e5ab41e8731c6dc901218d88b0e6e7c03190c78ed0699a25859340`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ee36da39396b99e24b9c33449172318790fa3cff083eb9e85b10a0f7efd2b71f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e71b6a3e72a05f8660715dbfd2fc5e0a2e3103c0dbbe867bd0bd4cb093ccb8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 08:40:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 08:40:07 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 08:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 08:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:40:11 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 08:40:12 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 08:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 08:40:14 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ae6e9b467132350228ddff01c8bfde47d99ffccbf1565f8402ada43d505397`  
		Last Modified: Sat, 06 Apr 2019 08:42:12 GMT  
		Size: 4.8 MB (4809852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434385bcfadd41f89e8968c25550d83fc3fde8237f29f7ba1402e9d8b6a35da1`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d107aabcdb1fcb124e0d100f8b3da147b60e7d2a33e782d54fc78d683f76f3`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fd8516ccfc138f5cfe5021787b66c0ef468bfd077d30075bb0dd2b4aa73220`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:ef7e4046e4bc8583bb1c68fa7965797ca09731023714459aee9955ec92e570a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:0af1d712e2f4df7604b3d68d9937e30c1c35aafe1069107bd221b6ad05ebe4be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75577072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7055351c443ea3b90d1632345942fbe4eec543287684e28cf706c796ba3c438b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd84975669ef228c44e699d3ebe89b2ee5cf78384c833f1a7c8d5ef2fb9e1c4`  
		Last Modified: Tue, 09 Apr 2019 23:38:45 GMT  
		Size: 9.3 MB (9271906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:ed1f01b54be7e308b3927fd813a46c7da29dd71cfa3cf20a3284166efa7798eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70648092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85daf7d57814786ecf55c3bc338988b0774b0693782e5a044bc2db3c9e849b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f09d3ce9cecb95d001326fb8aea81e2b499c5449759daeeedb2b6e65b7734a`  
		Last Modified: Sat, 06 Apr 2019 07:51:54 GMT  
		Size: 8.8 MB (8769057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5ccc906cb74786ef68524c332dbab16210e28b2fe312ef7dd10513d501e44d44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69055151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50fed0974910513648e62bac347b95077f2557dfef626a3cddefd70241e7d0e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14a22c67efb4c116c5faff30ae4fdea403aaae89ac6798ecd498f845792f468`  
		Last Modified: Sat, 06 Apr 2019 08:42:28 GMT  
		Size: 9.5 MB (9520210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:73df00cec6b4703c5d157cb3b30e1ed6dbc8fea66306c7c42aa0d11fbbb1a320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:d2788192808ca3b8080a01d6673198ba12f274b6fd4b74527df3cbb33223bd72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51598110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c56b93c80c39309ae9d7e0575d7e2e700fdd4f1bbef4c0cfb00f2dcda5c2bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:fa235ac6c68cf4c9139bb119f35a04760e52d4967d50d65597b82e8a7db49880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48572515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069cd81aab9a8be8b5edf1763b8c1cd35222438d090e2ab21c46effbfe60eee1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b97753e950c0ebe031845406684c0e8d8e5ed15244db64a5ac3c4565d164be40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f696518cc6f631d57127ebf06940216aa8fd8a69116a3d40a934038ffb04bf5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:fa6025399dcc96d8ea04cbf1e0b325d965f85459bd22846b21a556c669c43515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:034e7d81f7579e224b23cd1b178bc54e69c1bacf8470e9cd2578e5ce483dcf31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56370551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d299612bbebc737ad2c9978cda83b2d9bc60b66031db3736c2897c4cb26e31`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:20:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:20:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:20:57 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:20:58 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:20:58 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:58 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:20:59 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:20:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:59 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdfe6c32c38e81e52ac2d639fec5184bc9467928abae060eed95903567c9e82`  
		Last Modified: Tue, 09 Apr 2019 23:22:31 GMT  
		Size: 4.8 MB (4769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6247ea411db2deee2726683f785beafa98d57efb45cbc0d65a7831316ac6d23`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10e745dc4c90ab37f4154f4a9dfefca4f97753dacc8cac6d2e138aba83de007`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5ad8f11b5531436bada5cd5426f7695373e21a1f0486fa2398996104f42aa`  
		Last Modified: Tue, 09 Apr 2019 23:22:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d98591b334b39504d5fbdf14109421e774976647c49423737663bb39a80ef20c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51340088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b3478eed01cdd42dca103d883043fe1ee984b8d42be9eecd0002b1ca28276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 07:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 07:49:42 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 07:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 07:49:44 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:44 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 07:49:44 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 07:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:45 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcdf9d79309f39478dcb9f0cba0f1731360a1086fdb1aa1cc789ade23344646`  
		Last Modified: Sat, 30 Mar 2019 07:50:53 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89b586be8a16ec40e918944107658d56edaa96c52353b293f4855c2423d31c0`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab4b28dbec04294f5efd99cb6f87e93ce805a14982a87af5c82263abcbf410`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6566a06523efc499e91fea2a925a9d8fc3578ccff22887266c9b4d481fd480a`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23eab83fd6d81ac1ebd1867c8e3ba50f349669beada9074cdb71f81c832fd07f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4006dc52e20bba46a9c585d26a397fdf00591093fc83e9714fbed7a69ba4efe3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 08:40:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 08:40:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 08:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 08:40:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:40:04 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 08:40:05 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 08:40:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 08:40:06 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33fa1aa4d1b92ac03fb3b3e17b09c7c168b68d509fd3651cb1b95e901ded82b`  
		Last Modified: Sat, 30 Mar 2019 08:41:33 GMT  
		Size: 4.8 MB (4809793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68624f93064d2cb2d89a1a2fc2df111f7f3fde1dd41ec0258340426c29e01c51`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e5ebc3b9cfa0b55d2473aecf3bd888cd04bd75b333be22bc667b3a122c8cd`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315781efb5b4f20c86f6227b2ed03495a63899286e8be0d4e8e33ce109c81377`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:604be9417068c7ea23340b98cfe474276d68953242589e20fd58dde534f47dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:bfde951d160d78725efc032a45af350f8230007984efb149e184f4bc8fc2c3e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60870034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f3247aee6e491dba6a25fae31a37d3421acf3115aeac0a019d0840c190da04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_VERSION=18.09.4
# Tue, 09 Apr 2019 23:20:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:20:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:20:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:20:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:03 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4a933173d3ff85475a429a0dafc9cf20970f4ede4337635acbc972dc4368`  
		Last Modified: Tue, 09 Apr 2019 23:22:24 GMT  
		Size: 48.5 MB (48537795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba44916797f1d2c6ea1b653b6111a0889553ac77e3e8b61275397c3268fc34ee`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578d019cc12f1e6a63e649dcd3977758f78ac43e041401b4ccdf77022b89ff9`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4756f2b35cee2f3866b8c482ef68f9cabac9c2bc9042362c3a6ee8a1b600ad7b`  
		Last Modified: Tue, 09 Apr 2019 23:22:46 GMT  
		Size: 9.3 MB (9271924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:dc04b60813f802d4d5048da272de58bb0ef3cfb578f468d515059cd75b81ca82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57341486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34919451a1bf38a279b54d72d436618dd11b1867f4aed50c8b33c898cc52eafb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d68217a87ecd84831ca898e3af4dd342c6cc3c5d93cab0f975fada074ee90d7`  
		Last Modified: Sat, 30 Mar 2019 07:51:08 GMT  
		Size: 8.8 MB (8768971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23b10324197ec07310f4dc2e5b1dd661782e22a811f718adaf7f1ea2165e8c2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56171846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435664024363c33dae3285275e18c07e262c9c3459c5f46479d8f7facf5c4504`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:40:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a3dc242ab69c616fe694bf6fc23773acb44a64ea68c1f11a85bedfbd3c0bd2`  
		Last Modified: Sat, 30 Mar 2019 08:41:52 GMT  
		Size: 9.5 MB (9520197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:787d5c1bbf52b25036186bb201c4c4d7b6960347407a78f5e80e62c7272ea30d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:a046ca91ed7d4d0dd039c9d23eb5d0796e8eb729413b2587002e59953270f189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66305166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88dbd946db0fe7e4da3accb84c2d550c92069eceae5006564729f14d7b0fb09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:d28f079237f0a7a1e45164a821f2ab512366c17392b160129942dd6ceed257d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61879035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f67a9e1b0deb3571ffc0c661c9d9f4a8172dc33364a340528db00deb060c4c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:58dc6c8bcbaeebc8bfe674d298d240dcd7d235b76fc4d18900a86b25ec714e26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59534941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a8c5034e299f9d634cd4d172db08892f009f4355a584ed05a4e9a709e8a6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:d5561b476667ebacec530164d09d76536fe86f0537c273865cccb368353b4b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:77a91ba5ee4aa17940c4796c33ea7968f4f35527413ef2f215f5434e2b70323b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71077549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f3746f7033ed1cfb0b25ffa73a04e38fcc898d5abd542df67b66efcd1fb019`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:36:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:37:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:37:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:37:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:37:01 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:02 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:37:02 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:37:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:02 GMT
CMD []
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed6c333ad2e27d51fce8b3dad0aa31cf7c51256ac77dbf417ff716454f20671`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 4.8 MB (4769764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952cb42ffbcfba02026fa1bf0879ab70f1838c31fb496ef72c14c43b4f30422`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e736896fe1ad5b09ff441efc429dec296fc7000c1d83e964c263927887d6042`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af941b55a9c5f2506c398cada296cb302e8d68063e1e9219bd7b3407f470f85e`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:278ce4b323e9263b4fd1b30ea577281d127c298871afc6257d75ad575a5bd62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64646634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2237c362868daab678940bc3007d6da6b660d95b55b1124b653fd692af61f1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 07:50:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 07:50:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 07:50:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 07:50:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:50:14 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 07:50:15 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 07:50:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 07:50:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4778314398b119e77d913449c13a550206e52ae0fb69592b6f60bc39106a2`  
		Last Modified: Sat, 06 Apr 2019 07:51:42 GMT  
		Size: 2.8 MB (2764948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9111b03d381f57bffea01e9a19d500b9b006e568654e91ad36f374075ad6`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb86b65f284d702843065f6e38ab2469feb09e05bbbd3c8b8cf603d3a0f90fb`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ba283821e5ab41e8731c6dc901218d88b0e6e7c03190c78ed0699a25859340`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ee36da39396b99e24b9c33449172318790fa3cff083eb9e85b10a0f7efd2b71f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e71b6a3e72a05f8660715dbfd2fc5e0a2e3103c0dbbe867bd0bd4cb093ccb8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 08:40:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 08:40:07 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 08:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 08:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:40:11 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 08:40:12 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 08:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 08:40:14 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ae6e9b467132350228ddff01c8bfde47d99ffccbf1565f8402ada43d505397`  
		Last Modified: Sat, 06 Apr 2019 08:42:12 GMT  
		Size: 4.8 MB (4809852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434385bcfadd41f89e8968c25550d83fc3fde8237f29f7ba1402e9d8b6a35da1`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d107aabcdb1fcb124e0d100f8b3da147b60e7d2a33e782d54fc78d683f76f3`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fd8516ccfc138f5cfe5021787b66c0ef468bfd077d30075bb0dd2b4aa73220`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:ef7e4046e4bc8583bb1c68fa7965797ca09731023714459aee9955ec92e570a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:0af1d712e2f4df7604b3d68d9937e30c1c35aafe1069107bd221b6ad05ebe4be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75577072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7055351c443ea3b90d1632345942fbe4eec543287684e28cf706c796ba3c438b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:37:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd84975669ef228c44e699d3ebe89b2ee5cf78384c833f1a7c8d5ef2fb9e1c4`  
		Last Modified: Tue, 09 Apr 2019 23:38:45 GMT  
		Size: 9.3 MB (9271906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:ed1f01b54be7e308b3927fd813a46c7da29dd71cfa3cf20a3284166efa7798eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70648092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85daf7d57814786ecf55c3bc338988b0774b0693782e5a044bc2db3c9e849b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:23 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f09d3ce9cecb95d001326fb8aea81e2b499c5449759daeeedb2b6e65b7734a`  
		Last Modified: Sat, 06 Apr 2019 07:51:54 GMT  
		Size: 8.8 MB (8769057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5ccc906cb74786ef68524c332dbab16210e28b2fe312ef7dd10513d501e44d44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69055151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50fed0974910513648e62bac347b95077f2557dfef626a3cddefd70241e7d0e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 08:40:26 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14a22c67efb4c116c5faff30ae4fdea403aaae89ac6798ecd498f845792f468`  
		Last Modified: Sat, 06 Apr 2019 08:42:28 GMT  
		Size: 9.5 MB (9520210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
