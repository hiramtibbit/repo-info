## `docker:git`

```console
$ docker pull docker@sha256:23522e92d48ea2cc543a3b952c0055259d822d6edaab2a75e5acc3239745b394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:eab5a36911e3667ab8caa1bf735cdfda5e4ab0946586a72b04c9ff41cdf14dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d7ce1693c766480d7e780f5463a45e8cd473a0090209201216f710c7c5f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Feb 2019 00:19:21 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 00:19:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 00:19:26 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 00:19:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 00:19:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 00:19:27 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 00:19:38 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe6d49c797e715cebc7f0f92af5487fa5ed8b762471a82ee48605ef47574ad`  
		Last Modified: Tue, 12 Feb 2019 00:20:24 GMT  
		Size: 48.5 MB (48490044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d22b42c09e869aef173cbe8f94077817db6c2c8542988d9b63dead61f7bc33`  
		Last Modified: Tue, 12 Feb 2019 00:20:13 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c2284587d0064128217d64bc98475e3b6fc461c678cb43974cd707b4a116cf`  
		Last Modified: Tue, 12 Feb 2019 00:20:12 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3acd7e7d138cdf046ac34522718965ad2e567b46c22100630b3844771e0072b`  
		Last Modified: Tue, 12 Feb 2019 00:20:40 GMT  
		Size: 8.6 MB (8628200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:36319d72285e00ee63fa76b0eba0ff52c55ffabee3eb679ba92011e6ef780217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56323809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0a377083b73c73141952f4f633499cdaa9800bc24f76a1f0d848eadc990b2`
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
# Tue, 12 Feb 2019 08:49:22 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 08:49:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 08:49:32 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 08:49:50 GMT
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
	-	`sha256:2ec227af8ca3ff7cbf3e6a8f3011e9bb8f3745207bd946e3468e5b4cd368e00f`  
		Last Modified: Tue, 12 Feb 2019 08:50:59 GMT  
		Size: 45.7 MB (45685219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d127b2343045cf5222c4c272b0404e4692c6bebb9f539ac4e42fa0f3320a5b`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f70a16fe300280d1a82683260d3929795d9f98e7bd79773971a9842f6c359d`  
		Last Modified: Tue, 12 Feb 2019 08:50:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8c212b7143ab8c230feed6ce0ded49923d6420b56632249b731834fd902496`  
		Last Modified: Tue, 12 Feb 2019 08:51:30 GMT  
		Size: 8.2 MB (8181958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f134d3dbadb0a52b4af6901279c7bee7391a8b8243f06ff751c6d60a933d5e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd867581d0db0ae4a5f6a5dce154764d61de76f2f132356bf1b0a6d0e51`
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
# Tue, 12 Feb 2019 09:40:53 GMT
ENV DOCKER_VERSION=18.09.2
# Tue, 12 Feb 2019 09:41:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 12 Feb 2019 09:41:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 12 Feb 2019 09:41:05 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 12 Feb 2019 09:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 09:41:06 GMT
CMD ["sh"]
# Tue, 12 Feb 2019 09:41:35 GMT
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
	-	`sha256:ed6dc52bd66cff94fc02817f84abbf86551e657a623dacc7edcdc9a2ff0bc4e5`  
		Last Modified: Tue, 12 Feb 2019 09:43:06 GMT  
		Size: 43.6 MB (43612971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c3070a279e4e68be2b100d6dc5d89d45b1376d4ca3ad7c852d8c282061c5`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597674eb89722b41d29f511c17e9ead84fa605f211ab5f7bab105189ce8ced26`  
		Last Modified: Tue, 12 Feb 2019 09:42:48 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20ba1ac909ab7aefcb9142bd843f02ca142afa09725c6605f103759ccf4ac62`  
		Last Modified: Tue, 12 Feb 2019 09:43:48 GMT  
		Size: 7.9 MB (7919230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
