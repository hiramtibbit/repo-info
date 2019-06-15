## `docker:test-dind`

```console
$ docker pull docker@sha256:b916fd03d6bba67f909ca802ab846a7b5f24adb7ccc142a53603fd3b2b9969e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:83b33af4195fca78101f5ec9d5e4a8c8871e09c88980879c2cbe70badb938ac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7074ab150a2dc934fbd3b04020aab7a7f57c5cc3bdb2853c47e3ee1c9823f3aa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:33:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:33:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:17 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:33:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:33:23 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:33:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:33:24 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:33:24 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:33:24 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:33:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:33:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f7ed289aff366bb73854dd29bc2dcccde372ff267c1d53468dd57353d6c59c`  
		Last Modified: Fri, 14 Jun 2019 22:34:20 GMT  
		Size: 63.8 MB (63796775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512b5b5f46545a5ce0a28b68feadd453558fa2b1b5f3535b5a08782504ba9cd2`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2615dca37e15919010ac843e8c81cd3c32ef02baeb7b0cc1e3adad5dd2e4c658`  
		Last Modified: Fri, 14 Jun 2019 22:34:06 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf9bba643e276ea4379068cbd1372987b9fb5c5e27bf81e42734ef9289ad0ab`  
		Last Modified: Fri, 14 Jun 2019 22:34:26 GMT  
		Size: 4.8 MB (4769746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731df454a95418128a78b79567fb8d8e24e4e8167cb2236050c8e98e3f4f78e`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c6f327f31adda429b7b1892b484c1f6b10b66330850a2e943f4a61c2b1f265`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d36a6c6d6aed7e2501b3a43b49562d3955a4ddcb010586948058c7a3b85c11`  
		Last Modified: Fri, 14 Jun 2019 22:34:25 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:732eaf4daa0d7519b6b532610806376028cb507b66906c421bb4cea83a300e3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b499ca08afec69bf56373359cefc79541df6917f0b435a751f6b6ff291548a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:49:37 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:49:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:49:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:49:46 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:49:48 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:49:49 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:49:49 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:49:50 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:49:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:49:51 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94485bee69a9140a6aae8e69dd4382610d5a6d1859975230c62d14a24fd887c2`  
		Last Modified: Fri, 14 Jun 2019 22:51:55 GMT  
		Size: 59.5 MB (59517332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bb43ddc30645d743e5d55bb056282a8a46cda29fcf8617b34577f5a61ecf85`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d29dc0c764961861845955a894662427575bbc4bc91d0af4d40b2e3a74ec8d`  
		Last Modified: Fri, 14 Jun 2019 22:51:33 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2d6629bc54937e9b7ddedfabead2224d40d6529ffeba78337ebdee81cae980`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 2.8 MB (2764938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1a9e462b4e3a0d0e792893f0a9c7824ab9113b517be925d6fa05ac5346b007`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f356b4e9b7a92fde38424aa49f69f16fe67e206c95adc97f386ab6022da172`  
		Last Modified: Fri, 14 Jun 2019 22:52:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1311ba0ea3b5ca3d2770f741dfc88128ac148bc8e4623b8052f67cc57ae1bbcf`  
		Last Modified: Fri, 14 Jun 2019 22:52:05 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:389250cdb2efe8aa878d750b2037a8e31f7cf5788e25b1b362625136cfa925e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64634607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450f191c3bdfa4ba0b2b8cdaca11b20c36874dc8c24c83e5325b9c258339dbe1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 14 Jun 2019 23:57:30 GMT
ENV DOCKER_CHANNEL=test
# Fri, 14 Jun 2019 23:57:31 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 23:57:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 23:57:42 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:43 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 23:57:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 23:57:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 23:57:52 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 23:57:54 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 23:57:54 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 23:57:55 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 23:57:55 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 23:57:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 23:57:56 GMT
CMD []
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37adb419735c5e1d195db1de9f49a6aed7cc88b433feab11660d3c801175ef71`  
		Last Modified: Fri, 14 Jun 2019 23:59:30 GMT  
		Size: 59.5 MB (59523908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c86dcf2750e03fb0c1f6964d166ccff88b57ec86165a17e0fb92f959d3bc07`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844988e8d76b090a29b7a3b20bd6b2c34b04c95c1c1fa7864e89397d1a81468e`  
		Last Modified: Fri, 14 Jun 2019 23:59:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98fb96951324775e834221a272bd9d33721727a15b1d7cd0799066cb56cfba`  
		Last Modified: Fri, 14 Jun 2019 23:59:39 GMT  
		Size: 2.5 MB (2454899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81391b1bc9af018cd5c760f30bd57cf7e73ea68f5ac9cfe08d0c764a1943cd6`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190073dfbecb7416cdeefc537b1d934a24d66d49e7de1ecae6f0baf2f3d2b32e`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 760.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db2b13df5e9060c4a0da932473d2636a55f5b07f05b347ef77c624817dda2b`  
		Last Modified: Fri, 14 Jun 2019 23:59:38 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:503e385dce4bb6c9f7055de7a4b3d140f745141dbd264e8768641d0cc87f66d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea1e83230121d825144bc8c65add8cc1e48b270469d7292eed9f26460347301`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Fri, 14 Jun 2019 22:39:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 14 Jun 2019 22:39:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:35 GMT
CMD ["sh"]
# Fri, 14 Jun 2019 22:39:41 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 14 Jun 2019 22:39:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jun 2019 22:39:43 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 14 Jun 2019 22:39:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 14 Jun 2019 22:39:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Fri, 14 Jun 2019 22:39:45 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jun 2019 22:39:45 GMT
EXPOSE 2375
# Fri, 14 Jun 2019 22:39:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jun 2019 22:39:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adabd41ca0121c892b3dfe46bc4610f393d4119cdf4d973baabe15f3f973291`  
		Last Modified: Fri, 14 Jun 2019 22:41:09 GMT  
		Size: 57.0 MB (57010068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba09c63eda90a780149df3c019841fa719f6ea4baa8d6bf5c1b4503ad7a1c8`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fed78b0891d3b426c3f99ccb18e9b8565f905cd9b2f1bc48d5fad7e534a04c`  
		Last Modified: Fri, 14 Jun 2019 22:40:48 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac7fe3c138d257fd0d136f846662a1c5c043d4e84e879de3a9f878bf0a98069`  
		Last Modified: Fri, 14 Jun 2019 22:41:23 GMT  
		Size: 4.8 MB (4810204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b3c67ad30d0329bb8034ece1d48a2d8cb1e415456ded295e0db01edc0bdc6e`  
		Last Modified: Fri, 14 Jun 2019 22:41:22 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe88ce1612c596c17071437bc9bd04d9b99b49205f5fa57a220ed3ce1abd1e7e`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f3e26608b572ec53805f4a4620bbf4247715f5907c367334c6d5e4625b3818`  
		Last Modified: Fri, 14 Jun 2019 22:41:21 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
