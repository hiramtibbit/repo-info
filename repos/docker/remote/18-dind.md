## `docker:18-dind`

```console
$ docker pull docker@sha256:4700031c896f890cb5cae92b6c84da090a98ba0e2feb677b78f33cddb46f450b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:b9fb123fd21c451b654da42fabe7592b922ed0db5ddd5f84b7d5d2c58af79dde
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54796543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd9350d475b431e4b9b037fe31f4f0df70d597688776f3b13e273a8c2ecc680`
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
# Fri, 21 Dec 2018 01:10:31 GMT
ENV DOCKER_VERSION=18.09.0
# Fri, 21 Dec 2018 01:10:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 01:10:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 01:10:36 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:37 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 01:10:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 01:10:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 01:10:42 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 01:10:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 01:10:43 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 01:10:43 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 01:10:44 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 01:10:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 01:10:44 GMT
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
	-	`sha256:5daa61de3ee96026729ab489dbde3ffca9ddfa2aca975b30752e342dba9fa1b4`  
		Last Modified: Fri, 21 Dec 2018 01:12:22 GMT  
		Size: 47.6 MB (47586025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07344d023cbd270b908bc7f48bbf8bca972061d5cfcb62ed0341f46ad3320979`  
		Last Modified: Fri, 21 Dec 2018 01:12:10 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f249872a0b42b2cc2bcaea68259c7044136d74038323c6b1dc23ef3ed299520`  
		Last Modified: Fri, 21 Dec 2018 01:12:10 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626d746b7d1aedc8a87855f3a31300f15a3620343648f0c126991bbda2606e11`  
		Last Modified: Fri, 21 Dec 2018 01:12:30 GMT  
		Size: 4.7 MB (4690302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c42e79149b10f7f9bfd699fc1a3c7c34454f618a9a5bb77491213118fc48a6`  
		Last Modified: Fri, 21 Dec 2018 01:12:29 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dde65fcf7a659eec5cab3ff0d2aebae226bc8b0eff4403a79d310f11efd1c04`  
		Last Modified: Fri, 21 Dec 2018 01:12:29 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e544882b2cb8015578252a5b2906cdc810951578385bcf902d720fb84e7ef509`  
		Last Modified: Fri, 21 Dec 2018 01:12:29 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d2f26587c1f76b0d09aa9e8cf52f8abf345a86623612501c3fecccc3e04b0cb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49871810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9628b2d0965f88041b8435b66bd89c977ac713553ced32fd2fba49d1e04116`
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
# Fri, 21 Dec 2018 09:06:22 GMT
ENV DOCKER_VERSION=18.09.0
# Fri, 21 Dec 2018 09:06:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 21 Dec 2018 09:06:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 21 Dec 2018 09:06:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:06:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 09:06:32 GMT
CMD ["sh"]
# Fri, 21 Dec 2018 09:06:38 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 21 Dec 2018 09:06:40 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 21 Dec 2018 09:06:40 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 21 Dec 2018 09:06:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 21 Dec 2018 09:06:41 GMT
COPY file:0523af18c2df3a60782f253901d7e6fd98009eb483cce281eb5205cd303f6cae in /usr/local/bin/ 
# Fri, 21 Dec 2018 09:06:42 GMT
VOLUME [/var/lib/docker]
# Fri, 21 Dec 2018 09:06:42 GMT
EXPOSE 2375
# Fri, 21 Dec 2018 09:06:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 21 Dec 2018 09:06:43 GMT
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
	-	`sha256:bbc06f2eb6a5be64598f2ea31711879a7a5008700fa504bf6e5178dabb3f079e`  
		Last Modified: Fri, 21 Dec 2018 09:08:55 GMT  
		Size: 44.8 MB (44761400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c8930c2ae265adc9b817a8043bafb11e8fcc23492a4aa0e372b81712ae9cba`  
		Last Modified: Fri, 21 Dec 2018 09:08:39 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56acd751ccfda64f9a4ec5ba2188663baa0e2e02d2a2883bb1c516b5340413c`  
		Last Modified: Fri, 21 Dec 2018 09:08:39 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8af7f02bd07848d7146086e19db9b0eff692d3481c02e0764d32160a2602f7`  
		Last Modified: Fri, 21 Dec 2018 09:09:07 GMT  
		Size: 2.7 MB (2651109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568045b08f9fb27a765f4ca6bdf16f865bd75082117d821c65009f70757645a8`  
		Last Modified: Fri, 21 Dec 2018 09:09:06 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10db982d2be4dcf97e894ea007cddfe1567715f3d8231496d74cfa7740337c12`  
		Last Modified: Fri, 21 Dec 2018 09:09:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c004f6baa29a5626613dabc645b22d9005876c184cb6bac0f6be092166f86a2e`  
		Last Modified: Fri, 21 Dec 2018 09:09:06 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b39750c92cdfa43aa5c97444a98f78dd056e2b689a2d0d85a77fd9c78e8318e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49432962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130b5d7218a2b779162aefc369ebe69c84f15c1ea7953f4a83166459357dffc3`
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
# Sat, 06 Oct 2018 08:41:36 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 10 Nov 2018 09:39:54 GMT
ENV DOCKER_VERSION=18.09.0
# Sat, 10 Nov 2018 09:40:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 10 Nov 2018 09:40:12 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 10 Nov 2018 09:40:12 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 10 Nov 2018 09:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 09:40:14 GMT
CMD ["sh"]
# Sat, 10 Nov 2018 09:41:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 10 Nov 2018 09:41:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 10 Nov 2018 09:41:14 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 10 Nov 2018 09:41:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 10 Nov 2018 09:41:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 10 Nov 2018 09:41:30 GMT
VOLUME [/var/lib/docker]
# Sat, 10 Nov 2018 09:41:31 GMT
EXPOSE 2375/tcp
# Sat, 10 Nov 2018 09:41:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 10 Nov 2018 09:41:32 GMT
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
	-	`sha256:867e942cb1803f6d3dc5f92b9e40e6660952d5d572f91f21dcdc22f4a230813b`  
		Last Modified: Sat, 10 Nov 2018 09:43:03 GMT  
		Size: 42.8 MB (42765759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38138a621d9808c3dea063a9e1c6a1db7e00c89209c62d1f30f3a3fb9d0818eb`  
		Last Modified: Sat, 10 Nov 2018 09:42:45 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a87eb94e6c2600d129c937cb7f7cca464d513682d6c1c8d880b6253a079c29`  
		Last Modified: Sat, 10 Nov 2018 09:42:45 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e004e500a03e90ebf0c09b4cef2c14b1dccf814a7527969c114ba8eb9689d3`  
		Last Modified: Sat, 10 Nov 2018 09:44:48 GMT  
		Size: 4.3 MB (4254660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8269ffa0dcc8c966295c4f4539d4e8342d6806c64725d1c8c33402db42a332f7`  
		Last Modified: Sat, 10 Nov 2018 09:44:46 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe72a2843906ed2d5cd79af9b8528abecb1744e03ba5fd28da3a99dee5a915a`  
		Last Modified: Sat, 10 Nov 2018 09:44:46 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10d6d5d6f2b152dd748f7d2a360f6f287eb1f28fd19b7492e157cd2926be073`  
		Last Modified: Sat, 10 Nov 2018 09:44:46 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
