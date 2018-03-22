## `docker:stable-dind`

```console
$ docker pull docker@sha256:3940aabce2caceba57448718cc52021703910d12b117c9fa1999f73fcea1850d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:44861312645ffa34fc32f5c5b1b35faef9ca7581b93bb31fe752ba8e59e9a4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46127327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d303f49c92a7c2e513187d46a6e7ca402fac897c095fd8f8308eb3a11b47a6a4`
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
# Thu, 22 Mar 2018 20:40:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 22 Mar 2018 20:40:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Mar 2018 20:40:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Mar 2018 20:40:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Mar 2018 20:40:31 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 22 Mar 2018 20:40:31 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Mar 2018 20:40:31 GMT
EXPOSE 2375/tcp
# Thu, 22 Mar 2018 20:40:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Mar 2018 20:40:32 GMT
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
	-	`sha256:f146bfbb6140815ba04c5b396926c376a0322c9c70cb01692ba8662379690cad`  
		Last Modified: Thu, 22 Mar 2018 21:02:40 GMT  
		Size: 4.6 MB (4607752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bad19b2655d71af19c51188a649a470957e3745bf0c12ae65a8f9d1ed7b4c4`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cbdc990cf22537fe6bff7229c2bdd0bd8e4685c288ed3badc29c64fbfddaed`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 26.3 KB (26285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28094546c2ac0ccd9148e51ac8819740c611c41a09fb08e8433e72eeb0ab028`  
		Last Modified: Thu, 22 Mar 2018 21:02:39 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
