## `docker:edge-dind`

```console
$ docker pull docker@sha256:0b3690ae86546db08e074e67b532b17fe649edf7f9eed3bfc8768e45598b2e4e
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
$ docker pull docker@sha256:b295ba57ca936f1d9c67918c4f7ffbb69734ac3d71f9872882d50492315bbacd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52150091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86eec9e7f021cd2f841a38eb1f47d596b80a68ace1b852349a34223378520be6`
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
# Wed, 17 Apr 2019 23:19:48 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 17 Apr 2019 23:19:48 GMT
VOLUME [/var/lib/docker]
# Wed, 17 Apr 2019 23:19:49 GMT
EXPOSE 2375
# Wed, 17 Apr 2019 23:19:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 17 Apr 2019 23:19:49 GMT
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
	-	`sha256:7f39b48b718f31a073ea753a16e9d56a9bc213f7196a6ac2c63c2d963a0902dc`  
		Last Modified: Wed, 17 Apr 2019 23:20:25 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d82043231a37abba23171f09f0ea0795fa193dbe17386e725370dd79cba980c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48727509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375d157bda81f6278147f4c1620eb2e08e1cb42d2a262d61e0c8ccbaa22a9751`
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
# Wed, 10 Apr 2019 07:50:51 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Wed, 10 Apr 2019 07:51:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 10 Apr 2019 07:51:01 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 10 Apr 2019 07:51:01 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 10 Apr 2019 07:51:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 07:51:02 GMT
CMD ["sh"]
# Wed, 10 Apr 2019 07:51:08 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 10 Apr 2019 07:51:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 Apr 2019 07:51:11 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 10 Apr 2019 07:51:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 10 Apr 2019 07:51:13 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Wed, 10 Apr 2019 07:51:14 GMT
VOLUME [/var/lib/docker]
# Wed, 10 Apr 2019 07:51:15 GMT
EXPOSE 2375
# Wed, 10 Apr 2019 07:51:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 Apr 2019 07:51:16 GMT
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
	-	`sha256:865426cab22f658a5931d6f925b6526c542ca9fe014d329ba1c3064a17345db5`  
		Last Modified: Wed, 10 Apr 2019 07:53:41 GMT  
		Size: 43.1 MB (43112953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4cc76fddd01127db6170fea2e6f39e677dd076cc8ab4e399e17a9bc9e4fef2`  
		Last Modified: Wed, 10 Apr 2019 07:53:27 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8134a44e447cd4eb54e7ddda6ac491f42cece2931bfec249cb782c105f6e81a`  
		Last Modified: Wed, 10 Apr 2019 07:53:27 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549efe2b1ded9cd41be4376cf1be13c78309bc42cde1f76d0546abd023f39aee`  
		Last Modified: Wed, 10 Apr 2019 07:53:50 GMT  
		Size: 2.8 MB (2764930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdb0ab334035f534cc8124c43c359d8d3fd1bafe076cf3e44d3f2f3f64db059`  
		Last Modified: Wed, 10 Apr 2019 07:53:49 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ebaf94d3db7687744b9f260cbf918f1c9431ef8001d4a3ce5c14ec2c33c92`  
		Last Modified: Wed, 10 Apr 2019 07:53:49 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec6df0f547bcece71c391077a0034e842821c0b79062bb8756dcf9694c0b96a`  
		Last Modified: Wed, 10 Apr 2019 07:53:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:19f2962416e081cae6f733983b697be68a574aa3afe37f1115c39cb5f0dcef54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49021762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99158cddb98b1b242069efed9f40ca7e2514ffe08926a54f94e0a7385f2756c9`
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
# Wed, 10 Apr 2019 08:50:36 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Wed, 10 Apr 2019 08:50:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 10 Apr 2019 08:50:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 10 Apr 2019 08:50:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:50:51 GMT
CMD ["sh"]
# Wed, 10 Apr 2019 08:51:00 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 10 Apr 2019 08:51:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 Apr 2019 08:51:03 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 10 Apr 2019 08:51:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 10 Apr 2019 08:51:06 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:51:07 GMT
VOLUME [/var/lib/docker]
# Wed, 10 Apr 2019 08:51:09 GMT
EXPOSE 2375
# Wed, 10 Apr 2019 08:51:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 Apr 2019 08:51:11 GMT
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
	-	`sha256:6af548de5a39ff7c79f9f4a00c5d0665a89627a415ed1afe220f39654af6fb46`  
		Last Modified: Wed, 10 Apr 2019 08:54:33 GMT  
		Size: 41.2 MB (41216789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4523142f13c8791fc5a4bc3436ebe8513201d29e6f12ec18d53caf3477fe96`  
		Last Modified: Wed, 10 Apr 2019 08:54:16 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e360d2dcab85d50180b0caf4c6887c43dafdcd8f8868aea4cc6f47e7cd6fda`  
		Last Modified: Wed, 10 Apr 2019 08:54:16 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff39bf9dc21b717f86107907938feeeb99ea7078afe01b46de91d3ffd0deb8a`  
		Last Modified: Wed, 10 Apr 2019 08:54:48 GMT  
		Size: 4.8 MB (4809822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb2035c9bd7fa68f9e66a5f79e107c8c287a7245943a8553915c03d0abe07f2`  
		Last Modified: Wed, 10 Apr 2019 08:54:46 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7423cacabf10cdf2605795d9f46ee8436542d27935da2596a3f833dea772671`  
		Last Modified: Wed, 10 Apr 2019 08:54:46 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba64ec2608ba95721a539bfd0cf76fc60cc8e9cb599c5327d21dabbc439bd7fd`  
		Last Modified: Wed, 10 Apr 2019 08:54:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:0d804be1cb997ffe97f1b375174d50cc25e893e1871527997b62170719146111
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49037589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f629bbdec4c0b6bcf66bc4780f46dd8aefbcd7c907d6b261ffb477c3b3c11`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 08:28:20 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 10 Apr 2019 08:29:07 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Wed, 10 Apr 2019 08:29:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 10 Apr 2019 08:29:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 10 Apr 2019 08:29:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:29:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:29:35 GMT
CMD ["sh"]
# Wed, 10 Apr 2019 08:29:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 10 Apr 2019 08:30:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 Apr 2019 08:30:05 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 10 Apr 2019 08:30:11 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 10 Apr 2019 08:30:13 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:30:16 GMT
VOLUME [/var/lib/docker]
# Wed, 10 Apr 2019 08:30:20 GMT
EXPOSE 2375
# Wed, 10 Apr 2019 08:30:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 Apr 2019 08:30:27 GMT
CMD []
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a3432a6118998df2bd2b0385ba3741fc18028fa9e0f2d458a1689869f9b949`  
		Last Modified: Wed, 10 Apr 2019 08:31:38 GMT  
		Size: 40.8 MB (40802865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245afcb763c4d93cfab166f21dfafe8ed28a96aaad21cdcf99d82f8e7a55d65b`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2722d62a46f7063503c744a212edab9eb141da1b49492e84111b29de9259c7e1`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0d9effd16a54100006f5dbc230d83b6c85b49cced01197182c95cdc1adf99c`  
		Last Modified: Wed, 10 Apr 2019 08:31:57 GMT  
		Size: 5.1 MB (5145079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4103e137e7febcb58b421020b0929169f03f4a49b8446747551241b875c31e11`  
		Last Modified: Wed, 10 Apr 2019 08:31:56 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee7618dbbe6495a0210b1ecc08a0a4420afe837d3d911172fc71fcb189737f0`  
		Last Modified: Wed, 10 Apr 2019 08:31:56 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dfc20b2f5547c1b61ab2de81eb4271f587bd0f5256ced85b1a28d7f5d36b98`  
		Last Modified: Wed, 10 Apr 2019 08:31:56 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:bfed7b89d4bad6343f945836d02635cd7fbbcc0e8d6f5c8b1c0affa2d59db72d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51698670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cdc12f831d484501fd964eee7f56c39b32e8fab8a8ed33026bfa7b1eff77f80`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 11:42:38 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 10 Apr 2019 11:43:03 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Wed, 10 Apr 2019 11:43:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 10 Apr 2019 11:43:11 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 10 Apr 2019 11:43:12 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 10 Apr 2019 11:43:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 11:43:13 GMT
CMD ["sh"]
# Wed, 10 Apr 2019 11:43:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 10 Apr 2019 11:43:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 Apr 2019 11:43:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 10 Apr 2019 11:43:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 10 Apr 2019 11:43:29 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Wed, 10 Apr 2019 11:43:29 GMT
VOLUME [/var/lib/docker]
# Wed, 10 Apr 2019 11:43:30 GMT
EXPOSE 2375
# Wed, 10 Apr 2019 11:43:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 Apr 2019 11:43:31 GMT
CMD []
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da737645696e05915e0e0dc7c31f608ab6c846e8f2c58d308f2e6531010db89`  
		Last Modified: Wed, 10 Apr 2019 11:44:31 GMT  
		Size: 44.0 MB (43986000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f522e3131527f66fae764ebcb4de6552c4af58fa6d7d10eb24b056f68105bd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2932e8da6035d3ddf0bc15e5aee4db12c4081d3eda3fa8f9b502c906ab0a5b`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a959106ff114aa7094601415d306f264ea9718d1da6e64d3c2e18bfe14e28f`  
		Last Modified: Wed, 10 Apr 2019 11:44:49 GMT  
		Size: 4.9 MB (4862882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f5ba0e8a3c86e6c73c29709e8520371617aa73a0b4197a31e5427706021c2`  
		Last Modified: Wed, 10 Apr 2019 11:44:46 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00da0a39e6490a789e9527cafedc18ee76d89c053c0a3fae8375fe791a453a`  
		Last Modified: Wed, 10 Apr 2019 11:44:46 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407697500ed09402cbf63146265b127d56424e47d47857486615d7111b3d1f11`  
		Last Modified: Wed, 10 Apr 2019 11:44:46 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
