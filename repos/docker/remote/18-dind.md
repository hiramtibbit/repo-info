## `docker:18-dind`

```console
$ docker pull docker@sha256:a20899c03432547c5641a72663e2fb791b3e69bdf797a7c2043cdeb704f40a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:b2e074e1699c3e6f26abf744f700e806fc90c09320799485431d597e6def87cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6204caf6c5927058f10fab0e4661b5f7a37d9a986a89b28a176a9958a0a5b7d3`
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
# Tue, 07 May 2019 01:19:40 GMT
ENV DOCKER_VERSION=18.09.6
# Tue, 07 May 2019 01:19:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 07 May 2019 01:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 07 May 2019 01:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 07 May 2019 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 01:19:47 GMT
CMD ["sh"]
# Tue, 07 May 2019 01:19:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 07 May 2019 01:19:53 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 07 May 2019 01:19:53 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 07 May 2019 01:19:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 07 May 2019 01:19:54 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Tue, 07 May 2019 01:19:54 GMT
VOLUME [/var/lib/docker]
# Tue, 07 May 2019 01:19:54 GMT
EXPOSE 2375
# Tue, 07 May 2019 01:19:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 07 May 2019 01:19:55 GMT
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
	-	`sha256:cc5d4256c18135a7eb66b439f4a25f17d05c458868b7dfecfeaf851ba0aa2782`  
		Last Modified: Tue, 07 May 2019 01:20:39 GMT  
		Size: 48.5 MB (48529854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21adc78c67ced90c362f0107c322061396c3b5b5b753100f208deebaed3e5fc5`  
		Last Modified: Tue, 07 May 2019 01:20:27 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0682767a4123c5ed1638cfba3aaf65af67c71ae1d1ebf14d2b6e26d9d12cc`  
		Last Modified: Tue, 07 May 2019 01:20:27 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf66ad982b3c13c0015642312bbb541144134ba3c0616c6c5d7d41cfca16cf12`  
		Last Modified: Tue, 07 May 2019 01:20:50 GMT  
		Size: 4.8 MB (4769785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c6a6032d9ae4059ee03cc934f7f8737312ff04e78709468a073b1ebbefbf81`  
		Last Modified: Tue, 07 May 2019 01:20:50 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcd3381818c725e043591176f141e3509c8288227ea8ff8847e5d2a79a4be54`  
		Last Modified: Tue, 07 May 2019 01:20:49 GMT  
		Size: 760.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265ff3c9b7d080f4e62d8f8044d482c41a0edf389cb93eab90f130462a5a9404`  
		Last Modified: Tue, 07 May 2019 01:20:50 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b5e508810609e40925eb5b6df9aeb7de20662fd52b4169f67dedeb185960cd90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b572c5e9c6b7b5a8e680f846dc5ef1c4945414864258bdb853e697fb18e889`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 07:50:17 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 07 May 2019 07:49:36 GMT
ENV DOCKER_VERSION=18.09.6
# Tue, 07 May 2019 07:49:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 07 May 2019 07:49:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 07 May 2019 07:49:45 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 07 May 2019 07:49:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 07:49:46 GMT
CMD ["sh"]
# Tue, 07 May 2019 07:49:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 07 May 2019 07:49:53 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 07 May 2019 07:49:53 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 07 May 2019 07:49:55 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 07 May 2019 07:49:55 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Tue, 07 May 2019 07:49:55 GMT
VOLUME [/var/lib/docker]
# Tue, 07 May 2019 07:49:56 GMT
EXPOSE 2375
# Tue, 07 May 2019 07:49:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 07 May 2019 07:49:56 GMT
CMD []
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25ec57c3450596c19727484871333840df093d81e802d8cd085bce78350d364`  
		Last Modified: Tue, 07 May 2019 07:50:59 GMT  
		Size: 45.7 MB (45726786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1989d321502e1d173dd19c4196517ec25e5132d029582d77557c79a09daf39`  
		Last Modified: Tue, 07 May 2019 07:50:42 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bbdfedbaead54a4fcdcb4a41e9ffa8561cd29805127e1f2f9ce8aef8634d44`  
		Last Modified: Tue, 07 May 2019 07:50:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812541fac97f26b60a7fedd986b4fd48c94497e3ff4a2b9ceacf99529be4f375`  
		Last Modified: Tue, 07 May 2019 07:51:10 GMT  
		Size: 2.8 MB (2764945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9772835793479c8170d8ac22e6655d07dc14f39654ff51918d5d0854d3a49502`  
		Last Modified: Tue, 07 May 2019 07:51:10 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939dffb8570219f411515984717b9199621292c636a98184df8b7487d9f40875`  
		Last Modified: Tue, 07 May 2019 07:51:12 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da21c7dab13266f54baa6f3d0aea14152faa2f966f3ccde77cd9361b405d9fe`  
		Last Modified: Tue, 07 May 2019 07:51:10 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:bb5a6564e8f77cd42b2aa8e23f56f99a044ce326b6dd6f3609a2800db690fff4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9cc5e6234163805fc788202e1e6231463aac7cb65b242631a6b9ca37512c7f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 08:49:35 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 07 May 2019 08:39:48 GMT
ENV DOCKER_VERSION=18.09.6
# Tue, 07 May 2019 08:40:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 07 May 2019 08:40:00 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 07 May 2019 08:40:01 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 07 May 2019 08:40:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 08:40:02 GMT
CMD ["sh"]
# Tue, 07 May 2019 08:40:13 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 07 May 2019 08:40:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 07 May 2019 08:40:16 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 07 May 2019 08:40:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 07 May 2019 08:40:19 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Tue, 07 May 2019 08:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 07 May 2019 08:40:21 GMT
EXPOSE 2375
# Tue, 07 May 2019 08:40:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 07 May 2019 08:40:22 GMT
CMD []
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dedf823fc09c87b03ab8713fc02989048189dd84669f74de2ac27912e6bc752`  
		Last Modified: Tue, 07 May 2019 08:41:48 GMT  
		Size: 43.7 MB (43659264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde74fe5ffa2bd90f1ceceee1d77e7092cf66ddcabb1a3837dfe77f3b7967e7f`  
		Last Modified: Tue, 07 May 2019 08:41:30 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3347cf723d7f95dbca38447164e759177cf027848ab9b703a16a5a275561cf`  
		Last Modified: Tue, 07 May 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2b70e5a7533a9c3885067ca63b1d57946ce5ec522c0cc6898defddf5edfeb1`  
		Last Modified: Tue, 07 May 2019 08:42:08 GMT  
		Size: 4.8 MB (4809854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07c5b3286723134a76dac8ad11b2869fe4dae900ff1996c4619107191231c48`  
		Last Modified: Tue, 07 May 2019 08:42:06 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c9a4942dfec5361dfe197cb9a2eafec6b12649b6f9f50cb0ed914ed751c59f`  
		Last Modified: Tue, 07 May 2019 08:42:07 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99308e461e68b01120f04f0eaf757270946c9b1658e1dc9e1875df800096a7b0`  
		Last Modified: Tue, 07 May 2019 08:42:06 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
