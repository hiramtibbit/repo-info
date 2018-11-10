## `docker:dind`

```console
$ docker pull docker@sha256:a6376e30d4c95e33709dae33edeaa0016a022dc589c4143a01659cb86ab426b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:d4dfcb032af49223c029f4cb39d044410c05d903cd2eb5f619ebe291aa420588
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54796242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbe3f3ad406799b528fe6633c5553725860566b638cdc252e0520010436869f`
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
# Tue, 11 Sep 2018 22:52:55 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 09 Nov 2018 22:20:15 GMT
ENV DOCKER_VERSION=18.09.0
# Fri, 09 Nov 2018 22:20:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 09 Nov 2018 22:20:20 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 09 Nov 2018 22:20:21 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 09 Nov 2018 22:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:20:21 GMT
CMD ["sh"]
# Fri, 09 Nov 2018 22:20:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 09 Nov 2018 22:20:40 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 09 Nov 2018 22:20:40 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 09 Nov 2018 22:20:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 09 Nov 2018 22:20:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 09 Nov 2018 22:20:41 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Nov 2018 22:20:42 GMT
EXPOSE 2375/tcp
# Fri, 09 Nov 2018 22:20:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Nov 2018 22:20:42 GMT
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
	-	`sha256:138bee096c7284cb115245216d3fbee9c6fcd0ce64637fc0a05ee1dc96392c65`  
		Last Modified: Fri, 09 Nov 2018 22:22:36 GMT  
		Size: 47.6 MB (47586023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed9d4b111c6b79c304302f5ea299c3e16cbb1d20c52f10e09f2b888bc05ac99`  
		Last Modified: Fri, 09 Nov 2018 22:22:25 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc49bcc693c6f9f33f414bf3139f03fd7143a568a2d8d8d110ad5989899096c`  
		Last Modified: Fri, 09 Nov 2018 22:22:25 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35046dbe9866e3fd3545c7e53fa33586827145889dab8ce8b67621bca6fe62d4`  
		Last Modified: Fri, 09 Nov 2018 22:24:06 GMT  
		Size: 4.7 MB (4690236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a80e297fcdd81ea9dac3bcf94e0ac3a8509c5aa47f955615ccdcdc11276d20a`  
		Last Modified: Fri, 09 Nov 2018 22:24:05 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e6c6bb487f21c5f78fd6776aec08d09e4043f4aa6db47ef4b5701c21b677d1`  
		Last Modified: Fri, 09 Nov 2018 22:24:05 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6b9708fcb37354e1e0787fac87e404878674febfa7986e7b8f834c0731a14c`  
		Last Modified: Fri, 09 Nov 2018 22:24:05 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
