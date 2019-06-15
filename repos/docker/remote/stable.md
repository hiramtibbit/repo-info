## `docker:stable`

```console
$ docker pull docker@sha256:92211c3a9a953882dce3f8cbd5a2fa3ae8e9d36a1f6efe3ef4cfc3af5a20bc26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:f1fc50aac882ec01ebc435579962f738e492521dccc6cd31dac7a75a444887b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bea199b249bfed61cdcd7cdbfe240ee998d51f59bbf365674a15b619f5a86`
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
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:33:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:38 GMT
CMD ["sh"]
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
	-	`sha256:e7225cc92e07a49a01edc7141c190ea8e36a868bc22f04227a8dfb8bd6e0b5e9`  
		Last Modified: Fri, 14 Jun 2019 22:34:52 GMT  
		Size: 48.5 MB (48529833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4f4903626c9da26e931fe8a15cba97ea94c4676d2ca03f0354d0c3e2c9465`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cccbf3fe5a9ffbb80d59b7fb15d15470d83dd60ac1d38fdc18114a0384ce41b`  
		Last Modified: Fri, 14 Jun 2019 22:34:37 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:5eba34f27fe53a73c54fee9562045f26d62770d866bba77768212f40a35c6e22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8aab4181dbeb79f879b07a9823b72d28dd106f8b5caf710af88998011134578`
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
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:50:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:50:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:50:42 GMT
CMD ["sh"]
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
	-	`sha256:95497eb11bc75391872bc97f0db9965d3a5e76c86b42d5dc0cc4e46b2f3d18a8`  
		Last Modified: Fri, 14 Jun 2019 22:52:45 GMT  
		Size: 45.7 MB (45726785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb365ad191bbbb4de24a544153e7d254190df78504caf70781d0d26e307da675`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0bbdf002a4c3421c50936213f2532e93646e66ba686e785e1b66270bc879ce`  
		Last Modified: Fri, 14 Jun 2019 22:52:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e6e4a41f3bd2ff6ab5d5ee367f4cfa958679835da1bfd4cb19472c1eff87f99d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3fdd5c1f47eaf734ce06511c9237a0b18b0530f796be464f5730be7008cb56`
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
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Fri, 14 Jun 2019 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:40:04 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:40:05 GMT
CMD ["sh"]
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
	-	`sha256:7fab758fad5b30549f723135c94062248413d61c5c43d16f457bdbfc52a01051`  
		Last Modified: Fri, 14 Jun 2019 22:41:58 GMT  
		Size: 43.7 MB (43659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073c7553dd4fb5ab5971245f985b2032bdddc5de4d6515e186126b41ea6edb51`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9faeaac0587e09bb5acf7d3b88a84800f97a660f2d2db669dfded149b4f97`  
		Last Modified: Fri, 14 Jun 2019 22:41:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
