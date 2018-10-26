## `docker:rc-dind`

```console
$ docker pull docker@sha256:79427c589b3b8d0ec374131e5d4b316c3bcb6e5b8d31e5bf98f41e5bf20bbebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:ae21854fc9019851d888fb3699ea761982d5c0934e1ff9e18a2f4d5458c17b3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54789541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8984e59f62712bea5c0fedc1a0c49bb8a8cb64563cf0745ebfa82c3eb6ac361a`
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
# Fri, 26 Oct 2018 20:19:47 GMT
ENV DOCKER_VERSION=18.09.0-beta5
# Fri, 26 Oct 2018 20:19:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 26 Oct 2018 20:20:01 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 26 Oct 2018 20:20:01 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 26 Oct 2018 20:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Oct 2018 20:20:02 GMT
CMD ["sh"]
# Fri, 26 Oct 2018 20:20:18 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 26 Oct 2018 20:20:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 26 Oct 2018 20:20:19 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 26 Oct 2018 20:20:21 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 26 Oct 2018 20:20:21 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 26 Oct 2018 20:20:21 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Oct 2018 20:20:22 GMT
EXPOSE 2375/tcp
# Fri, 26 Oct 2018 20:20:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Oct 2018 20:20:22 GMT
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
	-	`sha256:75bbb39d098ebf6eeba5ba409e3135ba2d1c0607ee6ff5f778e2a3751e771bed`  
		Last Modified: Fri, 26 Oct 2018 20:22:06 GMT  
		Size: 47.6 MB (47579317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c5af98ea42dbfa7690f11da46bca24858f27552aba7efffc1dbb15fa339aaf`  
		Last Modified: Fri, 26 Oct 2018 20:21:53 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70643ad3423f450432f88de60f3ce80697b4c1337952cb602b7ffebefa2c6cfd`  
		Last Modified: Fri, 26 Oct 2018 20:21:53 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8220fb921dcf664ec8ab8852277dedf0fb06dd03ee3592d37c0e3c4a7badda6`  
		Last Modified: Fri, 26 Oct 2018 20:23:20 GMT  
		Size: 4.7 MB (4690249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc657731789103601ec89085140430b75c189998fb0fce02c9ad78ad85b5d2c0`  
		Last Modified: Fri, 26 Oct 2018 20:23:20 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f663fbcbfb91ba48b515d4c744ab083e679bfac4da3eeb269516e17ddd45b3c0`  
		Last Modified: Fri, 26 Oct 2018 20:23:20 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed52c5d788aa88f370d96f5a1deb3957189705000e279613a368cbf44a8c7ec1`  
		Last Modified: Fri, 26 Oct 2018 20:23:20 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
