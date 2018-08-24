## `docker:rc-git`

```console
$ docker pull docker@sha256:e43f59a549befb83d0e7935959b780e852bd207d129dce508f401ab7a38bb016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:12c0192cb217b7cf4e5e5ca690a670e26c8377d26ecb0389c8c1c3676fdb3489
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59757375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa298d8699955489ff104f901b910266185ce1e732286bb04720afe93fd309ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Thu, 12 Jul 2018 21:19:43 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Jul 2018 21:19:44 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 Aug 2018 20:23:50 GMT
ENV DOCKER_CHANNEL=test
# Fri, 24 Aug 2018 01:20:01 GMT
ENV DOCKER_VERSION=18.09.0-ce-tp3
# Fri, 24 Aug 2018 01:20:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 24 Aug 2018 01:20:08 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 24 Aug 2018 01:20:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 24 Aug 2018 01:20:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Aug 2018 01:20:09 GMT
CMD ["sh"]
# Fri, 24 Aug 2018 01:21:16 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b4f362f854917ff87e6e5214a240dd7fd1b67d517aee2347f05fc539b3a08b41`  
		Last Modified: Fri, 24 Aug 2018 01:22:35 GMT  
		Size: 48.6 MB (48615164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd744c5b9828d2e3af07d8e905abef01a6d395ea3ed48369a0f54fdcb9a7ebe`  
		Last Modified: Fri, 24 Aug 2018 01:22:13 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac0495bc5480ad8cd5a2c4ccf902028fd7f6f15aedfe8d0ace8bdce117ca97e`  
		Last Modified: Fri, 24 Aug 2018 01:22:13 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6492ba69817930fb1e67960629e5e9eaff40d870416d886b5c6269249a58483`  
		Last Modified: Fri, 24 Aug 2018 01:27:13 GMT  
		Size: 8.6 MB (8625228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:57ba0b18783f1f2d5e76cc250b12b8917843652538e24916b5f40ffd7b6fe923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56390106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d936526ac73a00130dc2a9f7a027abe1edadf53f0273f3b4dd87c5ae1e98279`
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
# Fri, 24 Aug 2018 07:49:21 GMT
ENV DOCKER_VERSION=18.09.0-ce-tp3
# Fri, 24 Aug 2018 07:49:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 24 Aug 2018 07:49:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 24 Aug 2018 07:49:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 24 Aug 2018 07:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Aug 2018 07:49:31 GMT
CMD ["sh"]
# Fri, 24 Aug 2018 07:49:48 GMT
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
	-	`sha256:5a4d669d3f96313963debaa46657721904f0f85bc8ecb2bf869bca8acf2921d6`  
		Last Modified: Fri, 24 Aug 2018 07:50:23 GMT  
		Size: 45.8 MB (45751624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e68ee86df7dd0179343fc775511ef614c49e99bebe07acc0e90b1858b4d67a4`  
		Last Modified: Fri, 24 Aug 2018 07:50:10 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51e7f24d3316574429267f3b5a880723b55aa67c07afe00b0d57eb6c355bc12`  
		Last Modified: Fri, 24 Aug 2018 07:50:09 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4225a676f2d53ca4a4582bb7cab342e3c609762cd950f3f193ac9a1cac7d8c2d`  
		Last Modified: Fri, 24 Aug 2018 07:50:54 GMT  
		Size: 8.2 MB (8181793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
