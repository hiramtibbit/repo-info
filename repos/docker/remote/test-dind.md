## `docker:test-dind`

```console
$ docker pull docker@sha256:77449a3d29f0a179cf7d9d1ddfea25919aa733b4d1843ee1b531bd1e5223591f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:6504f1728478bf325860b21a71f8041d754ae1e8cfd46012c86d809fe9bef23e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46053697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44348b3ad523d5dc4ae7d53bd873879e06e0df2d686e9029a666945443ef42`
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
# Mon, 15 Jan 2018 20:56:54 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 10 May 2018 20:21:53 GMT
ENV DOCKER_VERSION=18.05.0-ce
# Thu, 10 May 2018 20:21:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 10 May 2018 20:21:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 10 May 2018 20:21:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 10 May 2018 20:21:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 20:21:59 GMT
CMD ["sh"]
# Thu, 10 May 2018 20:22:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 10 May 2018 20:22:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 10 May 2018 20:22:06 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 10 May 2018 20:22:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 10 May 2018 20:22:08 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Thu, 10 May 2018 20:22:08 GMT
VOLUME [/var/lib/docker]
# Thu, 10 May 2018 20:22:08 GMT
EXPOSE 2375/tcp
# Thu, 10 May 2018 20:22:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 10 May 2018 20:22:09 GMT
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
	-	`sha256:d0600fe571bc5bf5050e1f46aab734adcb9f84efd37a0a29471f7e97a54c78a5`  
		Last Modified: Thu, 10 May 2018 20:22:39 GMT  
		Size: 39.0 MB (39043959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16e21051182254633993b29f3f1b29a35e48e70b4219e934f96961f937b3540`  
		Last Modified: Thu, 10 May 2018 20:22:32 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ea1dbce89910b3f7fdaf2e5f8ce4d328b7992cfc0ff159b87730281f68dd4f`  
		Last Modified: Thu, 10 May 2018 20:22:31 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133d8f8629ec4ca0afdd02ebbd988572283a4911f4daf0444f4067684e920685`  
		Last Modified: Thu, 10 May 2018 20:23:30 GMT  
		Size: 4.6 MB (4607753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a0f0a757e5658f2ad2e4459ab4c023f1e7c331dc7bc5dba95eaa3890a03396`  
		Last Modified: Thu, 10 May 2018 20:23:27 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e081d1eb121e8d4c4da1c8c12c2f90e4a292c492f57f42e85664eb2fa59ac6b`  
		Last Modified: Thu, 10 May 2018 20:23:27 GMT  
		Size: 25.1 KB (25113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a14be8d6d219ba6c21117d8d2c6b1e7ba7a37594f96c15fd7f86c1448e22a5f`  
		Last Modified: Thu, 10 May 2018 20:23:27 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
