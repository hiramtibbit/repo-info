## `docker:test-dind`

```console
$ docker pull docker@sha256:893275b94b806e6699ea1d4d102eb9df0f07a73f9749fc84c86adc2a483d51ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:1e5a88ca67d389706577b035a366f0a42e7b5c69da519ab0bf649c76680b1bd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46242124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ceda19ff3aed0cc12e4a4c6bcb77d41344af860f10adae5a7faeea2b11f57e`
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
# Fri, 23 Feb 2018 00:00:25 GMT
ENV DOCKER_VERSION=18.03.0-ce-rc1
# Fri, 23 Feb 2018 00:00:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Feb 2018 00:00:32 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Feb 2018 00:00:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Feb 2018 00:00:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 00:00:33 GMT
CMD ["sh"]
# Fri, 23 Feb 2018 00:01:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Feb 2018 00:01:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Feb 2018 00:01:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Feb 2018 00:01:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Feb 2018 00:01:09 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Feb 2018 00:01:09 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Feb 2018 00:01:10 GMT
EXPOSE 2375/tcp
# Fri, 23 Feb 2018 00:01:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Feb 2018 00:01:10 GMT
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
	-	`sha256:3b814babeca52ad453808e2fd71a85e1bd92132f0fb5655d692f1da38d7dd5f7`  
		Last Modified: Fri, 23 Feb 2018 00:03:17 GMT  
		Size: 39.2 MB (39231267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8568764e7907afe7e1fe2d6a4753cd70f2537f4fc4d161c031e3516b4410029c`  
		Last Modified: Fri, 23 Feb 2018 00:03:09 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946286b49acf83cda9a5ff836e5c57c10a6b99d68b12861bbabefdd7a82fc5ac`  
		Last Modified: Fri, 23 Feb 2018 00:03:09 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffce86a52a895bfdf94eff6f572228e379319c5b21563a98ce8e9d3326cd00ab`  
		Last Modified: Fri, 23 Feb 2018 00:04:22 GMT  
		Size: 4.6 MB (4607796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5be84cdd41b13d65afa84ab3f3d90ea02f1269f9d2664de73012dc2fef65bb`  
		Last Modified: Fri, 23 Feb 2018 00:04:21 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b958267d61933bf50d49d83fae8e9fb26aa449af723418fdeed3d50b91996d`  
		Last Modified: Fri, 23 Feb 2018 00:04:22 GMT  
		Size: 26.3 KB (26281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f980e12f951603a9df6a26207208dcf54be33995c402897cddb230eeb21d5a3`  
		Last Modified: Fri, 23 Feb 2018 00:04:21 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:e1a478d4dd9eae57f4de02467da6cb2ab948c10ab0b501ebd5688fc4619b88c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45543428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcd19f9346f47466c549b1e7fa6ef300bdf9622a52772cc5cc35bacdb714eb7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:17:41 GMT
RUN apk add --no-cache 		ca-certificates
# Sun, 07 Jan 2018 09:17:42 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sun, 07 Jan 2018 09:17:42 GMT
ENV DOCKER_CHANNEL=test
# Fri, 23 Feb 2018 04:01:29 GMT
ENV DOCKER_VERSION=18.03.0-ce-rc1
# Fri, 23 Feb 2018 04:01:40 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 23 Feb 2018 04:01:40 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 23 Feb 2018 04:01:41 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 23 Feb 2018 04:01:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 04:01:41 GMT
CMD ["sh"]
# Fri, 23 Feb 2018 04:01:59 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 23 Feb 2018 04:01:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Feb 2018 04:01:59 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Feb 2018 04:02:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 23 Feb 2018 04:02:02 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 23 Feb 2018 04:02:02 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Feb 2018 04:02:03 GMT
EXPOSE 2375/tcp
# Fri, 23 Feb 2018 04:02:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Feb 2018 04:02:03 GMT
CMD []
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e086971261bceaf8aea6aa9962223fd5f1c0876f30d440dca2edce64bb2e6ea`  
		Last Modified: Sun, 07 Jan 2018 09:19:36 GMT  
		Size: 309.1 KB (309148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94801dbdd0e977fe92249d99be1d017b2b930177b6d3dd44105722b0233438b`  
		Last Modified: Sun, 07 Jan 2018 09:19:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ebe34894497124267efea504fc690eddae30aa1b4dd680d7f00a944d66cc7a`  
		Last Modified: Fri, 23 Feb 2018 04:04:09 GMT  
		Size: 38.2 MB (38182690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dc75b8563d43db75042044381f82e90c9107609e86d543cd8d4f11d71ad8d8`  
		Last Modified: Fri, 23 Feb 2018 04:04:00 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2729c944f7dfc204a1e588612660ae60dab84742eaa6918cb343a01f52a3e1`  
		Last Modified: Fri, 23 Feb 2018 04:04:00 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210b1d7361540876b45e6eb6b3997815ce1faddda73edb675aaf967a0d420de7`  
		Last Modified: Fri, 23 Feb 2018 04:04:28 GMT  
		Size: 4.8 MB (4836688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a542943f32b1eef4ad400c196e94ce4798a4ba3736bed87111aba155656cea`  
		Last Modified: Fri, 23 Feb 2018 04:04:27 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7a9ab8ef80428310b7bb74fdc7798118ff373a6698730abea6c157cb0ca5c5`  
		Last Modified: Fri, 23 Feb 2018 04:04:28 GMT  
		Size: 26.3 KB (26262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448e0e34c7a8b6002346d1e55e92053a2b56d235299a43e658751ae132da75ed`  
		Last Modified: Fri, 23 Feb 2018 04:04:28 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
