## `docker:test-git`

```console
$ docker pull docker@sha256:120332afaa17b4efdcf0edd34fe85530b48ac7dd1ba40fc28d977c36f5be45d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:bac8c4537642bb4fcac6072b02f8de97b94ebab4c867ccf35c157d4bb237a337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf53079ca0e058d0f1423dc2b4987e8a5e26c49cc41f37b91797deb03b06e387`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Jan 2018 01:02:59 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 22 Mar 2018 20:39:47 GMT
ENV DOCKER_VERSION=18.03.0-ce
# Thu, 22 Mar 2018 20:39:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 22 Mar 2018 20:39:55 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:39:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Mar 2018 20:39:56 GMT
CMD ["sh"]
# Thu, 22 Mar 2018 20:40:54 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b1d15a86a6f2f9ffc840d2cbf3d94b479f0525e5fd9cb0fd19c58eb4c0194ea0`  
		Last Modified: Thu, 22 Mar 2018 20:50:24 GMT  
		Size: 39.1 MB (39116514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bc8225373b32967eb3df38b748deeecf2fca34363cbd1c761b40bea6adb674`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccbd5e4d0b55475036d8d733f54502fb3d45ed3bbc2ce57da511a38e05b39b9`  
		Last Modified: Thu, 22 Mar 2018 20:50:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e93c3257386df93ca2292c75acec4295ac74af0eb2929b341c5e0f7c07969e7`  
		Last Modified: Thu, 22 Mar 2018 21:05:14 GMT  
		Size: 8.4 MB (8445006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
