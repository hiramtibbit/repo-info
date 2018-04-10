## `docker:test-git`

```console
$ docker pull docker@sha256:e570374a1ef87cf5b6ca1289bf87524ea2cddb957557a133afd07877dd085e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

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

### `docker:test-git` - linux; s390x

```console
$ docker pull docker@sha256:45fdbebb8b0bd5e2545fbd436f9974183c150e7f34147b4e103d5469b4a3732e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49368704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae77b7a730bbccdd6ffc0bad1c3ec25e6b8a45f0e598ed092c6e412fe110ec`
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
# Sun, 07 Jan 2018 09:17:42 GMT
ENV DOCKER_CHANNEL=test
# Tue, 10 Apr 2018 17:41:29 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc2
# Tue, 10 Apr 2018 17:41:48 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Apr 2018 17:41:49 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Apr 2018 17:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Apr 2018 17:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 17:41:49 GMT
CMD ["sh"]
# Tue, 10 Apr 2018 17:43:26 GMT
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
	-	`sha256:c02347c4d9cf5d1864da1d655b8975f73994f0806c6111291542b60f32ab3545`  
		Last Modified: Tue, 10 Apr 2018 17:44:43 GMT  
		Size: 38.1 MB (38127559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42c11a701c7a5f210436ccd5c7b79722fbb384859da3e6f438fead859883cde`  
		Last Modified: Tue, 10 Apr 2018 17:44:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d92ae76043c14d9db7eb61dd6f873a2227a540a5f43665624e5e8e307889b87`  
		Last Modified: Tue, 10 Apr 2018 17:44:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0605f63b57842289d26c6064cf74c4d97b2c4d7acd56dda98b02f14e825a1c`  
		Last Modified: Tue, 10 Apr 2018 17:45:40 GMT  
		Size: 8.7 MB (8745152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
