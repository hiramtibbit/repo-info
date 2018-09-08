## `docker:test-dind`

```console
$ docker pull docker@sha256:514c5df1629631fb0b84a7e16fc01caa673bf05b590fdc829b729636b5204320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:d4b2dd5ffb616985f3dadc562b5ea72a778f70cbd49cc6628afd858330cea301
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55845823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac5bf9eeb270560d72f7f723e202aa2a3d7ba023836e789bf53d97ca150e9bc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 21:46:58 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 Aug 2018 21:46:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 30 Aug 2018 21:46:58 GMT
ENV DOCKER_CHANNEL=test
# Fri, 07 Sep 2018 19:22:11 GMT
ENV DOCKER_VERSION=18.09.0-ce-tp6
# Fri, 07 Sep 2018 19:22:17 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 07 Sep 2018 19:22:17 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 07 Sep 2018 19:22:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 07 Sep 2018 19:22:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 19:22:18 GMT
CMD ["sh"]
# Fri, 07 Sep 2018 19:22:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 07 Sep 2018 19:22:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 07 Sep 2018 19:22:31 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 07 Sep 2018 19:22:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 07 Sep 2018 19:22:36 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 07 Sep 2018 19:22:36 GMT
VOLUME [/var/lib/docker]
# Fri, 07 Sep 2018 19:22:36 GMT
EXPOSE 2375/tcp
# Fri, 07 Sep 2018 19:22:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 07 Sep 2018 19:22:37 GMT
CMD []
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ba875c1cb72dff6366f4dcebaff7668c4e7a0840aa337aac83d888e847e6a5`  
		Last Modified: Thu, 30 Aug 2018 21:47:51 GMT  
		Size: 309.0 KB (308992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9177e336ded02870da56507110e1f4640d84ef81e956662b41b6cb5d065b1518`  
		Last Modified: Thu, 30 Aug 2018 21:47:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc46c0d06875ae988cf65d1cc124def01f9a682ce80c4f98e1574d5dc0a35da`  
		Last Modified: Fri, 07 Sep 2018 19:23:19 GMT  
		Size: 48.6 MB (48610971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16e7ab8e9357074bf1dd26c05ad3145cf869d1f161f6276b436304b5e890aa6`  
		Last Modified: Fri, 07 Sep 2018 19:23:09 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57df3251713eaa6903b983330b7d3dfe8f6731c8ba729c4fd40ab2bc6fc199c8`  
		Last Modified: Fri, 07 Sep 2018 19:23:08 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de0662d1f80ba5841f734ad7ab7f86f09f517acf19bdee7ef733491eb93359a`  
		Last Modified: Fri, 07 Sep 2018 19:23:42 GMT  
		Size: 4.7 MB (4690269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed835848c426b1e37634ff391dd581151d761444697624db25b3eab5eaee6143`  
		Last Modified: Fri, 07 Sep 2018 19:23:41 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc6bd7c14732cd9ade6f7e9272360616af3d3bf59f4dd4f101b4eb105b74444`  
		Last Modified: Fri, 07 Sep 2018 19:23:41 GMT  
		Size: 25.7 KB (25701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6290178d83ca0ade540c85afe483762d15658b33cbca1643f68635975344f`  
		Last Modified: Fri, 07 Sep 2018 19:23:41 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:2ce6a2fab5c48594dd6c85102cf0083a66b53c791224ed4c41c58121b38529a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50874970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597e710b89fbb731ceac81cfa1f0b6cbf1c12144171274638645234d73ab1211`
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
# Fri, 17 Aug 2018 07:54:19 GMT
ENV DOCKER_CHANNEL=test
# Sat, 08 Sep 2018 07:54:19 GMT
ENV DOCKER_VERSION=18.09.0-ce-tp6
# Sat, 08 Sep 2018 07:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 08 Sep 2018 07:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 08 Sep 2018 07:54:29 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 08 Sep 2018 07:54:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 07:54:29 GMT
CMD ["sh"]
# Sat, 08 Sep 2018 07:54:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 08 Sep 2018 07:54:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 08 Sep 2018 07:54:37 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 08 Sep 2018 07:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 08 Sep 2018 07:54:40 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 08 Sep 2018 07:54:41 GMT
VOLUME [/var/lib/docker]
# Sat, 08 Sep 2018 07:54:41 GMT
EXPOSE 2375/tcp
# Sat, 08 Sep 2018 07:54:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 08 Sep 2018 07:54:41 GMT
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
	-	`sha256:5ab01a578c0e3adc131c3f317f0ab8ade48fcbe8b9c73ba1d16c1c740efbb21b`  
		Last Modified: Sat, 08 Sep 2018 07:55:26 GMT  
		Size: 45.7 MB (45745056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2414f9da52d68822d932cb171eced791c30fd120d59a9b6e9fa3cf3854e52a69`  
		Last Modified: Sat, 08 Sep 2018 07:55:10 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acc0c3d97eaf5080ea875631688119aaaec9738c2894636b4a844536be0fb26`  
		Last Modified: Sat, 08 Sep 2018 07:55:12 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02281c6196ee339bbf1de2c7df6ce7d7949bec93bb325bed556549895a4d223c`  
		Last Modified: Sat, 08 Sep 2018 07:55:41 GMT  
		Size: 2.7 MB (2651095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c53849b46c5d612cd873bd55b330ca5f79374733c1d95683ae2f2fe71d82f2c`  
		Last Modified: Sat, 08 Sep 2018 07:55:40 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6bfbc1bcdcc17ac1f5fb2798bf5f43c6dd9c83e83934acf404105c591207a9`  
		Last Modified: Sat, 08 Sep 2018 07:55:40 GMT  
		Size: 20.2 KB (20205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfea8054e16db471490195b5f8732cbf7a032dc1f97dfc1701d155bfad1e1a62`  
		Last Modified: Sat, 08 Sep 2018 07:55:40 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:de9eb977457be2b0a2235fe53e3557a0d264c9834a3cbb82b6905ab97bf4a370
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50485179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e341dc951829b56b91d66590726d12301eebfa2883bf57ce6f11800dbe52bf`
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
# Sat, 08 Sep 2018 08:40:14 GMT
ENV DOCKER_VERSION=18.09.0-ce-tp6
# Sat, 08 Sep 2018 08:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 08 Sep 2018 08:40:44 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 08 Sep 2018 08:40:45 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 08 Sep 2018 08:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 08 Sep 2018 08:40:48 GMT
CMD ["sh"]
# Sat, 08 Sep 2018 08:41:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 08 Sep 2018 08:42:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 08 Sep 2018 08:42:09 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 08 Sep 2018 08:42:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 08 Sep 2018 08:42:13 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 08 Sep 2018 08:42:13 GMT
VOLUME [/var/lib/docker]
# Sat, 08 Sep 2018 08:42:14 GMT
EXPOSE 2375/tcp
# Sat, 08 Sep 2018 08:42:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 08 Sep 2018 08:42:16 GMT
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
	-	`sha256:6d4ba54e5046b321aea8254c65ac54ccb9128480548503c8d070fc0b9b5e186c`  
		Last Modified: Sat, 08 Sep 2018 08:44:42 GMT  
		Size: 43.8 MB (43793192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b8498a7d12578851e8d234f0db512601a12f05d6bd69dca99995cdc9e5408d`  
		Last Modified: Sat, 08 Sep 2018 08:44:23 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2f19663cedcc32f331c08bd0def46d1364c7a78dc137d481e3499afe02ff2e`  
		Last Modified: Sat, 08 Sep 2018 08:44:23 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392d26da456f74ddec7c4794b99a4aa03e4cef2b983c58ca9e8c3e57b33f7813`  
		Last Modified: Sat, 08 Sep 2018 08:46:48 GMT  
		Size: 4.3 MB (4254683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f0361bec9c63e8b067152ecd405d3305e5ff80caefc5a9c051c9ecd215cf2f`  
		Last Modified: Sat, 08 Sep 2018 08:46:45 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda68092b223888a8301383c4c77a63c24ea2684939ba452b275e983a7cdb08f`  
		Last Modified: Sat, 08 Sep 2018 08:46:46 GMT  
		Size: 25.7 KB (25748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2379cf814d06fde42b0a558a73fab6264a565987e3d45a2251aca7ecfcd45b`  
		Last Modified: Sat, 08 Sep 2018 08:46:45 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
