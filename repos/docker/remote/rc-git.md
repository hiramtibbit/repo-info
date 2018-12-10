## `docker:rc-git`

```console
$ docker pull docker@sha256:9697b6a1f814816d23ae81664e22cde2a0ef3dbbced66e586ffd7867f2004b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:520a38d6fc7f814403635062712682f7dc1e593542f284ebb182c9c847ded658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59628063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:408eed29c5e85df8ea36e913abadd93d27495bcfdbf070aff76e1f002745da85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Mon, 10 Dec 2018 13:37:17 GMT
ENV DOCKER_VERSION=18.09.1-rc1
# Mon, 10 Dec 2018 13:37:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Mon, 10 Dec 2018 13:37:24 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Mon, 10 Dec 2018 13:37:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 10 Dec 2018 13:37:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Dec 2018 13:37:25 GMT
CMD ["sh"]
# Mon, 10 Dec 2018 13:38:35 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:69e018b155b76b054e327cf4374a1ba69824536ba57a50fbaadcca3ae8d64678`  
		Last Modified: Mon, 10 Dec 2018 13:40:09 GMT  
		Size: 48.5 MB (48482494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3cfa1440003c1ac9602a5431cd2d4790dc69f81ef73decd2585014a342c6b6`  
		Last Modified: Mon, 10 Dec 2018 13:39:57 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9763b7bb983ad6672129d1056d0b508e3746182e1544a6e1e2817e676f38c4d9`  
		Last Modified: Mon, 10 Dec 2018 13:39:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5387e51ba1ed6f44dcbe6f4d4fb3e093955d49e006a4e6fd60a61d092a8fef9`  
		Last Modified: Mon, 10 Dec 2018 13:43:04 GMT  
		Size: 8.6 MB (8628232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
