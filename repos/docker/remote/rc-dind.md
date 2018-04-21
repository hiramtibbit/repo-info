## `docker:rc-dind`

```console
$ docker pull docker@sha256:e046fdbc69d33d168b9f2b741be31a3b02cc9a237c41afc46e128454c3170c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:f94a8bd1c5317c7689bc327d2317e3e20d591639874e32f7b7793a34294dbcdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46146330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645859e40d8cba492925f93c06735ef48f4e552b079a0625090812aa5c9b915d`
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
# Sat, 21 Apr 2018 01:06:22 GMT
ENV DOCKER_VERSION=18.03.1-ce-rc2
# Sat, 21 Apr 2018 01:06:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 21 Apr 2018 01:06:28 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 21 Apr 2018 01:06:29 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 21 Apr 2018 01:06:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Apr 2018 01:06:30 GMT
CMD ["sh"]
# Sat, 21 Apr 2018 01:06:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 21 Apr 2018 01:06:58 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 21 Apr 2018 01:06:58 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 21 Apr 2018 01:07:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 21 Apr 2018 01:07:02 GMT
COPY file:073876936333c71cdffdb04170009690094f01b3e9221dc545ef3c1a021a0091 in /usr/local/bin/ 
# Sat, 21 Apr 2018 01:07:02 GMT
VOLUME [/var/lib/docker]
# Sat, 21 Apr 2018 01:07:02 GMT
EXPOSE 2375/tcp
# Sat, 21 Apr 2018 01:07:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 21 Apr 2018 01:07:03 GMT
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
	-	`sha256:45731171b081184884b3e6fcdd0127f634d9eef617d4103e3030b5af0beba0be`  
		Last Modified: Sat, 21 Apr 2018 01:08:15 GMT  
		Size: 39.1 MB (39135396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5e4d157a377b5fe2a15869a16cff9dfd47536716a9c98036ef140d2d915fba`  
		Last Modified: Sat, 21 Apr 2018 01:08:08 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a3845ba275c270f6619ce6c30e476a0a6ad80fc702f42c536f70f911bc77d`  
		Last Modified: Sat, 21 Apr 2018 01:08:08 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66348413a4b88b1c1f83eaecb3261bc512c1af39c7ff037b8674dff19a5d82a2`  
		Last Modified: Sat, 21 Apr 2018 01:09:23 GMT  
		Size: 4.6 MB (4607779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2353dfe0b27bb3a9a8ebb20e4ede564febc08790d89d83d874a6b1819e95b02e`  
		Last Modified: Sat, 21 Apr 2018 01:09:22 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e709b64d4ac833abc67da2ca1f72aae1d87f3121162efc9533b71e71583dc228`  
		Last Modified: Sat, 21 Apr 2018 01:09:22 GMT  
		Size: 26.3 KB (26282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0eb8ea8656755e36907ac3396348e207afba6d53e32ad1152677e1ce8b95d`  
		Last Modified: Sat, 21 Apr 2018 01:09:22 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
