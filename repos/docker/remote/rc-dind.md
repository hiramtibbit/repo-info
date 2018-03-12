## `docker:rc-dind`

```console
$ docker pull docker@sha256:43858515d9e23d92317a78d09164aed0bce357fbf57448e1cc1773fb48004cb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:a02c7cca1909084693f1993bf8f0cb286e9be1a6201704c3b5a398cfc7d38632
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46125781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8309a938ae52e5adba2408022318b66a0f7d0de988c6552a9fb82e4dc18b5e0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Mon, 12 Mar 2018 17:39:57 GMT
ENV DOCKER_VERSION=18.03.0-ce-rc3
# Mon, 12 Mar 2018 17:40:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 12 Mar 2018 17:40:05 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Mon, 12 Mar 2018 17:40:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:40:06 GMT
CMD ["sh"]
# Mon, 12 Mar 2018 17:40:33 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Mon, 12 Mar 2018 17:40:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 12 Mar 2018 17:40:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 12 Mar 2018 17:40:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 12 Mar 2018 17:40:39 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:40:39 GMT
VOLUME [/var/lib/docker]
# Mon, 12 Mar 2018 17:40:39 GMT
EXPOSE 2375/tcp
# Mon, 12 Mar 2018 17:40:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 12 Mar 2018 17:40:40 GMT
CMD []
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
	-	`sha256:14e1ba7baaf9caf1172dde81a1b32ea733dc2584ee9c428f206d78cf0671061c`  
		Last Modified: Mon, 12 Mar 2018 17:53:35 GMT  
		Size: 39.1 MB (39114967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434d9d223a03961905232b03859b0fd357efc69cf276009cbbfe28e58b8fed75`  
		Last Modified: Mon, 12 Mar 2018 17:53:27 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97555bef7c026c8a857eba8f7f0da69f2afb7f786e2ec84a8a5ba04592319952`  
		Last Modified: Mon, 12 Mar 2018 17:53:27 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e69a17bb6a4cf1c05fc14b8291774adebe1be48178928be6376479031abfb00`  
		Last Modified: Mon, 12 Mar 2018 17:54:45 GMT  
		Size: 4.6 MB (4607757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bda634b5e28dfd5c55c6c2566ca255d79b7582b55eed59bcad52352a5f6164`  
		Last Modified: Mon, 12 Mar 2018 17:54:44 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ca295cdd8c462e5157e90c1f168cfd921167b0bade38ee7d21e967aa596093`  
		Last Modified: Mon, 12 Mar 2018 17:54:44 GMT  
		Size: 26.3 KB (26280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6c0db9c1cadbf44840624d9a5717b7c510d184b2973f06bc1be5775c3ac511`  
		Last Modified: Mon, 12 Mar 2018 17:54:44 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
