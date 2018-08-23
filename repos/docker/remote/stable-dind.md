## `docker:stable-dind`

```console
$ docker pull docker@sha256:4546d99e2d8612419120541dd6e1a6594d5ac94f2e71641e311f3fa1cd2c9e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:07db91f1abaf9f21ffee337c5198fa15e7ced1d96d1c84a82fd4fbcf51f812ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52837379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c33e070d450c33d0fda38016a1c454fcf296efc5af773d88fb5a5d17a99affc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Thu, 12 Jul 2018 21:19:43 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Jul 2018 21:19:44 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 Aug 2018 20:26:03 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 01:44:22 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 01:44:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 01:44:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 01:44:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 01:44:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 01:44:32 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 01:44:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 01:44:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 01:44:55 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 01:44:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 01:44:57 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 01:44:58 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 01:44:58 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 01:44:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 01:44:58 GMT
CMD []
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
	-	`sha256:9ba82f60b2f0adf19467b5fb5027a83805b420e72f2fe9ca6cd712d9655245f3`  
		Last Modified: Thu, 23 Aug 2018 01:45:57 GMT  
		Size: 45.6 MB (45602538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35cd29f8979da0a41811cbc66a2ccad595d3baffd898684a0773ef835e0489e`  
		Last Modified: Thu, 23 Aug 2018 01:45:46 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bc85010933069c405ba4c21f8762c26d93c289ddd3448fe2e9e652190457ee`  
		Last Modified: Thu, 23 Aug 2018 01:45:46 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50004b1da559dbe7c505c4c5597fd2fa9e3dd251404c22c822ef1bbb68e4f2f1`  
		Last Modified: Thu, 23 Aug 2018 01:48:59 GMT  
		Size: 4.7 MB (4690260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209a8071a30f6c4057da7cd84eb934173ea52e211b01d25e056584eec348a3d5`  
		Last Modified: Thu, 23 Aug 2018 01:48:57 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd68188854ff6903ab553d6ce74e8657ce539f72be402966dfcc9d7e27c2c91c`  
		Last Modified: Thu, 23 Aug 2018 01:48:58 GMT  
		Size: 25.7 KB (25701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15d830de0e490707356bfba7baccb6f6f94877c80b10e799606410f62b8b19e`  
		Last Modified: Thu, 23 Aug 2018 01:48:57 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
