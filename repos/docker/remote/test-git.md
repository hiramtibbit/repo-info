## `docker:test-git`

```console
$ docker pull docker@sha256:8c27a0f6c7e9102ab3717648c65b0ec927d116ce05608e85aca505eee6067960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:d46260de524d69793a1560e01e1fe1009d429dc4e8bd620c0ee8a465765b1fdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58731103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800cf66a6c54b393e18c9b455d04bb706c1fee372e472334f6df4565886e67e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Sat, 03 Nov 2018 00:19:39 GMT
ENV DOCKER_VERSION=18.09.0-rc1
# Sat, 03 Nov 2018 00:19:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 03 Nov 2018 00:19:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Nov 2018 00:19:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:19:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 00:19:46 GMT
CMD ["sh"]
# Sat, 03 Nov 2018 00:20:21 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e793f0ebe8a0d4496ef2fca6d5d45493df6dc40503657b357e153fa91548171`  
		Last Modified: Tue, 11 Sep 2018 22:53:41 GMT  
		Size: 309.0 KB (308969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77995fba19184aad4b702852da2d04d7b92693f2923499f5d388fd8d2ce2dd81`  
		Last Modified: Tue, 11 Sep 2018 22:53:40 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1595bc017e1f55a827454b37ef433c9b814b094b7f7d494cb34a6dedb0eda230`  
		Last Modified: Sat, 03 Nov 2018 00:21:11 GMT  
		Size: 47.6 MB (47585570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8ff7fb1f25ea82aa66aedb271c6caa03163adf7ffca3c06921d8d421041c99`  
		Last Modified: Sat, 03 Nov 2018 00:21:00 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91911ff7d565bc3e7a6be74f01878740f71834623e55d5cc271288bcc25bca15`  
		Last Modified: Sat, 03 Nov 2018 00:21:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb90d8dbd91cfac79b204273b1b8e193d8d6dd2332a165a7b63d9f4e6179e22`  
		Last Modified: Sat, 03 Nov 2018 00:23:04 GMT  
		Size: 8.6 MB (8628196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:fda923c3fef3e74f9462c5b1e5b5cc11b11c2759a07e4cdda88ed63641dd4a83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55399765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335c75e27c8f5959f7f60dc9af03413ea8e0465f4d4fb5108c67296e642b0c67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Sat, 03 Nov 2018 07:49:26 GMT
ENV DOCKER_VERSION=18.09.0-rc1
# Sat, 03 Nov 2018 07:49:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 03 Nov 2018 07:49:35 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Nov 2018 07:49:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Nov 2018 07:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 07:49:36 GMT
CMD ["sh"]
# Sat, 03 Nov 2018 07:50:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60a33bcf8c6f6e03415701ac27e022f9dc7748a9a7a83cf87e55ecebcf1386b`  
		Last Modified: Sat, 03 Nov 2018 07:50:43 GMT  
		Size: 44.8 MB (44760756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ec0faa704204c95cd711ad8c2c5114ea789051176652e40dc02600997829b7`  
		Last Modified: Sat, 03 Nov 2018 07:50:27 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970dbf03a960c8c82a26880cfc69467f9424f1a082cdf05b7760b15160f7f01c`  
		Last Modified: Sat, 03 Nov 2018 07:50:27 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9305a47c139386688940de3d4d0a97253ef7fadd3912fe9998cadefaa9d8ab6d`  
		Last Modified: Sat, 03 Nov 2018 07:51:31 GMT  
		Size: 8.2 MB (8181880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:071e1e5fed7150d03f6b2dac15a3757b86b3d2122c16d26315f6166caaab99d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53096642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd1fe4f6266e26862cb6a804f09f7020c3aafc5671a60563047e4c815a19c88f`
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
# Sat, 06 Oct 2018 08:39:56 GMT
ENV DOCKER_CHANNEL=test
# Sat, 03 Nov 2018 08:39:50 GMT
ENV DOCKER_VERSION=18.09.0-rc1
# Sat, 03 Nov 2018 08:39:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 03 Nov 2018 08:40:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Nov 2018 08:40:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Nov 2018 08:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Nov 2018 08:40:08 GMT
CMD ["sh"]
# Sat, 03 Nov 2018 08:41:53 GMT
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
	-	`sha256:9e14166ccdeb2436f4eb800b3a6cf1a43b3663ffe5a2886a45052c207f568391`  
		Last Modified: Sat, 03 Nov 2018 08:42:49 GMT  
		Size: 42.8 MB (42767520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f1081e1bbe699ea444578e898346a54c1dbe7adff8e0880fd3d89238dd5acf`  
		Last Modified: Sat, 03 Nov 2018 08:42:32 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a56da8098fae931fa3df00bdb44b06ead11c9752352a02929420ecfbad405`  
		Last Modified: Sat, 03 Nov 2018 08:42:32 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91e2afdb4f04613191dbd59b48dd61f6457842ad1bb4008a3351b6889693868`  
		Last Modified: Sat, 03 Nov 2018 08:44:56 GMT  
		Size: 7.9 MB (7919226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
