## `docker:rc-dind`

```console
$ docker pull docker@sha256:b993dbce7a2df2ee71225fe2139d374ac978402e3da6a4bdc3ff854820979b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:345130565258f4e109505137f6a611d5827070e9a92b46602623c5fba0f26faa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54584648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fa2c531e5b66140039becaf157f7c4f5ff91542ed5293923aefbb0c99287de`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:52:17 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Oct 2018 22:20:26 GMT
ENV DOCKER_VERSION=18.09.0-beta3
# Tue, 09 Oct 2018 22:20:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Oct 2018 22:20:34 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 09 Oct 2018 22:20:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 09 Oct 2018 22:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Oct 2018 22:20:35 GMT
CMD ["sh"]
# Tue, 09 Oct 2018 22:20:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Oct 2018 22:20:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Oct 2018 22:20:45 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Tue, 09 Oct 2018 22:20:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Oct 2018 22:20:46 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Tue, 09 Oct 2018 22:20:46 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Oct 2018 22:20:47 GMT
EXPOSE 2375/tcp
# Tue, 09 Oct 2018 22:20:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Oct 2018 22:20:47 GMT
CMD []
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e793f0ebe8a0d4496ef2fca6d5d45493df6dc40503657b357e153fa91548171`  
		Last Modified: Tue, 11 Sep 2018 22:53:41 GMT  
		Size: 309.0 KB (308969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77995fba19184aad4b702852da2d04d7b92693f2923499f5d388fd8d2ce2dd81`  
		Last Modified: Tue, 11 Sep 2018 22:53:40 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b208c3fe0661493307ba6345cc56f5363cca7e53fe4aa18bcd19e80ea8c81b95`  
		Last Modified: Tue, 09 Oct 2018 22:21:42 GMT  
		Size: 47.4 MB (47374391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e08a34ab48edfa7d7a9b38698528dc400078385afe9f3cb14c7818670ac3f4`  
		Last Modified: Tue, 09 Oct 2018 22:21:32 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0d3367bfbbc147aaf718a5b8a542647e68c59231da27c70033d508b24d93f0`  
		Last Modified: Tue, 09 Oct 2018 22:21:30 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cc2671c0362267a86a87a69cca80923dbc6f4a79c29609687ec9b887f1575f`  
		Last Modified: Tue, 09 Oct 2018 22:22:14 GMT  
		Size: 4.7 MB (4690276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc06d911137c21058484739fbfa9339613cb8ad4ee467e6d7b95a579509ff03d`  
		Last Modified: Tue, 09 Oct 2018 22:22:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8088082deadf48135ca665a3b5a262ae33adb84990c3325fe340dc85ea8a8d`  
		Last Modified: Tue, 09 Oct 2018 22:22:14 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b7152365d37073b299f3c03351a6dc9eb41f92679a4a8bcce1105148d091ea`  
		Last Modified: Tue, 09 Oct 2018 22:22:13 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3a9338f8a11d2174436c3f07807bf5cea0ecc0f1f47ead4ddacf2da809f40ad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49674513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726edceb1043730a3bf8a52d7b108ca61ddfab593e5052f7c5bd21bf5c92b8d7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:23:24 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 08:23:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 08:23:25 GMT
ENV DOCKER_CHANNEL=test
# Wed, 10 Oct 2018 07:50:02 GMT
ENV DOCKER_VERSION=18.09.0-beta3
# Wed, 10 Oct 2018 07:50:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 10 Oct 2018 07:50:10 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 10 Oct 2018 07:50:11 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 10 Oct 2018 07:50:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Oct 2018 07:50:11 GMT
CMD ["sh"]
# Wed, 10 Oct 2018 07:50:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 10 Oct 2018 07:50:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 Oct 2018 07:50:20 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Wed, 10 Oct 2018 07:50:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 10 Oct 2018 07:50:22 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Wed, 10 Oct 2018 07:50:23 GMT
VOLUME [/var/lib/docker]
# Wed, 10 Oct 2018 07:50:23 GMT
EXPOSE 2375/tcp
# Wed, 10 Oct 2018 07:50:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 Oct 2018 07:50:24 GMT
CMD []
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fbfc96f252753e0c23e78a31dc898c3e8a97292ae5dc94dc929ea6c8f364d6`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 309.1 KB (309067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4849d92e83a1d6286e0b02607587bccfc6db4a9ce2b3e9b3e1d4f842240fef`  
		Last Modified: Wed, 12 Sep 2018 08:24:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8790605add4777838d3704012b005372fef004e5e269f65b5d19ca0a1f7030`  
		Last Modified: Wed, 10 Oct 2018 07:51:05 GMT  
		Size: 44.6 MB (44563601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a757c0378cb96cd02146aa29503c0f9e2de24aac7b6abf042c72eb04098f1da`  
		Last Modified: Wed, 10 Oct 2018 07:50:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecf30e6b7e98c349273eccc347d911d7e89702cb534cc86add168c1944c1235`  
		Last Modified: Wed, 10 Oct 2018 07:50:51 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb483d200674f800f2e085b5699b83c128a2ae0c41d8b8427602281489c237e0`  
		Last Modified: Wed, 10 Oct 2018 07:51:32 GMT  
		Size: 2.7 MB (2651109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0a3013b5c3621503495069c680a57e0d79901949dd70cbf92353ad6fa4ae91`  
		Last Modified: Wed, 10 Oct 2018 07:51:31 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c86d12b1781237481d6b232c1f500a10bb77d78403535610467b3960df65d8b`  
		Last Modified: Wed, 10 Oct 2018 07:51:32 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf4d7a451569b59cc7e387bd169b33467fba25dfb7c1c7984469d81486e743`  
		Last Modified: Wed, 10 Oct 2018 07:51:31 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
