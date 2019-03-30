## `docker:dind`

```console
$ docker pull docker@sha256:23a1961a730c4c0663f6ff1870551db13a53eb41b02a077613dc1c0a257f7d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:998e8af57e2387b7d198e273a69733f4f30844e304fa774443624727287ddea0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56368231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ec7b4590e2638ed18d0afff2467a5eea36947c69439a188ed67c3d47e2ef2`
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
# Fri, 29 Mar 2019 21:19:27 GMT
ENV DOCKER_VERSION=18.09.4
# Fri, 29 Mar 2019 21:19:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 29 Mar 2019 21:19:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 29 Mar 2019 21:19:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 29 Mar 2019 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:19:33 GMT
CMD ["sh"]
# Fri, 29 Mar 2019 21:19:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 29 Mar 2019 21:19:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 29 Mar 2019 21:19:38 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 29 Mar 2019 21:19:39 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 29 Mar 2019 21:19:39 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 29 Mar 2019 21:19:39 GMT
VOLUME [/var/lib/docker]
# Fri, 29 Mar 2019 21:19:39 GMT
EXPOSE 2375
# Fri, 29 Mar 2019 21:19:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 29 Mar 2019 21:19:40 GMT
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
	-	`sha256:83465382163b5b99cfe605a77616870015335748133dcf7b6ab83a77ad3fbecd`  
		Last Modified: Fri, 29 Mar 2019 21:20:18 GMT  
		Size: 48.5 MB (48537782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d998591732df0b5988acf128108d26531aa59df9f3d7f3b3a0c9fd4164ac149c`  
		Last Modified: Fri, 29 Mar 2019 21:20:07 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968b299526c53a61095c8be427b4d01420e697a28451da21b6aa2e1ecdcf665a`  
		Last Modified: Fri, 29 Mar 2019 21:20:07 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906054554556aeba8015a576366d853fb6ff715829a44d53bd654881542db61b`  
		Last Modified: Fri, 29 Mar 2019 21:20:25 GMT  
		Size: 4.8 MB (4769793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412c7e8d77a65dffa6e09d91055188bd44e811d1cb07e62de392ae0885de2cae`  
		Last Modified: Fri, 29 Mar 2019 21:20:24 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8403c319bbb20f48c76086258da4dcf228d8b5ba8ba50efdd6f85bc3cdd045`  
		Last Modified: Fri, 29 Mar 2019 21:20:24 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee17887e771d6cd0753882572e114507b8172a6c218315a9245db4441559d318`  
		Last Modified: Fri, 29 Mar 2019 21:20:24 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d98591b334b39504d5fbdf14109421e774976647c49423737663bb39a80ef20c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51340088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b3478eed01cdd42dca103d883043fe1ee984b8d42be9eecd0002b1ca28276`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:34 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 07:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 07:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 07:49:42 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 07:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 07:49:44 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 07:49:44 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 07:49:44 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 07:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 07:49:45 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f1d9d055253663b21dfd64029f814d96c087071e817d2d2dc9270bfbdcf6c`  
		Last Modified: Sat, 30 Mar 2019 07:50:40 GMT  
		Size: 45.7 MB (45728301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f07d7d642b5fa88d181ca658201269cdd73a8d7ede7bc3186dc090cd0a0e5`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bff7302ca5125929bfbe40768262a8635ddf0ba2860920c041a7e82df51801a`  
		Last Modified: Sat, 30 Mar 2019 07:50:24 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcdf9d79309f39478dcb9f0cba0f1731360a1086fdb1aa1cc789ade23344646`  
		Last Modified: Sat, 30 Mar 2019 07:50:53 GMT  
		Size: 2.8 MB (2764927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89b586be8a16ec40e918944107658d56edaa96c52353b293f4855c2423d31c0`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab4b28dbec04294f5efd99cb6f87e93ce805a14982a87af5c82263abcbf410`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6566a06523efc499e91fea2a925a9d8fc3578ccff22887266c9b4d481fd480a`  
		Last Modified: Sat, 30 Mar 2019 07:50:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:23eab83fd6d81ac1ebd1867c8e3ba50f349669beada9074cdb71f81c832fd07f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4006dc52e20bba46a9c585d26a397fdf00591093fc83e9714fbed7a69ba4efe3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 30 Mar 2019 08:39:34 GMT
ENV DOCKER_VERSION=18.09.4
# Sat, 30 Mar 2019 08:39:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 30 Mar 2019 08:39:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 30 Mar 2019 08:39:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:39:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 30 Mar 2019 08:39:47 GMT
CMD ["sh"]
# Sat, 30 Mar 2019 08:39:57 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 30 Mar 2019 08:40:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 30 Mar 2019 08:40:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 30 Mar 2019 08:40:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 30 Mar 2019 08:40:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 30 Mar 2019 08:40:04 GMT
VOLUME [/var/lib/docker]
# Sat, 30 Mar 2019 08:40:05 GMT
EXPOSE 2375
# Sat, 30 Mar 2019 08:40:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 30 Mar 2019 08:40:06 GMT
CMD []
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6f7d9426ada877010e5fa587f984bcf97aadd724259399407ff7a799075146`  
		Last Modified: Sat, 30 Mar 2019 08:41:15 GMT  
		Size: 43.7 MB (43659957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada56d24b867c7e497f12353a40995664452937e77d9c7bfea07a146db8ff909`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bf3eaba9d288373013df662b0ededf8e091f74c55ab5daa7a04dc728720b44`  
		Last Modified: Sat, 30 Mar 2019 08:40:57 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33fa1aa4d1b92ac03fb3b3e17b09c7c168b68d509fd3651cb1b95e901ded82b`  
		Last Modified: Sat, 30 Mar 2019 08:41:33 GMT  
		Size: 4.8 MB (4809793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68624f93064d2cb2d89a1a2fc2df111f7f3fde1dd41ec0258340426c29e01c51`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6e5ebc3b9cfa0b55d2473aecf3bd888cd04bd75b333be22bc667b3a122c8cd`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315781efb5b4f20c86f6227b2ed03495a63899286e8be0d4e8e33ce109c81377`  
		Last Modified: Sat, 30 Mar 2019 08:41:31 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
