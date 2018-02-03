## `docker:rc-dind`

```console
$ docker pull docker@sha256:ed119ae9701e4228f7dc7d1a2261600cfde95ae5b20f1ed7eb2cb9892cd1cb80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; s390x

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:16ac9f267c5288738bbf09c5f358646748289e8d40c47cdcac367d45b92191d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45999222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1b169c02cba633ad564206c93df2467d2d67fa5f0e4dc3410094003259f208`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Jan 2018 00:46:21 GMT
ENV DOCKER_CHANNEL=test
# Fri, 02 Feb 2018 15:50:55 GMT
ENV DOCKER_VERSION=18.02.0-ce-rc2
# Fri, 02 Feb 2018 15:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Feb 2018 15:51:02 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Feb 2018 15:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Feb 2018 15:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Feb 2018 15:51:03 GMT
CMD ["sh"]
# Fri, 02 Feb 2018 15:52:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 02 Feb 2018 15:52:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 02 Feb 2018 15:52:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 02 Feb 2018 15:53:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 02 Feb 2018 15:53:01 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 02 Feb 2018 15:53:01 GMT
VOLUME [/var/lib/docker]
# Fri, 02 Feb 2018 15:53:01 GMT
EXPOSE 2375/tcp
# Fri, 02 Feb 2018 15:53:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 02 Feb 2018 15:53:02 GMT
CMD []
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9dba2f398aea05193a22e7fa11140800031fdc623f7ef0d855a3e49a36443e`  
		Last Modified: Fri, 02 Feb 2018 16:10:45 GMT  
		Size: 39.0 MB (38988399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277ca6a169235bbb10abbe5e75b5604ba46ae35472b45f5c7921cb842ac9e176`  
		Last Modified: Fri, 02 Feb 2018 16:10:32 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec177774fb169bf1c8786ad351feb6d888b661acabe0b2ef3da4cc64ad2503b`  
		Last Modified: Fri, 02 Feb 2018 16:10:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74f27feb400f8d0a8fdc77559ce160e4c6a91ef3391261922f1c0d9facd907`  
		Last Modified: Fri, 02 Feb 2018 16:27:19 GMT  
		Size: 4.6 MB (4607761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b98b21a9f6d17cdc7f77cb5f7887c40f429f3653a9d3f7ae9758f0fe30f8ce`  
		Last Modified: Fri, 02 Feb 2018 16:27:18 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcc153553bfde33e60bc91e52b98a210f7ed3d5556d0a31213c4b849678e0bf`  
		Last Modified: Fri, 02 Feb 2018 16:27:18 GMT  
		Size: 26.3 KB (26282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe06809c4637e630e6316ad89f140daaca8c0672dfebfa3c1fd6f2835c691f9`  
		Last Modified: Fri, 02 Feb 2018 16:27:18 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:fe3aee2bdc2b8bcd6626c17501a802be6fa2b98243d02c46f5ec2e3b9a967d9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41464483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767b8dd10b6ef51d970ec40b19faae1057bde924608bf1a72d7c6be9b7b73cd8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 26 Jan 2018 19:54:23 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 26 Jan 2018 19:54:24 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Jan 2018 19:54:24 GMT
ENV DOCKER_CHANNEL=test
# Fri, 02 Feb 2018 19:54:24 GMT
ENV DOCKER_VERSION=18.02.0-ce-rc2
# Fri, 02 Feb 2018 19:54:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Feb 2018 19:54:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Feb 2018 19:54:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Feb 2018 19:54:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Feb 2018 19:54:33 GMT
CMD ["sh"]
# Fri, 02 Feb 2018 19:54:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 02 Feb 2018 19:54:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 02 Feb 2018 19:54:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 02 Feb 2018 19:54:48 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 02 Feb 2018 19:54:48 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 02 Feb 2018 19:54:48 GMT
VOLUME [/var/lib/docker]
# Fri, 02 Feb 2018 19:54:48 GMT
EXPOSE 2375/tcp
# Fri, 02 Feb 2018 19:54:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 02 Feb 2018 19:54:49 GMT
CMD []
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f62521d9bd1330f569376a49631bcc26a2035b1df21df724e5f21ef39c87aa`  
		Last Modified: Fri, 26 Jan 2018 19:56:58 GMT  
		Size: 308.8 KB (308784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517bef5a987b33a45ccd6533f0bc047c45ea8cce31cc6fc586e836b22dc07cbb`  
		Last Modified: Fri, 26 Jan 2018 19:56:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf6337ee578698d2e7c082f0d84e0c2327acad2c0d4b8c708ddd307969131fc`  
		Last Modified: Fri, 02 Feb 2018 19:55:48 GMT  
		Size: 36.4 MB (36393690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4d8dd9d0e8697c3f54992a1796256fcfa03a993d7e0245270302c891a16968`  
		Last Modified: Fri, 02 Feb 2018 19:55:35 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8104505885b870d45525bccfe5ced1b1ac6a2d1cf8d61fc72348b5a3a5e968`  
		Last Modified: Fri, 02 Feb 2018 19:55:35 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d532b88320e3eca2979d55584208bba1869d4f6c4c16722e66a867ef1217449`  
		Last Modified: Fri, 02 Feb 2018 19:56:04 GMT  
		Size: 2.7 MB (2699275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b551d6b74ccaefb82401a6595c9a5dab564f8555bdc28994a3b5769840f044a7`  
		Last Modified: Fri, 02 Feb 2018 19:56:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f8b780b7968d100aff1b89a13526769fdab1fa8ebc71c3130fc676b784a09b`  
		Last Modified: Fri, 02 Feb 2018 19:56:03 GMT  
		Size: 21.0 KB (21004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d9c26693b215bb29dba55ababbb40a14acbaacee7d6d1faeda9e5ad0dda56`  
		Last Modified: Fri, 02 Feb 2018 19:56:03 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; s390x

```console
$ docker pull docker@sha256:5337bab1371bb167dc9919950baca064ceb2a730670f91865985fdb97810dc0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45309542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d117b42411f78ab2ab1fef6a808233edcad868ad3ffc299efffc9e5474732d`
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
# Sun, 07 Jan 2018 09:17:42 GMT
ENV DOCKER_CHANNEL=test
# Sat, 03 Feb 2018 04:01:25 GMT
ENV DOCKER_VERSION=18.02.0-ce-rc2
# Sat, 03 Feb 2018 04:01:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Feb 2018 04:01:32 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Feb 2018 04:01:32 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Feb 2018 04:01:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Feb 2018 04:01:32 GMT
CMD ["sh"]
# Sat, 03 Feb 2018 04:01:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Feb 2018 04:01:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Feb 2018 04:01:47 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Feb 2018 04:01:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 03 Feb 2018 04:01:49 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 03 Feb 2018 04:01:49 GMT
VOLUME [/var/lib/docker]
# Sat, 03 Feb 2018 04:01:49 GMT
EXPOSE 2375/tcp
# Sat, 03 Feb 2018 04:01:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 03 Feb 2018 04:01:50 GMT
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
	-	`sha256:88cb44580c2666a2893ccf22db99cfe0f476539bb267758a72d4560d646c45d2`  
		Last Modified: Sat, 03 Feb 2018 04:02:51 GMT  
		Size: 37.9 MB (37948877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffe015b6d39a91c7540ed2dbcbc3d9f0b387c154d81bf80df502a789eac8c13`  
		Last Modified: Sat, 03 Feb 2018 04:02:43 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9b3d88c92f9b4532c8af4282c609e83de546e5a2584565150c6ed6daa8f431`  
		Last Modified: Sat, 03 Feb 2018 04:02:43 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2004a7991dd2f71f0d07f0921275b70dd9fbfad184827af555cafb08d005c1bd`  
		Last Modified: Sat, 03 Feb 2018 04:03:06 GMT  
		Size: 4.8 MB (4836620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64222fa551255c9d214ddffe3a49a434b842b8ad14554bf32ebd8c85e6407ebb`  
		Last Modified: Sat, 03 Feb 2018 04:03:04 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a06db2a00300b9c36f8e340a3ed7fbd98680e7c81c6d4ca8a82e8443a6524e`  
		Last Modified: Sat, 03 Feb 2018 04:03:04 GMT  
		Size: 26.3 KB (26263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f90f0a9c1623594bba65d599c7b4461eed83c702660c5b8ffe36c595e385a1`  
		Last Modified: Sat, 03 Feb 2018 04:03:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
