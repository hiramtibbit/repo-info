<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17`](#docker17)
-	[`docker:17.12`](#docker1712)
-	[`docker:17.12.1`](#docker17121)
-	[`docker:17.12.1-ce`](#docker17121-ce)
-	[`docker:17.12.1-ce-dind`](#docker17121-ce-dind)
-	[`docker:17.12.1-ce-git`](#docker17121-ce-git)
-	[`docker:17.12.1-dind`](#docker17121-dind)
-	[`docker:17.12.1-git`](#docker17121-git)
-	[`docker:17.12-dind`](#docker1712-dind)
-	[`docker:17.12-git`](#docker1712-git)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:17-git`](#docker17-git)
-	[`docker:18`](#docker18)
-	[`docker:18.03`](#docker1803)
-	[`docker:18.03.0`](#docker18030)
-	[`docker:18.03.0-ce`](#docker18030-ce)
-	[`docker:18.03.0-ce-dind`](#docker18030-ce-dind)
-	[`docker:18.03.0-ce-git`](#docker18030-ce-git)
-	[`docker:18.03.0-dind`](#docker18030-dind)
-	[`docker:18.03.0-git`](#docker18030-git)
-	[`docker:18.03-dind`](#docker1803-dind)
-	[`docker:18.03-git`](#docker1803-git)
-	[`docker:18.04.0-ce-rc2`](#docker18040-ce-rc2)
-	[`docker:18.04.0-ce-rc2-dind`](#docker18040-ce-rc2-dind)
-	[`docker:18.04.0-ce-rc2-git`](#docker18040-ce-rc2-git)
-	[`docker:18.04-rc`](#docker1804-rc)
-	[`docker:18.04-rc-dind`](#docker1804-rc-dind)
-	[`docker:18.04-rc-git`](#docker1804-rc-git)
-	[`docker:18-dind`](#docker18-dind)
-	[`docker:18-git`](#docker18-git)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:rc`](#dockerrc)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)

## `docker:17`

```console
$ docker pull docker@sha256:7f3b1144e118fd5da7797035a24adf7a9b9768c2633602d3ec362e6271ba78b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17` - linux; amd64

```console
$ docker pull docker@sha256:a7987fd307718db595a6fe73104d971dc7895c0415e48607cb89e0d46f27891c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36961262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eafa406253d8b439efa61a75f731693465145f7b826fff11b27b43d983f9333`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17` - linux; arm variant v6

```console
$ docker pull docker@sha256:f9179b11c38e9d7af3ceb14a3f95957a52c34b988630cdae0b4124fa68f6a283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34633176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2f2c3660eb571776c0d919a79515c349f4b1fde8857cb046f724514621be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:395c344303e840b6aea46482ba6f9455fbb55edca4eeb99f2d6959827343c0f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33743250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b34faa460838129a636105a3a82cf0c67d16b1097f4a2628ffc196c22ba19b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17` - linux; ppc64le

```console
$ docker pull docker@sha256:630c461af3908b77a9f859d2149adfd1fb8eaccf942b5bd36d6667768b05e167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9eb2447b7028c39c6d3e65195745032628dd3d967f674b9120df6415aad4bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17` - linux; s390x

```console
$ docker pull docker@sha256:804690e2f03b9a4e577ff515c471a7d7b3631cb8862c05e6b131672a10a1b3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36187542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d360566a5572f380c7eb16dd305638d3d61d2070e5585f1479d47238bf9050b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12`

```console
$ docker pull docker@sha256:7f3b1144e118fd5da7797035a24adf7a9b9768c2633602d3ec362e6271ba78b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.12` - linux; amd64

```console
$ docker pull docker@sha256:a7987fd307718db595a6fe73104d971dc7895c0415e48607cb89e0d46f27891c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36961262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eafa406253d8b439efa61a75f731693465145f7b826fff11b27b43d983f9333`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12` - linux; arm variant v6

```console
$ docker pull docker@sha256:f9179b11c38e9d7af3ceb14a3f95957a52c34b988630cdae0b4124fa68f6a283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34633176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2f2c3660eb571776c0d919a79515c349f4b1fde8857cb046f724514621be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:395c344303e840b6aea46482ba6f9455fbb55edca4eeb99f2d6959827343c0f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33743250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b34faa460838129a636105a3a82cf0c67d16b1097f4a2628ffc196c22ba19b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12` - linux; ppc64le

```console
$ docker pull docker@sha256:630c461af3908b77a9f859d2149adfd1fb8eaccf942b5bd36d6667768b05e167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9eb2447b7028c39c6d3e65195745032628dd3d967f674b9120df6415aad4bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12` - linux; s390x

```console
$ docker pull docker@sha256:804690e2f03b9a4e577ff515c471a7d7b3631cb8862c05e6b131672a10a1b3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36187542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d360566a5572f380c7eb16dd305638d3d61d2070e5585f1479d47238bf9050b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12.1`

```console
$ docker pull docker@sha256:7f3b1144e118fd5da7797035a24adf7a9b9768c2633602d3ec362e6271ba78b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.12.1` - linux; amd64

```console
$ docker pull docker@sha256:a7987fd307718db595a6fe73104d971dc7895c0415e48607cb89e0d46f27891c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36961262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eafa406253d8b439efa61a75f731693465145f7b826fff11b27b43d983f9333`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1` - linux; arm variant v6

```console
$ docker pull docker@sha256:f9179b11c38e9d7af3ceb14a3f95957a52c34b988630cdae0b4124fa68f6a283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34633176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2f2c3660eb571776c0d919a79515c349f4b1fde8857cb046f724514621be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:395c344303e840b6aea46482ba6f9455fbb55edca4eeb99f2d6959827343c0f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33743250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b34faa460838129a636105a3a82cf0c67d16b1097f4a2628ffc196c22ba19b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1` - linux; ppc64le

```console
$ docker pull docker@sha256:630c461af3908b77a9f859d2149adfd1fb8eaccf942b5bd36d6667768b05e167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9eb2447b7028c39c6d3e65195745032628dd3d967f674b9120df6415aad4bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1` - linux; s390x

```console
$ docker pull docker@sha256:804690e2f03b9a4e577ff515c471a7d7b3631cb8862c05e6b131672a10a1b3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36187542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d360566a5572f380c7eb16dd305638d3d61d2070e5585f1479d47238bf9050b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12.1-ce`

```console
$ docker pull docker@sha256:7f3b1144e118fd5da7797035a24adf7a9b9768c2633602d3ec362e6271ba78b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.12.1-ce` - linux; amd64

```console
$ docker pull docker@sha256:a7987fd307718db595a6fe73104d971dc7895c0415e48607cb89e0d46f27891c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36961262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eafa406253d8b439efa61a75f731693465145f7b826fff11b27b43d983f9333`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce` - linux; arm variant v6

```console
$ docker pull docker@sha256:f9179b11c38e9d7af3ceb14a3f95957a52c34b988630cdae0b4124fa68f6a283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34633176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b2f2c3660eb571776c0d919a79515c349f4b1fde8857cb046f724514621be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:395c344303e840b6aea46482ba6f9455fbb55edca4eeb99f2d6959827343c0f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33743250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b34faa460838129a636105a3a82cf0c67d16b1097f4a2628ffc196c22ba19b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:630c461af3908b77a9f859d2149adfd1fb8eaccf942b5bd36d6667768b05e167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33550838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9eb2447b7028c39c6d3e65195745032628dd3d967f674b9120df6415aad4bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce` - linux; s390x

```console
$ docker pull docker@sha256:804690e2f03b9a4e577ff515c471a7d7b3631cb8862c05e6b131672a10a1b3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36187542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d360566a5572f380c7eb16dd305638d3d61d2070e5585f1479d47238bf9050b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12.1-ce-dind`

```console
$ docker pull docker@sha256:9efd63e01c2984c913255cb039407e16bdb656f73f0a8c0a37d3182991b2aaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.12.1-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:bb99419d6678721eabf2e4e6694b50a1920628b505ff2e2e00327670c73ee6bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41501838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1410a0701bde7d68fa564ea03676d5bf702a96c4eef92153d19ec6d920aea22c`
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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 02 Mar 2018 21:51:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 02 Mar 2018 21:51:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 02 Mar 2018 21:51:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:24 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:24 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:24 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:25 GMT
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8e9a61efc9e7d83fb0baf5bb618c2f3eca842bb5218fbab69c983a910cea8`  
		Last Modified: Fri, 02 Mar 2018 21:53:52 GMT  
		Size: 4.5 MB (4512609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6a4606a5085c7c9e2d54f038623ed2912f21e1a01fe6340a51198ce048b43`  
		Last Modified: Fri, 02 Mar 2018 21:53:51 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8a44adaf9f97da56fd43f11c55078eb57bfb637544ef5e37fcaff9439c79b2`  
		Last Modified: Fri, 02 Mar 2018 21:53:50 GMT  
		Size: 26.1 KB (26084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ae055e23b6ab2e3b77f47556819dc03b993b5011a9d1fd2e7ef21e3948f111`  
		Last Modified: Tue, 10 Apr 2018 01:28:42 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:76adf457aecb25a1a738fa93fefaf845135b008961477c5f4d789c8df682be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37253374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3da41fa7cb318e1dcec678e1a9a3b8921dd528efdcd04d58d084b6a03ae23f`
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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:55:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:55:16 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:55:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:50:08 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:50:08 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:50:08 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:50:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:50:08 GMT
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360c3d4f091474bdb9e9141219c7be8e840ec555e971dc04b16ef919c033553d`  
		Last Modified: Tue, 27 Mar 2018 18:57:37 GMT  
		Size: 2.6 MB (2597484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8910342bf482cd17ef62bc60fe9f29e71939a7c18e4e3e0304e2c526b76eeb`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d9ad2bb412d177ea54cfaa1dcf5c8177f64709d7ddf4d24aaab2f9cff865f`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 20.8 KB (20803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c3320cfd6510b34d4fd94e6dcf597f80001f84d975ac6094294577a256394f`  
		Last Modified: Tue, 10 Apr 2018 01:51:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4b1afc93ab2cffb77c0d6c4393069194d6bf29c245bff31040f032d71aa03142
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37965392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15742fd38dd8f88d66969d51597997650a221aab37ef1bff07b705a00aba6328`
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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:01:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 07:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 07:01:58 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 07:02:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:43:05 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:43:06 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:43:07 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:43:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:43:09 GMT
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776abc798b9b9a18bf450dd400e2e301c9e9e39c5177e07e104bd85f2d965d64`  
		Last Modified: Sat, 03 Mar 2018 07:04:39 GMT  
		Size: 4.2 MB (4194194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1925da40658632528a1bd901bc40e4683188b319f8bb77045409c13e3d3577`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b561fcf42a5f130ddc68f01df53829927ad51e641dde978990c23f31a4338`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 26.1 KB (26062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9930ff91025d9c704853204ae179d3763664a0a78ae04465c3108774ccdee8`  
		Last Modified: Tue, 10 Apr 2018 02:52:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b77c08e6567684e4b8894ac89373b6a0b3304ac8f5c73892bddd24d953d8f639
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36192159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3971e99f9099133d20d9e3b1561b349bc7b678c0b2e7b897ddc6fcea75a7784`
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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 11:37:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 11:37:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 11:37:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:19:10 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:19:13 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:19:14 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:19:16 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:19:18 GMT
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9847344bb979a03e0b32a1b391c390055d631e0aae4858c73aec8b7328b8f83f`  
		Last Modified: Sat, 03 Mar 2018 11:38:27 GMT  
		Size: 2.6 MB (2618600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6299072dd994c01fb5767b6577f6482fe17489212856b3a5e973d872f13898`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4b411d1508b05fa5d44fadcaea908b3b3f2598c5e34d5d4f81fefa139eaf99`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 20.8 KB (20810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc9ae1e9905915735dac055ddd302be1f17ef52681ed86c8246d1cda9619609`  
		Last Modified: Tue, 10 Apr 2018 02:23:27 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:d8ef6d60919a5f6997bbbef7024eed93e05d4fcd036891ca48ed616fd4a6a44d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40949493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efd601cbdd5585b54523ebec23cf6a90fc7df37ae0bd4e395093ede93c6df2d`
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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 04:02:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 04:02:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 03 Mar 2018 04:02:40 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:40 GMT
VOLUME [/var/lib/docker]
# Sat, 03 Mar 2018 04:02:40 GMT
EXPOSE 2375/tcp
# Sat, 03 Mar 2018 04:02:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:40 GMT
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e287423da55f43cdf4df7fe48156217b86e36f803414bd5c8c4c56a3477920c`  
		Last Modified: Sat, 03 Mar 2018 04:03:37 GMT  
		Size: 4.7 MB (4734090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f419e8d2d01ce0a08fd7099eb8118b2df0893ca370608cc1ce4ebb083fc1ed8`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197384fa76fea9c5b4dbdf78c30b9d997c7526c92c664880245d219f00e7afa`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 26.1 KB (26072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10cb75161f922ab3c85353be48f0387110b6f4301e0c919c5d6a293f39443af`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12.1-ce-git`

```console
$ docker pull docker@sha256:3a9f3d60b81867357a6988c2df329b55d19cd2dd8697eb3c5f1d418c8eef7ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:17.12.1-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:67cd73974f14871bedac171f60f53d72ddeb0bb56f5c24b3899d2e0c15f5aead
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45404758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4811103ff7f5fc61522b880bd7543fa5ee99d0f3c36c1e7c6c075fad3c36bbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f4b860c04c6dfaaa37a92284ced48ed34e63d73e1a6e67cd8a3f6c16a43573`  
		Last Modified: Fri, 02 Mar 2018 21:55:13 GMT  
		Size: 8.4 MB (8443496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:392e70fa0dc222db73c42a5fc91f9ccd53a1cef5624171bf0a97f0291f49a03a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42775129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799606d77458ae59055dac1267cbbe779de0b8686d3188493e42316c296cde8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:27 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f56e8ca5602c24f6094d70f2423aa0773095aca152ebe44adc7dca2f656a3f0`  
		Last Modified: Tue, 27 Mar 2018 18:57:52 GMT  
		Size: 8.1 MB (8141953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b040529bd9f60d807e69cdd8444d4521263b6656f18294c0ddafa0dc09223e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41589281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e107a38ac4176c12d91fe15492ec2724e189f64dbc5a3bf6ddfcb481410cae9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:02:30 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21907da9b7bf5cc2fa8416c74f7b235da87cee38d5861aed2aea3611bd8763a`  
		Last Modified: Sat, 03 Mar 2018 07:06:02 GMT  
		Size: 7.8 MB (7846031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:907984a00a2a72d9dde9f3b97ea2d736c55f7038e68368408be75d093d370d17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41891394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c03dbf4747d4d59d6d6c769b4e16fdd0637eef642fd9b22031b50ae3e26242`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:31 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb84a3629d46003a5d0000a9f70fa9dbcf95313d5e763f29e37a6fd8c9a25f83`  
		Last Modified: Sat, 03 Mar 2018 11:39:00 GMT  
		Size: 8.3 MB (8340556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12.1-dind`

```console
$ docker pull docker@sha256:9efd63e01c2984c913255cb039407e16bdb656f73f0a8c0a37d3182991b2aaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.12.1-dind` - linux; amd64

```console
$ docker pull docker@sha256:bb99419d6678721eabf2e4e6694b50a1920628b505ff2e2e00327670c73ee6bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41501838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1410a0701bde7d68fa564ea03676d5bf702a96c4eef92153d19ec6d920aea22c`
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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 02 Mar 2018 21:51:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 02 Mar 2018 21:51:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 02 Mar 2018 21:51:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:24 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:24 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:24 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:25 GMT
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8e9a61efc9e7d83fb0baf5bb618c2f3eca842bb5218fbab69c983a910cea8`  
		Last Modified: Fri, 02 Mar 2018 21:53:52 GMT  
		Size: 4.5 MB (4512609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6a4606a5085c7c9e2d54f038623ed2912f21e1a01fe6340a51198ce048b43`  
		Last Modified: Fri, 02 Mar 2018 21:53:51 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8a44adaf9f97da56fd43f11c55078eb57bfb637544ef5e37fcaff9439c79b2`  
		Last Modified: Fri, 02 Mar 2018 21:53:50 GMT  
		Size: 26.1 KB (26084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ae055e23b6ab2e3b77f47556819dc03b993b5011a9d1fd2e7ef21e3948f111`  
		Last Modified: Tue, 10 Apr 2018 01:28:42 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:76adf457aecb25a1a738fa93fefaf845135b008961477c5f4d789c8df682be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37253374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3da41fa7cb318e1dcec678e1a9a3b8921dd528efdcd04d58d084b6a03ae23f`
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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:55:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:55:16 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:55:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:50:08 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:50:08 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:50:08 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:50:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:50:08 GMT
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360c3d4f091474bdb9e9141219c7be8e840ec555e971dc04b16ef919c033553d`  
		Last Modified: Tue, 27 Mar 2018 18:57:37 GMT  
		Size: 2.6 MB (2597484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8910342bf482cd17ef62bc60fe9f29e71939a7c18e4e3e0304e2c526b76eeb`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d9ad2bb412d177ea54cfaa1dcf5c8177f64709d7ddf4d24aaab2f9cff865f`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 20.8 KB (20803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c3320cfd6510b34d4fd94e6dcf597f80001f84d975ac6094294577a256394f`  
		Last Modified: Tue, 10 Apr 2018 01:51:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4b1afc93ab2cffb77c0d6c4393069194d6bf29c245bff31040f032d71aa03142
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37965392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15742fd38dd8f88d66969d51597997650a221aab37ef1bff07b705a00aba6328`
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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:01:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 07:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 07:01:58 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 07:02:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:43:05 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:43:06 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:43:07 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:43:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:43:09 GMT
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776abc798b9b9a18bf450dd400e2e301c9e9e39c5177e07e104bd85f2d965d64`  
		Last Modified: Sat, 03 Mar 2018 07:04:39 GMT  
		Size: 4.2 MB (4194194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1925da40658632528a1bd901bc40e4683188b319f8bb77045409c13e3d3577`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b561fcf42a5f130ddc68f01df53829927ad51e641dde978990c23f31a4338`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 26.1 KB (26062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9930ff91025d9c704853204ae179d3763664a0a78ae04465c3108774ccdee8`  
		Last Modified: Tue, 10 Apr 2018 02:52:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b77c08e6567684e4b8894ac89373b6a0b3304ac8f5c73892bddd24d953d8f639
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36192159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3971e99f9099133d20d9e3b1561b349bc7b678c0b2e7b897ddc6fcea75a7784`
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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 11:37:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 11:37:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 11:37:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:19:10 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:19:13 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:19:14 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:19:16 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:19:18 GMT
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9847344bb979a03e0b32a1b391c390055d631e0aae4858c73aec8b7328b8f83f`  
		Last Modified: Sat, 03 Mar 2018 11:38:27 GMT  
		Size: 2.6 MB (2618600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6299072dd994c01fb5767b6577f6482fe17489212856b3a5e973d872f13898`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4b411d1508b05fa5d44fadcaea908b3b3f2598c5e34d5d4f81fefa139eaf99`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 20.8 KB (20810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc9ae1e9905915735dac055ddd302be1f17ef52681ed86c8246d1cda9619609`  
		Last Modified: Tue, 10 Apr 2018 02:23:27 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-dind` - linux; s390x

```console
$ docker pull docker@sha256:d8ef6d60919a5f6997bbbef7024eed93e05d4fcd036891ca48ed616fd4a6a44d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40949493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efd601cbdd5585b54523ebec23cf6a90fc7df37ae0bd4e395093ede93c6df2d`
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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 04:02:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 04:02:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 03 Mar 2018 04:02:40 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:40 GMT
VOLUME [/var/lib/docker]
# Sat, 03 Mar 2018 04:02:40 GMT
EXPOSE 2375/tcp
# Sat, 03 Mar 2018 04:02:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:40 GMT
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e287423da55f43cdf4df7fe48156217b86e36f803414bd5c8c4c56a3477920c`  
		Last Modified: Sat, 03 Mar 2018 04:03:37 GMT  
		Size: 4.7 MB (4734090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f419e8d2d01ce0a08fd7099eb8118b2df0893ca370608cc1ce4ebb083fc1ed8`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197384fa76fea9c5b4dbdf78c30b9d997c7526c92c664880245d219f00e7afa`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 26.1 KB (26072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10cb75161f922ab3c85353be48f0387110b6f4301e0c919c5d6a293f39443af`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12.1-git`

```console
$ docker pull docker@sha256:3a9f3d60b81867357a6988c2df329b55d19cd2dd8697eb3c5f1d418c8eef7ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:17.12.1-git` - linux; amd64

```console
$ docker pull docker@sha256:67cd73974f14871bedac171f60f53d72ddeb0bb56f5c24b3899d2e0c15f5aead
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45404758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4811103ff7f5fc61522b880bd7543fa5ee99d0f3c36c1e7c6c075fad3c36bbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f4b860c04c6dfaaa37a92284ced48ed34e63d73e1a6e67cd8a3f6c16a43573`  
		Last Modified: Fri, 02 Mar 2018 21:55:13 GMT  
		Size: 8.4 MB (8443496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:392e70fa0dc222db73c42a5fc91f9ccd53a1cef5624171bf0a97f0291f49a03a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42775129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799606d77458ae59055dac1267cbbe779de0b8686d3188493e42316c296cde8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:27 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f56e8ca5602c24f6094d70f2423aa0773095aca152ebe44adc7dca2f656a3f0`  
		Last Modified: Tue, 27 Mar 2018 18:57:52 GMT  
		Size: 8.1 MB (8141953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b040529bd9f60d807e69cdd8444d4521263b6656f18294c0ddafa0dc09223e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41589281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e107a38ac4176c12d91fe15492ec2724e189f64dbc5a3bf6ddfcb481410cae9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:02:30 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21907da9b7bf5cc2fa8416c74f7b235da87cee38d5861aed2aea3611bd8763a`  
		Last Modified: Sat, 03 Mar 2018 07:06:02 GMT  
		Size: 7.8 MB (7846031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12.1-git` - linux; ppc64le

```console
$ docker pull docker@sha256:907984a00a2a72d9dde9f3b97ea2d736c55f7038e68368408be75d093d370d17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41891394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c03dbf4747d4d59d6d6c769b4e16fdd0637eef642fd9b22031b50ae3e26242`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:31 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb84a3629d46003a5d0000a9f70fa9dbcf95313d5e763f29e37a6fd8c9a25f83`  
		Last Modified: Sat, 03 Mar 2018 11:39:00 GMT  
		Size: 8.3 MB (8340556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12-dind`

```console
$ docker pull docker@sha256:9efd63e01c2984c913255cb039407e16bdb656f73f0a8c0a37d3182991b2aaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.12-dind` - linux; amd64

```console
$ docker pull docker@sha256:bb99419d6678721eabf2e4e6694b50a1920628b505ff2e2e00327670c73ee6bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41501838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1410a0701bde7d68fa564ea03676d5bf702a96c4eef92153d19ec6d920aea22c`
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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 02 Mar 2018 21:51:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 02 Mar 2018 21:51:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 02 Mar 2018 21:51:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:24 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:24 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:24 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:25 GMT
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8e9a61efc9e7d83fb0baf5bb618c2f3eca842bb5218fbab69c983a910cea8`  
		Last Modified: Fri, 02 Mar 2018 21:53:52 GMT  
		Size: 4.5 MB (4512609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6a4606a5085c7c9e2d54f038623ed2912f21e1a01fe6340a51198ce048b43`  
		Last Modified: Fri, 02 Mar 2018 21:53:51 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8a44adaf9f97da56fd43f11c55078eb57bfb637544ef5e37fcaff9439c79b2`  
		Last Modified: Fri, 02 Mar 2018 21:53:50 GMT  
		Size: 26.1 KB (26084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ae055e23b6ab2e3b77f47556819dc03b993b5011a9d1fd2e7ef21e3948f111`  
		Last Modified: Tue, 10 Apr 2018 01:28:42 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:76adf457aecb25a1a738fa93fefaf845135b008961477c5f4d789c8df682be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37253374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3da41fa7cb318e1dcec678e1a9a3b8921dd528efdcd04d58d084b6a03ae23f`
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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:55:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:55:16 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:55:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:50:08 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:50:08 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:50:08 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:50:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:50:08 GMT
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360c3d4f091474bdb9e9141219c7be8e840ec555e971dc04b16ef919c033553d`  
		Last Modified: Tue, 27 Mar 2018 18:57:37 GMT  
		Size: 2.6 MB (2597484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8910342bf482cd17ef62bc60fe9f29e71939a7c18e4e3e0304e2c526b76eeb`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d9ad2bb412d177ea54cfaa1dcf5c8177f64709d7ddf4d24aaab2f9cff865f`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 20.8 KB (20803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c3320cfd6510b34d4fd94e6dcf597f80001f84d975ac6094294577a256394f`  
		Last Modified: Tue, 10 Apr 2018 01:51:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4b1afc93ab2cffb77c0d6c4393069194d6bf29c245bff31040f032d71aa03142
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37965392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15742fd38dd8f88d66969d51597997650a221aab37ef1bff07b705a00aba6328`
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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:01:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 07:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 07:01:58 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 07:02:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:43:05 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:43:06 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:43:07 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:43:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:43:09 GMT
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776abc798b9b9a18bf450dd400e2e301c9e9e39c5177e07e104bd85f2d965d64`  
		Last Modified: Sat, 03 Mar 2018 07:04:39 GMT  
		Size: 4.2 MB (4194194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1925da40658632528a1bd901bc40e4683188b319f8bb77045409c13e3d3577`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b561fcf42a5f130ddc68f01df53829927ad51e641dde978990c23f31a4338`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 26.1 KB (26062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9930ff91025d9c704853204ae179d3763664a0a78ae04465c3108774ccdee8`  
		Last Modified: Tue, 10 Apr 2018 02:52:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b77c08e6567684e4b8894ac89373b6a0b3304ac8f5c73892bddd24d953d8f639
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36192159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3971e99f9099133d20d9e3b1561b349bc7b678c0b2e7b897ddc6fcea75a7784`
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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 11:37:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 11:37:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 11:37:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:19:10 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:19:13 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:19:14 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:19:16 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:19:18 GMT
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9847344bb979a03e0b32a1b391c390055d631e0aae4858c73aec8b7328b8f83f`  
		Last Modified: Sat, 03 Mar 2018 11:38:27 GMT  
		Size: 2.6 MB (2618600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6299072dd994c01fb5767b6577f6482fe17489212856b3a5e973d872f13898`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4b411d1508b05fa5d44fadcaea908b3b3f2598c5e34d5d4f81fefa139eaf99`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 20.8 KB (20810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc9ae1e9905915735dac055ddd302be1f17ef52681ed86c8246d1cda9619609`  
		Last Modified: Tue, 10 Apr 2018 02:23:27 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12-dind` - linux; s390x

```console
$ docker pull docker@sha256:d8ef6d60919a5f6997bbbef7024eed93e05d4fcd036891ca48ed616fd4a6a44d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40949493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efd601cbdd5585b54523ebec23cf6a90fc7df37ae0bd4e395093ede93c6df2d`
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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 04:02:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 04:02:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 03 Mar 2018 04:02:40 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:40 GMT
VOLUME [/var/lib/docker]
# Sat, 03 Mar 2018 04:02:40 GMT
EXPOSE 2375/tcp
# Sat, 03 Mar 2018 04:02:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:40 GMT
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e287423da55f43cdf4df7fe48156217b86e36f803414bd5c8c4c56a3477920c`  
		Last Modified: Sat, 03 Mar 2018 04:03:37 GMT  
		Size: 4.7 MB (4734090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f419e8d2d01ce0a08fd7099eb8118b2df0893ca370608cc1ce4ebb083fc1ed8`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197384fa76fea9c5b4dbdf78c30b9d997c7526c92c664880245d219f00e7afa`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 26.1 KB (26072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10cb75161f922ab3c85353be48f0387110b6f4301e0c919c5d6a293f39443af`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.12-git`

```console
$ docker pull docker@sha256:3a9f3d60b81867357a6988c2df329b55d19cd2dd8697eb3c5f1d418c8eef7ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:17.12-git` - linux; amd64

```console
$ docker pull docker@sha256:67cd73974f14871bedac171f60f53d72ddeb0bb56f5c24b3899d2e0c15f5aead
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45404758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4811103ff7f5fc61522b880bd7543fa5ee99d0f3c36c1e7c6c075fad3c36bbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f4b860c04c6dfaaa37a92284ced48ed34e63d73e1a6e67cd8a3f6c16a43573`  
		Last Modified: Fri, 02 Mar 2018 21:55:13 GMT  
		Size: 8.4 MB (8443496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:392e70fa0dc222db73c42a5fc91f9ccd53a1cef5624171bf0a97f0291f49a03a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42775129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799606d77458ae59055dac1267cbbe779de0b8686d3188493e42316c296cde8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:27 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f56e8ca5602c24f6094d70f2423aa0773095aca152ebe44adc7dca2f656a3f0`  
		Last Modified: Tue, 27 Mar 2018 18:57:52 GMT  
		Size: 8.1 MB (8141953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b040529bd9f60d807e69cdd8444d4521263b6656f18294c0ddafa0dc09223e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41589281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e107a38ac4176c12d91fe15492ec2724e189f64dbc5a3bf6ddfcb481410cae9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:02:30 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21907da9b7bf5cc2fa8416c74f7b235da87cee38d5861aed2aea3611bd8763a`  
		Last Modified: Sat, 03 Mar 2018 07:06:02 GMT  
		Size: 7.8 MB (7846031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.12-git` - linux; ppc64le

```console
$ docker pull docker@sha256:907984a00a2a72d9dde9f3b97ea2d736c55f7038e68368408be75d093d370d17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41891394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c03dbf4747d4d59d6d6c769b4e16fdd0637eef642fd9b22031b50ae3e26242`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:31 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb84a3629d46003a5d0000a9f70fa9dbcf95313d5e763f29e37a6fd8c9a25f83`  
		Last Modified: Sat, 03 Mar 2018 11:39:00 GMT  
		Size: 8.3 MB (8340556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:9efd63e01c2984c913255cb039407e16bdb656f73f0a8c0a37d3182991b2aaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17-dind` - linux; amd64

```console
$ docker pull docker@sha256:bb99419d6678721eabf2e4e6694b50a1920628b505ff2e2e00327670c73ee6bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41501838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1410a0701bde7d68fa564ea03676d5bf702a96c4eef92153d19ec6d920aea22c`
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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 02 Mar 2018 21:51:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 02 Mar 2018 21:51:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 02 Mar 2018 21:51:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:24 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:24 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:24 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:25 GMT
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8e9a61efc9e7d83fb0baf5bb618c2f3eca842bb5218fbab69c983a910cea8`  
		Last Modified: Fri, 02 Mar 2018 21:53:52 GMT  
		Size: 4.5 MB (4512609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6a4606a5085c7c9e2d54f038623ed2912f21e1a01fe6340a51198ce048b43`  
		Last Modified: Fri, 02 Mar 2018 21:53:51 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8a44adaf9f97da56fd43f11c55078eb57bfb637544ef5e37fcaff9439c79b2`  
		Last Modified: Fri, 02 Mar 2018 21:53:50 GMT  
		Size: 26.1 KB (26084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ae055e23b6ab2e3b77f47556819dc03b993b5011a9d1fd2e7ef21e3948f111`  
		Last Modified: Tue, 10 Apr 2018 01:28:42 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:76adf457aecb25a1a738fa93fefaf845135b008961477c5f4d789c8df682be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37253374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3da41fa7cb318e1dcec678e1a9a3b8921dd528efdcd04d58d084b6a03ae23f`
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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:55:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:55:16 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:55:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:50:08 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:50:08 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:50:08 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:50:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:50:08 GMT
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360c3d4f091474bdb9e9141219c7be8e840ec555e971dc04b16ef919c033553d`  
		Last Modified: Tue, 27 Mar 2018 18:57:37 GMT  
		Size: 2.6 MB (2597484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8910342bf482cd17ef62bc60fe9f29e71939a7c18e4e3e0304e2c526b76eeb`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d9ad2bb412d177ea54cfaa1dcf5c8177f64709d7ddf4d24aaab2f9cff865f`  
		Last Modified: Tue, 27 Mar 2018 18:57:36 GMT  
		Size: 20.8 KB (20803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c3320cfd6510b34d4fd94e6dcf597f80001f84d975ac6094294577a256394f`  
		Last Modified: Tue, 10 Apr 2018 01:51:29 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4b1afc93ab2cffb77c0d6c4393069194d6bf29c245bff31040f032d71aa03142
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37965392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15742fd38dd8f88d66969d51597997650a221aab37ef1bff07b705a00aba6328`
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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:01:56 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 07:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 07:01:58 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 07:02:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:43:05 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:43:06 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:43:07 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:43:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:43:09 GMT
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776abc798b9b9a18bf450dd400e2e301c9e9e39c5177e07e104bd85f2d965d64`  
		Last Modified: Sat, 03 Mar 2018 07:04:39 GMT  
		Size: 4.2 MB (4194194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1925da40658632528a1bd901bc40e4683188b319f8bb77045409c13e3d3577`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b561fcf42a5f130ddc68f01df53829927ad51e641dde978990c23f31a4338`  
		Last Modified: Sat, 03 Mar 2018 07:04:38 GMT  
		Size: 26.1 KB (26062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9930ff91025d9c704853204ae179d3763664a0a78ae04465c3108774ccdee8`  
		Last Modified: Tue, 10 Apr 2018 02:52:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b77c08e6567684e4b8894ac89373b6a0b3304ac8f5c73892bddd24d953d8f639
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36192159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3971e99f9099133d20d9e3b1561b349bc7b678c0b2e7b897ddc6fcea75a7784`
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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 11:37:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 11:37:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 11:37:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:19:10 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:19:13 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:19:14 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:19:16 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:19:18 GMT
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9847344bb979a03e0b32a1b391c390055d631e0aae4858c73aec8b7328b8f83f`  
		Last Modified: Sat, 03 Mar 2018 11:38:27 GMT  
		Size: 2.6 MB (2618600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6299072dd994c01fb5767b6577f6482fe17489212856b3a5e973d872f13898`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4b411d1508b05fa5d44fadcaea908b3b3f2598c5e34d5d4f81fefa139eaf99`  
		Last Modified: Sat, 03 Mar 2018 11:38:26 GMT  
		Size: 20.8 KB (20810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc9ae1e9905915735dac055ddd302be1f17ef52681ed86c8246d1cda9619609`  
		Last Modified: Tue, 10 Apr 2018 02:23:27 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; s390x

```console
$ docker pull docker@sha256:d8ef6d60919a5f6997bbbef7024eed93e05d4fcd036891ca48ed616fd4a6a44d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40949493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efd601cbdd5585b54523ebec23cf6a90fc7df37ae0bd4e395093ede93c6df2d`
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
# Sat, 03 Mar 2018 04:01:45 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 04:02:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 04:02:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:19 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 03 Mar 2018 04:02:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 03 Mar 2018 04:02:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 03 Mar 2018 04:02:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 03 Mar 2018 04:02:40 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 03 Mar 2018 04:02:40 GMT
VOLUME [/var/lib/docker]
# Sat, 03 Mar 2018 04:02:40 GMT
EXPOSE 2375/tcp
# Sat, 03 Mar 2018 04:02:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 03 Mar 2018 04:02:40 GMT
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
	-	`sha256:1fba60fd36d0320ac190557ce076f30e2fa407deb654343ef4899662b72b7ded`  
		Last Modified: Sat, 03 Mar 2018 04:03:15 GMT  
		Size: 33.7 MB (33691542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d2db9c5e7e214d5bd1e0e827d2d9af3d9a5635277612860b11b688c3be877`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2f782a08f6c450a97554a5d1603d171a4ac75dccc37b58112c64a1760a864`  
		Last Modified: Sat, 03 Mar 2018 04:03:06 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e287423da55f43cdf4df7fe48156217b86e36f803414bd5c8c4c56a3477920c`  
		Last Modified: Sat, 03 Mar 2018 04:03:37 GMT  
		Size: 4.7 MB (4734090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f419e8d2d01ce0a08fd7099eb8118b2df0893ca370608cc1ce4ebb083fc1ed8`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a197384fa76fea9c5b4dbdf78c30b9d997c7526c92c664880245d219f00e7afa`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 26.1 KB (26072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10cb75161f922ab3c85353be48f0387110b6f4301e0c919c5d6a293f39443af`  
		Last Modified: Sat, 03 Mar 2018 04:03:36 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:3a9f3d60b81867357a6988c2df329b55d19cd2dd8697eb3c5f1d418c8eef7ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:17-git` - linux; amd64

```console
$ docker pull docker@sha256:67cd73974f14871bedac171f60f53d72ddeb0bb56f5c24b3899d2e0c15f5aead
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45404758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4811103ff7f5fc61522b880bd7543fa5ee99d0f3c36c1e7c6c075fad3c36bbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 02 Mar 2018 21:50:55 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Fri, 02 Mar 2018 21:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 02 Mar 2018 21:51:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 02 Mar 2018 21:51:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 21:51:03 GMT
CMD ["sh"]
# Fri, 02 Mar 2018 21:51:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:cf0c240eb02d0691527bd22c3a2ccdaef2788cf8f566664b6a37e2f22335b0af`  
		Last Modified: Fri, 02 Mar 2018 21:52:30 GMT  
		Size: 34.6 MB (34586265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439decd7c8f0411738ac6acddfbf5dcecad2d52f662dbeda75e25af627caae6`  
		Last Modified: Fri, 02 Mar 2018 21:52:24 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc73468c4debbaae48a3aec8df5b09caec365845eb0fa06b98c13864aeb1d2f`  
		Last Modified: Fri, 02 Mar 2018 21:52:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f4b860c04c6dfaaa37a92284ced48ed34e63d73e1a6e67cd8a3f6c16a43573`  
		Last Modified: Fri, 02 Mar 2018 21:55:13 GMT  
		Size: 8.4 MB (8443496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:392e70fa0dc222db73c42a5fc91f9ccd53a1cef5624171bf0a97f0291f49a03a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42775129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799606d77458ae59055dac1267cbbe779de0b8686d3188493e42316c296cde8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:58 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Tue, 27 Mar 2018 18:55:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:55:06 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:55:07 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:55:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:55:07 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:55:27 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:94a4c0df346655e60f39337a3c3efbfd885d71e657daeee52daf70d9f4decb3e`  
		Last Modified: Tue, 27 Mar 2018 18:57:24 GMT  
		Size: 32.3 MB (32284476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8387e187b86c7fe74f880fff809ab5c771bc32f56fdea5545e602f17a42db974`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0b4734fd4395fad5a3019bc4aa75647c159257300e3f106a580b4be4f516c`  
		Last Modified: Tue, 27 Mar 2018 18:57:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f56e8ca5602c24f6094d70f2423aa0773095aca152ebe44adc7dca2f656a3f0`  
		Last Modified: Tue, 27 Mar 2018 18:57:52 GMT  
		Size: 8.1 MB (8141953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b040529bd9f60d807e69cdd8444d4521263b6656f18294c0ddafa0dc09223e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41589281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e107a38ac4176c12d91fe15492ec2724e189f64dbc5a3bf6ddfcb481410cae9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 07:01:12 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 07:01:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 07:01:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 07:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 07:01:25 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 07:02:30 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f2a6ca566a4c1e8fb799e59bac174f0e9c951724a268a7648ff54159cac7e0f3`  
		Last Modified: Sat, 03 Mar 2018 07:03:19 GMT  
		Size: 31.4 MB (31444561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699e71fce319fc4ed4c7b1677ce7f0dd8b071b45f63e218a4413ce7e52dd4de3`  
		Last Modified: Sat, 03 Mar 2018 07:03:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07f37ee587b1d395b7792124a6eb3e08132be66d0065c5fb80d31d35e2c12`  
		Last Modified: Sat, 03 Mar 2018 07:03:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21907da9b7bf5cc2fa8416c74f7b235da87cee38d5861aed2aea3611bd8763a`  
		Last Modified: Sat, 03 Mar 2018 07:06:02 GMT  
		Size: 7.8 MB (7846031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-git` - linux; ppc64le

```console
$ docker pull docker@sha256:907984a00a2a72d9dde9f3b97ea2d736c55f7038e68368408be75d093d370d17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41891394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c03dbf4747d4d59d6d6c769b4e16fdd0637eef642fd9b22031b50ae3e26242`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Sat, 03 Mar 2018 11:36:27 GMT
ENV DOCKER_VERSION=17.12.1-ce
# Sat, 03 Mar 2018 11:36:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 03 Mar 2018 11:36:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 03 Mar 2018 11:36:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:36:45 GMT
CMD ["sh"]
# Sat, 03 Mar 2018 11:37:31 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:07be39786f93e64179077ce060e9bc23b2717060f6a764ff92286187365f3077`  
		Last Modified: Sat, 03 Mar 2018 11:38:03 GMT  
		Size: 31.2 MB (31157148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb56a7bbff4d5d61a4e9ca22c522dd46a6521b1048a5574a04a40b62c5a0b`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3864bced25e0203ffbfd75d6eca8f488ea0ad47bf8f25326fb4928651d143d6`  
		Last Modified: Sat, 03 Mar 2018 11:37:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb84a3629d46003a5d0000a9f70fa9dbcf95313d5e763f29e37a6fd8c9a25f83`  
		Last Modified: Sat, 03 Mar 2018 11:39:00 GMT  
		Size: 8.3 MB (8340556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18`

```console
$ docker pull docker@sha256:2b6a42d47ba2b0448c2ba3adc9aceabf436eb42ccd51a106176e60985e3dcb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:81fb0afdafd855fa7b0e993aee701e8ff7e02acfb5d43bf1e157b7b886b4d502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41491507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bbd4500c6d7c8dc438c69a9cf381e4461c47a5d0977e385e477a9976b1a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:a7cf19bffda88e00d8fea6109ce056200385af533194e677f203dd457dc40d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39445614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1de32cabb22ff94eba365cb1e85f929862f541d543324f0dbbba3758f43607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:36b002927291f9199d0a2fdcc78fe7c932e344435070d50ede39b89f28cee9ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37887655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c56e5270329a359690aafbaa9d4d44beac37244f74ee5cbbc0275680d54111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; ppc64le

```console
$ docker pull docker@sha256:75d633866a2051afe021fe25cb3c0642a978fd4cb2d54f3f69050290d8d8c0ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37548923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75777dc04b383fc32402e559b53fa3f9f1f441d98bb78a6fa81f5a36600745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; s390x

```console
$ docker pull docker@sha256:9d1289780895e4d087cc37d6184276ccfc4f2b0e0bbf3abea2d0183db05b95c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40570936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c345078218a76176e7f7579ef4c78245c6f47aebf8228c720548c2844c4cf36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03`

```console
$ docker pull docker@sha256:2b6a42d47ba2b0448c2ba3adc9aceabf436eb42ccd51a106176e60985e3dcb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03` - linux; amd64

```console
$ docker pull docker@sha256:81fb0afdafd855fa7b0e993aee701e8ff7e02acfb5d43bf1e157b7b886b4d502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41491507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bbd4500c6d7c8dc438c69a9cf381e4461c47a5d0977e385e477a9976b1a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03` - linux; arm variant v6

```console
$ docker pull docker@sha256:a7cf19bffda88e00d8fea6109ce056200385af533194e677f203dd457dc40d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39445614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1de32cabb22ff94eba365cb1e85f929862f541d543324f0dbbba3758f43607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:36b002927291f9199d0a2fdcc78fe7c932e344435070d50ede39b89f28cee9ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37887655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c56e5270329a359690aafbaa9d4d44beac37244f74ee5cbbc0275680d54111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03` - linux; ppc64le

```console
$ docker pull docker@sha256:75d633866a2051afe021fe25cb3c0642a978fd4cb2d54f3f69050290d8d8c0ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37548923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75777dc04b383fc32402e559b53fa3f9f1f441d98bb78a6fa81f5a36600745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03` - linux; s390x

```console
$ docker pull docker@sha256:9d1289780895e4d087cc37d6184276ccfc4f2b0e0bbf3abea2d0183db05b95c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40570936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c345078218a76176e7f7579ef4c78245c6f47aebf8228c720548c2844c4cf36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03.0`

```console
$ docker pull docker@sha256:2b6a42d47ba2b0448c2ba3adc9aceabf436eb42ccd51a106176e60985e3dcb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03.0` - linux; amd64

```console
$ docker pull docker@sha256:81fb0afdafd855fa7b0e993aee701e8ff7e02acfb5d43bf1e157b7b886b4d502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41491507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bbd4500c6d7c8dc438c69a9cf381e4461c47a5d0977e385e477a9976b1a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0` - linux; arm variant v6

```console
$ docker pull docker@sha256:a7cf19bffda88e00d8fea6109ce056200385af533194e677f203dd457dc40d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39445614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1de32cabb22ff94eba365cb1e85f929862f541d543324f0dbbba3758f43607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:36b002927291f9199d0a2fdcc78fe7c932e344435070d50ede39b89f28cee9ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37887655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c56e5270329a359690aafbaa9d4d44beac37244f74ee5cbbc0275680d54111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0` - linux; ppc64le

```console
$ docker pull docker@sha256:75d633866a2051afe021fe25cb3c0642a978fd4cb2d54f3f69050290d8d8c0ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37548923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75777dc04b383fc32402e559b53fa3f9f1f441d98bb78a6fa81f5a36600745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0` - linux; s390x

```console
$ docker pull docker@sha256:9d1289780895e4d087cc37d6184276ccfc4f2b0e0bbf3abea2d0183db05b95c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40570936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c345078218a76176e7f7579ef4c78245c6f47aebf8228c720548c2844c4cf36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03.0-ce`

```console
$ docker pull docker@sha256:2b6a42d47ba2b0448c2ba3adc9aceabf436eb42ccd51a106176e60985e3dcb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:81fb0afdafd855fa7b0e993aee701e8ff7e02acfb5d43bf1e157b7b886b4d502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41491507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bbd4500c6d7c8dc438c69a9cf381e4461c47a5d0977e385e477a9976b1a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce` - linux; arm variant v6

```console
$ docker pull docker@sha256:a7cf19bffda88e00d8fea6109ce056200385af533194e677f203dd457dc40d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39445614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1de32cabb22ff94eba365cb1e85f929862f541d543324f0dbbba3758f43607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:36b002927291f9199d0a2fdcc78fe7c932e344435070d50ede39b89f28cee9ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37887655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c56e5270329a359690aafbaa9d4d44beac37244f74ee5cbbc0275680d54111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:75d633866a2051afe021fe25cb3c0642a978fd4cb2d54f3f69050290d8d8c0ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37548923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75777dc04b383fc32402e559b53fa3f9f1f441d98bb78a6fa81f5a36600745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce` - linux; s390x

```console
$ docker pull docker@sha256:9d1289780895e4d087cc37d6184276ccfc4f2b0e0bbf3abea2d0183db05b95c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40570936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c345078218a76176e7f7579ef4c78245c6f47aebf8228c720548c2844c4cf36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03.0-ce-dind`

```console
$ docker pull docker@sha256:84cdff32b200f7cb25e6f3897968cf5cad1ab74674b0378240fdb9b75a1af2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:a66a79a03c734a9ec0f3a43f2c7ba5379a0fce6494d308ffa90fc1dd94e50c06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d94acbd847eb490dff15af12eb4bd9a7058400c21a3bb65d8f6a18a79c484d`
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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:02 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:02 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:03 GMT
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba058d347646d16dd51dd8b6c405b4f667c041653ae1fd2560412b3c870617df`  
		Last Modified: Tue, 10 Apr 2018 01:26:18 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:e4d5680fe087d0694b12ff02918c25db128b008e771ba0786ba22017d1156ec3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2558aa17a022556aa5b98a480981b8f30be9de43339e6ba83d96649afe0702`
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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:54:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:54:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:54:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:58 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:58 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:58 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:59 GMT
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e38243a820786da7ba135b13501b11cbe50b55ba5cae5d65c274547e357663`  
		Last Modified: Tue, 27 Mar 2018 18:56:27 GMT  
		Size: 2.7 MB (2699258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19034bc0a5f6a963f82a054c35526c894a624625968b200de3962c3f043284`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5696f0db16aee6f907ced75d3d51b775d70a27fe07775d0097b1e49e84f42557`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 21.0 KB (21010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f0772aea9ca744d2a97e932f247a62ee9dbf1e35a94e8d5cff5d92224d519f`  
		Last Modified: Tue, 10 Apr 2018 01:51:12 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5999a3da47d6ad41d7612b352efdd37107d76431ac0a22143c7a102272e2e811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42198203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e564c84ae54ed6c95159334a42e6ab3c8a0f7a6c632f721b9ce2f633d0fbe8`
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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:01:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 06:01:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 06:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 06:02:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:42:28 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:42:29 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:42:30 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:42:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:42:31 GMT
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5e2ce63ac430487bc35f0c94f1880bbea93b39a8e71587addec771c020c00a`  
		Last Modified: Fri, 23 Mar 2018 06:06:16 GMT  
		Size: 4.3 MB (4282412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3013c73f615e9cec6e8888cb08a23fa2d00f5ad16b462fb493a7754f523d7`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651a0e89581bfbc47ddef6982aa4546c5d6fe799dd553813fa3fb84c182b842`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8833287a33f5c68d16cad7f1379691ac9a9de266447e7e4f51eaf9ea205bf`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:799791f9a01b104412ce35d6def54b7145a84aefa53c82ca037be3ad8ec51156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40281435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40a03ad400ccebf3a5e3f38f6f777c1362ed4ae50eab42bc0f24c8ad4762df`
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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 10:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 10:37:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 10:37:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:18:49 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:18:52 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:54 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:57 GMT
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083fadf1146b7d24759998330299ec4a5bad0cf1403317c9c331b388983ddf36`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 2.7 MB (2709590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824daab6fb018573301ce66f4589a3ed320eaebd4d5cf8b7147a30f6753aa073`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7db968e3e6a0604d885bf21460e8a0020836fe2f25d69abee50cea60ab5a49`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce311abd1568a0111050f9d43932e016c929704247361dbae5111b7353bb8f`  
		Last Modified: Tue, 10 Apr 2018 02:22:07 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:9ac90ef3e7c6803cbc11b2664e534c9fecfc73278067537a1768a3aabfda17c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f29c086aa5690c7ed04c3466a9860767ff14be9362e6e491c6af03641131c4`
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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Mar 2018 03:02:00 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:02:01 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Mar 2018 03:02:01 GMT
EXPOSE 2375/tcp
# Fri, 23 Mar 2018 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Mar 2018 03:02:01 GMT
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735c357710e93d3e32b111c5c595589d09f0f2e2797675b974c1ff9ab9e9ba1`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 4.8 MB (4836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6459559bdc1300cb447c78b6c2729d05d68b5bfda41573461f445ef9a5860c`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0444f2634ec17f18630ef1145f48250a6d11e5c1c68108b187b4b7c7a9db0ca8`  
		Last Modified: Fri, 23 Mar 2018 03:03:28 GMT  
		Size: 26.3 KB (26268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4a480f2ea75d7e8d3f61a97830a3c81815872ace9e33fedba1c250d6b59ff`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03.0-ce-git`

```console
$ docker pull docker@sha256:e95a4fd195c4b2f24795c336fcfc102802f53f0132d58e7ed0fe233579b7847b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:b9daf3dd4b39b8886e4d0d06f8b7a5a8ba208270942d38c0db8a2267c18feb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47587558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6354c7c1593c5035c8551554b83f63b9842e1f5ad2cc5c992120f79740a44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee99ac170348b4997dfe07b0b528c7ab826b2440cd1fb065ac2c24a8da1280`  
		Last Modified: Tue, 27 Mar 2018 18:56:52 GMT  
		Size: 8.1 MB (8141944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f7f614a35bea69c531134eefb58c6bfdab435f11263638cf1fe4daf01941de0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183461fa1bdbab45b9818f28ea0c6d7ea6ab92e1867a9459c46e1f9a63823270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:02:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73e517de5abedbcb3ece68322bbfde76c62795e245521a39d67fd6812d9cd`  
		Last Modified: Fri, 23 Mar 2018 06:08:58 GMT  
		Size: 7.8 MB (7847106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:1f7c8f8dc0aed2227603ef1d79c325fb950e605383e4957572e88cf098c37c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45889943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaa0f5d747e6083e3cc5a982023dd0296a9b6e45f1ec763e010985f1ea4d5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:45 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1244b9e3bad1b0b895250dcdcc0e6b7d62462e8fe936cf6221393af78d1afc6`  
		Last Modified: Fri, 23 Mar 2018 10:40:29 GMT  
		Size: 8.3 MB (8341020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:447c7fb882120d01fbaf3b50baecd50e13d98e35a26e886d4812602d2051086a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9846971527eb67cac4981826719a5f37d46eae3448626574138d3e8c9089603f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:02:15 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60315dc82477b412d8421382d9407e0cc48f1f60c0dd8dac5735f31595d9d264`  
		Last Modified: Fri, 23 Mar 2018 03:04:08 GMT  
		Size: 8.7 MB (8741456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03.0-dind`

```console
$ docker pull docker@sha256:84cdff32b200f7cb25e6f3897968cf5cad1ab74674b0378240fdb9b75a1af2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:a66a79a03c734a9ec0f3a43f2c7ba5379a0fce6494d308ffa90fc1dd94e50c06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d94acbd847eb490dff15af12eb4bd9a7058400c21a3bb65d8f6a18a79c484d`
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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:02 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:02 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:03 GMT
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba058d347646d16dd51dd8b6c405b4f667c041653ae1fd2560412b3c870617df`  
		Last Modified: Tue, 10 Apr 2018 01:26:18 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:e4d5680fe087d0694b12ff02918c25db128b008e771ba0786ba22017d1156ec3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2558aa17a022556aa5b98a480981b8f30be9de43339e6ba83d96649afe0702`
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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:54:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:54:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:54:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:58 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:58 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:58 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:59 GMT
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e38243a820786da7ba135b13501b11cbe50b55ba5cae5d65c274547e357663`  
		Last Modified: Tue, 27 Mar 2018 18:56:27 GMT  
		Size: 2.7 MB (2699258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19034bc0a5f6a963f82a054c35526c894a624625968b200de3962c3f043284`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5696f0db16aee6f907ced75d3d51b775d70a27fe07775d0097b1e49e84f42557`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 21.0 KB (21010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f0772aea9ca744d2a97e932f247a62ee9dbf1e35a94e8d5cff5d92224d519f`  
		Last Modified: Tue, 10 Apr 2018 01:51:12 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5999a3da47d6ad41d7612b352efdd37107d76431ac0a22143c7a102272e2e811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42198203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e564c84ae54ed6c95159334a42e6ab3c8a0f7a6c632f721b9ce2f633d0fbe8`
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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:01:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 06:01:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 06:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 06:02:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:42:28 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:42:29 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:42:30 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:42:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:42:31 GMT
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5e2ce63ac430487bc35f0c94f1880bbea93b39a8e71587addec771c020c00a`  
		Last Modified: Fri, 23 Mar 2018 06:06:16 GMT  
		Size: 4.3 MB (4282412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3013c73f615e9cec6e8888cb08a23fa2d00f5ad16b462fb493a7754f523d7`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651a0e89581bfbc47ddef6982aa4546c5d6fe799dd553813fa3fb84c182b842`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8833287a33f5c68d16cad7f1379691ac9a9de266447e7e4f51eaf9ea205bf`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:799791f9a01b104412ce35d6def54b7145a84aefa53c82ca037be3ad8ec51156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40281435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40a03ad400ccebf3a5e3f38f6f777c1362ed4ae50eab42bc0f24c8ad4762df`
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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 10:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 10:37:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 10:37:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:18:49 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:18:52 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:54 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:57 GMT
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083fadf1146b7d24759998330299ec4a5bad0cf1403317c9c331b388983ddf36`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 2.7 MB (2709590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824daab6fb018573301ce66f4589a3ed320eaebd4d5cf8b7147a30f6753aa073`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7db968e3e6a0604d885bf21460e8a0020836fe2f25d69abee50cea60ab5a49`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce311abd1568a0111050f9d43932e016c929704247361dbae5111b7353bb8f`  
		Last Modified: Tue, 10 Apr 2018 02:22:07 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-dind` - linux; s390x

```console
$ docker pull docker@sha256:9ac90ef3e7c6803cbc11b2664e534c9fecfc73278067537a1768a3aabfda17c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f29c086aa5690c7ed04c3466a9860767ff14be9362e6e491c6af03641131c4`
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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Mar 2018 03:02:00 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:02:01 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Mar 2018 03:02:01 GMT
EXPOSE 2375/tcp
# Fri, 23 Mar 2018 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Mar 2018 03:02:01 GMT
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735c357710e93d3e32b111c5c595589d09f0f2e2797675b974c1ff9ab9e9ba1`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 4.8 MB (4836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6459559bdc1300cb447c78b6c2729d05d68b5bfda41573461f445ef9a5860c`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0444f2634ec17f18630ef1145f48250a6d11e5c1c68108b187b4b7c7a9db0ca8`  
		Last Modified: Fri, 23 Mar 2018 03:03:28 GMT  
		Size: 26.3 KB (26268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4a480f2ea75d7e8d3f61a97830a3c81815872ace9e33fedba1c250d6b59ff`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03.0-git`

```console
$ docker pull docker@sha256:e95a4fd195c4b2f24795c336fcfc102802f53f0132d58e7ed0fe233579b7847b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03.0-git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:b9daf3dd4b39b8886e4d0d06f8b7a5a8ba208270942d38c0db8a2267c18feb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47587558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6354c7c1593c5035c8551554b83f63b9842e1f5ad2cc5c992120f79740a44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee99ac170348b4997dfe07b0b528c7ab826b2440cd1fb065ac2c24a8da1280`  
		Last Modified: Tue, 27 Mar 2018 18:56:52 GMT  
		Size: 8.1 MB (8141944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f7f614a35bea69c531134eefb58c6bfdab435f11263638cf1fe4daf01941de0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183461fa1bdbab45b9818f28ea0c6d7ea6ab92e1867a9459c46e1f9a63823270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:02:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73e517de5abedbcb3ece68322bbfde76c62795e245521a39d67fd6812d9cd`  
		Last Modified: Fri, 23 Mar 2018 06:08:58 GMT  
		Size: 7.8 MB (7847106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-git` - linux; ppc64le

```console
$ docker pull docker@sha256:1f7c8f8dc0aed2227603ef1d79c325fb950e605383e4957572e88cf098c37c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45889943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaa0f5d747e6083e3cc5a982023dd0296a9b6e45f1ec763e010985f1ea4d5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:45 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1244b9e3bad1b0b895250dcdcc0e6b7d62462e8fe936cf6221393af78d1afc6`  
		Last Modified: Fri, 23 Mar 2018 10:40:29 GMT  
		Size: 8.3 MB (8341020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03.0-git` - linux; s390x

```console
$ docker pull docker@sha256:447c7fb882120d01fbaf3b50baecd50e13d98e35a26e886d4812602d2051086a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9846971527eb67cac4981826719a5f37d46eae3448626574138d3e8c9089603f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:02:15 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60315dc82477b412d8421382d9407e0cc48f1f60c0dd8dac5735f31595d9d264`  
		Last Modified: Fri, 23 Mar 2018 03:04:08 GMT  
		Size: 8.7 MB (8741456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03-dind`

```console
$ docker pull docker@sha256:84cdff32b200f7cb25e6f3897968cf5cad1ab74674b0378240fdb9b75a1af2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03-dind` - linux; amd64

```console
$ docker pull docker@sha256:a66a79a03c734a9ec0f3a43f2c7ba5379a0fce6494d308ffa90fc1dd94e50c06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d94acbd847eb490dff15af12eb4bd9a7058400c21a3bb65d8f6a18a79c484d`
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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:02 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:02 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:03 GMT
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba058d347646d16dd51dd8b6c405b4f667c041653ae1fd2560412b3c870617df`  
		Last Modified: Tue, 10 Apr 2018 01:26:18 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:e4d5680fe087d0694b12ff02918c25db128b008e771ba0786ba22017d1156ec3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2558aa17a022556aa5b98a480981b8f30be9de43339e6ba83d96649afe0702`
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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:54:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:54:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:54:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:58 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:58 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:58 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:59 GMT
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e38243a820786da7ba135b13501b11cbe50b55ba5cae5d65c274547e357663`  
		Last Modified: Tue, 27 Mar 2018 18:56:27 GMT  
		Size: 2.7 MB (2699258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19034bc0a5f6a963f82a054c35526c894a624625968b200de3962c3f043284`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5696f0db16aee6f907ced75d3d51b775d70a27fe07775d0097b1e49e84f42557`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 21.0 KB (21010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f0772aea9ca744d2a97e932f247a62ee9dbf1e35a94e8d5cff5d92224d519f`  
		Last Modified: Tue, 10 Apr 2018 01:51:12 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5999a3da47d6ad41d7612b352efdd37107d76431ac0a22143c7a102272e2e811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42198203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e564c84ae54ed6c95159334a42e6ab3c8a0f7a6c632f721b9ce2f633d0fbe8`
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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:01:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 06:01:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 06:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 06:02:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:42:28 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:42:29 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:42:30 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:42:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:42:31 GMT
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5e2ce63ac430487bc35f0c94f1880bbea93b39a8e71587addec771c020c00a`  
		Last Modified: Fri, 23 Mar 2018 06:06:16 GMT  
		Size: 4.3 MB (4282412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3013c73f615e9cec6e8888cb08a23fa2d00f5ad16b462fb493a7754f523d7`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651a0e89581bfbc47ddef6982aa4546c5d6fe799dd553813fa3fb84c182b842`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8833287a33f5c68d16cad7f1379691ac9a9de266447e7e4f51eaf9ea205bf`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:799791f9a01b104412ce35d6def54b7145a84aefa53c82ca037be3ad8ec51156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40281435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40a03ad400ccebf3a5e3f38f6f777c1362ed4ae50eab42bc0f24c8ad4762df`
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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 10:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 10:37:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 10:37:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:18:49 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:18:52 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:54 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:57 GMT
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083fadf1146b7d24759998330299ec4a5bad0cf1403317c9c331b388983ddf36`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 2.7 MB (2709590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824daab6fb018573301ce66f4589a3ed320eaebd4d5cf8b7147a30f6753aa073`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7db968e3e6a0604d885bf21460e8a0020836fe2f25d69abee50cea60ab5a49`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce311abd1568a0111050f9d43932e016c929704247361dbae5111b7353bb8f`  
		Last Modified: Tue, 10 Apr 2018 02:22:07 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-dind` - linux; s390x

```console
$ docker pull docker@sha256:9ac90ef3e7c6803cbc11b2664e534c9fecfc73278067537a1768a3aabfda17c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f29c086aa5690c7ed04c3466a9860767ff14be9362e6e491c6af03641131c4`
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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Mar 2018 03:02:00 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:02:01 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Mar 2018 03:02:01 GMT
EXPOSE 2375/tcp
# Fri, 23 Mar 2018 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Mar 2018 03:02:01 GMT
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735c357710e93d3e32b111c5c595589d09f0f2e2797675b974c1ff9ab9e9ba1`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 4.8 MB (4836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6459559bdc1300cb447c78b6c2729d05d68b5bfda41573461f445ef9a5860c`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0444f2634ec17f18630ef1145f48250a6d11e5c1c68108b187b4b7c7a9db0ca8`  
		Last Modified: Fri, 23 Mar 2018 03:03:28 GMT  
		Size: 26.3 KB (26268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4a480f2ea75d7e8d3f61a97830a3c81815872ace9e33fedba1c250d6b59ff`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.03-git`

```console
$ docker pull docker@sha256:e95a4fd195c4b2f24795c336fcfc102802f53f0132d58e7ed0fe233579b7847b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18.03-git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:b9daf3dd4b39b8886e4d0d06f8b7a5a8ba208270942d38c0db8a2267c18feb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47587558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6354c7c1593c5035c8551554b83f63b9842e1f5ad2cc5c992120f79740a44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee99ac170348b4997dfe07b0b528c7ab826b2440cd1fb065ac2c24a8da1280`  
		Last Modified: Tue, 27 Mar 2018 18:56:52 GMT  
		Size: 8.1 MB (8141944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f7f614a35bea69c531134eefb58c6bfdab435f11263638cf1fe4daf01941de0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183461fa1bdbab45b9818f28ea0c6d7ea6ab92e1867a9459c46e1f9a63823270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:02:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73e517de5abedbcb3ece68322bbfde76c62795e245521a39d67fd6812d9cd`  
		Last Modified: Fri, 23 Mar 2018 06:08:58 GMT  
		Size: 7.8 MB (7847106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-git` - linux; ppc64le

```console
$ docker pull docker@sha256:1f7c8f8dc0aed2227603ef1d79c325fb950e605383e4957572e88cf098c37c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45889943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaa0f5d747e6083e3cc5a982023dd0296a9b6e45f1ec763e010985f1ea4d5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:45 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1244b9e3bad1b0b895250dcdcc0e6b7d62462e8fe936cf6221393af78d1afc6`  
		Last Modified: Fri, 23 Mar 2018 10:40:29 GMT  
		Size: 8.3 MB (8341020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.03-git` - linux; s390x

```console
$ docker pull docker@sha256:447c7fb882120d01fbaf3b50baecd50e13d98e35a26e886d4812602d2051086a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9846971527eb67cac4981826719a5f37d46eae3448626574138d3e8c9089603f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:02:15 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60315dc82477b412d8421382d9407e0cc48f1f60c0dd8dac5735f31595d9d264`  
		Last Modified: Fri, 23 Mar 2018 03:04:08 GMT  
		Size: 8.7 MB (8741456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.04.0-ce-rc2`

```console
$ docker pull docker@sha256:2e310a20f4e476a4b274797d27ac530ff0fbad7ee6282e39f79c02466d57b5eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.04.0-ce-rc2` - linux; amd64

```console
$ docker pull docker@sha256:6f6507b610cfdd6072f67896336fea7cd7f42a9d472628a4d2c1dd8f3f9380e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41561258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b9c02eb39acccba14aea7a9a6a094f4cd239b5823596f0723fb1baf668153e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2` - linux; arm variant v6

```console
$ docker pull docker@sha256:4c898940f48f677666555e47b15c33063b89f772b99c04f404d27e1cd62f6d7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39526245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c7ca313441130c5ebd774ac276d16f8ad1a30e97b37eb0c6c9fc67d8ccefc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:036c7251bf6112e365f69f2a8528ce918272bae624ad6008506f3b5548e70473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37956489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be61a0f301fa0d5df54c12a4f9ded6071f6dca9a9e3314d60ca30d396363d023`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2` - linux; ppc64le

```console
$ docker pull docker@sha256:b6f597984bb10d1136bb3c098a6dedc670e6caa1751a01d1aec135c4827fdf57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37606115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4ebfb1a3b45b83b2b69ad4200fe115f06f10878754c30685ea099c82da6efb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.04.0-ce-rc2-dind`

```console
$ docker pull docker@sha256:2a419595037cb75a3761240385dd2c00fa82928164c92696061ad8dd3e5bf2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.04.0-ce-rc2-dind` - linux; amd64

```console
$ docker pull docker@sha256:1951ad8c1f05e0a131043eca9e544a827d309d0ec04dea56705a303d87a84f2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46197171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be251e01c75d9e881fb556505102ecfc0e898b8cc035f45dc2dbd93b95c6178`
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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:11:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:11:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:11:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:11:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:11:48 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:11:48 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:11:48 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:11:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:11:49 GMT
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e3b3ed2f28251e847c026c5bc457103b580142951c18ee2f67a9cc1030b439`  
		Last Modified: Tue, 10 Apr 2018 01:22:32 GMT  
		Size: 4.6 MB (4607747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddb5ffd6884e0b33e46969e8a9d608db8e5da721cbf40f1a0d7e9d4d12bc466`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb77d5fe7f9afa6071bdca4ecade040cde2876ead0f786fa7c76715ed0bdcd8`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 26.3 KB (26283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cca0accd43fe104cb62a70d09f5bb22931067e4e1bf24614b2a975de31d5b75`  
		Last Modified: Tue, 10 Apr 2018 01:22:31 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:6becc1c24ffcc28fcc1095e72840665b343aaa94edc13cf8db0cc0a13084be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42248400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6237c9ef2568f1a039501cea782076385c3a88f905fdd52cfd003516501af1`
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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:49:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:49:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:44 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:44 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:44 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:45 GMT
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79fe1f15543bcbffdb437abaeb7e1b74c393f90c0c6e27e35d34cc94425dffd`  
		Last Modified: Tue, 10 Apr 2018 01:50:46 GMT  
		Size: 2.7 MB (2699244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abae9f33adb0761463bc00033f67bc9daf20768b9c08d1adaff34f239c8bfb3`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9567b9397a73474be40bb69a487cb6002b9dd82a88c05f3f88e10ab52222c0fe`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18deb06f95eecc625e2c743c965ae623aa9a9eee842f6be4e5dafb38de518e6`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1d59203990a5f5b18f6106e3d9e51ef3704762f15d7346631480bd192935c51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42267050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0fab031eb69ccec5bbbeb2e8673a68871507566929c535fe6d2d3aac09105f`
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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:41:16 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:41:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:41:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:41:26 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:41:26 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:41:28 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:41:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:41:30 GMT
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21efa15d2c94611a2f61fe7155b9e72468433f5ba4650caad2010c9308d93f2`  
		Last Modified: Tue, 10 Apr 2018 02:45:51 GMT  
		Size: 4.3 MB (4282421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b79b347175d2b20df1bb98047641aa8130658e0f5106f213487759d6bd7ac`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa85538a1c2755c7da61a2db0e07642ba9e64e007c3445582fce08e65c9825f`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 26.3 KB (26257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3a7486b97c5a37441fca9fd5332db68cea4792cf460b6553f5d842352eea71`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:926e1eb4535388a0dcb281404f17f7666f241792b46769a8156ca28ae9b805a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40338605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd3a9370865e6282ff127aa56a8ca85c558c33e3c1c7fdbd7ce146ef8e316e8`
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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:17:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:17:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:17:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:17:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:17:57 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:59 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:01 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:05 GMT
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20730ab566f58e56e50c12b4842ca4741b38439eb196794266e39214331c1a04`  
		Last Modified: Tue, 10 Apr 2018 02:20:41 GMT  
		Size: 2.7 MB (2709574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251a189498ca5059a1f56b6ea6f1d3edc75df48072f5a35a0eddcb904a6e1e6`  
		Last Modified: Tue, 10 Apr 2018 02:20:39 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee2bb3a063e6ebde125b41a2defc91f6c3216727ad7b5b6227428d75d95e44`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee68ff77d8566af74e38f1ef413ea56c0fdc012528e4491509a53862628faef5`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.04.0-ce-rc2-git`

```console
$ docker pull docker@sha256:9843a8e01ec7212426babefe08d602515e8e13370a2a22bbf429cb4575092efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.04.0-ce-rc2-git` - linux; amd64

```console
$ docker pull docker@sha256:188763d18c01135a07016777730e5d0b8bdb8dcbf58304ff43c4176517e9ad8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50006273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a1dc254fb084e349d413a71df43fc3ab2f8f5f7353c7f35d80f08cb5c7c66a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:19:37 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7526c5d087330711c14b2bb4538ec1fd6be402d66dcbf707fc5d8616e994a3`  
		Last Modified: Tue, 10 Apr 2018 01:24:52 GMT  
		Size: 8.4 MB (8445015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:30f7ec1c1c973ad9f50011ed181d01ee859c254ba4357442212ec290a4448792
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47668193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca0b9a4c5f656a3ea7c966b85eadf51f30b5b612e1fda43c1359a481ab80613`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e16c1dcb657eea4f57bb6a8749acf3c30d701c2a7088da7b99fd0ed0fc936a`  
		Last Modified: Tue, 10 Apr 2018 01:51:00 GMT  
		Size: 8.1 MB (8141948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52514e46590a0a02927713152ac9e5d75f2d1cb790ae0818292f7e7f85bf4cd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45803588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c9f67c0040e4a2bed84167c180eb6ee0307c0e978e4a63418189632d35f0de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:42:00 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c24647743a1e4b51725ee59401471c8273f714338714485270c3be8b176b53`  
		Last Modified: Tue, 10 Apr 2018 02:47:36 GMT  
		Size: 7.8 MB (7847099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04.0-ce-rc2-git` - linux; ppc64le

```console
$ docker pull docker@sha256:4f4eefc688b6698087e50144ec1a113c1d54624e16b5348b4fd49fb64fd8b10c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45947131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:142e5e15945ce0d198671b708bb15bf5ca3860bd6cae7b0ca7697e217e216437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:18:34 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9254c7f657cf993f7ec781f6317d3c1d05968c8568d83dd5f75a048255f897`  
		Last Modified: Tue, 10 Apr 2018 02:21:28 GMT  
		Size: 8.3 MB (8341016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.04-rc`

```console
$ docker pull docker@sha256:2e310a20f4e476a4b274797d27ac530ff0fbad7ee6282e39f79c02466d57b5eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.04-rc` - linux; amd64

```console
$ docker pull docker@sha256:6f6507b610cfdd6072f67896336fea7cd7f42a9d472628a4d2c1dd8f3f9380e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41561258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b9c02eb39acccba14aea7a9a6a094f4cd239b5823596f0723fb1baf668153e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:4c898940f48f677666555e47b15c33063b89f772b99c04f404d27e1cd62f6d7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39526245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c7ca313441130c5ebd774ac276d16f8ad1a30e97b37eb0c6c9fc67d8ccefc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:036c7251bf6112e365f69f2a8528ce918272bae624ad6008506f3b5548e70473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37956489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be61a0f301fa0d5df54c12a4f9ded6071f6dca9a9e3314d60ca30d396363d023`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc` - linux; ppc64le

```console
$ docker pull docker@sha256:b6f597984bb10d1136bb3c098a6dedc670e6caa1751a01d1aec135c4827fdf57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37606115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4ebfb1a3b45b83b2b69ad4200fe115f06f10878754c30685ea099c82da6efb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.04-rc-dind`

```console
$ docker pull docker@sha256:2a419595037cb75a3761240385dd2c00fa82928164c92696061ad8dd3e5bf2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.04-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:1951ad8c1f05e0a131043eca9e544a827d309d0ec04dea56705a303d87a84f2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46197171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be251e01c75d9e881fb556505102ecfc0e898b8cc035f45dc2dbd93b95c6178`
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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:11:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:11:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:11:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:11:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:11:48 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:11:48 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:11:48 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:11:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:11:49 GMT
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e3b3ed2f28251e847c026c5bc457103b580142951c18ee2f67a9cc1030b439`  
		Last Modified: Tue, 10 Apr 2018 01:22:32 GMT  
		Size: 4.6 MB (4607747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddb5ffd6884e0b33e46969e8a9d608db8e5da721cbf40f1a0d7e9d4d12bc466`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb77d5fe7f9afa6071bdca4ecade040cde2876ead0f786fa7c76715ed0bdcd8`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 26.3 KB (26283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cca0accd43fe104cb62a70d09f5bb22931067e4e1bf24614b2a975de31d5b75`  
		Last Modified: Tue, 10 Apr 2018 01:22:31 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:6becc1c24ffcc28fcc1095e72840665b343aaa94edc13cf8db0cc0a13084be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42248400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6237c9ef2568f1a039501cea782076385c3a88f905fdd52cfd003516501af1`
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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:49:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:49:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:44 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:44 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:44 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:45 GMT
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79fe1f15543bcbffdb437abaeb7e1b74c393f90c0c6e27e35d34cc94425dffd`  
		Last Modified: Tue, 10 Apr 2018 01:50:46 GMT  
		Size: 2.7 MB (2699244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abae9f33adb0761463bc00033f67bc9daf20768b9c08d1adaff34f239c8bfb3`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9567b9397a73474be40bb69a487cb6002b9dd82a88c05f3f88e10ab52222c0fe`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18deb06f95eecc625e2c743c965ae623aa9a9eee842f6be4e5dafb38de518e6`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1d59203990a5f5b18f6106e3d9e51ef3704762f15d7346631480bd192935c51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42267050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0fab031eb69ccec5bbbeb2e8673a68871507566929c535fe6d2d3aac09105f`
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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:41:16 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:41:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:41:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:41:26 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:41:26 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:41:28 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:41:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:41:30 GMT
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21efa15d2c94611a2f61fe7155b9e72468433f5ba4650caad2010c9308d93f2`  
		Last Modified: Tue, 10 Apr 2018 02:45:51 GMT  
		Size: 4.3 MB (4282421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b79b347175d2b20df1bb98047641aa8130658e0f5106f213487759d6bd7ac`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa85538a1c2755c7da61a2db0e07642ba9e64e007c3445582fce08e65c9825f`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 26.3 KB (26257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3a7486b97c5a37441fca9fd5332db68cea4792cf460b6553f5d842352eea71`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:926e1eb4535388a0dcb281404f17f7666f241792b46769a8156ca28ae9b805a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40338605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd3a9370865e6282ff127aa56a8ca85c558c33e3c1c7fdbd7ce146ef8e316e8`
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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:17:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:17:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:17:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:17:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:17:57 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:59 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:01 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:05 GMT
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20730ab566f58e56e50c12b4842ca4741b38439eb196794266e39214331c1a04`  
		Last Modified: Tue, 10 Apr 2018 02:20:41 GMT  
		Size: 2.7 MB (2709574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251a189498ca5059a1f56b6ea6f1d3edc75df48072f5a35a0eddcb904a6e1e6`  
		Last Modified: Tue, 10 Apr 2018 02:20:39 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee2bb3a063e6ebde125b41a2defc91f6c3216727ad7b5b6227428d75d95e44`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee68ff77d8566af74e38f1ef413ea56c0fdc012528e4491509a53862628faef5`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.04-rc-git`

```console
$ docker pull docker@sha256:9843a8e01ec7212426babefe08d602515e8e13370a2a22bbf429cb4575092efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:18.04-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:188763d18c01135a07016777730e5d0b8bdb8dcbf58304ff43c4176517e9ad8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50006273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a1dc254fb084e349d413a71df43fc3ab2f8f5f7353c7f35d80f08cb5c7c66a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:19:37 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7526c5d087330711c14b2bb4538ec1fd6be402d66dcbf707fc5d8616e994a3`  
		Last Modified: Tue, 10 Apr 2018 01:24:52 GMT  
		Size: 8.4 MB (8445015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:30f7ec1c1c973ad9f50011ed181d01ee859c254ba4357442212ec290a4448792
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47668193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca0b9a4c5f656a3ea7c966b85eadf51f30b5b612e1fda43c1359a481ab80613`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e16c1dcb657eea4f57bb6a8749acf3c30d701c2a7088da7b99fd0ed0fc936a`  
		Last Modified: Tue, 10 Apr 2018 01:51:00 GMT  
		Size: 8.1 MB (8141948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52514e46590a0a02927713152ac9e5d75f2d1cb790ae0818292f7e7f85bf4cd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45803588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c9f67c0040e4a2bed84167c180eb6ee0307c0e978e4a63418189632d35f0de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:42:00 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c24647743a1e4b51725ee59401471c8273f714338714485270c3be8b176b53`  
		Last Modified: Tue, 10 Apr 2018 02:47:36 GMT  
		Size: 7.8 MB (7847099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.04-rc-git` - linux; ppc64le

```console
$ docker pull docker@sha256:4f4eefc688b6698087e50144ec1a113c1d54624e16b5348b4fd49fb64fd8b10c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45947131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:142e5e15945ce0d198671b708bb15bf5ca3860bd6cae7b0ca7697e217e216437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:18:34 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9254c7f657cf993f7ec781f6317d3c1d05968c8568d83dd5f75a048255f897`  
		Last Modified: Tue, 10 Apr 2018 02:21:28 GMT  
		Size: 8.3 MB (8341016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:84cdff32b200f7cb25e6f3897968cf5cad1ab74674b0378240fdb9b75a1af2fa
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
$ docker pull docker@sha256:a66a79a03c734a9ec0f3a43f2c7ba5379a0fce6494d308ffa90fc1dd94e50c06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d94acbd847eb490dff15af12eb4bd9a7058400c21a3bb65d8f6a18a79c484d`
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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:02 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:02 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:03 GMT
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba058d347646d16dd51dd8b6c405b4f667c041653ae1fd2560412b3c870617df`  
		Last Modified: Tue, 10 Apr 2018 01:26:18 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:e4d5680fe087d0694b12ff02918c25db128b008e771ba0786ba22017d1156ec3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2558aa17a022556aa5b98a480981b8f30be9de43339e6ba83d96649afe0702`
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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:54:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:54:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:54:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:58 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:58 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:58 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:59 GMT
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e38243a820786da7ba135b13501b11cbe50b55ba5cae5d65c274547e357663`  
		Last Modified: Tue, 27 Mar 2018 18:56:27 GMT  
		Size: 2.7 MB (2699258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19034bc0a5f6a963f82a054c35526c894a624625968b200de3962c3f043284`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5696f0db16aee6f907ced75d3d51b775d70a27fe07775d0097b1e49e84f42557`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 21.0 KB (21010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f0772aea9ca744d2a97e932f247a62ee9dbf1e35a94e8d5cff5d92224d519f`  
		Last Modified: Tue, 10 Apr 2018 01:51:12 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5999a3da47d6ad41d7612b352efdd37107d76431ac0a22143c7a102272e2e811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42198203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e564c84ae54ed6c95159334a42e6ab3c8a0f7a6c632f721b9ce2f633d0fbe8`
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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:01:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 06:01:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 06:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 06:02:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:42:28 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:42:29 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:42:30 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:42:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:42:31 GMT
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5e2ce63ac430487bc35f0c94f1880bbea93b39a8e71587addec771c020c00a`  
		Last Modified: Fri, 23 Mar 2018 06:06:16 GMT  
		Size: 4.3 MB (4282412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3013c73f615e9cec6e8888cb08a23fa2d00f5ad16b462fb493a7754f523d7`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651a0e89581bfbc47ddef6982aa4546c5d6fe799dd553813fa3fb84c182b842`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8833287a33f5c68d16cad7f1379691ac9a9de266447e7e4f51eaf9ea205bf`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:799791f9a01b104412ce35d6def54b7145a84aefa53c82ca037be3ad8ec51156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40281435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40a03ad400ccebf3a5e3f38f6f777c1362ed4ae50eab42bc0f24c8ad4762df`
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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 10:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 10:37:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 10:37:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:18:49 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:18:52 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:54 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:57 GMT
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083fadf1146b7d24759998330299ec4a5bad0cf1403317c9c331b388983ddf36`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 2.7 MB (2709590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824daab6fb018573301ce66f4589a3ed320eaebd4d5cf8b7147a30f6753aa073`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7db968e3e6a0604d885bf21460e8a0020836fe2f25d69abee50cea60ab5a49`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce311abd1568a0111050f9d43932e016c929704247361dbae5111b7353bb8f`  
		Last Modified: Tue, 10 Apr 2018 02:22:07 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; s390x

```console
$ docker pull docker@sha256:9ac90ef3e7c6803cbc11b2664e534c9fecfc73278067537a1768a3aabfda17c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f29c086aa5690c7ed04c3466a9860767ff14be9362e6e491c6af03641131c4`
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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Mar 2018 03:02:00 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:02:01 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Mar 2018 03:02:01 GMT
EXPOSE 2375/tcp
# Fri, 23 Mar 2018 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Mar 2018 03:02:01 GMT
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735c357710e93d3e32b111c5c595589d09f0f2e2797675b974c1ff9ab9e9ba1`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 4.8 MB (4836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6459559bdc1300cb447c78b6c2729d05d68b5bfda41573461f445ef9a5860c`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0444f2634ec17f18630ef1145f48250a6d11e5c1c68108b187b4b7c7a9db0ca8`  
		Last Modified: Fri, 23 Mar 2018 03:03:28 GMT  
		Size: 26.3 KB (26268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4a480f2ea75d7e8d3f61a97830a3c81815872ace9e33fedba1c250d6b59ff`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:e95a4fd195c4b2f24795c336fcfc102802f53f0132d58e7ed0fe233579b7847b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:b9daf3dd4b39b8886e4d0d06f8b7a5a8ba208270942d38c0db8a2267c18feb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47587558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6354c7c1593c5035c8551554b83f63b9842e1f5ad2cc5c992120f79740a44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee99ac170348b4997dfe07b0b528c7ab826b2440cd1fb065ac2c24a8da1280`  
		Last Modified: Tue, 27 Mar 2018 18:56:52 GMT  
		Size: 8.1 MB (8141944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f7f614a35bea69c531134eefb58c6bfdab435f11263638cf1fe4daf01941de0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183461fa1bdbab45b9818f28ea0c6d7ea6ab92e1867a9459c46e1f9a63823270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:02:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73e517de5abedbcb3ece68322bbfde76c62795e245521a39d67fd6812d9cd`  
		Last Modified: Fri, 23 Mar 2018 06:08:58 GMT  
		Size: 7.8 MB (7847106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; ppc64le

```console
$ docker pull docker@sha256:1f7c8f8dc0aed2227603ef1d79c325fb950e605383e4957572e88cf098c37c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45889943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaa0f5d747e6083e3cc5a982023dd0296a9b6e45f1ec763e010985f1ea4d5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:45 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1244b9e3bad1b0b895250dcdcc0e6b7d62462e8fe936cf6221393af78d1afc6`  
		Last Modified: Fri, 23 Mar 2018 10:40:29 GMT  
		Size: 8.3 MB (8341020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; s390x

```console
$ docker pull docker@sha256:447c7fb882120d01fbaf3b50baecd50e13d98e35a26e886d4812602d2051086a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9846971527eb67cac4981826719a5f37d46eae3448626574138d3e8c9089603f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:02:15 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60315dc82477b412d8421382d9407e0cc48f1f60c0dd8dac5735f31595d9d264`  
		Last Modified: Fri, 23 Mar 2018 03:04:08 GMT  
		Size: 8.7 MB (8741456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:84cdff32b200f7cb25e6f3897968cf5cad1ab74674b0378240fdb9b75a1af2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:a66a79a03c734a9ec0f3a43f2c7ba5379a0fce6494d308ffa90fc1dd94e50c06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d94acbd847eb490dff15af12eb4bd9a7058400c21a3bb65d8f6a18a79c484d`
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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:02 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:02 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:03 GMT
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba058d347646d16dd51dd8b6c405b4f667c041653ae1fd2560412b3c870617df`  
		Last Modified: Tue, 10 Apr 2018 01:26:18 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:e4d5680fe087d0694b12ff02918c25db128b008e771ba0786ba22017d1156ec3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2558aa17a022556aa5b98a480981b8f30be9de43339e6ba83d96649afe0702`
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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:54:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:54:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:54:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:58 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:58 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:58 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:59 GMT
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e38243a820786da7ba135b13501b11cbe50b55ba5cae5d65c274547e357663`  
		Last Modified: Tue, 27 Mar 2018 18:56:27 GMT  
		Size: 2.7 MB (2699258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19034bc0a5f6a963f82a054c35526c894a624625968b200de3962c3f043284`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5696f0db16aee6f907ced75d3d51b775d70a27fe07775d0097b1e49e84f42557`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 21.0 KB (21010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f0772aea9ca744d2a97e932f247a62ee9dbf1e35a94e8d5cff5d92224d519f`  
		Last Modified: Tue, 10 Apr 2018 01:51:12 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5999a3da47d6ad41d7612b352efdd37107d76431ac0a22143c7a102272e2e811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42198203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e564c84ae54ed6c95159334a42e6ab3c8a0f7a6c632f721b9ce2f633d0fbe8`
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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:01:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 06:01:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 06:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 06:02:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:42:28 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:42:29 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:42:30 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:42:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:42:31 GMT
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5e2ce63ac430487bc35f0c94f1880bbea93b39a8e71587addec771c020c00a`  
		Last Modified: Fri, 23 Mar 2018 06:06:16 GMT  
		Size: 4.3 MB (4282412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3013c73f615e9cec6e8888cb08a23fa2d00f5ad16b462fb493a7754f523d7`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651a0e89581bfbc47ddef6982aa4546c5d6fe799dd553813fa3fb84c182b842`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8833287a33f5c68d16cad7f1379691ac9a9de266447e7e4f51eaf9ea205bf`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; ppc64le

```console
$ docker pull docker@sha256:799791f9a01b104412ce35d6def54b7145a84aefa53c82ca037be3ad8ec51156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40281435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40a03ad400ccebf3a5e3f38f6f777c1362ed4ae50eab42bc0f24c8ad4762df`
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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 10:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 10:37:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 10:37:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:18:49 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:18:52 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:54 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:57 GMT
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083fadf1146b7d24759998330299ec4a5bad0cf1403317c9c331b388983ddf36`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 2.7 MB (2709590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824daab6fb018573301ce66f4589a3ed320eaebd4d5cf8b7147a30f6753aa073`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7db968e3e6a0604d885bf21460e8a0020836fe2f25d69abee50cea60ab5a49`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce311abd1568a0111050f9d43932e016c929704247361dbae5111b7353bb8f`  
		Last Modified: Tue, 10 Apr 2018 02:22:07 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; s390x

```console
$ docker pull docker@sha256:9ac90ef3e7c6803cbc11b2664e534c9fecfc73278067537a1768a3aabfda17c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f29c086aa5690c7ed04c3466a9860767ff14be9362e6e491c6af03641131c4`
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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Mar 2018 03:02:00 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:02:01 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Mar 2018 03:02:01 GMT
EXPOSE 2375/tcp
# Fri, 23 Mar 2018 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Mar 2018 03:02:01 GMT
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735c357710e93d3e32b111c5c595589d09f0f2e2797675b974c1ff9ab9e9ba1`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 4.8 MB (4836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6459559bdc1300cb447c78b6c2729d05d68b5bfda41573461f445ef9a5860c`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0444f2634ec17f18630ef1145f48250a6d11e5c1c68108b187b4b7c7a9db0ca8`  
		Last Modified: Fri, 23 Mar 2018 03:03:28 GMT  
		Size: 26.3 KB (26268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4a480f2ea75d7e8d3f61a97830a3c81815872ace9e33fedba1c250d6b59ff`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:2b6a42d47ba2b0448c2ba3adc9aceabf436eb42ccd51a106176e60985e3dcb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:81fb0afdafd855fa7b0e993aee701e8ff7e02acfb5d43bf1e157b7b886b4d502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41491507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bbd4500c6d7c8dc438c69a9cf381e4461c47a5d0977e385e477a9976b1a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm variant v6

```console
$ docker pull docker@sha256:a7cf19bffda88e00d8fea6109ce056200385af533194e677f203dd457dc40d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39445614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1de32cabb22ff94eba365cb1e85f929862f541d543324f0dbbba3758f43607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:36b002927291f9199d0a2fdcc78fe7c932e344435070d50ede39b89f28cee9ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37887655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c56e5270329a359690aafbaa9d4d44beac37244f74ee5cbbc0275680d54111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; ppc64le

```console
$ docker pull docker@sha256:75d633866a2051afe021fe25cb3c0642a978fd4cb2d54f3f69050290d8d8c0ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37548923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75777dc04b383fc32402e559b53fa3f9f1f441d98bb78a6fa81f5a36600745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; s390x

```console
$ docker pull docker@sha256:9d1289780895e4d087cc37d6184276ccfc4f2b0e0bbf3abea2d0183db05b95c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40570936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c345078218a76176e7f7579ef4c78245c6f47aebf8228c720548c2844c4cf36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:84cdff32b200f7cb25e6f3897968cf5cad1ab74674b0378240fdb9b75a1af2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:a66a79a03c734a9ec0f3a43f2c7ba5379a0fce6494d308ffa90fc1dd94e50c06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d94acbd847eb490dff15af12eb4bd9a7058400c21a3bb65d8f6a18a79c484d`
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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:02 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:02 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:03 GMT
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba058d347646d16dd51dd8b6c405b4f667c041653ae1fd2560412b3c870617df`  
		Last Modified: Tue, 10 Apr 2018 01:26:18 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:e4d5680fe087d0694b12ff02918c25db128b008e771ba0786ba22017d1156ec3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2558aa17a022556aa5b98a480981b8f30be9de43339e6ba83d96649afe0702`
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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:54:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:54:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:54:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:58 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:58 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:58 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:59 GMT
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e38243a820786da7ba135b13501b11cbe50b55ba5cae5d65c274547e357663`  
		Last Modified: Tue, 27 Mar 2018 18:56:27 GMT  
		Size: 2.7 MB (2699258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19034bc0a5f6a963f82a054c35526c894a624625968b200de3962c3f043284`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5696f0db16aee6f907ced75d3d51b775d70a27fe07775d0097b1e49e84f42557`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 21.0 KB (21010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f0772aea9ca744d2a97e932f247a62ee9dbf1e35a94e8d5cff5d92224d519f`  
		Last Modified: Tue, 10 Apr 2018 01:51:12 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5999a3da47d6ad41d7612b352efdd37107d76431ac0a22143c7a102272e2e811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42198203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e564c84ae54ed6c95159334a42e6ab3c8a0f7a6c632f721b9ce2f633d0fbe8`
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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:01:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 06:01:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 06:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 06:02:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:42:28 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:42:29 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:42:30 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:42:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:42:31 GMT
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5e2ce63ac430487bc35f0c94f1880bbea93b39a8e71587addec771c020c00a`  
		Last Modified: Fri, 23 Mar 2018 06:06:16 GMT  
		Size: 4.3 MB (4282412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3013c73f615e9cec6e8888cb08a23fa2d00f5ad16b462fb493a7754f523d7`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651a0e89581bfbc47ddef6982aa4546c5d6fe799dd553813fa3fb84c182b842`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8833287a33f5c68d16cad7f1379691ac9a9de266447e7e4f51eaf9ea205bf`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:799791f9a01b104412ce35d6def54b7145a84aefa53c82ca037be3ad8ec51156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40281435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40a03ad400ccebf3a5e3f38f6f777c1362ed4ae50eab42bc0f24c8ad4762df`
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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 10:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 10:37:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 10:37:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:18:49 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:18:52 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:54 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:57 GMT
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083fadf1146b7d24759998330299ec4a5bad0cf1403317c9c331b388983ddf36`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 2.7 MB (2709590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824daab6fb018573301ce66f4589a3ed320eaebd4d5cf8b7147a30f6753aa073`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7db968e3e6a0604d885bf21460e8a0020836fe2f25d69abee50cea60ab5a49`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce311abd1568a0111050f9d43932e016c929704247361dbae5111b7353bb8f`  
		Last Modified: Tue, 10 Apr 2018 02:22:07 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:9ac90ef3e7c6803cbc11b2664e534c9fecfc73278067537a1768a3aabfda17c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f29c086aa5690c7ed04c3466a9860767ff14be9362e6e491c6af03641131c4`
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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Mar 2018 03:02:00 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:02:01 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Mar 2018 03:02:01 GMT
EXPOSE 2375/tcp
# Fri, 23 Mar 2018 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Mar 2018 03:02:01 GMT
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735c357710e93d3e32b111c5c595589d09f0f2e2797675b974c1ff9ab9e9ba1`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 4.8 MB (4836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6459559bdc1300cb447c78b6c2729d05d68b5bfda41573461f445ef9a5860c`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0444f2634ec17f18630ef1145f48250a6d11e5c1c68108b187b4b7c7a9db0ca8`  
		Last Modified: Fri, 23 Mar 2018 03:03:28 GMT  
		Size: 26.3 KB (26268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4a480f2ea75d7e8d3f61a97830a3c81815872ace9e33fedba1c250d6b59ff`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:e95a4fd195c4b2f24795c336fcfc102802f53f0132d58e7ed0fe233579b7847b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:b9daf3dd4b39b8886e4d0d06f8b7a5a8ba208270942d38c0db8a2267c18feb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47587558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6354c7c1593c5035c8551554b83f63b9842e1f5ad2cc5c992120f79740a44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee99ac170348b4997dfe07b0b528c7ab826b2440cd1fb065ac2c24a8da1280`  
		Last Modified: Tue, 27 Mar 2018 18:56:52 GMT  
		Size: 8.1 MB (8141944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f7f614a35bea69c531134eefb58c6bfdab435f11263638cf1fe4daf01941de0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183461fa1bdbab45b9818f28ea0c6d7ea6ab92e1867a9459c46e1f9a63823270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:02:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73e517de5abedbcb3ece68322bbfde76c62795e245521a39d67fd6812d9cd`  
		Last Modified: Fri, 23 Mar 2018 06:08:58 GMT  
		Size: 7.8 MB (7847106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; ppc64le

```console
$ docker pull docker@sha256:1f7c8f8dc0aed2227603ef1d79c325fb950e605383e4957572e88cf098c37c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45889943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaa0f5d747e6083e3cc5a982023dd0296a9b6e45f1ec763e010985f1ea4d5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:45 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1244b9e3bad1b0b895250dcdcc0e6b7d62462e8fe936cf6221393af78d1afc6`  
		Last Modified: Fri, 23 Mar 2018 10:40:29 GMT  
		Size: 8.3 MB (8341020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; s390x

```console
$ docker pull docker@sha256:447c7fb882120d01fbaf3b50baecd50e13d98e35a26e886d4812602d2051086a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9846971527eb67cac4981826719a5f37d46eae3448626574138d3e8c9089603f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:02:15 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60315dc82477b412d8421382d9407e0cc48f1f60c0dd8dac5735f31595d9d264`  
		Last Modified: Fri, 23 Mar 2018 03:04:08 GMT  
		Size: 8.7 MB (8741456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:e95a4fd195c4b2f24795c336fcfc102802f53f0132d58e7ed0fe233579b7847b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:b9daf3dd4b39b8886e4d0d06f8b7a5a8ba208270942d38c0db8a2267c18feb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47587558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6354c7c1593c5035c8551554b83f63b9842e1f5ad2cc5c992120f79740a44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee99ac170348b4997dfe07b0b528c7ab826b2440cd1fb065ac2c24a8da1280`  
		Last Modified: Tue, 27 Mar 2018 18:56:52 GMT  
		Size: 8.1 MB (8141944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f7f614a35bea69c531134eefb58c6bfdab435f11263638cf1fe4daf01941de0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183461fa1bdbab45b9818f28ea0c6d7ea6ab92e1867a9459c46e1f9a63823270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:02:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73e517de5abedbcb3ece68322bbfde76c62795e245521a39d67fd6812d9cd`  
		Last Modified: Fri, 23 Mar 2018 06:08:58 GMT  
		Size: 7.8 MB (7847106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; ppc64le

```console
$ docker pull docker@sha256:1f7c8f8dc0aed2227603ef1d79c325fb950e605383e4957572e88cf098c37c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45889943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaa0f5d747e6083e3cc5a982023dd0296a9b6e45f1ec763e010985f1ea4d5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:45 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1244b9e3bad1b0b895250dcdcc0e6b7d62462e8fe936cf6221393af78d1afc6`  
		Last Modified: Fri, 23 Mar 2018 10:40:29 GMT  
		Size: 8.3 MB (8341020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; s390x

```console
$ docker pull docker@sha256:447c7fb882120d01fbaf3b50baecd50e13d98e35a26e886d4812602d2051086a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9846971527eb67cac4981826719a5f37d46eae3448626574138d3e8c9089603f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:02:15 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60315dc82477b412d8421382d9407e0cc48f1f60c0dd8dac5735f31595d9d264`  
		Last Modified: Fri, 23 Mar 2018 03:04:08 GMT  
		Size: 8.7 MB (8741456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:2b6a42d47ba2b0448c2ba3adc9aceabf436eb42ccd51a106176e60985e3dcb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:81fb0afdafd855fa7b0e993aee701e8ff7e02acfb5d43bf1e157b7b886b4d502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41491507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bbd4500c6d7c8dc438c69a9cf381e4461c47a5d0977e385e477a9976b1a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:a7cf19bffda88e00d8fea6109ce056200385af533194e677f203dd457dc40d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39445614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1de32cabb22ff94eba365cb1e85f929862f541d543324f0dbbba3758f43607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:36b002927291f9199d0a2fdcc78fe7c932e344435070d50ede39b89f28cee9ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37887655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c56e5270329a359690aafbaa9d4d44beac37244f74ee5cbbc0275680d54111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; ppc64le

```console
$ docker pull docker@sha256:75d633866a2051afe021fe25cb3c0642a978fd4cb2d54f3f69050290d8d8c0ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37548923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75777dc04b383fc32402e559b53fa3f9f1f441d98bb78a6fa81f5a36600745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; s390x

```console
$ docker pull docker@sha256:9d1289780895e4d087cc37d6184276ccfc4f2b0e0bbf3abea2d0183db05b95c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40570936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c345078218a76176e7f7579ef4c78245c6f47aebf8228c720548c2844c4cf36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:2e310a20f4e476a4b274797d27ac530ff0fbad7ee6282e39f79c02466d57b5eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:6f6507b610cfdd6072f67896336fea7cd7f42a9d472628a4d2c1dd8f3f9380e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41561258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b9c02eb39acccba14aea7a9a6a094f4cd239b5823596f0723fb1baf668153e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:4c898940f48f677666555e47b15c33063b89f772b99c04f404d27e1cd62f6d7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39526245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c7ca313441130c5ebd774ac276d16f8ad1a30e97b37eb0c6c9fc67d8ccefc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:036c7251bf6112e365f69f2a8528ce918272bae624ad6008506f3b5548e70473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37956489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be61a0f301fa0d5df54c12a4f9ded6071f6dca9a9e3314d60ca30d396363d023`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; ppc64le

```console
$ docker pull docker@sha256:b6f597984bb10d1136bb3c098a6dedc670e6caa1751a01d1aec135c4827fdf57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37606115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4ebfb1a3b45b83b2b69ad4200fe115f06f10878754c30685ea099c82da6efb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:2a419595037cb75a3761240385dd2c00fa82928164c92696061ad8dd3e5bf2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:1951ad8c1f05e0a131043eca9e544a827d309d0ec04dea56705a303d87a84f2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46197171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be251e01c75d9e881fb556505102ecfc0e898b8cc035f45dc2dbd93b95c6178`
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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:11:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:11:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:11:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:11:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:11:48 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:11:48 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:11:48 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:11:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:11:49 GMT
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e3b3ed2f28251e847c026c5bc457103b580142951c18ee2f67a9cc1030b439`  
		Last Modified: Tue, 10 Apr 2018 01:22:32 GMT  
		Size: 4.6 MB (4607747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddb5ffd6884e0b33e46969e8a9d608db8e5da721cbf40f1a0d7e9d4d12bc466`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb77d5fe7f9afa6071bdca4ecade040cde2876ead0f786fa7c76715ed0bdcd8`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 26.3 KB (26283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cca0accd43fe104cb62a70d09f5bb22931067e4e1bf24614b2a975de31d5b75`  
		Last Modified: Tue, 10 Apr 2018 01:22:31 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:6becc1c24ffcc28fcc1095e72840665b343aaa94edc13cf8db0cc0a13084be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42248400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6237c9ef2568f1a039501cea782076385c3a88f905fdd52cfd003516501af1`
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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:49:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:49:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:44 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:44 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:44 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:45 GMT
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79fe1f15543bcbffdb437abaeb7e1b74c393f90c0c6e27e35d34cc94425dffd`  
		Last Modified: Tue, 10 Apr 2018 01:50:46 GMT  
		Size: 2.7 MB (2699244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abae9f33adb0761463bc00033f67bc9daf20768b9c08d1adaff34f239c8bfb3`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9567b9397a73474be40bb69a487cb6002b9dd82a88c05f3f88e10ab52222c0fe`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18deb06f95eecc625e2c743c965ae623aa9a9eee842f6be4e5dafb38de518e6`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1d59203990a5f5b18f6106e3d9e51ef3704762f15d7346631480bd192935c51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42267050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0fab031eb69ccec5bbbeb2e8673a68871507566929c535fe6d2d3aac09105f`
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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:41:16 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:41:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:41:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:41:26 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:41:26 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:41:28 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:41:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:41:30 GMT
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21efa15d2c94611a2f61fe7155b9e72468433f5ba4650caad2010c9308d93f2`  
		Last Modified: Tue, 10 Apr 2018 02:45:51 GMT  
		Size: 4.3 MB (4282421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b79b347175d2b20df1bb98047641aa8130658e0f5106f213487759d6bd7ac`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa85538a1c2755c7da61a2db0e07642ba9e64e007c3445582fce08e65c9825f`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 26.3 KB (26257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3a7486b97c5a37441fca9fd5332db68cea4792cf460b6553f5d842352eea71`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:926e1eb4535388a0dcb281404f17f7666f241792b46769a8156ca28ae9b805a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40338605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd3a9370865e6282ff127aa56a8ca85c558c33e3c1c7fdbd7ce146ef8e316e8`
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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:17:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:17:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:17:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:17:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:17:57 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:59 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:01 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:05 GMT
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20730ab566f58e56e50c12b4842ca4741b38439eb196794266e39214331c1a04`  
		Last Modified: Tue, 10 Apr 2018 02:20:41 GMT  
		Size: 2.7 MB (2709574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251a189498ca5059a1f56b6ea6f1d3edc75df48072f5a35a0eddcb904a6e1e6`  
		Last Modified: Tue, 10 Apr 2018 02:20:39 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee2bb3a063e6ebde125b41a2defc91f6c3216727ad7b5b6227428d75d95e44`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee68ff77d8566af74e38f1ef413ea56c0fdc012528e4491509a53862628faef5`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:9843a8e01ec7212426babefe08d602515e8e13370a2a22bbf429cb4575092efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:188763d18c01135a07016777730e5d0b8bdb8dcbf58304ff43c4176517e9ad8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50006273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a1dc254fb084e349d413a71df43fc3ab2f8f5f7353c7f35d80f08cb5c7c66a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:19:37 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7526c5d087330711c14b2bb4538ec1fd6be402d66dcbf707fc5d8616e994a3`  
		Last Modified: Tue, 10 Apr 2018 01:24:52 GMT  
		Size: 8.4 MB (8445015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:30f7ec1c1c973ad9f50011ed181d01ee859c254ba4357442212ec290a4448792
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47668193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca0b9a4c5f656a3ea7c966b85eadf51f30b5b612e1fda43c1359a481ab80613`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e16c1dcb657eea4f57bb6a8749acf3c30d701c2a7088da7b99fd0ed0fc936a`  
		Last Modified: Tue, 10 Apr 2018 01:51:00 GMT  
		Size: 8.1 MB (8141948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52514e46590a0a02927713152ac9e5d75f2d1cb790ae0818292f7e7f85bf4cd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45803588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c9f67c0040e4a2bed84167c180eb6ee0307c0e978e4a63418189632d35f0de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:42:00 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c24647743a1e4b51725ee59401471c8273f714338714485270c3be8b176b53`  
		Last Modified: Tue, 10 Apr 2018 02:47:36 GMT  
		Size: 7.8 MB (7847099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; ppc64le

```console
$ docker pull docker@sha256:4f4eefc688b6698087e50144ec1a113c1d54624e16b5348b4fd49fb64fd8b10c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45947131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:142e5e15945ce0d198671b708bb15bf5ca3860bd6cae7b0ca7697e217e216437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:18:34 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9254c7f657cf993f7ec781f6317d3c1d05968c8568d83dd5f75a048255f897`  
		Last Modified: Tue, 10 Apr 2018 02:21:28 GMT  
		Size: 8.3 MB (8341016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:2b6a42d47ba2b0448c2ba3adc9aceabf436eb42ccd51a106176e60985e3dcb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:81fb0afdafd855fa7b0e993aee701e8ff7e02acfb5d43bf1e157b7b886b4d502
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41491507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bbd4500c6d7c8dc438c69a9cf381e4461c47a5d0977e385e477a9976b1a2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:a7cf19bffda88e00d8fea6109ce056200385af533194e677f203dd457dc40d6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39445614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1de32cabb22ff94eba365cb1e85f929862f541d543324f0dbbba3758f43607`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:36b002927291f9199d0a2fdcc78fe7c932e344435070d50ede39b89f28cee9ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37887655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c56e5270329a359690aafbaa9d4d44beac37244f74ee5cbbc0275680d54111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; ppc64le

```console
$ docker pull docker@sha256:75d633866a2051afe021fe25cb3c0642a978fd4cb2d54f3f69050290d8d8c0ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37548923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75777dc04b383fc32402e559b53fa3f9f1f441d98bb78a6fa81f5a36600745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; s390x

```console
$ docker pull docker@sha256:9d1289780895e4d087cc37d6184276ccfc4f2b0e0bbf3abea2d0183db05b95c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40570936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c345078218a76176e7f7579ef4c78245c6f47aebf8228c720548c2844c4cf36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:84cdff32b200f7cb25e6f3897968cf5cad1ab74674b0378240fdb9b75a1af2fa
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
$ docker pull docker@sha256:a66a79a03c734a9ec0f3a43f2c7ba5379a0fce6494d308ffa90fc1dd94e50c06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d94acbd847eb490dff15af12eb4bd9a7058400c21a3bb65d8f6a18a79c484d`
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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:20:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:20:02 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:20:02 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:20:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:20:03 GMT
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba058d347646d16dd51dd8b6c405b4f667c041653ae1fd2560412b3c870617df`  
		Last Modified: Tue, 10 Apr 2018 01:26:18 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:e4d5680fe087d0694b12ff02918c25db128b008e771ba0786ba22017d1156ec3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2558aa17a022556aa5b98a480981b8f30be9de43339e6ba83d96649afe0702`
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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 27 Mar 2018 18:54:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Mar 2018 18:54:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Mar 2018 18:54:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:58 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:58 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:58 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:59 GMT
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e38243a820786da7ba135b13501b11cbe50b55ba5cae5d65c274547e357663`  
		Last Modified: Tue, 27 Mar 2018 18:56:27 GMT  
		Size: 2.7 MB (2699258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19034bc0a5f6a963f82a054c35526c894a624625968b200de3962c3f043284`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5696f0db16aee6f907ced75d3d51b775d70a27fe07775d0097b1e49e84f42557`  
		Last Modified: Tue, 27 Mar 2018 18:56:25 GMT  
		Size: 21.0 KB (21010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f0772aea9ca744d2a97e932f247a62ee9dbf1e35a94e8d5cff5d92224d519f`  
		Last Modified: Tue, 10 Apr 2018 01:51:12 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5999a3da47d6ad41d7612b352efdd37107d76431ac0a22143c7a102272e2e811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42198203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e564c84ae54ed6c95159334a42e6ab3c8a0f7a6c632f721b9ce2f633d0fbe8`
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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:01:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 06:01:56 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 06:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 06:02:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:42:28 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:42:29 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:42:30 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:42:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:42:31 GMT
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5e2ce63ac430487bc35f0c94f1880bbea93b39a8e71587addec771c020c00a`  
		Last Modified: Fri, 23 Mar 2018 06:06:16 GMT  
		Size: 4.3 MB (4282412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e3013c73f615e9cec6e8888cb08a23fa2d00f5ad16b462fb493a7754f523d7`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651a0e89581bfbc47ddef6982aa4546c5d6fe799dd553813fa3fb84c182b842`  
		Last Modified: Fri, 23 Mar 2018 06:06:15 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8833287a33f5c68d16cad7f1379691ac9a9de266447e7e4f51eaf9ea205bf`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:799791f9a01b104412ce35d6def54b7145a84aefa53c82ca037be3ad8ec51156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40281435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c40a03ad400ccebf3a5e3f38f6f777c1362ed4ae50eab42bc0f24c8ad4762df`
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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 10:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 10:37:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 10:37:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:18:49 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:18:52 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:54 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:57 GMT
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083fadf1146b7d24759998330299ec4a5bad0cf1403317c9c331b388983ddf36`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 2.7 MB (2709590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824daab6fb018573301ce66f4589a3ed320eaebd4d5cf8b7147a30f6753aa073`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7db968e3e6a0604d885bf21460e8a0020836fe2f25d69abee50cea60ab5a49`  
		Last Modified: Fri, 23 Mar 2018 10:39:23 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce311abd1568a0111050f9d43932e016c929704247361dbae5111b7353bb8f`  
		Last Modified: Tue, 10 Apr 2018 02:22:07 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; s390x

```console
$ docker pull docker@sha256:9ac90ef3e7c6803cbc11b2664e534c9fecfc73278067537a1768a3aabfda17c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f29c086aa5690c7ed04c3466a9860767ff14be9362e6e491c6af03641131c4`
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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Mar 2018 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Mar 2018 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Mar 2018 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Mar 2018 03:02:00 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:02:01 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Mar 2018 03:02:01 GMT
EXPOSE 2375/tcp
# Fri, 23 Mar 2018 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Mar 2018 03:02:01 GMT
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1735c357710e93d3e32b111c5c595589d09f0f2e2797675b974c1ff9ab9e9ba1`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 4.8 MB (4836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6459559bdc1300cb447c78b6c2729d05d68b5bfda41573461f445ef9a5860c`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0444f2634ec17f18630ef1145f48250a6d11e5c1c68108b187b4b7c7a9db0ca8`  
		Last Modified: Fri, 23 Mar 2018 03:03:28 GMT  
		Size: 26.3 KB (26268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a4a480f2ea75d7e8d3f61a97830a3c81815872ace9e33fedba1c250d6b59ff`  
		Last Modified: Fri, 23 Mar 2018 03:03:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:e95a4fd195c4b2f24795c336fcfc102802f53f0132d58e7ed0fe233579b7847b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:b9daf3dd4b39b8886e4d0d06f8b7a5a8ba208270942d38c0db8a2267c18feb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47587558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6354c7c1593c5035c8551554b83f63b9842e1f5ad2cc5c992120f79740a44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 27 Mar 2018 18:54:19 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Tue, 27 Mar 2018 18:54:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Mar 2018 18:54:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 27 Mar 2018 18:54:28 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Mar 2018 18:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Mar 2018 18:54:28 GMT
CMD ["sh"]
# Tue, 27 Mar 2018 18:54:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:75631e81c1804bc39ffa6a87e250acf9c63273a2278b9414094bf809b4d14a04`  
		Last Modified: Tue, 27 Mar 2018 18:56:03 GMT  
		Size: 37.1 MB (37096914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d240ce384bd73ef2e9f1a229f780b35fb32b25aa696da7084eca02a8514060e`  
		Last Modified: Tue, 27 Mar 2018 18:55:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d3c42d572c7dbbb8404a65c586191137bd77ff563fe7633ef0069c08970f8f`  
		Last Modified: Tue, 27 Mar 2018 18:55:40 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee99ac170348b4997dfe07b0b528c7ab826b2440cd1fb065ac2c24a8da1280`  
		Last Modified: Tue, 27 Mar 2018 18:56:52 GMT  
		Size: 8.1 MB (8141944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f7f614a35bea69c531134eefb58c6bfdab435f11263638cf1fe4daf01941de0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183461fa1bdbab45b9818f28ea0c6d7ea6ab92e1867a9459c46e1f9a63823270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 06:01:04 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 06:01:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 06:01:15 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 06:01:16 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 06:01:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 06:01:17 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 06:02:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:6adffa4275c4c4d7abb30f4fa11d6990c27c5247474f5229297392573411a05c`  
		Last Modified: Fri, 23 Mar 2018 06:03:35 GMT  
		Size: 35.6 MB (35588966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c2aadea9c85f8c30f69b9676ae5a55f64c6531bd78704985d318c1bb5b82`  
		Last Modified: Fri, 23 Mar 2018 06:03:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814645591a56e14e6e6a5cb33e506c871e65a39b65a846b67ef56ebbe7977f03`  
		Last Modified: Fri, 23 Mar 2018 06:03:22 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73e517de5abedbcb3ece68322bbfde76c62795e245521a39d67fd6812d9cd`  
		Last Modified: Fri, 23 Mar 2018 06:08:58 GMT  
		Size: 7.8 MB (7847106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; ppc64le

```console
$ docker pull docker@sha256:1f7c8f8dc0aed2227603ef1d79c325fb950e605383e4957572e88cf098c37c2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45889943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acaa0f5d747e6083e3cc5a982023dd0296a9b6e45f1ec763e010985f1ea4d5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 10:36:24 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 10:36:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 10:36:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 10:36:37 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 10:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 10:36:42 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 10:37:45 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:5d6e73b08e771f0a3de38898a73b47988c246e3fe5e29dcc4a2daedcfd940953`  
		Last Modified: Fri, 23 Mar 2018 10:38:21 GMT  
		Size: 35.2 MB (35155239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2efd65c51c769d546c484e84d43bf17076477d3ffecc25fae64a56ec3265365`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a138e090f2132ef80ca34b46bf356a960cb37d9e0d35ed22f36f0472a89b3e4`  
		Last Modified: Fri, 23 Mar 2018 10:38:11 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1244b9e3bad1b0b895250dcdcc0e6b7d62462e8fe936cf6221393af78d1afc6`  
		Last Modified: Fri, 23 Mar 2018 10:40:29 GMT  
		Size: 8.3 MB (8341020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; s390x

```console
$ docker pull docker@sha256:447c7fb882120d01fbaf3b50baecd50e13d98e35a26e886d4812602d2051086a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9846971527eb67cac4981826719a5f37d46eae3448626574138d3e8c9089603f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Fri, 23 Mar 2018 03:01:28 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Fri, 23 Mar 2018 03:01:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Mar 2018 03:01:39 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Mar 2018 03:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Mar 2018 03:01:40 GMT
CMD ["sh"]
# Fri, 23 Mar 2018 03:02:15 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:f575aea7a4da7ff6fc2926198c70f1fa7a9511db93f15fb384332744910eb43c`  
		Last Modified: Fri, 23 Mar 2018 03:02:52 GMT  
		Size: 38.1 MB (38074938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dfee208b5785ac3ad1405d5d1bff0b4393887bf5b0c09517e9443969eec6e8`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed5d5712433bc661e831334c256486d3e20c53d9211aa5b14590e5bbf04a502`  
		Last Modified: Fri, 23 Mar 2018 03:02:44 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60315dc82477b412d8421382d9407e0cc48f1f60c0dd8dac5735f31595d9d264`  
		Last Modified: Fri, 23 Mar 2018 03:04:08 GMT  
		Size: 8.7 MB (8741456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:2e310a20f4e476a4b274797d27ac530ff0fbad7ee6282e39f79c02466d57b5eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:6f6507b610cfdd6072f67896336fea7cd7f42a9d472628a4d2c1dd8f3f9380e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41561258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b9c02eb39acccba14aea7a9a6a094f4cd239b5823596f0723fb1baf668153e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:4c898940f48f677666555e47b15c33063b89f772b99c04f404d27e1cd62f6d7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39526245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c7ca313441130c5ebd774ac276d16f8ad1a30e97b37eb0c6c9fc67d8ccefc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:036c7251bf6112e365f69f2a8528ce918272bae624ad6008506f3b5548e70473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37956489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be61a0f301fa0d5df54c12a4f9ded6071f6dca9a9e3314d60ca30d396363d023`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; ppc64le

```console
$ docker pull docker@sha256:b6f597984bb10d1136bb3c098a6dedc670e6caa1751a01d1aec135c4827fdf57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37606115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4ebfb1a3b45b83b2b69ad4200fe115f06f10878754c30685ea099c82da6efb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:2a419595037cb75a3761240385dd2c00fa82928164c92696061ad8dd3e5bf2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:1951ad8c1f05e0a131043eca9e544a827d309d0ec04dea56705a303d87a84f2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46197171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be251e01c75d9e881fb556505102ecfc0e898b8cc035f45dc2dbd93b95c6178`
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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:11:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:11:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:11:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:11:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:11:48 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:11:48 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:11:48 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:11:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:11:49 GMT
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e3b3ed2f28251e847c026c5bc457103b580142951c18ee2f67a9cc1030b439`  
		Last Modified: Tue, 10 Apr 2018 01:22:32 GMT  
		Size: 4.6 MB (4607747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddb5ffd6884e0b33e46969e8a9d608db8e5da721cbf40f1a0d7e9d4d12bc466`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb77d5fe7f9afa6071bdca4ecade040cde2876ead0f786fa7c76715ed0bdcd8`  
		Last Modified: Tue, 10 Apr 2018 01:22:30 GMT  
		Size: 26.3 KB (26283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cca0accd43fe104cb62a70d09f5bb22931067e4e1bf24614b2a975de31d5b75`  
		Last Modified: Tue, 10 Apr 2018 01:22:31 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:6becc1c24ffcc28fcc1095e72840665b343aaa94edc13cf8db0cc0a13084be44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42248400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6237c9ef2568f1a039501cea782076385c3a88f905fdd52cfd003516501af1`
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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 01:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 01:49:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 01:49:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 01:49:44 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:44 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 01:49:44 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 01:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:45 GMT
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79fe1f15543bcbffdb437abaeb7e1b74c393f90c0c6e27e35d34cc94425dffd`  
		Last Modified: Tue, 10 Apr 2018 01:50:46 GMT  
		Size: 2.7 MB (2699244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abae9f33adb0761463bc00033f67bc9daf20768b9c08d1adaff34f239c8bfb3`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9567b9397a73474be40bb69a487cb6002b9dd82a88c05f3f88e10ab52222c0fe`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18deb06f95eecc625e2c743c965ae623aa9a9eee842f6be4e5dafb38de518e6`  
		Last Modified: Tue, 10 Apr 2018 01:50:45 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1d59203990a5f5b18f6106e3d9e51ef3704762f15d7346631480bd192935c51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42267050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0fab031eb69ccec5bbbeb2e8673a68871507566929c535fe6d2d3aac09105f`
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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:41:16 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:41:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:41:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:41:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:41:26 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:41:26 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:41:28 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:41:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:41:30 GMT
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21efa15d2c94611a2f61fe7155b9e72468433f5ba4650caad2010c9308d93f2`  
		Last Modified: Tue, 10 Apr 2018 02:45:51 GMT  
		Size: 4.3 MB (4282421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b79b347175d2b20df1bb98047641aa8130658e0f5106f213487759d6bd7ac`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa85538a1c2755c7da61a2db0e07642ba9e64e007c3445582fce08e65c9825f`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 26.3 KB (26257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3a7486b97c5a37441fca9fd5332db68cea4792cf460b6553f5d842352eea71`  
		Last Modified: Tue, 10 Apr 2018 02:45:49 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:926e1eb4535388a0dcb281404f17f7666f241792b46769a8156ca28ae9b805a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40338605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd3a9370865e6282ff127aa56a8ca85c558c33e3c1c7fdbd7ce146ef8e316e8`
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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:17:43 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Apr 2018 02:17:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Apr 2018 02:17:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 10 Apr 2018 02:17:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Apr 2018 02:17:57 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:59 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Apr 2018 02:18:01 GMT
EXPOSE 2375/tcp
# Tue, 10 Apr 2018 02:18:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Apr 2018 02:18:05 GMT
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20730ab566f58e56e50c12b4842ca4741b38439eb196794266e39214331c1a04`  
		Last Modified: Tue, 10 Apr 2018 02:20:41 GMT  
		Size: 2.7 MB (2709574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251a189498ca5059a1f56b6ea6f1d3edc75df48072f5a35a0eddcb904a6e1e6`  
		Last Modified: Tue, 10 Apr 2018 02:20:39 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee2bb3a063e6ebde125b41a2defc91f6c3216727ad7b5b6227428d75d95e44`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 21.0 KB (21003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee68ff77d8566af74e38f1ef413ea56c0fdc012528e4491509a53862628faef5`  
		Last Modified: Tue, 10 Apr 2018 02:20:40 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:9843a8e01ec7212426babefe08d602515e8e13370a2a22bbf429cb4575092efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:188763d18c01135a07016777730e5d0b8bdb8dcbf58304ff43c4176517e9ad8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50006273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a1dc254fb084e349d413a71df43fc3ab2f8f5f7353c7f35d80f08cb5c7c66a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:02:38 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:02:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:02:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:02:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:02:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:02:46 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:19:37 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:e09827cf603e815281a23c921a1f946aff18ed626bfa389ffce81fcecc696d04`  
		Last Modified: Tue, 10 Apr 2018 01:21:06 GMT  
		Size: 39.2 MB (39186267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8731aac452b18c05bc2b091e33d73fe1202be0b6ba5fd79e9d3998c52154be33`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d908213a405ec23523021b602f4bd5a82e5bb8b769efde587ba02afcac069fc`  
		Last Modified: Tue, 10 Apr 2018 01:20:58 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7526c5d087330711c14b2bb4538ec1fd6be402d66dcbf707fc5d8616e994a3`  
		Last Modified: Tue, 10 Apr 2018 01:24:52 GMT  
		Size: 8.4 MB (8445015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:30f7ec1c1c973ad9f50011ed181d01ee859c254ba4357442212ec290a4448792
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47668193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca0b9a4c5f656a3ea7c966b85eadf51f30b5b612e1fda43c1359a481ab80613`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 01:49:22 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 01:49:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 01:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 01:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 01:49:32 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 01:49:52 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7efd51d03d8886764cdc44b03c8ed0886fc84b67a5270ec17bb0d91f9f5d6350`  
		Last Modified: Tue, 10 Apr 2018 01:50:36 GMT  
		Size: 37.2 MB (37177543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71a10255d7a99cd17b63f2f7869db5c2043761332232a31dfa6e393f0477ab`  
		Last Modified: Tue, 10 Apr 2018 01:50:25 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d305cd588dccf4398163e4a469120480e053041d0727e52801d55c6f047e92`  
		Last Modified: Tue, 10 Apr 2018 01:50:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e16c1dcb657eea4f57bb6a8749acf3c30d701c2a7088da7b99fd0ed0fc936a`  
		Last Modified: Tue, 10 Apr 2018 01:51:00 GMT  
		Size: 8.1 MB (8141948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52514e46590a0a02927713152ac9e5d75f2d1cb790ae0818292f7e7f85bf4cd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45803588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c9f67c0040e4a2bed84167c180eb6ee0307c0e978e4a63418189632d35f0de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:40:08 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:40:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:40:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:40:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:40:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:40:28 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:42:00 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:487dba5541d74c1f3ec1b6c82aa08e4bd73cf326544151ce30669123fe16fe34`  
		Last Modified: Tue, 10 Apr 2018 02:44:09 GMT  
		Size: 35.7 MB (35657796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b8c11033fe9682a8dd7b3c8f1e86d03ea70362b23e296139ea853bb977b1a3`  
		Last Modified: Tue, 10 Apr 2018 02:43:55 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9692bea5ceecafb7780a1fd062be37333b24a8b193ab03b103aa5f68f847c0`  
		Last Modified: Tue, 10 Apr 2018 02:43:56 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c24647743a1e4b51725ee59401471c8273f714338714485270c3be8b176b53`  
		Last Modified: Tue, 10 Apr 2018 02:47:36 GMT  
		Size: 7.8 MB (7847099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; ppc64le

```console
$ docker pull docker@sha256:4f4eefc688b6698087e50144ec1a113c1d54624e16b5348b4fd49fb64fd8b10c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45947131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:142e5e15945ce0d198671b708bb15bf5ca3860bd6cae7b0ca7697e217e216437`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 10 Apr 2018 02:16:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 02:16:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 02:16:57 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 02:17:05 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:17:11 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 02:18:34 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:29c19396ffd44af49134da0dd6aef06e10059db0646a8085dcb4c96d1260be46`  
		Last Modified: Tue, 10 Apr 2018 02:20:01 GMT  
		Size: 35.2 MB (35212424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af3379111783e455f2dd1c0568464567ae732b1ac67f1f122dce57dd72ebaf`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db961ed8cad724de4f8eaa86b7b10b2aff41ae178f0a649b6adcac863df496`  
		Last Modified: Tue, 10 Apr 2018 02:19:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9254c7f657cf993f7ec781f6317d3c1d05968c8568d83dd5f75a048255f897`  
		Last Modified: Tue, 10 Apr 2018 02:21:28 GMT  
		Size: 8.3 MB (8341016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
