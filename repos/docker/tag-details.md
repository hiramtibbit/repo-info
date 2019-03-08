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
$ docker pull docker@sha256:0a3f40dabeb34b7ad747fe47d2f342dd3094c8f49763f6fe2804ba379bec8658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:2f554bbbf7a8251e824d438783c2071cb55d9e55ea552d578ab585bcc7c83e1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639de9917ae1f2e4a586893c9a6ea3f21fd774bc4037184ecac35f3153a293b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:e45324a2b4adcac83968a6c26e46b3fa5fd0907d073b14e89bb52dff636c8fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630bf196c0e5fcb617c00f275d6406f8b82fba2010b23d6ad0c82966cc4e8ef`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e0c1622fb07ea58448e51ff035e15ab7e778adde1eca2c52414b0de63d22517c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8f4886c942cb0f9f0468f521d5c163529324f16e1fabc94379ec30f1830721`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.06`

```console
$ docker pull docker@sha256:313f531f23cd9d6a9f1df2a2c65292dd95f6b265e12241b254a096402227de42
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
$ docker pull docker@sha256:d85ad24a634e6549bdc281bbe06a5ab1d4e2280c30dfe52bd3b5c40f4615c0fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde227e27bd7ca64d8711d6351abf9a7524f7b22fcd0ebae13c024ed813a988`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
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
$ docker pull docker@sha256:313f531f23cd9d6a9f1df2a2c65292dd95f6b265e12241b254a096402227de42
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
$ docker pull docker@sha256:d85ad24a634e6549bdc281bbe06a5ab1d4e2280c30dfe52bd3b5c40f4615c0fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde227e27bd7ca64d8711d6351abf9a7524f7b22fcd0ebae13c024ed813a988`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
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
$ docker pull docker@sha256:313f531f23cd9d6a9f1df2a2c65292dd95f6b265e12241b254a096402227de42
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
$ docker pull docker@sha256:d85ad24a634e6549bdc281bbe06a5ab1d4e2280c30dfe52bd3b5c40f4615c0fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde227e27bd7ca64d8711d6351abf9a7524f7b22fcd0ebae13c024ed813a988`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
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
$ docker pull docker@sha256:dd0b6cc8d6951eb2f0843ab586af59c23ec3b743bc0bf8a49154af46894b8b89
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
$ docker pull docker@sha256:0dcbad84e842cf6f33aeb39888c7416227f59b708018a910ca81347bad93ab6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201352bc1bcaf21b710e2543dbb179da015d334cff39df60f6a020d76d4e40e9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:18:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:18:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:18:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:18:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:18:09 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:18:09 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:18:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:09 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f48fb6e56d1bf36c2ac6e603148c018fef371a605d8733ce123780bd7e59f4c`  
		Last Modified: Thu, 07 Mar 2019 23:19:28 GMT  
		Size: 4.8 MB (4769833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a0a69a453a4fc83a7ae22a9a15509e2db58e4d1bbfda4d4510a0341861ae4`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9b7fef41f0680bbc50fe1a8a99a1e85d3c173b250c5dfc31cb33a28d01449d`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e02e2029b3927a927fdbaf60ce8c710f58305d4e10c000527acf1f1bd6e91d0`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:0d3b13bc0c2c5f1e525ea4abf2050fa4a5ef1e5dc68bd2dbf49d1223254f5c77
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
$ docker pull docker@sha256:508bf4b7de1101da047d8657c838680b7e5e3795855d1c82c7955858d70a2218
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52fbe748320c100a3a69c056afb0951ddf92b587c4d42a6af1c3201b0229b91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:14 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2300ee14de225fb82916edf1739163a259e4b64db8bec3b3669e0241ab7e9d3c`  
		Last Modified: Thu, 07 Mar 2019 23:19:37 GMT  
		Size: 9.3 MB (9270812 bytes)  
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
$ docker pull docker@sha256:dd0b6cc8d6951eb2f0843ab586af59c23ec3b743bc0bf8a49154af46894b8b89
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
$ docker pull docker@sha256:0dcbad84e842cf6f33aeb39888c7416227f59b708018a910ca81347bad93ab6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201352bc1bcaf21b710e2543dbb179da015d334cff39df60f6a020d76d4e40e9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:18:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:18:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:18:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:18:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:18:09 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:18:09 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:18:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:09 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f48fb6e56d1bf36c2ac6e603148c018fef371a605d8733ce123780bd7e59f4c`  
		Last Modified: Thu, 07 Mar 2019 23:19:28 GMT  
		Size: 4.8 MB (4769833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a0a69a453a4fc83a7ae22a9a15509e2db58e4d1bbfda4d4510a0341861ae4`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9b7fef41f0680bbc50fe1a8a99a1e85d3c173b250c5dfc31cb33a28d01449d`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e02e2029b3927a927fdbaf60ce8c710f58305d4e10c000527acf1f1bd6e91d0`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:0d3b13bc0c2c5f1e525ea4abf2050fa4a5ef1e5dc68bd2dbf49d1223254f5c77
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
$ docker pull docker@sha256:508bf4b7de1101da047d8657c838680b7e5e3795855d1c82c7955858d70a2218
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52fbe748320c100a3a69c056afb0951ddf92b587c4d42a6af1c3201b0229b91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:14 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2300ee14de225fb82916edf1739163a259e4b64db8bec3b3669e0241ab7e9d3c`  
		Last Modified: Thu, 07 Mar 2019 23:19:37 GMT  
		Size: 9.3 MB (9270812 bytes)  
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
$ docker pull docker@sha256:dd0b6cc8d6951eb2f0843ab586af59c23ec3b743bc0bf8a49154af46894b8b89
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
$ docker pull docker@sha256:0dcbad84e842cf6f33aeb39888c7416227f59b708018a910ca81347bad93ab6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201352bc1bcaf21b710e2543dbb179da015d334cff39df60f6a020d76d4e40e9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:18:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:18:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:18:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:18:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:18:09 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:18:09 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:18:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:09 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f48fb6e56d1bf36c2ac6e603148c018fef371a605d8733ce123780bd7e59f4c`  
		Last Modified: Thu, 07 Mar 2019 23:19:28 GMT  
		Size: 4.8 MB (4769833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a0a69a453a4fc83a7ae22a9a15509e2db58e4d1bbfda4d4510a0341861ae4`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9b7fef41f0680bbc50fe1a8a99a1e85d3c173b250c5dfc31cb33a28d01449d`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e02e2029b3927a927fdbaf60ce8c710f58305d4e10c000527acf1f1bd6e91d0`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:0d3b13bc0c2c5f1e525ea4abf2050fa4a5ef1e5dc68bd2dbf49d1223254f5c77
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
$ docker pull docker@sha256:508bf4b7de1101da047d8657c838680b7e5e3795855d1c82c7955858d70a2218
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52fbe748320c100a3a69c056afb0951ddf92b587c4d42a6af1c3201b0229b91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:14 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2300ee14de225fb82916edf1739163a259e4b64db8bec3b3669e0241ab7e9d3c`  
		Last Modified: Thu, 07 Mar 2019 23:19:37 GMT  
		Size: 9.3 MB (9270812 bytes)  
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
$ docker pull docker@sha256:0a3f40dabeb34b7ad747fe47d2f342dd3094c8f49763f6fe2804ba379bec8658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:2f554bbbf7a8251e824d438783c2071cb55d9e55ea552d578ab585bcc7c83e1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639de9917ae1f2e4a586893c9a6ea3f21fd774bc4037184ecac35f3153a293b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v6

```console
$ docker pull docker@sha256:e45324a2b4adcac83968a6c26e46b3fa5fd0907d073b14e89bb52dff636c8fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630bf196c0e5fcb617c00f275d6406f8b82fba2010b23d6ad0c82966cc4e8ef`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e0c1622fb07ea58448e51ff035e15ab7e778adde1eca2c52414b0de63d22517c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8f4886c942cb0f9f0468f521d5c163529324f16e1fabc94379ec30f1830721`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3`

```console
$ docker pull docker@sha256:0a3f40dabeb34b7ad747fe47d2f342dd3094c8f49763f6fe2804ba379bec8658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.3` - linux; amd64

```console
$ docker pull docker@sha256:2f554bbbf7a8251e824d438783c2071cb55d9e55ea552d578ab585bcc7c83e1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639de9917ae1f2e4a586893c9a6ea3f21fd774bc4037184ecac35f3153a293b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3` - linux; arm variant v6

```console
$ docker pull docker@sha256:e45324a2b4adcac83968a6c26e46b3fa5fd0907d073b14e89bb52dff636c8fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630bf196c0e5fcb617c00f275d6406f8b82fba2010b23d6ad0c82966cc4e8ef`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e0c1622fb07ea58448e51ff035e15ab7e778adde1eca2c52414b0de63d22517c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8f4886c942cb0f9f0468f521d5c163529324f16e1fabc94379ec30f1830721`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-dind`

```console
$ docker pull docker@sha256:ec353956a21300964a7eb2b620a742c2730f618f4df35f60609b30969cd83ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.3-dind` - linux; amd64

```console
$ docker pull docker@sha256:7f2fb54d31bb9d9c1d3b723631e1418985eaac234cd54d0fdd2348efee10b5da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e924caedbd3e5245ad95cc7471168e923391b22dcb559decebe4a378a06939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:17:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:17:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:17:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:17:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:38 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:17:38 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:17:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4770db71125ab7135e28304ec3d3d7aadcd2fac8135b45ac5109e93883d42126`  
		Last Modified: Thu, 07 Mar 2019 23:18:56 GMT  
		Size: 4.8 MB (4769781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b6f417d329c41d376a7a9d2f9cdc4485ec0988ef28db24ff8c096880637c63`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643874589690f4cc221b70adeda4038aba5e4c625f042bfd5847818cc742b008`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b7ef78ea7fde7802bde1f64201a182fc61440058ba8ffa87586291589df68f`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91c2bcbc4833a1fb55fc94e989db8dbe24a7be47842956cfb40e3be566301cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac9dadee4fbeb577eed57eae0f58554b3261af51b8387c1c84166fc68fcfc62`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:53:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:53:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:53:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:53:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:41 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:53:41 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6b6ecd4563ec630f9b780694c3c5818a56d002d8e346f3200fd7c59f3083be`  
		Last Modified: Fri, 08 Mar 2019 03:55:13 GMT  
		Size: 2.8 MB (2764917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa6a86850b99c6db42e65c48c5f62085bd2dd787a703fb6b65587452600b1d9`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac3929d11797eccc824e9938e0bb9f236ddd0eb283fc4ad596b4dff0c77554`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18156b5f254e298b174e8e67c86c4d73a89a0380d6e56b5a633d43d31ed51c3`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8e3ea2a7263bc0084aba57c7cfbd0297ce6b1ccb58f6b05609f92bbd15c00c45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51442918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526435c37de3350d1eb3a013b5eb7ebdc770ad4d2f4a277bfe750bc7f7abc879`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:19:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:19:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:19:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:19:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:34 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:19:35 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:19:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:38 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a12e53a922badff633beebce3f5ab96810e1003fd9dbbb981eee7d3d199024`  
		Last Modified: Fri, 08 Mar 2019 04:22:00 GMT  
		Size: 4.8 MB (4809832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88c7f61e83c068f2744ee6f1f6e8df1adb793fffa1d5c05a9bec218dbfaa496`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c809f232f9177d14cf754498364278432355b98aba60c86770ccb3f14b89f96a`  
		Last Modified: Fri, 08 Mar 2019 04:21:57 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c3f119d69138598bed651104d1e5facf8d03283dfab9e7cece6c69ad1f2c29`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.3-git`

```console
$ docker pull docker@sha256:23c3632e6750a5567c79ae95a942d926589765832d3f31388688b37973682f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.3-git` - linux; amd64

```console
$ docker pull docker@sha256:4ce9f0cd7cb79a15b9b9aef68bd783cfbe967eacbfd3cd004b2c83d52fcfc520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1929c2091c498b6fd8166aac00f32663f28e81de3bd57725dec3ef9ebe65100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581af21be6b8f05f2913c02484dfa4da75e597ed306a2e32d20fa20ede79e5f9`  
		Last Modified: Thu, 07 Mar 2019 23:19:05 GMT  
		Size: 9.3 MB (9270790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:749228988c1ad74d141d2d12c8b1db0cc36ab08550141a9da184ab468c2d1f53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad23a5b63930eb5a47e2a69ad9d0d36a4c28bb8344b3ffb7aec9abc92b44185`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:50 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0d0b46725b77aa4b4d42990b4538e81f439cbba371271a05ad77ef52859de`  
		Last Modified: Fri, 08 Mar 2019 03:55:31 GMT  
		Size: 8.8 MB (8767959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.3-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0ba8dfd3f716fb1df5679c25efc16965ddda689a62781d5346833e7836932689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56149021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46038f4182dc329248fd460b0dae2652683caf7daff32aae8c9d0174b9809bcd`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:53 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ea46f62cceee79545d04a0524e8314895746535a4a7ffd0c2c7eaebfb2067`  
		Last Modified: Fri, 08 Mar 2019 04:22:23 GMT  
		Size: 9.5 MB (9518561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:ec353956a21300964a7eb2b620a742c2730f618f4df35f60609b30969cd83ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:7f2fb54d31bb9d9c1d3b723631e1418985eaac234cd54d0fdd2348efee10b5da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e924caedbd3e5245ad95cc7471168e923391b22dcb559decebe4a378a06939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:17:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:17:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:17:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:17:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:38 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:17:38 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:17:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4770db71125ab7135e28304ec3d3d7aadcd2fac8135b45ac5109e93883d42126`  
		Last Modified: Thu, 07 Mar 2019 23:18:56 GMT  
		Size: 4.8 MB (4769781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b6f417d329c41d376a7a9d2f9cdc4485ec0988ef28db24ff8c096880637c63`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643874589690f4cc221b70adeda4038aba5e4c625f042bfd5847818cc742b008`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b7ef78ea7fde7802bde1f64201a182fc61440058ba8ffa87586291589df68f`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91c2bcbc4833a1fb55fc94e989db8dbe24a7be47842956cfb40e3be566301cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac9dadee4fbeb577eed57eae0f58554b3261af51b8387c1c84166fc68fcfc62`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:53:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:53:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:53:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:53:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:41 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:53:41 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6b6ecd4563ec630f9b780694c3c5818a56d002d8e346f3200fd7c59f3083be`  
		Last Modified: Fri, 08 Mar 2019 03:55:13 GMT  
		Size: 2.8 MB (2764917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa6a86850b99c6db42e65c48c5f62085bd2dd787a703fb6b65587452600b1d9`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac3929d11797eccc824e9938e0bb9f236ddd0eb283fc4ad596b4dff0c77554`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18156b5f254e298b174e8e67c86c4d73a89a0380d6e56b5a633d43d31ed51c3`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8e3ea2a7263bc0084aba57c7cfbd0297ce6b1ccb58f6b05609f92bbd15c00c45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51442918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526435c37de3350d1eb3a013b5eb7ebdc770ad4d2f4a277bfe750bc7f7abc879`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:19:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:19:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:19:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:19:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:34 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:19:35 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:19:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:38 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a12e53a922badff633beebce3f5ab96810e1003fd9dbbb981eee7d3d199024`  
		Last Modified: Fri, 08 Mar 2019 04:22:00 GMT  
		Size: 4.8 MB (4809832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88c7f61e83c068f2744ee6f1f6e8df1adb793fffa1d5c05a9bec218dbfaa496`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c809f232f9177d14cf754498364278432355b98aba60c86770ccb3f14b89f96a`  
		Last Modified: Fri, 08 Mar 2019 04:21:57 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c3f119d69138598bed651104d1e5facf8d03283dfab9e7cece6c69ad1f2c29`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:23c3632e6750a5567c79ae95a942d926589765832d3f31388688b37973682f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:4ce9f0cd7cb79a15b9b9aef68bd783cfbe967eacbfd3cd004b2c83d52fcfc520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1929c2091c498b6fd8166aac00f32663f28e81de3bd57725dec3ef9ebe65100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581af21be6b8f05f2913c02484dfa4da75e597ed306a2e32d20fa20ede79e5f9`  
		Last Modified: Thu, 07 Mar 2019 23:19:05 GMT  
		Size: 9.3 MB (9270790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:749228988c1ad74d141d2d12c8b1db0cc36ab08550141a9da184ab468c2d1f53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad23a5b63930eb5a47e2a69ad9d0d36a4c28bb8344b3ffb7aec9abc92b44185`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:50 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0d0b46725b77aa4b4d42990b4538e81f439cbba371271a05ad77ef52859de`  
		Last Modified: Fri, 08 Mar 2019 03:55:31 GMT  
		Size: 8.8 MB (8767959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0ba8dfd3f716fb1df5679c25efc16965ddda689a62781d5346833e7836932689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56149021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46038f4182dc329248fd460b0dae2652683caf7daff32aae8c9d0174b9809bcd`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:53 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ea46f62cceee79545d04a0524e8314895746535a4a7ffd0c2c7eaebfb2067`  
		Last Modified: Fri, 08 Mar 2019 04:22:23 GMT  
		Size: 9.5 MB (9518561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:ec353956a21300964a7eb2b620a742c2730f618f4df35f60609b30969cd83ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:7f2fb54d31bb9d9c1d3b723631e1418985eaac234cd54d0fdd2348efee10b5da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e924caedbd3e5245ad95cc7471168e923391b22dcb559decebe4a378a06939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:17:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:17:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:17:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:17:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:38 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:17:38 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:17:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4770db71125ab7135e28304ec3d3d7aadcd2fac8135b45ac5109e93883d42126`  
		Last Modified: Thu, 07 Mar 2019 23:18:56 GMT  
		Size: 4.8 MB (4769781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b6f417d329c41d376a7a9d2f9cdc4485ec0988ef28db24ff8c096880637c63`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643874589690f4cc221b70adeda4038aba5e4c625f042bfd5847818cc742b008`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b7ef78ea7fde7802bde1f64201a182fc61440058ba8ffa87586291589df68f`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91c2bcbc4833a1fb55fc94e989db8dbe24a7be47842956cfb40e3be566301cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac9dadee4fbeb577eed57eae0f58554b3261af51b8387c1c84166fc68fcfc62`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:53:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:53:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:53:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:53:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:41 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:53:41 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6b6ecd4563ec630f9b780694c3c5818a56d002d8e346f3200fd7c59f3083be`  
		Last Modified: Fri, 08 Mar 2019 03:55:13 GMT  
		Size: 2.8 MB (2764917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa6a86850b99c6db42e65c48c5f62085bd2dd787a703fb6b65587452600b1d9`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac3929d11797eccc824e9938e0bb9f236ddd0eb283fc4ad596b4dff0c77554`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18156b5f254e298b174e8e67c86c4d73a89a0380d6e56b5a633d43d31ed51c3`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8e3ea2a7263bc0084aba57c7cfbd0297ce6b1ccb58f6b05609f92bbd15c00c45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51442918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526435c37de3350d1eb3a013b5eb7ebdc770ad4d2f4a277bfe750bc7f7abc879`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:19:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:19:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:19:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:19:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:34 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:19:35 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:19:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:38 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a12e53a922badff633beebce3f5ab96810e1003fd9dbbb981eee7d3d199024`  
		Last Modified: Fri, 08 Mar 2019 04:22:00 GMT  
		Size: 4.8 MB (4809832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88c7f61e83c068f2744ee6f1f6e8df1adb793fffa1d5c05a9bec218dbfaa496`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c809f232f9177d14cf754498364278432355b98aba60c86770ccb3f14b89f96a`  
		Last Modified: Fri, 08 Mar 2019 04:21:57 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c3f119d69138598bed651104d1e5facf8d03283dfab9e7cece6c69ad1f2c29`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:23c3632e6750a5567c79ae95a942d926589765832d3f31388688b37973682f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:4ce9f0cd7cb79a15b9b9aef68bd783cfbe967eacbfd3cd004b2c83d52fcfc520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1929c2091c498b6fd8166aac00f32663f28e81de3bd57725dec3ef9ebe65100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581af21be6b8f05f2913c02484dfa4da75e597ed306a2e32d20fa20ede79e5f9`  
		Last Modified: Thu, 07 Mar 2019 23:19:05 GMT  
		Size: 9.3 MB (9270790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:749228988c1ad74d141d2d12c8b1db0cc36ab08550141a9da184ab468c2d1f53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad23a5b63930eb5a47e2a69ad9d0d36a4c28bb8344b3ffb7aec9abc92b44185`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:50 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0d0b46725b77aa4b4d42990b4538e81f439cbba371271a05ad77ef52859de`  
		Last Modified: Fri, 08 Mar 2019 03:55:31 GMT  
		Size: 8.8 MB (8767959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0ba8dfd3f716fb1df5679c25efc16965ddda689a62781d5346833e7836932689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56149021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46038f4182dc329248fd460b0dae2652683caf7daff32aae8c9d0174b9809bcd`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:53 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ea46f62cceee79545d04a0524e8314895746535a4a7ffd0c2c7eaebfb2067`  
		Last Modified: Fri, 08 Mar 2019 04:22:23 GMT  
		Size: 9.5 MB (9518561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:ec353956a21300964a7eb2b620a742c2730f618f4df35f60609b30969cd83ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:7f2fb54d31bb9d9c1d3b723631e1418985eaac234cd54d0fdd2348efee10b5da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e924caedbd3e5245ad95cc7471168e923391b22dcb559decebe4a378a06939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:17:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:17:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:17:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:17:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:38 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:17:38 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:17:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4770db71125ab7135e28304ec3d3d7aadcd2fac8135b45ac5109e93883d42126`  
		Last Modified: Thu, 07 Mar 2019 23:18:56 GMT  
		Size: 4.8 MB (4769781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b6f417d329c41d376a7a9d2f9cdc4485ec0988ef28db24ff8c096880637c63`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643874589690f4cc221b70adeda4038aba5e4c625f042bfd5847818cc742b008`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b7ef78ea7fde7802bde1f64201a182fc61440058ba8ffa87586291589df68f`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91c2bcbc4833a1fb55fc94e989db8dbe24a7be47842956cfb40e3be566301cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac9dadee4fbeb577eed57eae0f58554b3261af51b8387c1c84166fc68fcfc62`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:53:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:53:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:53:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:53:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:41 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:53:41 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6b6ecd4563ec630f9b780694c3c5818a56d002d8e346f3200fd7c59f3083be`  
		Last Modified: Fri, 08 Mar 2019 03:55:13 GMT  
		Size: 2.8 MB (2764917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa6a86850b99c6db42e65c48c5f62085bd2dd787a703fb6b65587452600b1d9`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac3929d11797eccc824e9938e0bb9f236ddd0eb283fc4ad596b4dff0c77554`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18156b5f254e298b174e8e67c86c4d73a89a0380d6e56b5a633d43d31ed51c3`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8e3ea2a7263bc0084aba57c7cfbd0297ce6b1ccb58f6b05609f92bbd15c00c45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51442918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526435c37de3350d1eb3a013b5eb7ebdc770ad4d2f4a277bfe750bc7f7abc879`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:19:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:19:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:19:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:19:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:34 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:19:35 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:19:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:38 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a12e53a922badff633beebce3f5ab96810e1003fd9dbbb981eee7d3d199024`  
		Last Modified: Fri, 08 Mar 2019 04:22:00 GMT  
		Size: 4.8 MB (4809832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88c7f61e83c068f2744ee6f1f6e8df1adb793fffa1d5c05a9bec218dbfaa496`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c809f232f9177d14cf754498364278432355b98aba60c86770ccb3f14b89f96a`  
		Last Modified: Fri, 08 Mar 2019 04:21:57 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c3f119d69138598bed651104d1e5facf8d03283dfab9e7cece6c69ad1f2c29`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:313f531f23cd9d6a9f1df2a2c65292dd95f6b265e12241b254a096402227de42
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
$ docker pull docker@sha256:d85ad24a634e6549bdc281bbe06a5ab1d4e2280c30dfe52bd3b5c40f4615c0fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47375379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde227e27bd7ca64d8711d6351abf9a7524f7b22fcd0ebae13c024ed813a988`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
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
$ docker pull docker@sha256:dd0b6cc8d6951eb2f0843ab586af59c23ec3b743bc0bf8a49154af46894b8b89
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
$ docker pull docker@sha256:0dcbad84e842cf6f33aeb39888c7416227f59b708018a910ca81347bad93ab6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52147836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201352bc1bcaf21b710e2543dbb179da015d334cff39df60f6a020d76d4e40e9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:18:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:18:08 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:18:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:18:09 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:18:09 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:18:09 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:18:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:09 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f48fb6e56d1bf36c2ac6e603148c018fef371a605d8733ce123780bd7e59f4c`  
		Last Modified: Thu, 07 Mar 2019 23:19:28 GMT  
		Size: 4.8 MB (4769833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a0a69a453a4fc83a7ae22a9a15509e2db58e4d1bbfda4d4510a0341861ae4`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9b7fef41f0680bbc50fe1a8a99a1e85d3c173b250c5dfc31cb33a28d01449d`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e02e2029b3927a927fdbaf60ce8c710f58305d4e10c000527acf1f1bd6e91d0`  
		Last Modified: Thu, 07 Mar 2019 23:19:27 GMT  
		Size: 558.0 B  
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
$ docker pull docker@sha256:0d3b13bc0c2c5f1e525ea4abf2050fa4a5ef1e5dc68bd2dbf49d1223254f5c77
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
$ docker pull docker@sha256:508bf4b7de1101da047d8657c838680b7e5e3795855d1c82c7955858d70a2218
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56646191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52fbe748320c100a3a69c056afb0951ddf92b587c4d42a6af1c3201b0229b91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:52 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Thu, 07 Mar 2019 23:17:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:18:00 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:18:14 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddeac4851cd381c6382f4896a0c6d5ccec7183fa1660b1deec9b1c160552e9f`  
		Last Modified: Thu, 07 Mar 2019 23:19:20 GMT  
		Size: 44.3 MB (44317340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d242c12e9a473071c6d2ed7d5d9d7f09cbe5b66f7c08e37baf147ef55adf043e`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b190fe6464ed13fa137c3f23d7e124b5b1ab22f595aabfb9d7ec711a526fdbf`  
		Last Modified: Thu, 07 Mar 2019 23:19:10 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2300ee14de225fb82916edf1739163a259e4b64db8bec3b3669e0241ab7e9d3c`  
		Last Modified: Thu, 07 Mar 2019 23:19:37 GMT  
		Size: 9.3 MB (9270812 bytes)  
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
$ docker pull docker@sha256:23c3632e6750a5567c79ae95a942d926589765832d3f31388688b37973682f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:4ce9f0cd7cb79a15b9b9aef68bd783cfbe967eacbfd3cd004b2c83d52fcfc520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1929c2091c498b6fd8166aac00f32663f28e81de3bd57725dec3ef9ebe65100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581af21be6b8f05f2913c02484dfa4da75e597ed306a2e32d20fa20ede79e5f9`  
		Last Modified: Thu, 07 Mar 2019 23:19:05 GMT  
		Size: 9.3 MB (9270790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:749228988c1ad74d141d2d12c8b1db0cc36ab08550141a9da184ab468c2d1f53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad23a5b63930eb5a47e2a69ad9d0d36a4c28bb8344b3ffb7aec9abc92b44185`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:50 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0d0b46725b77aa4b4d42990b4538e81f439cbba371271a05ad77ef52859de`  
		Last Modified: Fri, 08 Mar 2019 03:55:31 GMT  
		Size: 8.8 MB (8767959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0ba8dfd3f716fb1df5679c25efc16965ddda689a62781d5346833e7836932689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56149021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46038f4182dc329248fd460b0dae2652683caf7daff32aae8c9d0174b9809bcd`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:53 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ea46f62cceee79545d04a0524e8314895746535a4a7ffd0c2c7eaebfb2067`  
		Last Modified: Fri, 08 Mar 2019 04:22:23 GMT  
		Size: 9.5 MB (9518561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:0a3f40dabeb34b7ad747fe47d2f342dd3094c8f49763f6fe2804ba379bec8658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:2f554bbbf7a8251e824d438783c2071cb55d9e55ea552d578ab585bcc7c83e1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639de9917ae1f2e4a586893c9a6ea3f21fd774bc4037184ecac35f3153a293b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:e45324a2b4adcac83968a6c26e46b3fa5fd0907d073b14e89bb52dff636c8fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630bf196c0e5fcb617c00f275d6406f8b82fba2010b23d6ad0c82966cc4e8ef`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e0c1622fb07ea58448e51ff035e15ab7e778adde1eca2c52414b0de63d22517c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8f4886c942cb0f9f0468f521d5c163529324f16e1fabc94379ec30f1830721`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:0a3f40dabeb34b7ad747fe47d2f342dd3094c8f49763f6fe2804ba379bec8658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:2f554bbbf7a8251e824d438783c2071cb55d9e55ea552d578ab585bcc7c83e1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639de9917ae1f2e4a586893c9a6ea3f21fd774bc4037184ecac35f3153a293b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:e45324a2b4adcac83968a6c26e46b3fa5fd0907d073b14e89bb52dff636c8fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630bf196c0e5fcb617c00f275d6406f8b82fba2010b23d6ad0c82966cc4e8ef`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e0c1622fb07ea58448e51ff035e15ab7e778adde1eca2c52414b0de63d22517c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8f4886c942cb0f9f0468f521d5c163529324f16e1fabc94379ec30f1830721`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:ec353956a21300964a7eb2b620a742c2730f618f4df35f60609b30969cd83ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:7f2fb54d31bb9d9c1d3b723631e1418985eaac234cd54d0fdd2348efee10b5da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e924caedbd3e5245ad95cc7471168e923391b22dcb559decebe4a378a06939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:17:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:17:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:17:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:17:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:38 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:17:38 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:17:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4770db71125ab7135e28304ec3d3d7aadcd2fac8135b45ac5109e93883d42126`  
		Last Modified: Thu, 07 Mar 2019 23:18:56 GMT  
		Size: 4.8 MB (4769781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b6f417d329c41d376a7a9d2f9cdc4485ec0988ef28db24ff8c096880637c63`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643874589690f4cc221b70adeda4038aba5e4c625f042bfd5847818cc742b008`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b7ef78ea7fde7802bde1f64201a182fc61440058ba8ffa87586291589df68f`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91c2bcbc4833a1fb55fc94e989db8dbe24a7be47842956cfb40e3be566301cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac9dadee4fbeb577eed57eae0f58554b3261af51b8387c1c84166fc68fcfc62`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:53:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:53:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:53:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:53:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:41 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:53:41 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6b6ecd4563ec630f9b780694c3c5818a56d002d8e346f3200fd7c59f3083be`  
		Last Modified: Fri, 08 Mar 2019 03:55:13 GMT  
		Size: 2.8 MB (2764917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa6a86850b99c6db42e65c48c5f62085bd2dd787a703fb6b65587452600b1d9`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac3929d11797eccc824e9938e0bb9f236ddd0eb283fc4ad596b4dff0c77554`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18156b5f254e298b174e8e67c86c4d73a89a0380d6e56b5a633d43d31ed51c3`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8e3ea2a7263bc0084aba57c7cfbd0297ce6b1ccb58f6b05609f92bbd15c00c45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51442918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526435c37de3350d1eb3a013b5eb7ebdc770ad4d2f4a277bfe750bc7f7abc879`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:19:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:19:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:19:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:19:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:34 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:19:35 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:19:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:38 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a12e53a922badff633beebce3f5ab96810e1003fd9dbbb981eee7d3d199024`  
		Last Modified: Fri, 08 Mar 2019 04:22:00 GMT  
		Size: 4.8 MB (4809832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88c7f61e83c068f2744ee6f1f6e8df1adb793fffa1d5c05a9bec218dbfaa496`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c809f232f9177d14cf754498364278432355b98aba60c86770ccb3f14b89f96a`  
		Last Modified: Fri, 08 Mar 2019 04:21:57 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c3f119d69138598bed651104d1e5facf8d03283dfab9e7cece6c69ad1f2c29`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:23c3632e6750a5567c79ae95a942d926589765832d3f31388688b37973682f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:4ce9f0cd7cb79a15b9b9aef68bd783cfbe967eacbfd3cd004b2c83d52fcfc520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1929c2091c498b6fd8166aac00f32663f28e81de3bd57725dec3ef9ebe65100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581af21be6b8f05f2913c02484dfa4da75e597ed306a2e32d20fa20ede79e5f9`  
		Last Modified: Thu, 07 Mar 2019 23:19:05 GMT  
		Size: 9.3 MB (9270790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:749228988c1ad74d141d2d12c8b1db0cc36ab08550141a9da184ab468c2d1f53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad23a5b63930eb5a47e2a69ad9d0d36a4c28bb8344b3ffb7aec9abc92b44185`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:50 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0d0b46725b77aa4b4d42990b4538e81f439cbba371271a05ad77ef52859de`  
		Last Modified: Fri, 08 Mar 2019 03:55:31 GMT  
		Size: 8.8 MB (8767959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0ba8dfd3f716fb1df5679c25efc16965ddda689a62781d5346833e7836932689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56149021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46038f4182dc329248fd460b0dae2652683caf7daff32aae8c9d0174b9809bcd`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:53 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ea46f62cceee79545d04a0524e8314895746535a4a7ffd0c2c7eaebfb2067`  
		Last Modified: Fri, 08 Mar 2019 04:22:23 GMT  
		Size: 9.5 MB (9518561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:0a3f40dabeb34b7ad747fe47d2f342dd3094c8f49763f6fe2804ba379bec8658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:2f554bbbf7a8251e824d438783c2071cb55d9e55ea552d578ab585bcc7c83e1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51577592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639de9917ae1f2e4a586893c9a6ea3f21fd774bc4037184ecac35f3153a293b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:e45324a2b4adcac83968a6c26e46b3fa5fd0907d073b14e89bb52dff636c8fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630bf196c0e5fcb617c00f275d6406f8b82fba2010b23d6ad0c82966cc4e8ef`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e0c1622fb07ea58448e51ff035e15ab7e778adde1eca2c52414b0de63d22517c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46630460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8f4886c942cb0f9f0468f521d5c163529324f16e1fabc94379ec30f1830721`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:ec353956a21300964a7eb2b620a742c2730f618f4df35f60609b30969cd83ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:7f2fb54d31bb9d9c1d3b723631e1418985eaac234cd54d0fdd2348efee10b5da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e924caedbd3e5245ad95cc7471168e923391b22dcb559decebe4a378a06939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:17:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:17:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:17:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:17:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:38 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:17:38 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:17:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4770db71125ab7135e28304ec3d3d7aadcd2fac8135b45ac5109e93883d42126`  
		Last Modified: Thu, 07 Mar 2019 23:18:56 GMT  
		Size: 4.8 MB (4769781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b6f417d329c41d376a7a9d2f9cdc4485ec0988ef28db24ff8c096880637c63`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643874589690f4cc221b70adeda4038aba5e4c625f042bfd5847818cc742b008`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b7ef78ea7fde7802bde1f64201a182fc61440058ba8ffa87586291589df68f`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:91c2bcbc4833a1fb55fc94e989db8dbe24a7be47842956cfb40e3be566301cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac9dadee4fbeb577eed57eae0f58554b3261af51b8387c1c84166fc68fcfc62`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:53:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:53:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:53:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:53:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:41 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:53:41 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:42 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6b6ecd4563ec630f9b780694c3c5818a56d002d8e346f3200fd7c59f3083be`  
		Last Modified: Fri, 08 Mar 2019 03:55:13 GMT  
		Size: 2.8 MB (2764917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa6a86850b99c6db42e65c48c5f62085bd2dd787a703fb6b65587452600b1d9`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ac3929d11797eccc824e9938e0bb9f236ddd0eb283fc4ad596b4dff0c77554`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18156b5f254e298b174e8e67c86c4d73a89a0380d6e56b5a633d43d31ed51c3`  
		Last Modified: Fri, 08 Mar 2019 03:55:12 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8e3ea2a7263bc0084aba57c7cfbd0297ce6b1ccb58f6b05609f92bbd15c00c45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51442918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526435c37de3350d1eb3a013b5eb7ebdc770ad4d2f4a277bfe750bc7f7abc879`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:19:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:19:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:19:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:19:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:34 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:19:35 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:19:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:38 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a12e53a922badff633beebce3f5ab96810e1003fd9dbbb981eee7d3d199024`  
		Last Modified: Fri, 08 Mar 2019 04:22:00 GMT  
		Size: 4.8 MB (4809832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88c7f61e83c068f2744ee6f1f6e8df1adb793fffa1d5c05a9bec218dbfaa496`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c809f232f9177d14cf754498364278432355b98aba60c86770ccb3f14b89f96a`  
		Last Modified: Fri, 08 Mar 2019 04:21:57 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c3f119d69138598bed651104d1e5facf8d03283dfab9e7cece6c69ad1f2c29`  
		Last Modified: Fri, 08 Mar 2019 04:21:58 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:23c3632e6750a5567c79ae95a942d926589765832d3f31388688b37973682f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:4ce9f0cd7cb79a15b9b9aef68bd783cfbe967eacbfd3cd004b2c83d52fcfc520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1929c2091c498b6fd8166aac00f32663f28e81de3bd57725dec3ef9ebe65100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581af21be6b8f05f2913c02484dfa4da75e597ed306a2e32d20fa20ede79e5f9`  
		Last Modified: Thu, 07 Mar 2019 23:19:05 GMT  
		Size: 9.3 MB (9270790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:749228988c1ad74d141d2d12c8b1db0cc36ab08550141a9da184ab468c2d1f53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57329933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad23a5b63930eb5a47e2a69ad9d0d36a4c28bb8344b3ffb7aec9abc92b44185`
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
# Fri, 08 Mar 2019 03:53:21 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 03:53:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:53:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:31 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:53:50 GMT
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
	-	`sha256:3679d1bb4b93aab337f94387c7f7bc6f98334a4097c907b46c853d848e01c0b5`  
		Last Modified: Fri, 08 Mar 2019 03:55:01 GMT  
		Size: 45.7 MB (45717762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7b6c18d1f87b49f3e216b23d7b08a62edd3dfba1840b64380af2a4d6093c13`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afffe01a713089c2a25d907fbbae9edd3156d6d6852a678d4ea0ed9f6f2d1ba`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0d0b46725b77aa4b4d42990b4538e81f439cbba371271a05ad77ef52859de`  
		Last Modified: Fri, 08 Mar 2019 03:55:31 GMT  
		Size: 8.8 MB (8767959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0ba8dfd3f716fb1df5679c25efc16965ddda689a62781d5346833e7836932689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56149021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46038f4182dc329248fd460b0dae2652683caf7daff32aae8c9d0174b9809bcd`
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
# Fri, 08 Mar 2019 04:18:51 GMT
ENV DOCKER_VERSION=18.09.3
# Fri, 08 Mar 2019 04:19:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:19:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:19:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:19:06 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:19:53 GMT
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
	-	`sha256:7df8ab99b97af5ca4e2621b9f832afaf821294dce064b03dfd0adce316735937`  
		Last Modified: Fri, 08 Mar 2019 04:21:38 GMT  
		Size: 43.6 MB (43638769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2991e52c42c7035e6e94979f8fe1ee8f50d27a4bbabff3689f3a679c1a5bc356`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0dbc160c65dfab8ac39e6ac087094a70ffea5a4e2bd3e8ed9b4303925fc0a3`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ea46f62cceee79545d04a0524e8314895746535a4a7ffd0c2c7eaebfb2067`  
		Last Modified: Fri, 08 Mar 2019 04:22:23 GMT  
		Size: 9.5 MB (9518561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
