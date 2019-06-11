## `spiped:latest`

```console
$ docker pull spiped@sha256:56c0a5874cebb2b93b60311207a004e8497a50ad69574f8f23f787a7617070c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:latest` - linux; amd64

```console
$ docker pull spiped@sha256:d134acdf1a6b9f27ec7c77c5aced296ef45cbefda00a55e2150c4c1a517c63b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30261348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8580d949c0262aa14518cf03a9092f5a56edfba4ff0d56c654e4f7d2ff8dc694`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:34:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 02:34:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:34:32 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 02:34:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 02:34:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 02:35:17 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 02:35:18 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 02:35:18 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 02:35:18 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:35:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 02:35:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f54fd55800937e513366f98e60b21980e74d5f99a06d71108be0ce46cc0899a`  
		Last Modified: Tue, 11 Jun 2019 02:35:39 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225ab9f2f991156c5180a9b33ec06d5d69204a4271c3499305f51412755d1044`  
		Last Modified: Tue, 11 Jun 2019 02:35:39 GMT  
		Size: 1.9 MB (1891366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92cb60745dbb566e674fdc5b9881f83301723d978d9b1fa6b1bec2f3612aaa8`  
		Last Modified: Tue, 11 Jun 2019 02:35:41 GMT  
		Size: 5.9 MB (5878488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615a797b3b2114aa2570c3c98cff8f53221e2cc672a77d83057ef23b53a1aaa9`  
		Last Modified: Tue, 11 Jun 2019 02:35:39 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e601848c6e70ac28ccda4d2d159cdbceb49ad7894f7e436c1a1e3948c92dde83`  
		Last Modified: Tue, 11 Jun 2019 02:35:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:023d86e437d02d43942de98e51d60e80293a3eaaa756d8f1f31c50259ff37258
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27743919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d235b80fd093d6d109be3fbd9ef4097cb06f64fc53f86b3da6f65dafe286cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:47:34 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 01:47:45 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:47:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 01:47:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 01:47:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 01:48:33 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 01:48:34 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 01:48:35 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 01:48:35 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:48:36 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96dfc7f216e6d8e7a475f9a7a370a613bc6af34b1830426dbe91f0845c721817`  
		Last Modified: Tue, 11 Jun 2019 01:48:53 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629658baf1c2e44e2b310134bf5eb90ce8ab5b14d9e0626a72e60a76f6bfb9db`  
		Last Modified: Tue, 11 Jun 2019 01:48:54 GMT  
		Size: 1.6 MB (1632473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d7d3195b620954f7e1b990144d8d02a8a1bf2b514000e8146cb95ce176ee2a`  
		Last Modified: Tue, 11 Jun 2019 01:48:57 GMT  
		Size: 5.0 MB (4953393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb62b3c5348efc739467901ba5ec57a3ffee5f622076b5e8e2d7374e4e25ea83`  
		Last Modified: Tue, 11 Jun 2019 01:48:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef96254ae07a15ddc68f55e0a67b03a58be60ee3bac512da49e636482b8219a`  
		Last Modified: Tue, 11 Jun 2019 01:48:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:fe5a016165ceb94dc9178a62acd485c35d4915c4af5188b45c418feed1432e0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4694b1c8a4cc162a0db5e1a3fdf40aac53c22cbdb8a8d141b28eeaacf8a076ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:19:37 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 01:19:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:19:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 01:19:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 01:19:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 01:20:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 01:20:36 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 01:20:36 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 01:20:37 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:20:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:20:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98384a81126e6120d84e00e41d7671ea11032bcab5c4768c500e0b292f5a0fc`  
		Last Modified: Tue, 11 Jun 2019 01:21:01 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6181dabe50c58362830629e89d69a8d3eae87c14c1c6bbcaba8a6517655d0034`  
		Last Modified: Tue, 11 Jun 2019 01:21:02 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a11f97deed090d0380044a8867a10be39128a65f01c870802ae820e7700139c`  
		Last Modified: Tue, 11 Jun 2019 01:21:04 GMT  
		Size: 4.7 MB (4708944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2d3b25c0117e01bdf5fb8a09dae83dbc826f145118c4da2380f1e94e6ee18`  
		Last Modified: Tue, 11 Jun 2019 01:21:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05f4e30ce3320fc98148591411c30ac472581dc156da1266f0d8040a42263eb`  
		Last Modified: Tue, 11 Jun 2019 01:21:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:792554fb2d46a0d81231425577d0609735163ebe2a26619a5203e8a240a36d02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27198516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef42c5407f7d684de5966f89951cfaf45dc1e5fdc927a8da3184bbace9cf565`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:34:17 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 00:34:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 00:34:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 00:34:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 00:35:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:35:07 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 00:35:07 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 00:35:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:35:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404b963bfada3c20d23ff05b874ff5c1231e2498697cf72f065019eaef935f1`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1959fc4de4d2c4c95c398425b853de45708e6e90b3db332fce8640cecbe37888`  
		Last Modified: Tue, 11 Jun 2019 00:36:00 GMT  
		Size: 1.6 MB (1623670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c13b97af25ae427fdb88e884009dd7d8c8d1cb4528550f2f70e1b4e84d04ed`  
		Last Modified: Tue, 11 Jun 2019 00:36:01 GMT  
		Size: 5.2 MB (5238833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc67e43acc214d603c07db7deeb399c484be7fc9d3436af9b2f877ba3861a51`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c24db3fba19d7814a4dddb7ae56a086726eb638819dc78d3cf435ede8471b3f`  
		Last Modified: Tue, 11 Jun 2019 00:35:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:8fc08f02d8a6d706a88fafd0767f6331636d225718b1dc60a9ae02a0f4249402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499a252a3cd051ca2d6c5bc65c564872cfc8f1bb7d8397c57de73a5a9a8e7882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:40:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 08 May 2019 19:40:43 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:40:43 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 08 May 2019 19:40:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 08 May 2019 19:41:09 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 08 May 2019 19:41:09 GMT
VOLUME [/spiped]
# Wed, 08 May 2019 19:41:09 GMT
WORKDIR /spiped
# Wed, 08 May 2019 19:41:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 08 May 2019 19:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:41:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b469c93feb13638afdd2d6d34e9491eec45acf7daa4fbe448da4b2e5837501fe`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4a48973b7af0d9bda368a523040fe0e44ee181f4861ecf2ede5a9793effda6`  
		Last Modified: Wed, 08 May 2019 19:41:24 GMT  
		Size: 1.9 MB (1885407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed564b6100872afd5b59c5448c6b292c3c1e45fa4ec0308ef9d042d212f4de3d`  
		Last Modified: Wed, 08 May 2019 19:41:26 GMT  
		Size: 9.3 MB (9311756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b485aa0efb90e8aa9eb28031fdf725522831d38e088ad020ab1a4d13e4727c8`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b6f33bf844532c07eef7d6b4842ab9a97c8f227db93b52bfc6f74670770b5a`  
		Last Modified: Wed, 08 May 2019 19:41:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:cd38b8a804681644b2850db98c7352244f6a6797154e7fde15c03c8322281eaa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30158468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c2df091643d10c41df0fabecd43cc364662b3b2ebbe7a8e9eabd83a722650b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 04:30:40 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 04:30:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:31:01 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 04:31:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 04:31:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 04:33:52 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 04:33:55 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 04:33:59 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 04:34:00 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 04:34:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 04:34:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194120a3ef508ba68119a8a0456d7f1332fcbc1c2b48fdf3ab9e361ef429f9b6`  
		Last Modified: Tue, 11 Jun 2019 04:36:15 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6466f08c1d48a50f03fb0285b3f8a99c493df075a10d4f51bbd1ec06a6787c2d`  
		Last Modified: Tue, 11 Jun 2019 04:36:16 GMT  
		Size: 1.6 MB (1561321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8830842e7b9b4b904857bc7f1cd6d377a48b76a871b2344d3f25cd40cfa95466`  
		Last Modified: Tue, 11 Jun 2019 04:36:18 GMT  
		Size: 5.9 MB (5850006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b02efdbce60b238cc6988d2933da239e420c5f3acf8b62e817132b49d47746`  
		Last Modified: Tue, 11 Jun 2019 04:36:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413e07f3016c8a0cd2e134fe42cdd40bbc601c8dc9f5af4db0b9a798e4d4a499`  
		Last Modified: Tue, 11 Jun 2019 04:36:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:a32b13aa7838e441e2d228599e1b555c6d0e67a263860eda54587f5fc78a008e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30739197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7f11fbf150d98d9acc30466d1804e61d1966eac02f2196af1f233b3b3e0d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:16:09 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 02:16:13 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:16:14 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 02:16:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 02:16:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 02:16:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 02:16:41 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 02:16:41 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 02:16:41 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:16:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 02:16:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2052a9418eef669967f8e45a46b95ce35b0bca92e8f49ca16f92aeb385a988`  
		Last Modified: Tue, 11 Jun 2019 02:16:57 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc938fd9a7182617014bb43fea9fbfe7f303547f9f7fa23c271d3c21412961c`  
		Last Modified: Tue, 11 Jun 2019 02:16:58 GMT  
		Size: 1.6 MB (1625670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb4fdafdbc330357f57560f3a6700ad461196c6663fe45211438807e21ab9de`  
		Last Modified: Tue, 11 Jun 2019 02:16:59 GMT  
		Size: 6.8 MB (6772488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce16da766696c69640d1d945a9fd09f7f16517382b88ca0cf356cd19146e815`  
		Last Modified: Tue, 11 Jun 2019 02:16:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0809c7c5633e728b03e9d8c3730d5623c8ec7f8a5666157abcacdc05accf7e`  
		Last Modified: Tue, 11 Jun 2019 02:16:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
