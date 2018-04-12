## `docker:edge-dind`

```console
$ docker pull docker@sha256:c5d4de5765f3e5b489eae2aeb28bb428294fda3af54495ab503717f4ac7158f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:82e96c2f6b2ade4bf7505b4f3e1019a327be32992ba9ba19cdc5d7aa5084a1a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46196480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc95ba0a7762a13d4db830df765c534ece1963f11093dfb8940f525b63084c3`
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
# Thu, 12 Apr 2018 00:20:11 GMT
ENV DOCKER_VERSION=18.04.0-ce
# Thu, 12 Apr 2018 00:20:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Apr 2018 00:20:19 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 12 Apr 2018 00:20:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Apr 2018 00:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Apr 2018 00:20:20 GMT
CMD ["sh"]
# Thu, 12 Apr 2018 00:35:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 12 Apr 2018 00:35:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Apr 2018 00:35:13 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Apr 2018 00:35:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Apr 2018 00:35:17 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Thu, 12 Apr 2018 00:35:17 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Apr 2018 00:35:17 GMT
EXPOSE 2375/tcp
# Thu, 12 Apr 2018 00:35:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Apr 2018 00:35:18 GMT
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
	-	`sha256:e6fece0477c1060e2f44a28d60550e3396f105802d4fdba6b13e410fba247251`  
		Last Modified: Thu, 12 Apr 2018 00:39:58 GMT  
		Size: 39.2 MB (39185565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c91598bd2c1f54d2543b9ad8de3eba8c8b016d639c079714d36533c3a07d3`  
		Last Modified: Thu, 12 Apr 2018 00:39:49 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff0c6a709f7ea2748c890a6e06d49893c14816e491b58693de00242ff394597`  
		Last Modified: Thu, 12 Apr 2018 00:39:49 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28ff1f3c1d525bd364b00026e893986b2c9a348ae4e28a9b3ec651d65886d18`  
		Last Modified: Thu, 12 Apr 2018 00:52:27 GMT  
		Size: 4.6 MB (4607756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1639e3ac7bd6660bc894e89b05660d0b7a72b4f68d2d1fe41d205b8b95c36e96`  
		Last Modified: Thu, 12 Apr 2018 00:52:25 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3815ed5c8f6a6e70892f61ec94b873defb678619b09523d22a3a7c1a102b5e0e`  
		Last Modified: Thu, 12 Apr 2018 00:52:25 GMT  
		Size: 26.3 KB (26286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24055de7d1f5bebc1f8f70b50cb1924cf482a9d4fe37065d871358a7e99655bc`  
		Last Modified: Thu, 12 Apr 2018 00:52:25 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
