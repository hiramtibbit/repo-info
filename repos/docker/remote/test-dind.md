## `docker:test-dind`

```console
$ docker pull docker@sha256:e833aa9350d99e1d211dcf3184d15df494e5dda92a33ae1d70751d5eecbc083f
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
$ docker pull docker@sha256:ac9d6a112a8c98054a752ee533ffa69daeaee3ed023c29133c4df2232274afea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e461a9629ca39051e181c8970604dc4f99fe8e3259ed4e1c9431538e82e63541`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:56:05 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 19 Jun 2019 20:56:06 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 19 Jun 2019 20:56:06 GMT
ENV DOCKER_CHANNEL=test
# Wed, 19 Jun 2019 20:56:07 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 19 Jun 2019 20:56:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		armv7) dockerArch='armhf' ;; 		aarch64) dockerArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 19 Jun 2019 20:56:17 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 19 Jun 2019 20:56:17 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 19 Jun 2019 20:56:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 20:56:18 GMT
CMD ["sh"]
# Wed, 19 Jun 2019 20:56:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 19 Jun 2019 20:56:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 19 Jun 2019 20:56:26 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 19 Jun 2019 20:56:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 19 Jun 2019 20:56:28 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 19 Jun 2019 20:56:28 GMT
VOLUME [/var/lib/docker]
# Wed, 19 Jun 2019 20:56:29 GMT
EXPOSE 2375
# Wed, 19 Jun 2019 20:56:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 19 Jun 2019 20:56:30 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4add8f29bf03f3d6fce96396daad08e0039610b96925452697ea40933ec96ec4`  
		Last Modified: Wed, 19 Jun 2019 20:57:32 GMT  
		Size: 302.4 KB (302429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a54cdb6f8d9efb5c7906e854f297284c50db62dea68960f9665d4e134a2da6`  
		Last Modified: Wed, 19 Jun 2019 20:57:32 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a498d3d7ce2e4e63de77d491be4af324f5b883d262f2f1b0a8de9bde0f50141f`  
		Last Modified: Wed, 19 Jun 2019 20:57:53 GMT  
		Size: 57.0 MB (57010078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a6efc7c43dbc80433f01cdf96b0f9629e53440415c68130bbf2cb24a689b9d`  
		Last Modified: Wed, 19 Jun 2019 20:57:32 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a988bc8c9fe255eed95f6a981053d5306f50b90774fad80e1760fb229a1f7a`  
		Last Modified: Wed, 19 Jun 2019 20:57:32 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2083b0efc0c849d69c20536ce9823899447e812c1068fa651fd3e8663a4d294`  
		Last Modified: Wed, 19 Jun 2019 20:58:04 GMT  
		Size: 4.8 MB (4810207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca96ea62337879bfa8e6209dc58a99627580c7cf928071193125593a071ed8c`  
		Last Modified: Wed, 19 Jun 2019 20:58:03 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450de04d1be5d08ffc36e39e0c6ca8a99dae4c948618a2e9fdfb482fd0639dcc`  
		Last Modified: Wed, 19 Jun 2019 20:58:03 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e7f3a02465aecb82c55a6ed958dbe46dab090ba29b91c063948fa16155752f`  
		Last Modified: Wed, 19 Jun 2019 20:58:03 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
