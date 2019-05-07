## `docker:git`

```console
$ docker pull docker@sha256:d2b7b579c461d09db9b6254791824e1db738a528c1cff3b043b25e773eb89746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:34d7ceb0d6113f223ae2f600b4742f639ba9b93c4f778a6a79bdba8ad7d7d2c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff94870c60e4570c1d394741b6661bb6e4892a7c8cb1a9eda48531e3dec0b84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 07 May 2019 01:19:40 GMT
ENV DOCKER_VERSION=18.09.6
# Tue, 07 May 2019 01:19:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 07 May 2019 01:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 07 May 2019 01:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 07 May 2019 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 May 2019 01:19:47 GMT
CMD ["sh"]
# Tue, 07 May 2019 01:20:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5d4256c18135a7eb66b439f4a25f17d05c458868b7dfecfeaf851ba0aa2782`  
		Last Modified: Tue, 07 May 2019 01:20:39 GMT  
		Size: 48.5 MB (48529854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21adc78c67ced90c362f0107c322061396c3b5b5b753100f208deebaed3e5fc5`  
		Last Modified: Tue, 07 May 2019 01:20:27 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f0682767a4123c5ed1638cfba3aaf65af67c71ae1d1ebf14d2b6e26d9d12cc`  
		Last Modified: Tue, 07 May 2019 01:20:27 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3c0b96b0f92ea9ddf69372c6811e32d5b01864eed4b42201b606404b3c4e9d`  
		Last Modified: Tue, 07 May 2019 01:20:58 GMT  
		Size: 9.3 MB (9271832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
