## `docker:18-git`

```console
$ docker pull docker@sha256:d47f4577168af3397d9b56aa818bfc956b975dc4df6317f1b8ee839656d62abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:75018cf81e6e4d3bdeae3d7435f6636151e131e09deeaa087546fc0dbdee2eb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58731838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2b4461a1ce904e19f58fe33f74c9a3d7b7b84213f35ae4006d6a49e82416d3`
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
# Fri, 21 Dec 2018 01:10:49 GMT
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
	-	`sha256:a2976ce138d3edd9b434085b2bb989b68c3ba768246ca035229d968427357b33`  
		Last Modified: Fri, 21 Dec 2018 01:12:38 GMT  
		Size: 8.6 MB (8628234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:795b2eed77cd6adcb5cd0186374ba3e52c32a79f94827a9b8159dbe09d84f5e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55400003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642aabd4412d4ce65865a41a280adf57b3417d87c3bf732e72a61de9844e8ad`
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
# Fri, 21 Dec 2018 09:06:48 GMT
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
	-	`sha256:0cda947a90a5b9342190d75cef530a614d683746779ff6d1dcccdd150e47a9fe`  
		Last Modified: Fri, 21 Dec 2018 09:09:23 GMT  
		Size: 8.2 MB (8181974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ece4278e623e8bed6f671f49949d2e3fb78a2b000a31ef8902cab0ac1a296b31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53094890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb556baf93d752620ae8734cd3419d1288c9be812ed6e6751f4cd828843443c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 10 Nov 2018 09:42:05 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:30d490b1c3a26e63213044a789efbeb145eaae190c1ad8bd4b396ff5eedfea07`  
		Last Modified: Sat, 10 Nov 2018 09:46:37 GMT  
		Size: 7.9 MB (7919234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
