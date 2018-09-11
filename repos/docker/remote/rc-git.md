## `docker:rc-git`

```console
$ docker pull docker@sha256:ab9e53ed8dfc1f479ca6963d9c93c65d6de0715871a3ea3970af0a6ae5d25cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:7880e68f98a4d061324364b36a22785bd132fda3ce551315608813ecaddcbbd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59754925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2989b12de32989042ed5eaf95dad529922af722c59fb3563ede2b4484cdd8dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Mon, 10 Sep 2018 22:19:29 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Mon, 10 Sep 2018 22:19:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 10 Sep 2018 22:19:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Mon, 10 Sep 2018 22:19:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 10 Sep 2018 22:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Sep 2018 22:19:36 GMT
CMD ["sh"]
# Mon, 10 Sep 2018 22:20:02 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:3f2695c98bfbdb8cd4d4951d8f42ab63220868ae8d52e4c30155f14c3514ac87`  
		Last Modified: Mon, 10 Sep 2018 22:20:35 GMT  
		Size: 48.6 MB (48611241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31604fcfe2b21051d47a3dcedc62c07c9a03a3226fd3333523f183e0b10edbf3`  
		Last Modified: Mon, 10 Sep 2018 22:20:23 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaeb60efabcc6975c40405696b013527e4826a12b4b9674a471c582d0b31ca0`  
		Last Modified: Mon, 10 Sep 2018 22:20:23 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb956dae8f6722c89041270e5547aa80493de47f7dd1921775b457b664a867b`  
		Last Modified: Mon, 10 Sep 2018 22:21:41 GMT  
		Size: 8.6 MB (8626707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:99e1dc5fa80dd06f2f9beb2883fce6b029522e6f518f03cb932888cde8744f59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56384282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86281ec34dbeb32c2496bd96d1fef1a25540a7dd08d1df8dd5249020b52bccd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 11 Sep 2018 07:49:20 GMT
ENV DOCKER_VERSION=18.09.0-ce-beta1
# Tue, 11 Sep 2018 07:49:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 11 Sep 2018 07:49:29 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 11 Sep 2018 07:49:29 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 11 Sep 2018 07:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 07:49:30 GMT
CMD ["sh"]
# Tue, 11 Sep 2018 07:49:49 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:04c138597ca39bdbb28bb96e8f94f5434a75e4900fc6f1861e606b958a5af782`  
		Last Modified: Tue, 11 Sep 2018 07:50:23 GMT  
		Size: 45.7 MB (45746265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32fc426cb5462c52849235c5612aea48108d61bbacab15a30d45efccaa711e1`  
		Last Modified: Tue, 11 Sep 2018 07:50:09 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28ae9828c8f52c586ed5a676678fb6dbe101b8e527b2c900bee56ddd197c62`  
		Last Modified: Tue, 11 Sep 2018 07:50:09 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87470a43dda444714b0d405ffc53e0e7abb7ebb19310b0cdd1d09103a26893c7`  
		Last Modified: Tue, 11 Sep 2018 07:50:57 GMT  
		Size: 8.2 MB (8181328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
