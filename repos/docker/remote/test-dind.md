## `docker:test-dind`

```console
$ docker pull docker@sha256:7f6fbb675f7302b8b1d75d6ab0ca73ce8365e7be311949cec8fda9ccb49869c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:e061644b137bb261272be147647084fabf0bc47e72046071f21cbd831f43b3ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54795838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8582ee2a0f905e9bc4b533efb8d6250251184fa5089172ce00c7ce56094ae4a`
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
# Sat, 03 Nov 2018 00:20:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Nov 2018 00:20:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Nov 2018 00:20:03 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 03 Nov 2018 00:20:04 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 03 Nov 2018 00:20:04 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 03 Nov 2018 00:20:04 GMT
VOLUME [/var/lib/docker]
# Sat, 03 Nov 2018 00:20:05 GMT
EXPOSE 2375/tcp
# Sat, 03 Nov 2018 00:20:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 03 Nov 2018 00:20:05 GMT
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
	-	`sha256:cf9ac2eb28a3059b18a38b5cb62203be59f0d537dace83bbf32d25b1b678a15f`  
		Last Modified: Sat, 03 Nov 2018 00:22:03 GMT  
		Size: 4.7 MB (4690287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0704e3550dce46e74e8801eb758ef297b90840c34256a923f2dab14c49266b`  
		Last Modified: Sat, 03 Nov 2018 00:22:02 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee19c3c7365392298fd1ebf0f0b8b48c876c9c31b9f33897a1da82dd0807b7f`  
		Last Modified: Sat, 03 Nov 2018 00:22:02 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea66f65b48ab33e96e54723a32283079309a7c7b12c1e9926890782becdb50a`  
		Last Modified: Sat, 03 Nov 2018 00:22:02 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
