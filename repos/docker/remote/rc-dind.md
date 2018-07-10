## `docker:rc-dind`

```console
$ docker pull docker@sha256:4f4594c852c7a1b93b2eab9342ece0a099c3c84c4e7e7f84253e40987822fded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:556aadaa64f00ee3d7b90ff38245af2d55eb9ef857f8f375bb1a6509e5239658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52546979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3c1d0e7f1534b7b6f913a240f84019f0f1307fa8c3eab71af8e2edab10d80f1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:45:09 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 06 Jul 2018 14:45:09 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 06 Jul 2018 14:45:10 GMT
ENV DOCKER_CHANNEL=test
# Tue, 10 Jul 2018 00:19:33 GMT
ENV DOCKER_VERSION=18.06.0-ce-rc2
# Tue, 10 Jul 2018 00:19:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 10 Jul 2018 00:19:50 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 10 Jul 2018 00:19:50 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:19:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:19:51 GMT
CMD ["sh"]
# Tue, 10 Jul 2018 00:20:06 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 10 Jul 2018 00:20:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 10 Jul 2018 00:20:07 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 10 Jul 2018 00:20:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 10 Jul 2018 00:20:09 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:20:09 GMT
VOLUME [/var/lib/docker]
# Tue, 10 Jul 2018 00:20:09 GMT
EXPOSE 2375/tcp
# Tue, 10 Jul 2018 00:20:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 10 Jul 2018 00:20:10 GMT
CMD []
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff9b9c51076c7e9cbdc3bc2def74e6e7cbdcbae47d2ed15f9e86896c9fba33c`  
		Last Modified: Fri, 06 Jul 2018 14:47:48 GMT  
		Size: 308.3 KB (308313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9500841639b7bed33a3e082af53576e0f30da470b24821cfea893287f8c108b0`  
		Last Modified: Fri, 06 Jul 2018 14:47:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26bdb92af8610f85f3a4a4176cea3b544d75a770621608d31ccee03ad2b1c8b`  
		Last Modified: Tue, 10 Jul 2018 00:21:19 GMT  
		Size: 45.5 MB (45497461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58be7d31fab78ff153cc3078286b70d30465a0de40bc70a67c188effb75f3f68`  
		Last Modified: Tue, 10 Jul 2018 00:20:58 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe1136792f6e4118536bcf7e5e9d57164875a910905c5694508424e471740b7`  
		Last Modified: Tue, 10 Jul 2018 00:20:58 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c47d57aef5a037806b6b1788549c5cc9090f19f3f818f1770ce4f8818c061df`  
		Last Modified: Tue, 10 Jul 2018 00:22:19 GMT  
		Size: 4.6 MB (4608916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28fa6c066b88a1b7df17d4eba83ca534a0450c5103045d856780c907b67283`  
		Last Modified: Tue, 10 Jul 2018 00:22:18 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675d54d2fa10aa093fb8a860ad386404a749e1c43326d364da73474113cb3753`  
		Last Modified: Tue, 10 Jul 2018 00:22:18 GMT  
		Size: 25.4 KB (25394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6e12a46f8a31274660a19583163bd285c7991ca472a53f1f07e206507a4269`  
		Last Modified: Tue, 10 Jul 2018 00:22:17 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
