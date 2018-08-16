## `docker:test-dind`

```console
$ docker pull docker@sha256:6e6328e7d3ab604a4f2f5c9f9cbeeeec2c6ea7fb1e546922b32f3f0f01f207dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:c213831529bd6318f6b0232ea5778186412410bc632255e955a61c82e0a1e4a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52836968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191df43da54e88ebe386d8235f16d7b4bf9dbdccee95818f2c3b8d084115ef48`
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
# Thu, 16 Aug 2018 20:23:50 GMT
ENV DOCKER_CHANNEL=test
# Thu, 16 Aug 2018 20:23:51 GMT
ENV DOCKER_VERSION=18.06.1-ce-rc2
# Thu, 16 Aug 2018 20:24:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 16 Aug 2018 20:24:02 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 16 Aug 2018 20:24:03 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 16 Aug 2018 20:24:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Aug 2018 20:24:03 GMT
CMD ["sh"]
# Thu, 16 Aug 2018 20:24:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 16 Aug 2018 20:24:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 16 Aug 2018 20:24:27 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 16 Aug 2018 20:24:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 16 Aug 2018 20:24:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 16 Aug 2018 20:24:48 GMT
VOLUME [/var/lib/docker]
# Thu, 16 Aug 2018 20:24:48 GMT
EXPOSE 2375/tcp
# Thu, 16 Aug 2018 20:24:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 16 Aug 2018 20:24:49 GMT
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
	-	`sha256:da8055b14a6d908e315f45f9cfae425068dfbe7b4bfceb745f8b25811e2d2a3e`  
		Last Modified: Thu, 16 Aug 2018 20:28:06 GMT  
		Size: 45.6 MB (45602504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a119def6b3df3ebdb86e8807d334a5204c155b1ffdfb8885190bb8c99999d7`  
		Last Modified: Thu, 16 Aug 2018 20:27:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833db005a0e35190c6800756a530fb234b1f81c26fdd4650c48bbbe2625092`  
		Last Modified: Thu, 16 Aug 2018 20:27:43 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1af33df4143940ceaf4a280d29a505fe05bffb82f6101aec9fb4af8db85b74f`  
		Last Modified: Thu, 16 Aug 2018 20:29:51 GMT  
		Size: 4.7 MB (4689889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9af3eb8b4a5b031f5b96288e37ef8f3cf76df5e47bcfe805ad5814840459cf`  
		Last Modified: Thu, 16 Aug 2018 20:29:49 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64be7c4057f68b209f1eb5a13245e39272210c9b855f53e585781499f591fae`  
		Last Modified: Thu, 16 Aug 2018 20:29:49 GMT  
		Size: 25.7 KB (25695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3859b4fa47a00d4c925a25a4e1d3a416ade4a052e0e3164fac9bb912c8b798d`  
		Last Modified: Thu, 16 Aug 2018 20:29:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
