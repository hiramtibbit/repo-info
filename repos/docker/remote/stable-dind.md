## `docker:stable-dind`

```console
$ docker pull docker@sha256:3f0ed3831b0e867357cf86d88f8ce6aca0c900b809605064c87c5a29fbaecd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:07ebaff119606cc4dbc4a8876e333fd9fbe224fb095f74d36ffb2322476b07d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46143168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824b0ae8cb2720f6720011514c89e50c51164a55bc1ae7455957f8c9ba68e782`
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
# Wed, 10 Jan 2018 01:02:59 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Apr 2018 21:27:40 GMT
ENV DOCKER_VERSION=18.03.1-ce
# Thu, 26 Apr 2018 21:27:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Apr 2018 21:27:49 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 26 Apr 2018 21:27:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Apr 2018 21:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Apr 2018 21:27:50 GMT
CMD ["sh"]
# Thu, 26 Apr 2018 21:28:16 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 26 Apr 2018 21:28:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 09 May 2018 17:20:10 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 09 May 2018 17:20:11 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 09 May 2018 17:20:11 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Wed, 09 May 2018 17:20:11 GMT
VOLUME [/var/lib/docker]
# Wed, 09 May 2018 17:20:12 GMT
EXPOSE 2375/tcp
# Wed, 09 May 2018 17:20:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 09 May 2018 17:20:12 GMT
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
	-	`sha256:24f228dbe067a857968b950bcbbfff01a398ec9fa1c71baff79000204d9cc651`  
		Last Modified: Thu, 26 Apr 2018 21:34:38 GMT  
		Size: 39.1 MB (39133425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fc512b030f7e02e452b97f0264f7724f66721d305c451aee567fa6689bde88`  
		Last Modified: Thu, 26 Apr 2018 21:34:30 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e4fd8d22c73013e8d7ec869c71d3227f8d14279d88d28d9b5ce92aca3abbb2`  
		Last Modified: Thu, 26 Apr 2018 21:34:30 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4e0fdf2c868c30232ab3c21fd3090dc0f5a5e742f733e061d40838b7e4176d`  
		Last Modified: Thu, 26 Apr 2018 21:36:09 GMT  
		Size: 4.6 MB (4607754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f584e3f7aee22872156884326449c7aca7ecaf72e04506c547d7148d610f9dc1`  
		Last Modified: Thu, 26 Apr 2018 21:36:08 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cc68dd21bffc31c0856af2fc313ee6a2d60c9a1a9cc44903393df4bdaef083`  
		Last Modified: Wed, 09 May 2018 17:22:08 GMT  
		Size: 25.1 KB (25112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb2ee0939f7f8e679e9e7ee15c9b7c092d8472768f74e701820f22d43c8e9d9`  
		Last Modified: Wed, 09 May 2018 17:22:08 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:4fe72f971d3b4cc1d40edfa9495e54c0d6b0dcae68e8a8fcbb54426828ba2ae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42176919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a754e3d5448ce40b1cdc94f91e8e9da2fc911e6096bb7d7afcca785ba846c2`
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
# Fri, 26 Jan 2018 19:55:38 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 27 Apr 2018 07:52:49 GMT
ENV DOCKER_VERSION=18.03.1-ce
# Fri, 27 Apr 2018 07:52:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 07:52:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 07:52:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 07:52:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 07:52:57 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 07:53:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 07:53:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 10 May 2018 07:50:23 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 10 May 2018 07:50:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 10 May 2018 07:50:24 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Thu, 10 May 2018 07:50:25 GMT
VOLUME [/var/lib/docker]
# Thu, 10 May 2018 07:50:25 GMT
EXPOSE 2375/tcp
# Thu, 10 May 2018 07:50:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 10 May 2018 07:50:25 GMT
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
	-	`sha256:66ffc3895026a59435e272450ffe45bf836e72914d0512635e3aec0bb1e01517`  
		Last Modified: Fri, 27 Apr 2018 07:54:40 GMT  
		Size: 37.1 MB (37107162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fb2f3f37ec8a3d0e058d144d8fa51f1aff1227d534e843ab94f6876db21f6`  
		Last Modified: Fri, 27 Apr 2018 07:54:28 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590be49e0a7bf8a6d8bc5e52a0d20c2facd35e75eccc48ee099bc7d3628b1325`  
		Last Modified: Fri, 27 Apr 2018 07:54:28 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c60e286fa30829f0d7e23e7c85a3ea0be74e2352b0180724d2acc4b697608e`  
		Last Modified: Fri, 27 Apr 2018 07:54:53 GMT  
		Size: 2.7 MB (2699242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f67488c3ff0756cc166f8094cf3b5f019e9a3a40415de76ba531cc1d02d79fc`  
		Last Modified: Fri, 27 Apr 2018 07:54:51 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeed8cd51e42e5d5ddcd0fca76ad4be1dcb3ca004cef679600c74a9d8c2030c6`  
		Last Modified: Thu, 10 May 2018 07:51:19 GMT  
		Size: 19.9 KB (19899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d43b17ce5bbf0a442b0e756042771f66a744e20ebc113b6d52e45edb9bc2a6`  
		Last Modified: Thu, 10 May 2018 07:51:19 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fefaeeafcf1a22d08b978d696474f6682d2ebd7da50aa3de5f3de122fbb4a009
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42214384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e585e240f5af15b0a178e851ed2a001f3e042647417be16b785d1da477d647`
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
# Fri, 27 Apr 2018 09:06:01 GMT
ENV DOCKER_VERSION=18.03.1-ce
# Fri, 27 Apr 2018 09:06:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 09:06:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 09:06:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 09:06:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:06:54 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 09:07:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 09:08:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 27 Apr 2018 09:08:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 27 Apr 2018 09:08:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 27 Apr 2018 09:08:10 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Fri, 27 Apr 2018 09:08:11 GMT
VOLUME [/var/lib/docker]
# Fri, 27 Apr 2018 09:08:11 GMT
EXPOSE 2375/tcp
# Fri, 27 Apr 2018 09:08:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 27 Apr 2018 09:08:35 GMT
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
	-	`sha256:d2e0b48614ba4abf97b6686fd842612458cec5d5d833eb0b281909a06c0fa0b5`  
		Last Modified: Fri, 27 Apr 2018 09:17:55 GMT  
		Size: 35.6 MB (35605178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbee813b156b48ef9f621a9f1e0db7a3fed9c102a0a16b4dc5607f2c5119d4b`  
		Last Modified: Fri, 27 Apr 2018 09:17:40 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8e81b7f1b90f50907b0c136a63850ac94b5059ac940bd429c2b795dd3eb721`  
		Last Modified: Fri, 27 Apr 2018 09:17:41 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10170906c130d21c7c083adcc75cb52f4c920ad49bc94c0c088a09d03f7de75b`  
		Last Modified: Fri, 27 Apr 2018 09:19:37 GMT  
		Size: 4.3 MB (4282376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ebd1976353facb0f37b7a6ac16acb145384e7663e1dcc0b26df649c81e220c`  
		Last Modified: Fri, 27 Apr 2018 09:19:36 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5820c0892c14eecc511cdf63e2c2591847afb47f83963c3db68dfc19e4de0d`  
		Last Modified: Fri, 27 Apr 2018 09:19:36 GMT  
		Size: 26.3 KB (26258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d836b438ab2fee426d5a720ad616e2c2f6363d1812777010b526e22a445f7ac`  
		Last Modified: Fri, 27 Apr 2018 09:19:35 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:1a09822e95c8ac5857b49d6181abd220c94d5c81c9fe5a09ffb622ef46fad1a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40289175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2863e8f70d5a7d98a983fb4854d4d689e5a16eb7b215aa79e3bfc779a59dc267`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 11:36:30 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 11:36:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Dec 2017 11:36:34 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 27 Apr 2018 08:27:56 GMT
ENV DOCKER_VERSION=18.03.1-ce
# Fri, 27 Apr 2018 08:28:04 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 08:28:07 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 08:28:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 08:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:28:12 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 08:28:21 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 08:28:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 27 Apr 2018 08:28:25 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 27 Apr 2018 08:28:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 27 Apr 2018 08:28:32 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Fri, 27 Apr 2018 08:28:35 GMT
VOLUME [/var/lib/docker]
# Fri, 27 Apr 2018 08:28:37 GMT
EXPOSE 2375/tcp
# Fri, 27 Apr 2018 08:28:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 27 Apr 2018 08:28:41 GMT
CMD []
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe230e03b98ad6c09f4e89c524a8f39e17835ba689b3035c55bbbef18956540`  
		Last Modified: Thu, 28 Dec 2017 11:37:58 GMT  
		Size: 310.6 KB (310600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6307b533b9be0ac40a1422292494cdd1f448afb34ba047614c035d8ab361452`  
		Last Modified: Thu, 28 Dec 2017 11:37:58 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588809b56d8b6c91710bbb812e03b4ccce3cde347872e1e1ff5db5e098164820`  
		Last Modified: Fri, 27 Apr 2018 08:32:16 GMT  
		Size: 35.2 MB (35163010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0793708fc6e368ba0fe0cd22b3d4f73909aee93000f3800ca05c239cea75a37`  
		Last Modified: Fri, 27 Apr 2018 08:32:06 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505816a1790b94605f53d759ac030e3120f6f55d7eaca1e27a8a4e8162f32816`  
		Last Modified: Fri, 27 Apr 2018 08:32:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e538cc39295092f662ff8fd35582cef2c0e1fb5152357be4b679acc58b488da`  
		Last Modified: Fri, 27 Apr 2018 08:32:55 GMT  
		Size: 2.7 MB (2709569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6042d652cd798f5fc6b6d081c57ecdc30ac4ab3c3b3f0d4b2562ea7379be8ac0`  
		Last Modified: Fri, 27 Apr 2018 08:32:54 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810be3bd26372a19340413431cc832a2471882ccdc07c2bf702baa61009773e2`  
		Last Modified: Fri, 27 Apr 2018 08:32:54 GMT  
		Size: 21.0 KB (21001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab723c58c64be3ceae33d2b781b07a9969c64d5fefa8dd9654edd950ebe92d77`  
		Last Modified: Fri, 27 Apr 2018 08:32:54 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; s390x

```console
$ docker pull docker@sha256:79af5406e430b831e9d770f4afc7d792cdea59a5dde4de833dbffb6d7b91e050
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45443559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8df2a5e049870213ad1dd7b55c6cc17e14f7f71756c3f4e0cad204deccf6fe`
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
# Fri, 27 Apr 2018 11:48:47 GMT
ENV DOCKER_VERSION=18.03.1-ce
# Fri, 27 Apr 2018 11:49:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 11:49:02 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 11:49:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 11:49:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:49:03 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 11:49:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 11:49:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 27 Apr 2018 11:49:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 27 Apr 2018 11:49:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 27 Apr 2018 11:49:30 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Fri, 27 Apr 2018 11:49:30 GMT
VOLUME [/var/lib/docker]
# Fri, 27 Apr 2018 11:49:31 GMT
EXPOSE 2375/tcp
# Fri, 27 Apr 2018 11:49:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 27 Apr 2018 11:49:31 GMT
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
	-	`sha256:0352d9fd239d78bf8d0b9c6301bf10d6aa528e40795ceec7e0d5fe4f6d2ab125`  
		Last Modified: Fri, 27 Apr 2018 11:52:43 GMT  
		Size: 38.1 MB (38082849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd3720af67d44ed4d4eb98d4481566118d63e1e8f93f94723f765a3b595dada`  
		Last Modified: Fri, 27 Apr 2018 11:52:31 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb5885ad1878250bd7f1cac1f57773f73dcad7c3048430a83677ac7d9f93617`  
		Last Modified: Fri, 27 Apr 2018 11:52:30 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89745f3b4dff282cdaa0e85ba0346b8a739772db6eeb9951cb7bec1e12b3e5f`  
		Last Modified: Fri, 27 Apr 2018 11:53:12 GMT  
		Size: 4.8 MB (4836570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaec3724f7ecb88ca52d85d1b634134f93e05c694be0b0bcd7d1b4965728e8a`  
		Last Modified: Fri, 27 Apr 2018 11:53:11 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0e0eb48d03f5b06c76cfa0c0a53bd88317a51642c49aac3dfeee763e823444`  
		Last Modified: Fri, 27 Apr 2018 11:53:11 GMT  
		Size: 26.3 KB (26263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4527aa9f6d5be5838032e50e976ee77876c0333449d7604fcf1e81c5b3ea77`  
		Last Modified: Fri, 27 Apr 2018 11:53:11 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
