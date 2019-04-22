## `docker:test-git`

```console
$ docker pull docker@sha256:b45410659259e30e0215b63253548e4e2ab8f8bbcafc7c20ac82a075dcd6a7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:a842a61283f9e0df49a0f0d56ce87b2f4a926f423e1a1f585b0e156d03945cb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75614648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e13dc74ce091dd99ac4b0179ce3b67f3e1bd050979c6b10ce6bfb82a207f801`
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
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Mon, 22 Apr 2019 22:25:36 GMT
ENV DOCKER_VERSION=19.03.0-beta2
# Mon, 22 Apr 2019 22:25:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Mon, 22 Apr 2019 22:25:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Mon, 22 Apr 2019 22:25:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Mon, 22 Apr 2019 22:25:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Apr 2019 22:25:43 GMT
CMD ["sh"]
# Mon, 22 Apr 2019 22:25:55 GMT
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
	-	`sha256:2af80cb5c48cab33ee9f4ec47939aad775067153cab7033b4caa8f7f983bc082`  
		Last Modified: Mon, 22 Apr 2019 22:26:42 GMT  
		Size: 63.3 MB (63282464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ad82ca7bd5d5af037564c6e94d7dcb014aa52c47b952fb538acbc09742812`  
		Last Modified: Mon, 22 Apr 2019 22:26:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237f0f1063824a0d7d1ed852030bbd224cdc2e7dc82a525134e8a383d230017`  
		Last Modified: Mon, 22 Apr 2019 22:26:28 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0847080327ab948ea6d3c6bb037874b28ad6e3340bd673634cf5446ecbb8c4c`  
		Last Modified: Mon, 22 Apr 2019 22:26:54 GMT  
		Size: 9.3 MB (9271868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
