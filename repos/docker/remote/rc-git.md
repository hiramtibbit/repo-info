## `docker:rc-git`

```console
$ docker pull docker@sha256:453b11574cd209732ec1ca46553125ec17451dabec9e83b1470e370b8b055e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:589eb0a046f044c0ca6e04ac1c1215f7ae185b2f56d167d3c63f7b4634ec04ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58518412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bdc9f69077688614a266f1eb8520714685a8c07dc82234ec7fe7d07f8f8469`
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
# Tue, 09 Oct 2018 22:20:26 GMT
ENV DOCKER_VERSION=18.09.0-beta3
# Tue, 09 Oct 2018 22:20:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Oct 2018 22:20:34 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 09 Oct 2018 22:20:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 09 Oct 2018 22:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Oct 2018 22:20:35 GMT
CMD ["sh"]
# Tue, 09 Oct 2018 22:21:09 GMT
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
	-	`sha256:b208c3fe0661493307ba6345cc56f5363cca7e53fe4aa18bcd19e80ea8c81b95`  
		Last Modified: Tue, 09 Oct 2018 22:21:42 GMT  
		Size: 47.4 MB (47374391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e08a34ab48edfa7d7a9b38698528dc400078385afe9f3cb14c7818670ac3f4`  
		Last Modified: Tue, 09 Oct 2018 22:21:32 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0d3367bfbbc147aaf718a5b8a542647e68c59231da27c70033d508b24d93f0`  
		Last Modified: Tue, 09 Oct 2018 22:21:30 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431a35ed4e66e9343af09f678af60f2f98b1dd61e7d9e0d935e188b5350e6567`  
		Last Modified: Tue, 09 Oct 2018 22:22:47 GMT  
		Size: 8.6 MB (8626685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:c7af62105721c35d268b43fe45dbc4327438d68f4515011a80aa5f3b0baa766d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55202078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f6d2bcdd48643362e5453bdd110a3cb437310623126580df0c30388b20942e`
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
# Wed, 10 Oct 2018 07:50:02 GMT
ENV DOCKER_VERSION=18.09.0-beta3
# Wed, 10 Oct 2018 07:50:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 10 Oct 2018 07:50:10 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 10 Oct 2018 07:50:11 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 10 Oct 2018 07:50:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Oct 2018 07:50:11 GMT
CMD ["sh"]
# Wed, 10 Oct 2018 07:50:31 GMT
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
	-	`sha256:5b8790605add4777838d3704012b005372fef004e5e269f65b5d19ca0a1f7030`  
		Last Modified: Wed, 10 Oct 2018 07:51:05 GMT  
		Size: 44.6 MB (44563601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a757c0378cb96cd02146aa29503c0f9e2de24aac7b6abf042c72eb04098f1da`  
		Last Modified: Wed, 10 Oct 2018 07:50:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecf30e6b7e98c349273eccc347d911d7e89702cb534cc86add168c1944c1235`  
		Last Modified: Wed, 10 Oct 2018 07:50:51 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5121fa1c1ba31a491929f931bf805fc70fdac3b591579db01f8acbf28a69ce6`  
		Last Modified: Wed, 10 Oct 2018 07:52:00 GMT  
		Size: 8.2 MB (8181346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
