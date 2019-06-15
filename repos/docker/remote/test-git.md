## `docker:test-git`

```console
$ docker pull docker@sha256:baf3728a2d78c2cafb31df887b391922bc22c1f5c31850c18127ebe908fd6c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:fb19a4dcdc7fae91a55576dfa034fff3b79b53c989681ca4c8dba7ecac3c554a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc64c26db9574fb15f9d90d82b0da92220eb504b002a18a1db9c079cb08b923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d619bf862d2c02cec5366a6d8e71f0ffe1ab6609fa455cf6e34a28542e72384`  
		Last Modified: Fri, 14 Jun 2019 22:34:33 GMT  
		Size: 9.3 MB (9272004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:76327f1605958a8ab50a8a41d21c55cffbed5541d8b89e9c94ccac471303f2fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a23114a628e32455339352bab8fbfed6d5aff83f84061559bc247db1a31c32f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:50:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e29a5adb06841ec6b3e27c92dc17f0e054b8d8e854db81f85550c53f8647d33`  
		Last Modified: Fri, 14 Jun 2019 22:52:20 GMT  
		Size: 8.8 MB (8769349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1bd3aa5bc823c6a7962a6862ebf3039082462932bb8195b4b262dbf8699300d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc3670b672b2269fa808fbbcb577bbe9362f3e7fb6bca45151fd2dd95e5edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512d38a6a953aadd37a93105a1dda7af93ae86cadb525d9b95465b6124e7eaa1`  
		Last Modified: Fri, 14 Jun 2019 22:41:34 GMT  
		Size: 9.5 MB (9521258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
