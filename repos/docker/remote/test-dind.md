## `docker:test-dind`

```console
$ docker pull docker@sha256:107ba20f28d7563ab91075639199ff82e8b5e0ea3879f6d39c28f2d888bdde01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:711d5d20f85ebf1ac37d811f8e049d418c7c0a48929ece9f74a0be64115b675c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46052270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06a5d05fd824f9305b31b1cc33e641e5d4eefa22dc62fe42e06f909d1a7aa16`
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
# Thu, 26 Apr 2018 21:26:07 GMT
ENV DOCKER_VERSION=18.05.0-ce-rc1
# Thu, 26 Apr 2018 21:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Apr 2018 21:26:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 26 Apr 2018 21:26:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Apr 2018 21:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Apr 2018 21:26:19 GMT
CMD ["sh"]
# Thu, 26 Apr 2018 21:26:47 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 26 Apr 2018 21:26:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 09 May 2018 17:19:37 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 09 May 2018 17:19:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 09 May 2018 17:19:38 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Wed, 09 May 2018 17:19:39 GMT
VOLUME [/var/lib/docker]
# Wed, 09 May 2018 17:19:39 GMT
EXPOSE 2375/tcp
# Wed, 09 May 2018 17:19:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 09 May 2018 17:19:39 GMT
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
	-	`sha256:24d9e47662f2a5d005b05165fbc7b7cff58a35ab32c14cab704b4a890bbdb59f`  
		Last Modified: Thu, 26 Apr 2018 21:29:57 GMT  
		Size: 39.0 MB (39042498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff0ca1af37563cac6da5987e21e85ad93a9035e1d35592979fa86ac79bc641f`  
		Last Modified: Thu, 26 Apr 2018 21:29:51 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f92eaf55cbb636180d72d8a6d23985a7d0a9a3867378e7133f0503a1b66e6e`  
		Last Modified: Thu, 26 Apr 2018 21:29:50 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea9a5e6d5619dae04e7c3835449e779cb400c99473f78698d1085a209a5a5ce`  
		Last Modified: Thu, 26 Apr 2018 21:31:29 GMT  
		Size: 4.6 MB (4607778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf8dfc9ae3e19c8cd4fc63b28b44afef9a114de07a02f3425f3de864ef136be`  
		Last Modified: Thu, 26 Apr 2018 21:31:26 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66c90d9c5e790752cc6ccf7aeeae994abd1fc6424873563fdd3e541e9ca41e2`  
		Last Modified: Wed, 09 May 2018 17:20:51 GMT  
		Size: 25.1 KB (25119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ec17e3858c2ad9853e9136a18e06b9359e7d976a44b5fa3429be4b1c3a585`  
		Last Modified: Wed, 09 May 2018 17:20:52 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ab830fbcf77c6bda93b60862daca6b48b6945f7c85ddf69893f5df503e17c873
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42612686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb434a21a2c5d17061152f784b1a0c706531bfe9590ce91d35148eb9f633670a`
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
# Fri, 27 Apr 2018 07:52:03 GMT
ENV DOCKER_VERSION=18.05.0-ce-rc1
# Fri, 27 Apr 2018 07:52:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 07:52:11 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 07:52:11 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 07:52:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 07:52:11 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 07:52:22 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 07:52:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 10 May 2018 07:50:02 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 10 May 2018 07:50:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 10 May 2018 07:50:03 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Thu, 10 May 2018 07:50:03 GMT
VOLUME [/var/lib/docker]
# Thu, 10 May 2018 07:50:03 GMT
EXPOSE 2375/tcp
# Thu, 10 May 2018 07:50:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 10 May 2018 07:50:04 GMT
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
	-	`sha256:9cb5ebd4b0a62f2752647d7d3ac4f4aa06c1ed488bb23c979cdf756a44c5009c`  
		Last Modified: Fri, 27 Apr 2018 07:53:51 GMT  
		Size: 37.5 MB (37542907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de45f89c8f42f0946a7a622d405efa604eec4f50ec553f79def3107af5f0a5a8`  
		Last Modified: Fri, 27 Apr 2018 07:53:40 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888067a14317aad8b692123cc6080e861cf52d452435d276f15cf755a3c0f67c`  
		Last Modified: Fri, 27 Apr 2018 07:53:39 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3cc56e0d27639edc3050b94dbab5fe7df64af46e8f4dda50d6a66fac788943`  
		Last Modified: Fri, 27 Apr 2018 07:54:02 GMT  
		Size: 2.7 MB (2699281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adfca052ae618541117646531380e60713f668a977412af211ebe1477aba7f8`  
		Last Modified: Fri, 27 Apr 2018 07:54:02 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3c272c47c5d734ee0ceb0969fe2ecb9e7a48a2ea0a61a57d621f2f576bab6b`  
		Last Modified: Thu, 10 May 2018 07:50:53 GMT  
		Size: 19.9 KB (19892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99522e4182cf08d25caee31f49932d0470ffcdbe705b095694ec09ee19df512f`  
		Last Modified: Thu, 10 May 2018 07:50:53 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:503ff9d22e5c79082780e462acad0abcd5e245f5f7e3133cad84f6abc21990aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42663649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3790372c60785952b3a00987568ede0d5b5769c8912f269b7ec1b8bea96d4ee`
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
# Fri, 05 Jan 2018 07:00:40 GMT
ENV DOCKER_CHANNEL=test
# Fri, 27 Apr 2018 09:02:11 GMT
ENV DOCKER_VERSION=18.05.0-ce-rc1
# Fri, 27 Apr 2018 09:02:21 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 09:02:23 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 09:02:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 09:02:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 09:02:27 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 09:03:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 09:03:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 10 May 2018 08:55:31 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 10 May 2018 08:55:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 10 May 2018 08:55:36 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Thu, 10 May 2018 08:55:37 GMT
VOLUME [/var/lib/docker]
# Thu, 10 May 2018 08:55:38 GMT
EXPOSE 2375/tcp
# Thu, 10 May 2018 08:55:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 10 May 2018 08:55:39 GMT
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
	-	`sha256:303c16cbba19c7a164e3df850dc9fda903f79e46a1da1fb4bde2915dd58a6e65`  
		Last Modified: Fri, 27 Apr 2018 09:11:33 GMT  
		Size: 36.1 MB (36055538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463efacb81ae49d5e0fde139f72b150beebdd9053e9befc1f620e75a1754bb9c`  
		Last Modified: Fri, 27 Apr 2018 09:11:18 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a2915fbd006caf9016cf9ea0fcefec6deef71de1ad866d25f5fc6878c6053`  
		Last Modified: Fri, 27 Apr 2018 09:11:18 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171d5d9e13df7eda8c08ed144faba7ba6f43a341e6b181954f22167b47ee446c`  
		Last Modified: Fri, 27 Apr 2018 09:14:15 GMT  
		Size: 4.3 MB (4282441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53377d3f62da42194c72f95eff27fd406e4bb22afd8ea70d67701cb5e9a6da47`  
		Last Modified: Fri, 27 Apr 2018 09:14:14 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5e92f1b787d32bd6a4cf772e1aab0351c1ee031b1a7301abdc954418c47d41`  
		Last Modified: Thu, 10 May 2018 08:58:05 GMT  
		Size: 25.1 KB (25094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a8bb082ce43353b676080e339c68ccfe03d18721a83234402f721829e25bed`  
		Last Modified: Thu, 10 May 2018 08:58:05 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:473b6e67e3cd94cdab7a78d9858931b79a4a2adf68a71d1c1ee0834975ff29ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40826959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b6f3864b89e0929178be60b46b0d7f15e9000d34397e1deb6bcd0bb0d58e51`
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
# Fri, 05 Jan 2018 11:36:26 GMT
ENV DOCKER_CHANNEL=test
# Fri, 27 Apr 2018 08:26:35 GMT
ENV DOCKER_VERSION=18.05.0-ce-rc1
# Fri, 27 Apr 2018 08:26:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 08:26:48 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 08:26:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 08:26:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 08:26:52 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 08:27:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 08:27:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 27 Apr 2018 08:27:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 27 Apr 2018 08:27:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 27 Apr 2018 08:27:16 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Fri, 27 Apr 2018 08:27:18 GMT
VOLUME [/var/lib/docker]
# Fri, 27 Apr 2018 08:27:20 GMT
EXPOSE 2375/tcp
# Fri, 27 Apr 2018 08:27:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 27 Apr 2018 08:27:25 GMT
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
	-	`sha256:0cba5855a4f4689cabc5f8a58eec9f1b882eddb7e4a086ecf98b0abf8e071936`  
		Last Modified: Fri, 27 Apr 2018 08:30:25 GMT  
		Size: 35.7 MB (35700792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ff552b4accd5d37da7092cd630766369119c4b912de0b6ccd07ea0bb0d062f`  
		Last Modified: Fri, 27 Apr 2018 08:30:14 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93acf19b80e293232f5bd2257cd3271ae711cb640861ab2d6b7a4dfaef46fef`  
		Last Modified: Fri, 27 Apr 2018 08:30:15 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76baacd3d71dac6793108f1e9a299896f9d5cb3cc35f155d86f8668e59de986f`  
		Last Modified: Fri, 27 Apr 2018 08:30:55 GMT  
		Size: 2.7 MB (2709565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c73c64b1f66066f5a3d539646a65a1297dce7312998a82f485722f09e7d94e8`  
		Last Modified: Fri, 27 Apr 2018 08:30:54 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a500c6474eb5020269bbbd56ddd930925d1e087664f64d053328bc3c7e9a552`  
		Last Modified: Fri, 27 Apr 2018 08:30:55 GMT  
		Size: 21.0 KB (21007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202bb799d04a8be9529b12cba8adcbb7d3ce622b5eb4f2801ca1045d4f7c7cfc`  
		Last Modified: Fri, 27 Apr 2018 08:30:54 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:fee7afd5b1d94671c6111674603618ba0a115e6a2c48a15f70bd82c40fb7d0a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45881219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb368befbf330ba743fbc2e82533d19ec5929885163b1792a35a1576ecc0f22`
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
# Fri, 27 Apr 2018 11:41:30 GMT
ENV DOCKER_VERSION=18.05.0-ce-rc1
# Fri, 27 Apr 2018 11:47:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 27 Apr 2018 11:47:14 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 27 Apr 2018 11:47:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 27 Apr 2018 11:47:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Apr 2018 11:47:16 GMT
CMD ["sh"]
# Fri, 27 Apr 2018 11:47:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 27 Apr 2018 11:47:58 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 10 May 2018 11:41:35 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 10 May 2018 11:41:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 10 May 2018 11:41:37 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Thu, 10 May 2018 11:41:37 GMT
VOLUME [/var/lib/docker]
# Thu, 10 May 2018 11:41:38 GMT
EXPOSE 2375/tcp
# Thu, 10 May 2018 11:41:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 10 May 2018 11:41:38 GMT
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
	-	`sha256:10d9bee7115651e2d19f90678c05711dba4b734c05f7e16b06c5fc1ab815eff2`  
		Last Modified: Fri, 27 Apr 2018 11:50:41 GMT  
		Size: 38.5 MB (38521639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cb3e02dabe43a3ebd29450a9c919e2d05d82481a90d2ffdee09d0002e98cdd`  
		Last Modified: Fri, 27 Apr 2018 11:50:21 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e0c2003427e7f2628200747ce659266bdc92ea7047169046904978188121b1`  
		Last Modified: Fri, 27 Apr 2018 11:50:21 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb7505996f1e0fbc75c654311141a8e8200a9dd34c660e531b686f8cc020816`  
		Last Modified: Fri, 27 Apr 2018 11:51:10 GMT  
		Size: 4.8 MB (4836596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0538d302cc08d355f753406b75b8091e246e86a0fa10bcad1627c8be23438b`  
		Last Modified: Fri, 27 Apr 2018 11:51:08 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896b250525940d45d3ea0670bcbc06d56e7c5d8baaff1724ca67e4a77ffc2f47`  
		Last Modified: Thu, 10 May 2018 11:43:03 GMT  
		Size: 25.1 KB (25106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108f99e614047eee8ff5b7f6f63c698578ad6d99e41a4793fe8a54a783b5cb21`  
		Last Modified: Thu, 10 May 2018 11:43:01 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
