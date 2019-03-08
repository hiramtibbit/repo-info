## `docker:dind`

```console
$ docker pull docker@sha256:c66def86a07d97af72273e4a7b53880c1ad854a84017860600358b9a6b37b3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:7f2fb54d31bb9d9c1d3b723631e1418985eaac234cd54d0fdd2348efee10b5da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e924caedbd3e5245ad95cc7471168e923391b22dcb559decebe4a378a06939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_VERSION=18.09.3
# Thu, 07 Mar 2019 23:17:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 07 Mar 2019 23:17:27 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:28 GMT
CMD ["sh"]
# Thu, 07 Mar 2019 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 07 Mar 2019 23:17:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 07 Mar 2019 23:17:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 07 Mar 2019 23:17:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 07 Mar 2019 23:17:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:17:38 GMT
VOLUME [/var/lib/docker]
# Thu, 07 Mar 2019 23:17:38 GMT
EXPOSE 2375
# Thu, 07 Mar 2019 23:17:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 07 Mar 2019 23:17:39 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2868e3d1f4babb93f4f0f62d7b98f22b3bb5c2a2e873ed5a90b8cd666935be63`  
		Last Modified: Thu, 07 Mar 2019 23:18:47 GMT  
		Size: 48.5 MB (48519551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f6cb1b8ba7a2d05a5c67059c0b62bad375b2295694a890ba09b5cea8ae188`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43826924a95a51b28731a177952e403a4ce24ba55b45ab6bcc41a0903ddb328`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4770db71125ab7135e28304ec3d3d7aadcd2fac8135b45ac5109e93883d42126`  
		Last Modified: Thu, 07 Mar 2019 23:18:56 GMT  
		Size: 4.8 MB (4769781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b6f417d329c41d376a7a9d2f9cdc4485ec0988ef28db24ff8c096880637c63`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643874589690f4cc221b70adeda4038aba5e4c625f042bfd5847818cc742b008`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b7ef78ea7fde7802bde1f64201a182fc61440058ba8ffa87586291589df68f`  
		Last Modified: Thu, 07 Mar 2019 23:18:55 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:3c40ff262a47e787cd46b57cb63c61e3fd223d3e2895d43c78b06b8de7da1823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51329787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfda491998d8faf78a8d02fa7a525ec8e58d51615306775c154475f2e3a3276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 08:49:20 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 08:49:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 08:49:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 08:49:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 08:49:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 08:49:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 08:49:39 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 08:49:41 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 08:49:41 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 08:49:42 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 08:49:42 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 08:49:43 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 08:49:43 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fa260a443cd0a3651053badd458d0d5404038f1861cafb2c56b8ea2ebeca0a`  
		Last Modified: Sat, 02 Mar 2019 08:50:37 GMT  
		Size: 45.7 MB (45717793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74a87d492561b6e9d8d9743e5e6d80bf8d092386d1393f35172b46777eea4c`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69320a7f4b0d1c0cb0726ffef40c42ae234afc7e88baad65373f1d35ba49668`  
		Last Modified: Sat, 02 Mar 2019 08:50:20 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a84719ed745d998cd03822bc2609789241c207ad9f6ea5ef3e223824e132a21`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9202b5bd68b3b25a992abd8ec4f07921b893f9de6a5bb847d0c90a47bdf60fd8`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608de6ca6c33ace31c5fef6214bbcc30396a03e9e07eeb66f1e05c86b9e4ad58`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5444fc7855ecde27e6067f0dfcb964b628f8b7fd832a7e08a13eacc2ce6f3f81`  
		Last Modified: Sat, 02 Mar 2019 08:50:53 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cc17ba23fbec4a47e52249871aaf02aee9f5db873cd930852181c13bb791cb64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51443039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e917010a328deaa7bdb1502b05126433303a74ca010ed49fc2e0a58d6e0d69`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 02 Mar 2019 09:48:16 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 09:48:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 09:48:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:31 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 09:48:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 09:48:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 09:48:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 09:48:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 09:48:50 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 09:48:51 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 09:48:52 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 09:48:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 09:48:54 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4661054ace5fc5064ed426453532b2dbba9117f919eaa83e4f9ee42802851ff`  
		Last Modified: Sat, 02 Mar 2019 09:50:09 GMT  
		Size: 43.6 MB (43638783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeca90bc611a401b573728c43f94d91406a19e46ebc321d94b34217557e008`  
		Last Modified: Sat, 02 Mar 2019 09:49:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e40e7b78464e485910f1c022a257f81752dc26c6c0ed73ded6d2840cf171ae`  
		Last Modified: Sat, 02 Mar 2019 09:49:53 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100e50909d25f1caa6a16839dc2d28626dba0be099cfa333a4282f935a7ae26`  
		Last Modified: Sat, 02 Mar 2019 09:50:28 GMT  
		Size: 4.8 MB (4809812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae4214331a460c8eeeb11d01a738d9ec4c72593ae94952d133ac4775fddd623`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ed4b9a8d2a2a137e631d7825ca9586009ebd9a74578547ccd96abc1428614e`  
		Last Modified: Sat, 02 Mar 2019 09:50:27 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827ac8284eacff60aba25a29c039f7bec3fe0a567548d9ded489fb6777378ec1`  
		Last Modified: Sat, 02 Mar 2019 09:50:26 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
