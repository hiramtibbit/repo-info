## `docker:18-dind`

```console
$ docker pull docker@sha256:ab71f81db4cf1963e521f6d7d315ff45e23bd62ea599310455f85b9392118ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:7c62e5842c563c1a9739146474df2e11d40b10d36365c96fe6be89527b3f1c5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52811267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07209cbca312e673f234f13ebd01d69072bf9c769a30e1b8a489724733ad6300`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Thu, 12 Jul 2018 21:19:43 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Jul 2018 21:19:44 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 Aug 2018 20:26:03 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 Aug 2018 20:26:04 GMT
ENV DOCKER_VERSION=18.06.0-ce
# Thu, 16 Aug 2018 20:26:11 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 16 Aug 2018 20:26:12 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 16 Aug 2018 20:26:12 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 16 Aug 2018 20:26:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Aug 2018 20:26:13 GMT
CMD ["sh"]
# Thu, 16 Aug 2018 20:26:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 16 Aug 2018 20:26:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 16 Aug 2018 20:26:37 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 16 Aug 2018 20:26:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 16 Aug 2018 20:26:39 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 16 Aug 2018 20:26:39 GMT
VOLUME [/var/lib/docker]
# Thu, 16 Aug 2018 20:26:40 GMT
EXPOSE 2375/tcp
# Thu, 16 Aug 2018 20:26:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 16 Aug 2018 20:26:40 GMT
CMD []
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6b2bc60854b6da4133bf627bf976f4e168371c827bf5784b0a0b9266382279`  
		Last Modified: Thu, 12 Jul 2018 21:25:39 GMT  
		Size: 309.0 KB (308994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d20cafe6dc87abc0051ca2a3d46ebbcc10fcf0f5569578b1f3d72c6ab453c69`  
		Last Modified: Thu, 12 Jul 2018 21:25:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f08d1a7f2a3ccc52494c5e769d0111d7f3c59baf68ab7696889419b08f33f1`  
		Last Modified: Thu, 16 Aug 2018 20:34:37 GMT  
		Size: 45.6 MB (45576798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e310e3d68b4c4a2c42309c4479bf9ec59210e2d54807d01116ece68f6426bec`  
		Last Modified: Thu, 16 Aug 2018 20:34:17 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7edcda076b3fd72ae032667c27f9fac01af0c8e5fc69dc97ede2bfbe7dcf2e0`  
		Last Modified: Thu, 16 Aug 2018 20:34:17 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b160f87e4cfaf9bcaa4e79cf43baca272713a50a500ac254f754bf3772950b4`  
		Last Modified: Thu, 16 Aug 2018 20:38:06 GMT  
		Size: 4.7 MB (4689894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ad802db6669ae92d74ca4f954722313997fe83ce06161b072ecdfc9b17d0cf`  
		Last Modified: Thu, 16 Aug 2018 20:38:06 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00683016352f8abbc32f68dca1c665177f2d030a3205c7fec2b42ea587dbcbd`  
		Last Modified: Thu, 16 Aug 2018 20:38:04 GMT  
		Size: 25.7 KB (25693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa50da22a18554c3e3aac32db6ccb3b7274017dfe5e02631e3615fb882b1932`  
		Last Modified: Thu, 16 Aug 2018 20:38:04 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b29f3be6ac52ef926d1075d959c772504e890ce0f9e25d7de26115b0c071fa6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49448426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0475727eec82b8d71ccfc1beaa7fbb1bb4ede767c7dd4270d5c0dd8162ac9f9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Fri, 17 Aug 2018 07:54:18 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 17 Aug 2018 07:54:18 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 07:54:48 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 17 Aug 2018 07:54:49 GMT
ENV DOCKER_VERSION=18.06.0-ce
# Fri, 17 Aug 2018 07:54:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 07:54:59 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 07:54:59 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 07:55:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 07:55:02 GMT
CMD ["sh"]
# Fri, 17 Aug 2018 07:55:07 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 17 Aug 2018 07:55:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 17 Aug 2018 07:55:09 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 17 Aug 2018 07:55:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 17 Aug 2018 07:55:10 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 17 Aug 2018 07:55:12 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Aug 2018 07:55:12 GMT
EXPOSE 2375/tcp
# Fri, 17 Aug 2018 07:55:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Aug 2018 07:55:12 GMT
CMD []
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914d45f1b2cabdf98026bbfec8b70ebb63e829a8ebde571f733abaad018de39`  
		Last Modified: Fri, 17 Aug 2018 07:55:31 GMT  
		Size: 309.1 KB (309072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6579bc6b32fc36451455300d9a15571bf468bcfe7f8b52ddc36f24590628d2b`  
		Last Modified: Fri, 17 Aug 2018 07:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5d90f4098faa0c9da904eccab16e4541f04e46a6dd074c07ad32b0b4499d96`  
		Last Modified: Fri, 17 Aug 2018 07:56:44 GMT  
		Size: 44.3 MB (44318480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95105d26892328ca082fd05b9fe110a5f6f367583c75f2d4659db9e2a64cb364`  
		Last Modified: Fri, 17 Aug 2018 07:56:30 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e727ee8216a42b5298f9cb62300156c639be25c5f39ca82ea27cf58fcb7b7b`  
		Last Modified: Fri, 17 Aug 2018 07:56:29 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb61799fc5d520738b69655d81041b1256f59ec0639b912700534c484a5a3c0`  
		Last Modified: Fri, 17 Aug 2018 07:57:06 GMT  
		Size: 2.7 MB (2651125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555660d1609f3f3f48c69fd9031bb18c00ca25c543f9ee03dd69166dd40e344e`  
		Last Modified: Fri, 17 Aug 2018 07:57:06 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0992db74585acccc850df908761b9693830a69863584f96f2244d92e62dff7`  
		Last Modified: Fri, 17 Aug 2018 07:57:06 GMT  
		Size: 20.2 KB (20206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bc37b0956ca9e113de1c4da44d850e5748008f3a7980147debd1ea63f41976`  
		Last Modified: Fri, 17 Aug 2018 07:57:05 GMT  
		Size: 592.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:985da9c4f9f20c4496afdfc02c2a31985673dde5ab7e1dd542d998da89ec36f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47794888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7003152aee5cf350e217cd8e4c599cb25985c68d7d90a1df60ffcae7f511303`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Dec 2017 07:00:43 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 21 Jul 2018 08:42:40 GMT
ENV DOCKER_VERSION=18.06.0-ce
# Sat, 21 Jul 2018 08:42:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 21 Jul 2018 08:42:51 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 21 Jul 2018 08:42:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 21 Jul 2018 08:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 08:42:54 GMT
CMD ["sh"]
# Sat, 21 Jul 2018 08:43:16 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 21 Jul 2018 08:43:18 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 21 Jul 2018 08:43:20 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 21 Jul 2018 08:43:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 21 Jul 2018 08:43:23 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 21 Jul 2018 08:43:24 GMT
VOLUME [/var/lib/docker]
# Sat, 21 Jul 2018 08:43:25 GMT
EXPOSE 2375/tcp
# Sat, 21 Jul 2018 08:43:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 21 Jul 2018 08:43:27 GMT
CMD []
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e320150c41b7d03beb345077299969036374819bfc5900a61df0c3137427f57f`  
		Last Modified: Sat, 21 Jul 2018 08:44:46 GMT  
		Size: 41.2 MB (41189694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d9ed3e11ca0c3a55eee287c42ac7ce9054586610e7880d75b6d395369b018d`  
		Last Modified: Sat, 21 Jul 2018 08:44:29 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f7631f3482670617c0811276cb46ce217ba4c5fda2fb775ca703bd48dd72ae`  
		Last Modified: Sat, 21 Jul 2018 08:44:30 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71635e718767c6cb443f9bfe2eb940c7d37bbfa1012430c7265a261ae0749b3e`  
		Last Modified: Sat, 21 Jul 2018 08:47:01 GMT  
		Size: 4.3 MB (4279517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0058784faad946d3b745286e36d6ae1535a8c84f08a4ffcbcb702bf9a69d79`  
		Last Modified: Sat, 21 Jul 2018 08:47:00 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62abe9cc69bb21318e1e13750a0aa7ad9026c792b5d33bcc5882cf86eab0d7f3`  
		Last Modified: Sat, 21 Jul 2018 08:47:00 GMT  
		Size: 25.1 KB (25079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc282469720dab619dc0e168b489a8b9a6351dc6bfb62905c357ba3fc52d77e9`  
		Last Modified: Sat, 21 Jul 2018 08:47:00 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:258ce65dc4bc86a291c573f67e1841d3e9120c42ad86726bf9fdd39277e495f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49198181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff102890da294fffcbc32277e97d432d67e326bcffff46a2b98f46085ce2b45`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:23:05 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 17 Aug 2018 08:23:16 GMT
ENV DOCKER_VERSION=18.06.0-ce
# Fri, 17 Aug 2018 08:23:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 08:24:00 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 08:24:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 08:24:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 08:24:11 GMT
CMD ["sh"]
# Fri, 17 Aug 2018 08:24:47 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 17 Aug 2018 08:25:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 17 Aug 2018 08:25:33 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 17 Aug 2018 08:25:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 17 Aug 2018 08:25:56 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 17 Aug 2018 08:25:58 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Aug 2018 08:26:18 GMT
EXPOSE 2375/tcp
# Fri, 17 Aug 2018 08:26:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Aug 2018 08:26:36 GMT
CMD []
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138551710ed50e6127ea6e8acbea4b269283db16c78b02605b615b4f889df6d`  
		Last Modified: Fri, 17 Aug 2018 08:32:48 GMT  
		Size: 42.0 MB (42031918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28beb4cd41306987803d1a259ea5ff7aebc05ccb0475c27669b0ff2beff0f1ed`  
		Last Modified: Fri, 17 Aug 2018 08:32:23 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d0e366fc4f9b80666b00a7b41a51f305d1ec4bbd1a74889e68d07c937f8c58`  
		Last Modified: Fri, 17 Aug 2018 08:32:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1bd6a631bf1f85ea51087e5183c25a3dc40c9cf240ed193b8e742f32fc8fc7`  
		Last Modified: Fri, 17 Aug 2018 08:35:28 GMT  
		Size: 4.6 MB (4631266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb808e4e5990ac5d8f2fb93481022336c8839406dedaa6e36ad9d9e91dea87`  
		Last Modified: Fri, 17 Aug 2018 08:35:22 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1cbf216da9b22dacd1c16e4c47a03d3ee6787d3ed31396bb57ba38923963e0`  
		Last Modified: Fri, 17 Aug 2018 08:35:22 GMT  
		Size: 25.7 KB (25737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede1b04a3531a14ee76b548ea25576259f159073d1b882d006b0a584706ded8`  
		Last Modified: Fri, 17 Aug 2018 08:35:23 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; s390x

```console
$ docker pull docker@sha256:b1dc737e8a5664be41b9686c1c78d90669839c577f34cd1680e17ff2bb6fddf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51325248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361daf1445dc87c43531b9a0eb2265c319be0c7bfdeaa2c750eddd7eb1ed44bf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:17:41 GMT
RUN apk add --no-cache 		ca-certificates
# Sun, 07 Jan 2018 09:17:42 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sun, 07 Jan 2018 09:18:35 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 21 Jul 2018 11:42:51 GMT
ENV DOCKER_VERSION=18.06.0-ce
# Sat, 21 Jul 2018 11:42:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 21 Jul 2018 11:42:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 21 Jul 2018 11:42:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 21 Jul 2018 11:42:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:42:56 GMT
CMD ["sh"]
# Sat, 21 Jul 2018 11:43:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 21 Jul 2018 11:43:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 21 Jul 2018 11:43:09 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 21 Jul 2018 11:43:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 21 Jul 2018 11:43:13 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 21 Jul 2018 11:43:13 GMT
VOLUME [/var/lib/docker]
# Sat, 21 Jul 2018 11:43:13 GMT
EXPOSE 2375/tcp
# Sat, 21 Jul 2018 11:43:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 21 Jul 2018 11:43:14 GMT
CMD []
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e086971261bceaf8aea6aa9962223fd5f1c0876f30d440dca2edce64bb2e6ea`  
		Last Modified: Sun, 07 Jan 2018 09:19:36 GMT  
		Size: 309.1 KB (309148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94801dbdd0e977fe92249d99be1d017b2b930177b6d3dd44105722b0233438b`  
		Last Modified: Sun, 07 Jan 2018 09:19:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f5fab8d0a2b5082ab84f4406101180774a902ac9dee635c836f772709fc36`  
		Last Modified: Sat, 21 Jul 2018 11:43:51 GMT  
		Size: 44.0 MB (43964848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c88833553e229ba7ce38d8057e59770eceee9822c3271a09c97c54f8ab22b00`  
		Last Modified: Sat, 21 Jul 2018 11:43:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18fdd3abdacb21fe1e1a8d52cf315f38c7eeeeefa9fd349dc2d6ed9c792f7ef`  
		Last Modified: Sat, 21 Jul 2018 11:43:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bffd89e7dec6ffcd94ea9623851f89eb34c1cef4430fbcd68593ced39f93bd`  
		Last Modified: Sat, 21 Jul 2018 11:44:33 GMT  
		Size: 4.8 MB (4837406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d84ac3d6904e88479a0c85d35fde1500f858e7b3ea448202e0073a2a56915c`  
		Last Modified: Sat, 21 Jul 2018 11:44:32 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df06e0a9d385939f53ecd19d361559587f38cbaf72d90e94869811528c602ef6`  
		Last Modified: Sat, 21 Jul 2018 11:44:33 GMT  
		Size: 25.1 KB (25097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1a4a6f70fec74ebbf6836e4d723844dd529c7278719da96d99694a7b746f32`  
		Last Modified: Sat, 21 Jul 2018 11:44:33 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
