## `docker:rc-dind`

```console
$ docker pull docker@sha256:3cfa9b563448f28aef7192b4411448c8f7942bcf693a50736f454c858b017dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:81adf6f47c0ce33e29948603060ee515af83b6a8e237f1ed532755523e97ccf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56366692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c12d207db035c7cacb7304227f39287419653e09b5dab1cc5c7375ce224ee14`
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
# Fri, 22 Mar 2019 00:19:27 GMT
ENV DOCKER_CHANNEL=test
# Fri, 22 Mar 2019 00:19:28 GMT
ENV DOCKER_VERSION=18.09.4-rc1
# Fri, 22 Mar 2019 00:19:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Mar 2019 00:19:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Mar 2019 00:19:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Mar 2019 00:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 00:19:33 GMT
CMD ["sh"]
# Fri, 22 Mar 2019 00:19:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Mar 2019 00:19:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Mar 2019 00:19:38 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Mar 2019 00:19:39 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Mar 2019 00:19:39 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Mar 2019 00:19:39 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Mar 2019 00:19:40 GMT
EXPOSE 2375
# Fri, 22 Mar 2019 00:19:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Mar 2019 00:19:40 GMT
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
	-	`sha256:d4586ec4a945d1a41385c81666da5b36bfcf49cd4cfaca37419a123f152cec6e`  
		Last Modified: Fri, 22 Mar 2019 00:20:29 GMT  
		Size: 48.5 MB (48536271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6161a0aecc6c86babc0a0feaf92b1a3a8ac83a697cf2a861199533486a48f8`  
		Last Modified: Fri, 22 Mar 2019 00:20:18 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cabc50bba0a02050eb0f10cff71baeed0843611ad179bdd5625ace8b73423d4`  
		Last Modified: Fri, 22 Mar 2019 00:20:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b4496baaf0a9c6f1a8ff8049996c19e95b7df23bccf0c41b3abf977fb5bd22`  
		Last Modified: Fri, 22 Mar 2019 00:20:35 GMT  
		Size: 4.8 MB (4769759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f65c8fa1b4e17bf40725335dd8222a41450c46f9ca37870b2b2d1e8bfd0005`  
		Last Modified: Fri, 22 Mar 2019 00:20:34 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2f821bd7e8d0e6be015089655814e5d5a53106454ea273ce2c016081e2a0aa`  
		Last Modified: Fri, 22 Mar 2019 00:20:34 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef61b7d431505ad784a379aa37baec9c4bab392e3f0e1ecf25103f292a3d0cfa`  
		Last Modified: Fri, 22 Mar 2019 00:20:34 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:157f4a9d161fd5a6b969457f1f052f6bc8fe357f2bba492659aae5534917df3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51342573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967a3b38bc4ce13e09f2eb84907de3c7014880201e368d39496a12b409a784ed`
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
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_VERSION=18.09.4-rc1
# Fri, 22 Mar 2019 07:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Mar 2019 07:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Mar 2019 07:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Mar 2019 07:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 07:49:33 GMT
CMD ["sh"]
# Fri, 22 Mar 2019 07:49:40 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Mar 2019 07:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Mar 2019 07:49:41 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Mar 2019 07:49:43 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Mar 2019 07:49:43 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Mar 2019 07:49:44 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Mar 2019 07:49:44 GMT
EXPOSE 2375
# Fri, 22 Mar 2019 07:49:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Mar 2019 07:49:45 GMT
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
	-	`sha256:3694df6e2ae6b62595ac9578635aecc8eabde1e637095a90b0377ea26dc498bd`  
		Last Modified: Fri, 22 Mar 2019 07:50:54 GMT  
		Size: 45.7 MB (45730758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d79ed08cd8cb6cea59f3a6cb8652734362ba4f796558aaa1cfbe4f28a7dfd6d`  
		Last Modified: Fri, 22 Mar 2019 07:50:38 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1975d27d171901d852e225fbf98cf59ee494c5784379f345a54bc3dc45b880`  
		Last Modified: Fri, 22 Mar 2019 07:50:38 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8af660cc6660708c2e0b2bb3525ea383b85754a97a4184497696ab2a7813de`  
		Last Modified: Fri, 22 Mar 2019 07:51:06 GMT  
		Size: 2.8 MB (2764955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be927951a742b0ebc4bf6e7fd58f6b1352d714e7638662456286f86f03c7585`  
		Last Modified: Fri, 22 Mar 2019 07:51:05 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aeb521771b4fa93f79b1e6ba457fdf3fbe7aa77d89f3c9b6c09dfbc02f65aa9`  
		Last Modified: Fri, 22 Mar 2019 07:51:04 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0733851e46ba9c95fad90d2b964453d2fd4f2cb3db1333b765895e6c37b6ed4`  
		Last Modified: Fri, 22 Mar 2019 07:51:04 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c20efc8e3789079c8cc9e2543d238e3ba7a8720f29ecf1dd65ebfa6de6a3045b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51463583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d051eef2c627ab4b59a5962eb9058d9f1d58894f493bd254c3720f6aae3384`
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
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_VERSION=18.09.4-rc1
# Fri, 22 Mar 2019 08:42:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 22 Mar 2019 08:42:30 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 22 Mar 2019 08:42:30 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 22 Mar 2019 08:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 08:42:32 GMT
CMD ["sh"]
# Fri, 22 Mar 2019 08:42:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 22 Mar 2019 08:42:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 22 Mar 2019 08:42:46 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 22 Mar 2019 08:42:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 22 Mar 2019 08:42:49 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 22 Mar 2019 08:42:50 GMT
VOLUME [/var/lib/docker]
# Fri, 22 Mar 2019 08:42:51 GMT
EXPOSE 2375
# Fri, 22 Mar 2019 08:42:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 22 Mar 2019 08:42:52 GMT
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
	-	`sha256:5bec09a410f511c8a5777e4d3d9953b4e267b29fafa3193ce0d027883df3c449`  
		Last Modified: Fri, 22 Mar 2019 08:44:22 GMT  
		Size: 43.7 MB (43659580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d4cfda82cdba6f666b856616d0a48dcef2e4f18c41fbe1377f6804b17c4ca`  
		Last Modified: Fri, 22 Mar 2019 08:44:03 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100a5c25c136b7f8605556a50fd905712941a0de9ebc8fd17f85b61a8647f629`  
		Last Modified: Fri, 22 Mar 2019 08:44:03 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c471771ba71ec9f5f58af724438e40f8ebb33ee20f9814231068044a30c6cb`  
		Last Modified: Fri, 22 Mar 2019 08:44:38 GMT  
		Size: 4.8 MB (4809694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f7340ddccbac18ba2993df36a2a7abb83955c3b8aaf0aa3b75e4e0a5d9a157`  
		Last Modified: Fri, 22 Mar 2019 08:44:36 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3a98eeed70bc697a7da2558d9d13a192b28ebb9f037ad6c06163d0b898766f`  
		Last Modified: Fri, 22 Mar 2019 08:44:36 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1824980dc100ff17ac5a64f5132d7a9709e88cb212aafb21d20f0aa304c7e6df`  
		Last Modified: Fri, 22 Mar 2019 08:44:36 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
