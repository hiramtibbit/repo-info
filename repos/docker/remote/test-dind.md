## `docker:test-dind`

```console
$ docker pull docker@sha256:9becc981b87caede3318bf77a9c1178bee5ad43543ce54d80b0c53e480a71d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:435a5e23c79c43763b83f8244512f09f6512200001b246fe91394cc0825d5940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54519602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52837ed36581f08361f995e09d98e1076b19bd09fc02a171e6f863aea6ea0bbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Fri, 05 Oct 2018 21:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Oct 2018 21:19:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:34 GMT
CMD ["sh"]
# Fri, 05 Oct 2018 21:19:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Oct 2018 21:19:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 05 Oct 2018 21:19:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 05 Oct 2018 21:19:52 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 05 Oct 2018 21:19:52 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Oct 2018 21:19:52 GMT
EXPOSE 2375/tcp
# Fri, 05 Oct 2018 21:19:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Oct 2018 21:19:53 GMT
CMD []
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
	-	`sha256:71d4cda3cd6f588272d125154451ac62e2f17e246e469cda2110cfc073183378`  
		Last Modified: Fri, 05 Oct 2018 21:21:06 GMT  
		Size: 47.3 MB (47309317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400476149a7b9534a1ea2b9ba98695462954fa2a21425797c14179427a658719`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b876b4ed3ff4abbaff16b958ada6f833b4c67fa468e4c11c78dd1b542337ee7`  
		Last Modified: Fri, 05 Oct 2018 21:20:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4569979abdce6d863eceb3be847c11ec4979a5916aa24b9b5b6f9f8b8c91b1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 4.7 MB (4690304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf8d414c2994a433db69ead5e4f068ea6d92f282cb969371c85a1631a424b9d`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2882ac619a12c4d22efb61ad036d815d131aea4cfacc82f1186b18025d1a4dfa`  
		Last Modified: Fri, 05 Oct 2018 21:21:42 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0401733386cda30bc4c29c8a4e7616ed171f441114221ab4c3e4990a306db1`  
		Last Modified: Fri, 05 Oct 2018 21:21:43 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:80a6e413b5e4a527a3dd65830035632d138f3e8336afc3da30af79ec1299cad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49602678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b346f6188eeb576a932df9aed44341b0f4b91dc52992bb07fd0b0ac57e79b8c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Sat, 06 Oct 2018 07:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 07:49:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 07:49:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:38 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 07:49:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 07:49:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 07:49:51 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 07:49:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 07:49:53 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 07:49:54 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 07:49:54 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 07:49:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 07:49:55 GMT
CMD []
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
	-	`sha256:858f790127d531e0d784a0970f87c4d6c987a71628fdf29870bb6335b40c6969`  
		Last Modified: Sat, 06 Oct 2018 07:51:09 GMT  
		Size: 44.5 MB (44491773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843d876180d4c83dcdd44bbc0029f1968b1c855727794ac923ef7dfb53b62aed`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87d53074d01870f0df73fa303ab9882363d91dcee4b1233039f8ce772b06d86`  
		Last Modified: Sat, 06 Oct 2018 07:50:55 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5318bcb1b85a42cf2515da11f2e18cab501ef8fd4fcada34321ba0c384f00`  
		Last Modified: Sat, 06 Oct 2018 07:51:33 GMT  
		Size: 2.7 MB (2651101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689f550841756b8c3f96d3493d890a3fe3bfc4750bb697e2d25f88ab62a2d52c`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9daaaea225e49de3c963dec18e871910f29279dcdbdc2a6318b03634cad662`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2f44850ca289861a426cc4ee8a873d6b0fb831cc99084090172526f55b7e7`  
		Last Modified: Sat, 06 Oct 2018 07:51:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:21cd52d05ccd7740d4a82e28cf069bfed627f5123e13c5c6842e593f7cd937a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50485920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bef2e810fb07108f06c47a5d9cac0d95120badee197250135c8b2d1a83543f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 08:41:59 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 08:42:00 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:39:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 11 Sep 2018 08:50:46 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 08:50:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 08:50:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:00 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 08:51:32 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 11 Sep 2018 08:51:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 11 Sep 2018 08:51:35 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 11 Sep 2018 08:51:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 11 Sep 2018 08:51:38 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:51:39 GMT
VOLUME [/var/lib/docker]
# Tue, 11 Sep 2018 08:51:40 GMT
EXPOSE 2375/tcp
# Tue, 11 Sep 2018 08:51:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 11 Sep 2018 08:51:41 GMT
CMD []
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcf8e21e8f5edb742758a8dcd7868dc15b1b1ad2605c214d159d58216e7944a`  
		Last Modified: Fri, 13 Jul 2018 08:52:12 GMT  
		Size: 308.5 KB (308530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e221838d317e50636dd30af1175c5672e49c137b7163688ad18fd895860a23`  
		Last Modified: Fri, 13 Jul 2018 08:52:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2190a9ad308cf5adf0ff2ee1facb669c442501759da1dc76b4b1d93d61fd5`  
		Last Modified: Tue, 11 Sep 2018 08:53:24 GMT  
		Size: 43.8 MB (43793923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439f4e32a16d56acccb7f88d968a61ae69bce75f5cdec5c6ced81ff50f18e4ce`  
		Last Modified: Tue, 11 Sep 2018 08:53:08 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b639a9955cf69215deed2b5a57c5520a21b1d3c94bdf320e4b20790aca55dc24`  
		Last Modified: Tue, 11 Sep 2018 08:53:07 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09787dcb75b1bb491d24930c6f29df73c3e5fd94eb81cef76643e95103d99b`  
		Last Modified: Tue, 11 Sep 2018 08:55:10 GMT  
		Size: 4.3 MB (4254697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd34d0b0ef56f063bc957dfef418f813432dac71bf3f5e476d30c21d99b1e6b`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2883976d81b6254bb2e50e12964b3d2ef11712a03cc72958bc4a54c436d4e0a2`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 25.7 KB (25748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3dd3a6b71394fd05e49e6ff97d24f162b4dd2c883e69b116660547110b3668`  
		Last Modified: Tue, 11 Sep 2018 08:55:09 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
