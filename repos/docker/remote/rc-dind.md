## `docker:rc-dind`

```console
$ docker pull docker@sha256:f60962c46385dcb410b12cbe34d43963b8db76f982bf66bb2db9b897506900e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:fecb75361d3261e18e4dfcd18c00c5759b70aaf8a78745ce42e1a0b6dd5dd464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55693012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c908ce9235c4e6c85b914103c5b4380e48ce2d51440d52f089195a294b18deee`
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
# Fri, 21 Dec 2018 01:10:08 GMT
ENV DOCKER_CHANNEL=test
# Fri, 21 Dec 2018 01:10:08 GMT
ENV DOCKER_VERSION=18.09.1-rc1
# Fri, 21 Dec 2018 01:10:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:16 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:16 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:16 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:10:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 01:10:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 01:10:22 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 01:10:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 01:10:23 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:24 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 01:10:24 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 01:10:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:24 GMT
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
	-	`sha256:b10f29bfe67e65db7bef7544b8bd73252424325dd1eaed4227409f3dc12791fe`  
		Last Modified: Fri, 21 Dec 2018 01:11:44 GMT  
		Size: 48.5 MB (48482475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be96e4327221ae0732910a651ec69eaf241853785cca592218e3fd168cc8c26`  
		Last Modified: Fri, 21 Dec 2018 01:11:28 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468fff8dce23dcf874b3e1aa5e95c8dbb93ad6c61286ca92d79e4a64d1457f6`  
		Last Modified: Fri, 21 Dec 2018 01:11:29 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50035d709cc67a58fb39afe0c312ebb866144c1fdefe0c19f0e411e2883edbe8`  
		Last Modified: Fri, 21 Dec 2018 01:11:51 GMT  
		Size: 4.7 MB (4690317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0247dbcd1a9905356b67f0d4f66519a8cc08508b9137245c5db82894082ad204`  
		Last Modified: Fri, 21 Dec 2018 01:11:50 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bdbbbb5372528cb70bf0d49e24fb6a394c40f6f8825a283986e4698aa00d59`  
		Last Modified: Fri, 21 Dec 2018 01:11:51 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc84dc3913102a28cf80a1f33a115446b8adba43170e94d8987621dba13abbfa`  
		Last Modified: Fri, 21 Dec 2018 01:11:50 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:4da900d837634c286b6c45403f7957cc768067267943e881b245b053f553b3a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50775698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec29ebacf48b158d7587c6d43fec620022685efd2a92d41027efbd8275faaff`
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
# Fri, 21 Dec 2018 09:05:50 GMT
ENV DOCKER_CHANNEL=test
# Fri, 21 Dec 2018 09:05:50 GMT
ENV DOCKER_VERSION=18.09.1-rc1
# Fri, 21 Dec 2018 09:05:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:06:00 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:06:00 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:06:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:06:01 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:06:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 09:06:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 09:06:08 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 09:06:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 09:06:10 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:06:10 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 09:06:11 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 09:06:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 09:06:12 GMT
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
	-	`sha256:ebd090811df3674a7124328fea1f5104d180018e87de32e894ebd34ebbc2558c`  
		Last Modified: Fri, 21 Dec 2018 09:08:06 GMT  
		Size: 45.7 MB (45665280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96186cb1b357353bcdc8744db224bb17d812b74329d9d541ff7e2d6110b8fe8e`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19b894a0ab9b4d28be3cf1c0c8f5650e88d4b52187833ccba88283676de84be`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a89b516d8a2ea0900b43bb96eb5f28631b20867b84a710de0fa5a3071422b1`  
		Last Modified: Fri, 21 Dec 2018 09:08:18 GMT  
		Size: 2.7 MB (2651118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d738c2c37476d373d0552aeffe0ef3ac7109c92361b4f15db2fb8e1841779f7e`  
		Last Modified: Fri, 21 Dec 2018 09:08:18 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78240943ba2d9c051db253f12d767bc7b1b43ff704f7db5343b2c08865453859`  
		Last Modified: Fri, 21 Dec 2018 09:08:16 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d960c837664f2518aec6f27787ff515e27d507ce1870cb4f42c4b9872ffc3f0`  
		Last Modified: Fri, 21 Dec 2018 09:08:16 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f06bd51604b399e5df6bb61c65c6417f9033cb796571d24b7c93093c49dd8f8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50270714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08af90c3a41eaa78a7073ac3ad532e64bb7e1ac1b017ecf7c1bebcf116d5edce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 08:51:01 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 03 Oct 2018 08:51:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 06 Oct 2018 08:39:56 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Dec 2018 09:39:48 GMT
ENV DOCKER_VERSION=18.09.1-rc1
# Tue, 11 Dec 2018 09:39:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 11 Dec 2018 09:39:59 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Dec 2018 09:40:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:40:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Dec 2018 09:40:01 GMT
CMD ["sh"]
# Tue, 11 Dec 2018 09:40:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 11 Dec 2018 09:40:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 11 Dec 2018 09:40:21 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 11 Dec 2018 09:40:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 11 Dec 2018 09:40:24 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:40:24 GMT
VOLUME [/var/lib/docker]
# Tue, 11 Dec 2018 09:40:25 GMT
EXPOSE 2375/tcp
# Tue, 11 Dec 2018 09:40:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 11 Dec 2018 09:40:26 GMT
CMD []
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cdac08f3358dba836f2b7ded1fa5dc2150665abbe222782cae6cf449c3078f`  
		Last Modified: Wed, 03 Oct 2018 09:06:55 GMT  
		Size: 308.5 KB (308522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ef4ad6416adae80970c5edd8e49ff9040d95e018ae5ad3f51e6adc1acdcf87`  
		Last Modified: Wed, 03 Oct 2018 09:06:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eef80c660d603ed0d9eb84d54295bffcc07749531bd460eb795be81322785b`  
		Last Modified: Tue, 11 Dec 2018 09:41:57 GMT  
		Size: 43.6 MB (43603536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9944fe256031b59ae3ba54fd6b995fb657749ed64cb8db0ad0a45f478ccd93b3`  
		Last Modified: Tue, 11 Dec 2018 09:41:35 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c8fcb574ebb7c8114672dcd9f44c96f12400c2b3ba55810e17f9dd4c09fc5`  
		Last Modified: Tue, 11 Dec 2018 09:41:35 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432826044d5313cc8493f1f5dc2c9c861d99a07f1f011ec39d61471af00cb557`  
		Last Modified: Tue, 11 Dec 2018 09:42:49 GMT  
		Size: 4.3 MB (4254640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c542665b24cca6bb2a3950efd5eabfde0aec329ed3c3bb66303b995066eb007b`  
		Last Modified: Tue, 11 Dec 2018 09:42:47 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0386108f85d1dd84f43fca07adb2fbca429e6083f00067285e8b7cca00b3a228`  
		Last Modified: Tue, 11 Dec 2018 09:42:47 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd372ed079f4f76ef68530623c517df3047f9f027c7b13742717b74cb556b51`  
		Last Modified: Tue, 11 Dec 2018 09:42:47 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
