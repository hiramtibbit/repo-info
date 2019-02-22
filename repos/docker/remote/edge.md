## `docker:edge`

```console
$ docker pull docker@sha256:a9b354d41e6a2a4d859ff8a41a71dbf24e5850b47f9501e3eb66e79b5977a238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:0e422b806978874c664978997f67447960c9ddda702abcb7efc18a548c77af53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46834909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0eb5a99377a25e35334b225b1a3b77c7802d01f6cde3aa6479f9f52ab4e925`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:22:14 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 22 Feb 2019 00:19:40 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 22 Feb 2019 00:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Feb 2019 00:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Feb 2019 00:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 00:19:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03335a48139a55ebf1afda732e3631a0f2a9ebc0e094678f16abeac5e66efbdf`  
		Last Modified: Fri, 22 Feb 2019 00:20:48 GMT  
		Size: 44.3 MB (44317318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4242a50e20e55a746e3b1d3d9601a3d37bac278649f0ad76109bb9c3230a9d`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63c8fd2c1b8c1b3fe2bb5c6afbd3ba8a786847b99689ab66b2cd576a156f32c`  
		Last Modified: Fri, 22 Feb 2019 00:20:34 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
