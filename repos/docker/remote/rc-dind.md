## `docker:rc-dind`

```console
$ docker pull docker@sha256:4630e6dd5e318c1405a07c783ae1d17698f7415e0a8e3e671942e203fd8f3478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:168b92e2144904629783bf5969bff3cbdabddaf6e8037baaf4e984b98d03f68f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52571692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094cb4c954c61c0d2c9dd5aeb689751cab5b2a67c59a7e02d41e3197830eabeb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:45:09 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 06 Jul 2018 14:45:09 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 06 Jul 2018 14:45:10 GMT
ENV DOCKER_CHANNEL=test
# Mon, 16 Jul 2018 23:19:46 GMT
ENV DOCKER_VERSION=18.06.0-ce-rc3
# Mon, 16 Jul 2018 23:19:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 16 Jul 2018 23:19:53 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Mon, 16 Jul 2018 23:19:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:19:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jul 2018 23:19:54 GMT
CMD ["sh"]
# Mon, 16 Jul 2018 23:20:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Mon, 16 Jul 2018 23:20:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 16 Jul 2018 23:20:13 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Mon, 16 Jul 2018 23:20:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 16 Jul 2018 23:20:15 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:20:15 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Jul 2018 23:20:15 GMT
EXPOSE 2375/tcp
# Mon, 16 Jul 2018 23:20:16 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Jul 2018 23:20:16 GMT
CMD []
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff9b9c51076c7e9cbdc3bc2def74e6e7cbdcbae47d2ed15f9e86896c9fba33c`  
		Last Modified: Fri, 06 Jul 2018 14:47:48 GMT  
		Size: 308.3 KB (308313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9500841639b7bed33a3e082af53576e0f30da470b24821cfea893287f8c108b0`  
		Last Modified: Fri, 06 Jul 2018 14:47:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095caf3923b66dc79508c3405b7e26cdbfb55db6ac47f5e5d3e5f0cdeeb82319`  
		Last Modified: Mon, 16 Jul 2018 23:21:25 GMT  
		Size: 45.5 MB (45522127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325a27a74d054352278f72fe2f20549114ee8f79fcd0586dc2f6a3e2d1b54997`  
		Last Modified: Mon, 16 Jul 2018 23:21:06 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e592de114199a192240a29ece784c9245bbd459840e334f1d99be6482bd07d18`  
		Last Modified: Mon, 16 Jul 2018 23:21:05 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d6f581f26089e1daa8a8820589e4a28d824c0cf82dcd18e559ca1f362bb603`  
		Last Modified: Mon, 16 Jul 2018 23:22:26 GMT  
		Size: 4.6 MB (4608964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c7701b909645ef16ca4c1b3821db9c5894b246874de81d9909789af7dd04c3`  
		Last Modified: Mon, 16 Jul 2018 23:22:25 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93feb56339a599b31bb03b5f6a3f0a9e733a04f1716dd9f8399e38b2609f135`  
		Last Modified: Mon, 16 Jul 2018 23:22:25 GMT  
		Size: 25.4 KB (25392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0696758d0cc7355e5a11d89774bec3bc0d39f10e56c69f78616383e3b090ed`  
		Last Modified: Mon, 16 Jul 2018 23:22:25 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
