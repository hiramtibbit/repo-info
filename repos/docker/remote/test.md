## `docker:test`

```console
$ docker pull docker@sha256:f0fdb272ecc210a74f824ae4e6f0708f16b3ec87e18370c0eeac44ea430b0a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:eba647d9ccf1f6dd7e35b73a0fe5be2b12216cc5e42547fe9af6c4d15ebc8142
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48208231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d560dc39a1debf5c353a44bbbd1b430ca825bb97fe5cb46fd8f06669e70e37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Fri, 17 Aug 2018 07:54:18 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 17 Aug 2018 07:54:18 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 07:54:19 GMT
ENV DOCKER_CHANNEL=test
# Tue, 28 Aug 2018 07:51:22 GMT
ENV DOCKER_VERSION=18.09.0-ce-tp4
# Tue, 28 Aug 2018 07:51:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 28 Aug 2018 07:51:32 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 28 Aug 2018 07:51:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 28 Aug 2018 07:51:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 07:51:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8914d45f1b2cabdf98026bbfec8b70ebb63e829a8ebde571f733abaad018de39`  
		Last Modified: Fri, 17 Aug 2018 07:55:31 GMT  
		Size: 309.1 KB (309072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6579bc6b32fc36451455300d9a15571bf468bcfe7f8b52ddc36f24590628d2b`  
		Last Modified: Fri, 17 Aug 2018 07:55:32 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573b461b0f40521edaf90abb642ea4c402dc3e883d166115dc7d52c40796bb50`  
		Last Modified: Tue, 28 Aug 2018 07:52:23 GMT  
		Size: 45.8 MB (45751545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28cc8ab4d6be57d81b00946a041fefce2d0c7432da31048d5b40c8eef3aa12e`  
		Last Modified: Tue, 28 Aug 2018 07:52:08 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6d267e777c655f99f1cd283b635be84e1949c5aa9c3327d68d49b0af5912b1`  
		Last Modified: Tue, 28 Aug 2018 07:52:08 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
