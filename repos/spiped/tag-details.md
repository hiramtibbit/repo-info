<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1`](#spiped1)
-	[`spiped:1.6`](#spiped16)
-	[`spiped:1.6.0`](#spiped160)
-	[`spiped:1.6.0-alpine`](#spiped160-alpine)
-	[`spiped:1.6-alpine`](#spiped16-alpine)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:alpine`](#spipedalpine)
-	[`spiped:latest`](#spipedlatest)

## `spiped:1`

```console
$ docker pull spiped@sha256:15f3896875ce258d3cd156c46422c7852b20b041b16a6cef39d7dd3481920d3c
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

### `spiped:1` - linux; amd64

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

### `spiped:1` - linux; arm variant v5

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

### `spiped:1` - linux; arm variant v7

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

### `spiped:1` - linux; arm64 variant v8

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

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:4b24e590eaa621b7af92943e040768f90c3bb1df85fc17e5655abf9f6c70cb4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11675f8bb8daa2eb4e2b5193628e0f5785e57c2ef18efc4deb0fa741d2f2bc7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:07:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 09:07:53 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:07:53 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 09:08:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 09:08:28 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 09:08:29 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 09:08:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:08:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc6c4a793392aea7480f8954faf97381f6247c4033b81bd7174f5e9268b7e1b`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5952c5120e7d9637400368dfab6407bb1bb08d689b3e19d2a5fb5d225b556e70`  
		Last Modified: Tue, 11 Jun 2019 09:08:51 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43feaac8dd500c7b47fd4554fc87907663087805e8414b85c50805ae585e8f00`  
		Last Modified: Tue, 11 Jun 2019 09:08:54 GMT  
		Size: 9.3 MB (9312002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e019ad0ec63c7a88c9858a47bbbca0991f6956de929b8c1226198a5dad6d4f80`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf4a1421d144b2f4737d038e1af0fd9fd536cebf7dc5483129ed100244a8`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

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

### `spiped:1` - linux; s390x

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

## `spiped:1.6`

```console
$ docker pull spiped@sha256:15f3896875ce258d3cd156c46422c7852b20b041b16a6cef39d7dd3481920d3c
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

### `spiped:1.6` - linux; amd64

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

### `spiped:1.6` - linux; arm variant v5

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

### `spiped:1.6` - linux; arm variant v7

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

### `spiped:1.6` - linux; arm64 variant v8

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

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:4b24e590eaa621b7af92943e040768f90c3bb1df85fc17e5655abf9f6c70cb4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11675f8bb8daa2eb4e2b5193628e0f5785e57c2ef18efc4deb0fa741d2f2bc7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:07:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 09:07:53 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:07:53 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 09:08:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 09:08:28 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 09:08:29 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 09:08:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:08:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc6c4a793392aea7480f8954faf97381f6247c4033b81bd7174f5e9268b7e1b`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5952c5120e7d9637400368dfab6407bb1bb08d689b3e19d2a5fb5d225b556e70`  
		Last Modified: Tue, 11 Jun 2019 09:08:51 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43feaac8dd500c7b47fd4554fc87907663087805e8414b85c50805ae585e8f00`  
		Last Modified: Tue, 11 Jun 2019 09:08:54 GMT  
		Size: 9.3 MB (9312002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e019ad0ec63c7a88c9858a47bbbca0991f6956de929b8c1226198a5dad6d4f80`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf4a1421d144b2f4737d038e1af0fd9fd536cebf7dc5483129ed100244a8`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

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

### `spiped:1.6` - linux; s390x

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

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:15f3896875ce258d3cd156c46422c7852b20b041b16a6cef39d7dd3481920d3c
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

### `spiped:1.6.0` - linux; amd64

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

### `spiped:1.6.0` - linux; arm variant v5

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

### `spiped:1.6.0` - linux; arm variant v7

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

### `spiped:1.6.0` - linux; arm64 variant v8

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

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:4b24e590eaa621b7af92943e040768f90c3bb1df85fc17e5655abf9f6c70cb4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11675f8bb8daa2eb4e2b5193628e0f5785e57c2ef18efc4deb0fa741d2f2bc7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:07:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 09:07:53 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:07:53 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 09:08:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 09:08:28 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 09:08:29 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 09:08:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:08:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc6c4a793392aea7480f8954faf97381f6247c4033b81bd7174f5e9268b7e1b`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5952c5120e7d9637400368dfab6407bb1bb08d689b3e19d2a5fb5d225b556e70`  
		Last Modified: Tue, 11 Jun 2019 09:08:51 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43feaac8dd500c7b47fd4554fc87907663087805e8414b85c50805ae585e8f00`  
		Last Modified: Tue, 11 Jun 2019 09:08:54 GMT  
		Size: 9.3 MB (9312002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e019ad0ec63c7a88c9858a47bbbca0991f6956de929b8c1226198a5dad6d4f80`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf4a1421d144b2f4737d038e1af0fd9fd536cebf7dc5483129ed100244a8`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

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

### `spiped:1.6.0` - linux; s390x

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

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:7476ae1ec82e9fb0b7c405d200ee535f0d34ab3b6eced59ef818f56214b593d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6.0-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:b11503377a9198273ae060c8bbc8d53df9b0c1110fb86d53ad2d9290e40f38ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549fe8dc0f0ae0a7c291623c3f015724e12b2e728c2c40a8d06fb6ba45233def`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:19:43 GMT
ADD file:fef3b00b3ae63967d8f4d83174b3fcecb55c9bada02b3e4f5a9b79a21b6c3bb3 in / 
# Wed, 19 Jun 2019 21:19:43 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:00:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:00:09 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:00:10 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:00:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:00:31 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:00:31 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:00:31 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:00:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:00:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:921b31ab772b38172fd9f942a40fae6db24decbd6706f67836260d47a72baab5`  
		Last Modified: Wed, 19 Jun 2019 21:20:26 GMT  
		Size: 2.8 MB (2789589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071f6897941df4cc32be293333399eb4d2a6fece4f234208bff34663ae7320f`  
		Last Modified: Fri, 21 Jun 2019 21:00:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f535f630b0da8b72997c77cdc8297bf66d4a73dcec928302324b9c71f25e8207`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 6.3 KB (6316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf90add7bf4a9327e1de7d4e364d87936cbeff4bcd4e7e192c6beffdf08bf89`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 79.4 KB (79401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfa0a87619d3f1f1e7aa2157c8505df5dc86c9dd47129d7da236881a090b8e5`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfd4a79734eb022477dba0f8932e6cd1091731b71fc9472a667f5cbb047fc53`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:86fd28f104c7384db983a4aed9e61e53261256a2290e92dd0de954677720866e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbacf9cb8fe8f4d88f49cb7b56a6057ef96ef97ebdeb79d8441d3e65617f79b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:49:36 GMT
ADD file:03b59368fa7e7f72a84a6f78b72e59d6bf46d5109acc13aecbab7c8c440e4add in / 
# Wed, 19 Jun 2019 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:57:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:57:31 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:57:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:57:51 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:57:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:57:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:57:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:57:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:257a368dd99250a68424e4023851034502f33df88589bf37646c56babc8e2e81`  
		Last Modified: Wed, 19 Jun 2019 20:50:09 GMT  
		Size: 2.6 MB (2568299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de643deebd4416e322f2a5d4a3e50e324c76512c97dbf484bae03c052482ebb`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c884a8c3574747b8f54756355d3caee573ae59051fa1a3dd6f21275a5e7ead34`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 6.3 KB (6314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1692aa6bbce8b4b4b28bb8ad5a6a2f1783bcade92f8a0cd01a85e70d0f7d2db`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 68.0 KB (67980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c01b7954831e1e48b5d3bc4bb8130e19928e61efe2a1900710e778a6ce9a67`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59bcf9d32868e129369d8ae913910293463977ad6926e78ec481c9cf815bd39`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f9a0692fc21bd5e34160bc5a8099930958cd0aeb6531fe21c06f632a51a29dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2445137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4528fe52a7d8e0b2bf12400087ddb0f30a833675f04297504b284fae22f8a2c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:57:43 GMT
ADD file:0fb1a3eecd6693893c4c94275505763f0c6432d1cbd38fea5c27baa5256b32aa in / 
# Wed, 19 Jun 2019 20:57:44 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:01:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:01:03 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:01:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:01:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:01:22 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:01:23 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:01:24 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:01:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd0f3c17efd43a26a5fce1692600c9a45e087cd84f50f61df6780702cc0050fe`  
		Last Modified: Wed, 19 Jun 2019 20:58:07 GMT  
		Size: 2.4 MB (2375311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dfd8c604bb92c7fac253e4fc28d139b07cc297ade3b449d717acd18807fa99`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441f181d55aefcbb53b9b2b720d2b8f76d7f019398267bf2ca68f62ad1d1d5b6`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 6.3 KB (6332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce6dbb02753edd27b612316248fe9a255a691d95f6564503c5ca41e365254ec`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 61.7 KB (61735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5475180cdbf375be26a71ce909b4cf81b5c73a8d3077e966ad1dd0fb7dc3f82c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed72c32aeeeccea61083e2eb50e96734b61ff8ded9d4fec95fb304ac29ab4d4c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:036f446c3aa35ee45d957ac40bc1b1c71cddb87bdadce52cdb4de1d5ef6d6939
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244b42aa51fe7c7b2f22f180cabea740137d77ad7691ad0b9fde775a7d9b0143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:38 GMT
ADD file:5ff5a563323bccd2fa42c7839aa0e7b4041af209e44bcb5bc9e07c4a94074b66 in / 
# Wed, 19 Jun 2019 20:39:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:45:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:45:24 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:45:24 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:45:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:45:44 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:45:45 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:45:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:54e94bcddc88729dd11dea70b3489452e71c2d5f846551f59fdeb807af4319d7`  
		Last Modified: Wed, 19 Jun 2019 20:40:29 GMT  
		Size: 2.7 MB (2714576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94911c0bddddb910060f1c129bdfb2923a92bcba1bb9c484b1f16d02223d26`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a916bf8fa5f69c02fdab7ac9463706bc0a4cafffefc9a703187096f2ec0252b`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 6.3 KB (6326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bc4a4af8b7349004a86a4edcf2995e89383c28737cab83f035843123d29722`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 74.6 KB (74623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d23d794739020aff66e305927d8cab547f39a0c510fb8982fedb10f16dac1d9`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d115556fbb9ab649698564eb2eee9f40d17c5ffb87df3b58e24865c544933a7`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:9bbff3a192902a90797bd6f49b5448566a2f4956d864211e7721871186ceb23d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2872969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb324862c47c65d30c1f5cf4f34a63897e58d5712305430e1fd9d20bed13600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:38:55 GMT
ADD file:189b665b005d2449f1fb47b0601a64959d4df9daa34b0d5b5838a40f4cbd87af in / 
# Wed, 19 Jun 2019 20:38:55 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:22:53 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:22:54 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:23:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:23:05 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:23:05 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:23:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:23:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:930516d818d36eff6bb5ab126dfe9acca74ceab0121dc56c4a60e59033e73ad2`  
		Last Modified: Wed, 19 Jun 2019 20:39:33 GMT  
		Size: 2.8 MB (2777221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a2e639b803dc73cb25e6e6c46460c44321b48b46453355f47e57ccf0bb06a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62701be26ef565dcd24ac2691ca3c4402e3fe84c9da804a126d7180bfcc953fa`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 6.3 KB (6340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e890eebfade8ab519409f3cd71292fc1e7468a7a22cfbb6134c03aaff483ea6a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 87.7 KB (87712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7d23a0d77dfb79c10c1c081fccbcb760ea85b5a2bbcc49efbc599682fdbdfc`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6b19184029979870f46c3c9de66c97dd11df70b18688368f96e329e4c7680a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:40c96f4ed4785af6f6ddd14fc7fb94d0c729b1cbb269c1a620bc4a19e6579b9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2902814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f31e1d9c13354564b4b9ab9310a6a00064261ee7135dea2b060fc1526896b7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:24 GMT
ADD file:65df5bd8e9475a716f29e673c07c988f7dee4276826cc09c2f912c8471de3903 in / 
# Wed, 19 Jun 2019 21:20:25 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:43:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:43:17 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:43:19 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:43:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:43:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:43:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:43:50 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:43:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:43:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:43:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:774d1c824114747b62a96c94f3856fcbbc117ea204e801d43acfd7735b9c6b6c`  
		Last Modified: Wed, 19 Jun 2019 21:21:28 GMT  
		Size: 2.8 MB (2806316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a64c7d5a43e526f6fe7a272d6b4e439f32b1286bc0b0603be4af9c4eb25d985`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7825b6b1847a9e9fc831b049ca242ab18e63dd3c8f8a11fb776680ae32b5`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 6.3 KB (6342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35fe6be31ff63cbe41aebbf40c15f122e94a433a082510791bc95cb31719e34`  
		Last Modified: Fri, 21 Jun 2019 20:44:18 GMT  
		Size: 88.4 KB (88397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034a9347f2d680d435c212d6a574d72921787433dab268a0d1777f2d73055919`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b8132c7854bb6ffe492f46cfecbebf4cd76b5d80f0bca75d36d5a43a887dc`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:683197593770f62c021db5699a2717df90bf50ab33221baf3c4615a9059aa2cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2650936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ee6f758e8787603e620fe83c56b069f4da67b954dc7c09883cd7a07d1cf792`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:41:48 GMT
ADD file:1ef73640a5f885504655c88e9b4086090c61ab5304de3f4613faa793293a285a in / 
# Wed, 19 Jun 2019 20:41:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:02:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:02:29 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:02:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:02:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:02:41 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:02:42 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:02:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:02:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d7f83980907ca45ebe6a825ca787438c1431aed60fe2145407c2fb808e5f141`  
		Last Modified: Wed, 19 Jun 2019 20:42:16 GMT  
		Size: 2.6 MB (2570285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c944fd377d18cce14c7332e8535402f14cf3e7f868efedb6bd76d0df2b6ef2e`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf1e18dd00bf27cbb3e864554410943bf1a956c79e419f425bc9c32e27cdfc1`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 6.3 KB (6321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0b83b4efd1f698cb772fd86798e7d86319187dfa061f23e65f0ec7219bf47b`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 72.6 KB (72632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf13fb901ca461d5c90af9c4bcafe72fc025f492b91e249b00d01e5dd8bdcb0`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba65abe0a07dc348e560f7aefe6bf60e963623b575b02f07e3aa7ea9a43398`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:7476ae1ec82e9fb0b7c405d200ee535f0d34ab3b6eced59ef818f56214b593d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:b11503377a9198273ae060c8bbc8d53df9b0c1110fb86d53ad2d9290e40f38ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549fe8dc0f0ae0a7c291623c3f015724e12b2e728c2c40a8d06fb6ba45233def`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:19:43 GMT
ADD file:fef3b00b3ae63967d8f4d83174b3fcecb55c9bada02b3e4f5a9b79a21b6c3bb3 in / 
# Wed, 19 Jun 2019 21:19:43 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:00:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:00:09 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:00:10 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:00:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:00:31 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:00:31 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:00:31 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:00:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:00:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:921b31ab772b38172fd9f942a40fae6db24decbd6706f67836260d47a72baab5`  
		Last Modified: Wed, 19 Jun 2019 21:20:26 GMT  
		Size: 2.8 MB (2789589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071f6897941df4cc32be293333399eb4d2a6fece4f234208bff34663ae7320f`  
		Last Modified: Fri, 21 Jun 2019 21:00:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f535f630b0da8b72997c77cdc8297bf66d4a73dcec928302324b9c71f25e8207`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 6.3 KB (6316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf90add7bf4a9327e1de7d4e364d87936cbeff4bcd4e7e192c6beffdf08bf89`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 79.4 KB (79401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfa0a87619d3f1f1e7aa2157c8505df5dc86c9dd47129d7da236881a090b8e5`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfd4a79734eb022477dba0f8932e6cd1091731b71fc9472a667f5cbb047fc53`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:86fd28f104c7384db983a4aed9e61e53261256a2290e92dd0de954677720866e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbacf9cb8fe8f4d88f49cb7b56a6057ef96ef97ebdeb79d8441d3e65617f79b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:49:36 GMT
ADD file:03b59368fa7e7f72a84a6f78b72e59d6bf46d5109acc13aecbab7c8c440e4add in / 
# Wed, 19 Jun 2019 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:57:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:57:31 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:57:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:57:51 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:57:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:57:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:57:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:57:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:257a368dd99250a68424e4023851034502f33df88589bf37646c56babc8e2e81`  
		Last Modified: Wed, 19 Jun 2019 20:50:09 GMT  
		Size: 2.6 MB (2568299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de643deebd4416e322f2a5d4a3e50e324c76512c97dbf484bae03c052482ebb`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c884a8c3574747b8f54756355d3caee573ae59051fa1a3dd6f21275a5e7ead34`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 6.3 KB (6314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1692aa6bbce8b4b4b28bb8ad5a6a2f1783bcade92f8a0cd01a85e70d0f7d2db`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 68.0 KB (67980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c01b7954831e1e48b5d3bc4bb8130e19928e61efe2a1900710e778a6ce9a67`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59bcf9d32868e129369d8ae913910293463977ad6926e78ec481c9cf815bd39`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f9a0692fc21bd5e34160bc5a8099930958cd0aeb6531fe21c06f632a51a29dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2445137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4528fe52a7d8e0b2bf12400087ddb0f30a833675f04297504b284fae22f8a2c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:57:43 GMT
ADD file:0fb1a3eecd6693893c4c94275505763f0c6432d1cbd38fea5c27baa5256b32aa in / 
# Wed, 19 Jun 2019 20:57:44 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:01:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:01:03 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:01:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:01:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:01:22 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:01:23 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:01:24 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:01:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd0f3c17efd43a26a5fce1692600c9a45e087cd84f50f61df6780702cc0050fe`  
		Last Modified: Wed, 19 Jun 2019 20:58:07 GMT  
		Size: 2.4 MB (2375311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dfd8c604bb92c7fac253e4fc28d139b07cc297ade3b449d717acd18807fa99`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441f181d55aefcbb53b9b2b720d2b8f76d7f019398267bf2ca68f62ad1d1d5b6`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 6.3 KB (6332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce6dbb02753edd27b612316248fe9a255a691d95f6564503c5ca41e365254ec`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 61.7 KB (61735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5475180cdbf375be26a71ce909b4cf81b5c73a8d3077e966ad1dd0fb7dc3f82c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed72c32aeeeccea61083e2eb50e96734b61ff8ded9d4fec95fb304ac29ab4d4c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:036f446c3aa35ee45d957ac40bc1b1c71cddb87bdadce52cdb4de1d5ef6d6939
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244b42aa51fe7c7b2f22f180cabea740137d77ad7691ad0b9fde775a7d9b0143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:38 GMT
ADD file:5ff5a563323bccd2fa42c7839aa0e7b4041af209e44bcb5bc9e07c4a94074b66 in / 
# Wed, 19 Jun 2019 20:39:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:45:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:45:24 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:45:24 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:45:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:45:44 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:45:45 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:45:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:54e94bcddc88729dd11dea70b3489452e71c2d5f846551f59fdeb807af4319d7`  
		Last Modified: Wed, 19 Jun 2019 20:40:29 GMT  
		Size: 2.7 MB (2714576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94911c0bddddb910060f1c129bdfb2923a92bcba1bb9c484b1f16d02223d26`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a916bf8fa5f69c02fdab7ac9463706bc0a4cafffefc9a703187096f2ec0252b`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 6.3 KB (6326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bc4a4af8b7349004a86a4edcf2995e89383c28737cab83f035843123d29722`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 74.6 KB (74623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d23d794739020aff66e305927d8cab547f39a0c510fb8982fedb10f16dac1d9`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d115556fbb9ab649698564eb2eee9f40d17c5ffb87df3b58e24865c544933a7`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:9bbff3a192902a90797bd6f49b5448566a2f4956d864211e7721871186ceb23d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2872969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb324862c47c65d30c1f5cf4f34a63897e58d5712305430e1fd9d20bed13600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:38:55 GMT
ADD file:189b665b005d2449f1fb47b0601a64959d4df9daa34b0d5b5838a40f4cbd87af in / 
# Wed, 19 Jun 2019 20:38:55 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:22:53 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:22:54 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:23:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:23:05 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:23:05 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:23:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:23:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:930516d818d36eff6bb5ab126dfe9acca74ceab0121dc56c4a60e59033e73ad2`  
		Last Modified: Wed, 19 Jun 2019 20:39:33 GMT  
		Size: 2.8 MB (2777221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a2e639b803dc73cb25e6e6c46460c44321b48b46453355f47e57ccf0bb06a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62701be26ef565dcd24ac2691ca3c4402e3fe84c9da804a126d7180bfcc953fa`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 6.3 KB (6340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e890eebfade8ab519409f3cd71292fc1e7468a7a22cfbb6134c03aaff483ea6a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 87.7 KB (87712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7d23a0d77dfb79c10c1c081fccbcb760ea85b5a2bbcc49efbc599682fdbdfc`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6b19184029979870f46c3c9de66c97dd11df70b18688368f96e329e4c7680a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:40c96f4ed4785af6f6ddd14fc7fb94d0c729b1cbb269c1a620bc4a19e6579b9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2902814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f31e1d9c13354564b4b9ab9310a6a00064261ee7135dea2b060fc1526896b7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:24 GMT
ADD file:65df5bd8e9475a716f29e673c07c988f7dee4276826cc09c2f912c8471de3903 in / 
# Wed, 19 Jun 2019 21:20:25 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:43:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:43:17 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:43:19 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:43:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:43:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:43:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:43:50 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:43:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:43:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:43:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:774d1c824114747b62a96c94f3856fcbbc117ea204e801d43acfd7735b9c6b6c`  
		Last Modified: Wed, 19 Jun 2019 21:21:28 GMT  
		Size: 2.8 MB (2806316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a64c7d5a43e526f6fe7a272d6b4e439f32b1286bc0b0603be4af9c4eb25d985`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7825b6b1847a9e9fc831b049ca242ab18e63dd3c8f8a11fb776680ae32b5`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 6.3 KB (6342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35fe6be31ff63cbe41aebbf40c15f122e94a433a082510791bc95cb31719e34`  
		Last Modified: Fri, 21 Jun 2019 20:44:18 GMT  
		Size: 88.4 KB (88397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034a9347f2d680d435c212d6a574d72921787433dab268a0d1777f2d73055919`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b8132c7854bb6ffe492f46cfecbebf4cd76b5d80f0bca75d36d5a43a887dc`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:683197593770f62c021db5699a2717df90bf50ab33221baf3c4615a9059aa2cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2650936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ee6f758e8787603e620fe83c56b069f4da67b954dc7c09883cd7a07d1cf792`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:41:48 GMT
ADD file:1ef73640a5f885504655c88e9b4086090c61ab5304de3f4613faa793293a285a in / 
# Wed, 19 Jun 2019 20:41:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:02:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:02:29 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:02:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:02:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:02:41 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:02:42 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:02:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:02:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d7f83980907ca45ebe6a825ca787438c1431aed60fe2145407c2fb808e5f141`  
		Last Modified: Wed, 19 Jun 2019 20:42:16 GMT  
		Size: 2.6 MB (2570285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c944fd377d18cce14c7332e8535402f14cf3e7f868efedb6bd76d0df2b6ef2e`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf1e18dd00bf27cbb3e864554410943bf1a956c79e419f425bc9c32e27cdfc1`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 6.3 KB (6321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0b83b4efd1f698cb772fd86798e7d86319187dfa061f23e65f0ec7219bf47b`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 72.6 KB (72632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf13fb901ca461d5c90af9c4bcafe72fc025f492b91e249b00d01e5dd8bdcb0`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba65abe0a07dc348e560f7aefe6bf60e963623b575b02f07e3aa7ea9a43398`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:7476ae1ec82e9fb0b7c405d200ee535f0d34ab3b6eced59ef818f56214b593d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:b11503377a9198273ae060c8bbc8d53df9b0c1110fb86d53ad2d9290e40f38ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549fe8dc0f0ae0a7c291623c3f015724e12b2e728c2c40a8d06fb6ba45233def`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:19:43 GMT
ADD file:fef3b00b3ae63967d8f4d83174b3fcecb55c9bada02b3e4f5a9b79a21b6c3bb3 in / 
# Wed, 19 Jun 2019 21:19:43 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:00:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:00:09 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:00:10 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:00:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:00:31 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:00:31 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:00:31 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:00:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:00:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:921b31ab772b38172fd9f942a40fae6db24decbd6706f67836260d47a72baab5`  
		Last Modified: Wed, 19 Jun 2019 21:20:26 GMT  
		Size: 2.8 MB (2789589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071f6897941df4cc32be293333399eb4d2a6fece4f234208bff34663ae7320f`  
		Last Modified: Fri, 21 Jun 2019 21:00:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f535f630b0da8b72997c77cdc8297bf66d4a73dcec928302324b9c71f25e8207`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 6.3 KB (6316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf90add7bf4a9327e1de7d4e364d87936cbeff4bcd4e7e192c6beffdf08bf89`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 79.4 KB (79401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfa0a87619d3f1f1e7aa2157c8505df5dc86c9dd47129d7da236881a090b8e5`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfd4a79734eb022477dba0f8932e6cd1091731b71fc9472a667f5cbb047fc53`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:86fd28f104c7384db983a4aed9e61e53261256a2290e92dd0de954677720866e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbacf9cb8fe8f4d88f49cb7b56a6057ef96ef97ebdeb79d8441d3e65617f79b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:49:36 GMT
ADD file:03b59368fa7e7f72a84a6f78b72e59d6bf46d5109acc13aecbab7c8c440e4add in / 
# Wed, 19 Jun 2019 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:57:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:57:31 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:57:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:57:51 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:57:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:57:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:57:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:57:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:257a368dd99250a68424e4023851034502f33df88589bf37646c56babc8e2e81`  
		Last Modified: Wed, 19 Jun 2019 20:50:09 GMT  
		Size: 2.6 MB (2568299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de643deebd4416e322f2a5d4a3e50e324c76512c97dbf484bae03c052482ebb`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c884a8c3574747b8f54756355d3caee573ae59051fa1a3dd6f21275a5e7ead34`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 6.3 KB (6314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1692aa6bbce8b4b4b28bb8ad5a6a2f1783bcade92f8a0cd01a85e70d0f7d2db`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 68.0 KB (67980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c01b7954831e1e48b5d3bc4bb8130e19928e61efe2a1900710e778a6ce9a67`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59bcf9d32868e129369d8ae913910293463977ad6926e78ec481c9cf815bd39`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f9a0692fc21bd5e34160bc5a8099930958cd0aeb6531fe21c06f632a51a29dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2445137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4528fe52a7d8e0b2bf12400087ddb0f30a833675f04297504b284fae22f8a2c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:57:43 GMT
ADD file:0fb1a3eecd6693893c4c94275505763f0c6432d1cbd38fea5c27baa5256b32aa in / 
# Wed, 19 Jun 2019 20:57:44 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:01:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:01:03 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:01:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:01:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:01:22 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:01:23 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:01:24 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:01:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd0f3c17efd43a26a5fce1692600c9a45e087cd84f50f61df6780702cc0050fe`  
		Last Modified: Wed, 19 Jun 2019 20:58:07 GMT  
		Size: 2.4 MB (2375311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dfd8c604bb92c7fac253e4fc28d139b07cc297ade3b449d717acd18807fa99`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441f181d55aefcbb53b9b2b720d2b8f76d7f019398267bf2ca68f62ad1d1d5b6`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 6.3 KB (6332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce6dbb02753edd27b612316248fe9a255a691d95f6564503c5ca41e365254ec`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 61.7 KB (61735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5475180cdbf375be26a71ce909b4cf81b5c73a8d3077e966ad1dd0fb7dc3f82c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed72c32aeeeccea61083e2eb50e96734b61ff8ded9d4fec95fb304ac29ab4d4c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:036f446c3aa35ee45d957ac40bc1b1c71cddb87bdadce52cdb4de1d5ef6d6939
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244b42aa51fe7c7b2f22f180cabea740137d77ad7691ad0b9fde775a7d9b0143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:38 GMT
ADD file:5ff5a563323bccd2fa42c7839aa0e7b4041af209e44bcb5bc9e07c4a94074b66 in / 
# Wed, 19 Jun 2019 20:39:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:45:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:45:24 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:45:24 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:45:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:45:44 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:45:45 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:45:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:54e94bcddc88729dd11dea70b3489452e71c2d5f846551f59fdeb807af4319d7`  
		Last Modified: Wed, 19 Jun 2019 20:40:29 GMT  
		Size: 2.7 MB (2714576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94911c0bddddb910060f1c129bdfb2923a92bcba1bb9c484b1f16d02223d26`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a916bf8fa5f69c02fdab7ac9463706bc0a4cafffefc9a703187096f2ec0252b`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 6.3 KB (6326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bc4a4af8b7349004a86a4edcf2995e89383c28737cab83f035843123d29722`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 74.6 KB (74623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d23d794739020aff66e305927d8cab547f39a0c510fb8982fedb10f16dac1d9`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d115556fbb9ab649698564eb2eee9f40d17c5ffb87df3b58e24865c544933a7`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:9bbff3a192902a90797bd6f49b5448566a2f4956d864211e7721871186ceb23d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2872969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb324862c47c65d30c1f5cf4f34a63897e58d5712305430e1fd9d20bed13600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:38:55 GMT
ADD file:189b665b005d2449f1fb47b0601a64959d4df9daa34b0d5b5838a40f4cbd87af in / 
# Wed, 19 Jun 2019 20:38:55 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:22:53 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:22:54 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:23:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:23:05 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:23:05 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:23:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:23:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:930516d818d36eff6bb5ab126dfe9acca74ceab0121dc56c4a60e59033e73ad2`  
		Last Modified: Wed, 19 Jun 2019 20:39:33 GMT  
		Size: 2.8 MB (2777221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a2e639b803dc73cb25e6e6c46460c44321b48b46453355f47e57ccf0bb06a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62701be26ef565dcd24ac2691ca3c4402e3fe84c9da804a126d7180bfcc953fa`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 6.3 KB (6340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e890eebfade8ab519409f3cd71292fc1e7468a7a22cfbb6134c03aaff483ea6a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 87.7 KB (87712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7d23a0d77dfb79c10c1c081fccbcb760ea85b5a2bbcc49efbc599682fdbdfc`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6b19184029979870f46c3c9de66c97dd11df70b18688368f96e329e4c7680a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:40c96f4ed4785af6f6ddd14fc7fb94d0c729b1cbb269c1a620bc4a19e6579b9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2902814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f31e1d9c13354564b4b9ab9310a6a00064261ee7135dea2b060fc1526896b7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:24 GMT
ADD file:65df5bd8e9475a716f29e673c07c988f7dee4276826cc09c2f912c8471de3903 in / 
# Wed, 19 Jun 2019 21:20:25 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:43:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:43:17 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:43:19 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:43:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:43:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:43:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:43:50 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:43:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:43:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:43:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:774d1c824114747b62a96c94f3856fcbbc117ea204e801d43acfd7735b9c6b6c`  
		Last Modified: Wed, 19 Jun 2019 21:21:28 GMT  
		Size: 2.8 MB (2806316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a64c7d5a43e526f6fe7a272d6b4e439f32b1286bc0b0603be4af9c4eb25d985`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7825b6b1847a9e9fc831b049ca242ab18e63dd3c8f8a11fb776680ae32b5`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 6.3 KB (6342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35fe6be31ff63cbe41aebbf40c15f122e94a433a082510791bc95cb31719e34`  
		Last Modified: Fri, 21 Jun 2019 20:44:18 GMT  
		Size: 88.4 KB (88397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034a9347f2d680d435c212d6a574d72921787433dab268a0d1777f2d73055919`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b8132c7854bb6ffe492f46cfecbebf4cd76b5d80f0bca75d36d5a43a887dc`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:683197593770f62c021db5699a2717df90bf50ab33221baf3c4615a9059aa2cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2650936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ee6f758e8787603e620fe83c56b069f4da67b954dc7c09883cd7a07d1cf792`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:41:48 GMT
ADD file:1ef73640a5f885504655c88e9b4086090c61ab5304de3f4613faa793293a285a in / 
# Wed, 19 Jun 2019 20:41:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:02:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:02:29 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:02:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:02:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:02:41 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:02:42 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:02:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:02:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d7f83980907ca45ebe6a825ca787438c1431aed60fe2145407c2fb808e5f141`  
		Last Modified: Wed, 19 Jun 2019 20:42:16 GMT  
		Size: 2.6 MB (2570285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c944fd377d18cce14c7332e8535402f14cf3e7f868efedb6bd76d0df2b6ef2e`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf1e18dd00bf27cbb3e864554410943bf1a956c79e419f425bc9c32e27cdfc1`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 6.3 KB (6321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0b83b4efd1f698cb772fd86798e7d86319187dfa061f23e65f0ec7219bf47b`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 72.6 KB (72632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf13fb901ca461d5c90af9c4bcafe72fc025f492b91e249b00d01e5dd8bdcb0`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba65abe0a07dc348e560f7aefe6bf60e963623b575b02f07e3aa7ea9a43398`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:7476ae1ec82e9fb0b7c405d200ee535f0d34ab3b6eced59ef818f56214b593d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:b11503377a9198273ae060c8bbc8d53df9b0c1110fb86d53ad2d9290e40f38ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549fe8dc0f0ae0a7c291623c3f015724e12b2e728c2c40a8d06fb6ba45233def`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:19:43 GMT
ADD file:fef3b00b3ae63967d8f4d83174b3fcecb55c9bada02b3e4f5a9b79a21b6c3bb3 in / 
# Wed, 19 Jun 2019 21:19:43 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:00:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:00:09 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:00:10 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:00:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:00:31 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:00:31 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:00:31 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:00:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:00:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:921b31ab772b38172fd9f942a40fae6db24decbd6706f67836260d47a72baab5`  
		Last Modified: Wed, 19 Jun 2019 21:20:26 GMT  
		Size: 2.8 MB (2789589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071f6897941df4cc32be293333399eb4d2a6fece4f234208bff34663ae7320f`  
		Last Modified: Fri, 21 Jun 2019 21:00:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f535f630b0da8b72997c77cdc8297bf66d4a73dcec928302324b9c71f25e8207`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 6.3 KB (6316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf90add7bf4a9327e1de7d4e364d87936cbeff4bcd4e7e192c6beffdf08bf89`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 79.4 KB (79401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfa0a87619d3f1f1e7aa2157c8505df5dc86c9dd47129d7da236881a090b8e5`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfd4a79734eb022477dba0f8932e6cd1091731b71fc9472a667f5cbb047fc53`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:86fd28f104c7384db983a4aed9e61e53261256a2290e92dd0de954677720866e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbacf9cb8fe8f4d88f49cb7b56a6057ef96ef97ebdeb79d8441d3e65617f79b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:49:36 GMT
ADD file:03b59368fa7e7f72a84a6f78b72e59d6bf46d5109acc13aecbab7c8c440e4add in / 
# Wed, 19 Jun 2019 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:57:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:57:31 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:57:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:57:51 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:57:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:57:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:57:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:57:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:257a368dd99250a68424e4023851034502f33df88589bf37646c56babc8e2e81`  
		Last Modified: Wed, 19 Jun 2019 20:50:09 GMT  
		Size: 2.6 MB (2568299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de643deebd4416e322f2a5d4a3e50e324c76512c97dbf484bae03c052482ebb`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c884a8c3574747b8f54756355d3caee573ae59051fa1a3dd6f21275a5e7ead34`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 6.3 KB (6314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1692aa6bbce8b4b4b28bb8ad5a6a2f1783bcade92f8a0cd01a85e70d0f7d2db`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 68.0 KB (67980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c01b7954831e1e48b5d3bc4bb8130e19928e61efe2a1900710e778a6ce9a67`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59bcf9d32868e129369d8ae913910293463977ad6926e78ec481c9cf815bd39`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f9a0692fc21bd5e34160bc5a8099930958cd0aeb6531fe21c06f632a51a29dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2445137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4528fe52a7d8e0b2bf12400087ddb0f30a833675f04297504b284fae22f8a2c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:57:43 GMT
ADD file:0fb1a3eecd6693893c4c94275505763f0c6432d1cbd38fea5c27baa5256b32aa in / 
# Wed, 19 Jun 2019 20:57:44 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:01:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:01:03 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:01:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:01:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:01:22 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:01:23 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:01:24 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:01:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd0f3c17efd43a26a5fce1692600c9a45e087cd84f50f61df6780702cc0050fe`  
		Last Modified: Wed, 19 Jun 2019 20:58:07 GMT  
		Size: 2.4 MB (2375311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dfd8c604bb92c7fac253e4fc28d139b07cc297ade3b449d717acd18807fa99`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441f181d55aefcbb53b9b2b720d2b8f76d7f019398267bf2ca68f62ad1d1d5b6`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 6.3 KB (6332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce6dbb02753edd27b612316248fe9a255a691d95f6564503c5ca41e365254ec`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 61.7 KB (61735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5475180cdbf375be26a71ce909b4cf81b5c73a8d3077e966ad1dd0fb7dc3f82c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed72c32aeeeccea61083e2eb50e96734b61ff8ded9d4fec95fb304ac29ab4d4c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:036f446c3aa35ee45d957ac40bc1b1c71cddb87bdadce52cdb4de1d5ef6d6939
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244b42aa51fe7c7b2f22f180cabea740137d77ad7691ad0b9fde775a7d9b0143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:38 GMT
ADD file:5ff5a563323bccd2fa42c7839aa0e7b4041af209e44bcb5bc9e07c4a94074b66 in / 
# Wed, 19 Jun 2019 20:39:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:45:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:45:24 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:45:24 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:45:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:45:44 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:45:45 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:45:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:54e94bcddc88729dd11dea70b3489452e71c2d5f846551f59fdeb807af4319d7`  
		Last Modified: Wed, 19 Jun 2019 20:40:29 GMT  
		Size: 2.7 MB (2714576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94911c0bddddb910060f1c129bdfb2923a92bcba1bb9c484b1f16d02223d26`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a916bf8fa5f69c02fdab7ac9463706bc0a4cafffefc9a703187096f2ec0252b`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 6.3 KB (6326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bc4a4af8b7349004a86a4edcf2995e89383c28737cab83f035843123d29722`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 74.6 KB (74623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d23d794739020aff66e305927d8cab547f39a0c510fb8982fedb10f16dac1d9`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d115556fbb9ab649698564eb2eee9f40d17c5ffb87df3b58e24865c544933a7`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:9bbff3a192902a90797bd6f49b5448566a2f4956d864211e7721871186ceb23d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2872969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb324862c47c65d30c1f5cf4f34a63897e58d5712305430e1fd9d20bed13600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:38:55 GMT
ADD file:189b665b005d2449f1fb47b0601a64959d4df9daa34b0d5b5838a40f4cbd87af in / 
# Wed, 19 Jun 2019 20:38:55 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:22:53 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:22:54 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:23:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:23:05 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:23:05 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:23:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:23:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:930516d818d36eff6bb5ab126dfe9acca74ceab0121dc56c4a60e59033e73ad2`  
		Last Modified: Wed, 19 Jun 2019 20:39:33 GMT  
		Size: 2.8 MB (2777221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a2e639b803dc73cb25e6e6c46460c44321b48b46453355f47e57ccf0bb06a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62701be26ef565dcd24ac2691ca3c4402e3fe84c9da804a126d7180bfcc953fa`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 6.3 KB (6340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e890eebfade8ab519409f3cd71292fc1e7468a7a22cfbb6134c03aaff483ea6a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 87.7 KB (87712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7d23a0d77dfb79c10c1c081fccbcb760ea85b5a2bbcc49efbc599682fdbdfc`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6b19184029979870f46c3c9de66c97dd11df70b18688368f96e329e4c7680a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:40c96f4ed4785af6f6ddd14fc7fb94d0c729b1cbb269c1a620bc4a19e6579b9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2902814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f31e1d9c13354564b4b9ab9310a6a00064261ee7135dea2b060fc1526896b7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:24 GMT
ADD file:65df5bd8e9475a716f29e673c07c988f7dee4276826cc09c2f912c8471de3903 in / 
# Wed, 19 Jun 2019 21:20:25 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:43:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:43:17 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:43:19 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:43:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:43:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:43:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:43:50 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:43:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:43:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:43:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:774d1c824114747b62a96c94f3856fcbbc117ea204e801d43acfd7735b9c6b6c`  
		Last Modified: Wed, 19 Jun 2019 21:21:28 GMT  
		Size: 2.8 MB (2806316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a64c7d5a43e526f6fe7a272d6b4e439f32b1286bc0b0603be4af9c4eb25d985`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7825b6b1847a9e9fc831b049ca242ab18e63dd3c8f8a11fb776680ae32b5`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 6.3 KB (6342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35fe6be31ff63cbe41aebbf40c15f122e94a433a082510791bc95cb31719e34`  
		Last Modified: Fri, 21 Jun 2019 20:44:18 GMT  
		Size: 88.4 KB (88397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034a9347f2d680d435c212d6a574d72921787433dab268a0d1777f2d73055919`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b8132c7854bb6ffe492f46cfecbebf4cd76b5d80f0bca75d36d5a43a887dc`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:683197593770f62c021db5699a2717df90bf50ab33221baf3c4615a9059aa2cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2650936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ee6f758e8787603e620fe83c56b069f4da67b954dc7c09883cd7a07d1cf792`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:41:48 GMT
ADD file:1ef73640a5f885504655c88e9b4086090c61ab5304de3f4613faa793293a285a in / 
# Wed, 19 Jun 2019 20:41:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:02:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:02:29 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:02:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:02:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:02:41 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:02:42 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:02:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:02:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d7f83980907ca45ebe6a825ca787438c1431aed60fe2145407c2fb808e5f141`  
		Last Modified: Wed, 19 Jun 2019 20:42:16 GMT  
		Size: 2.6 MB (2570285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c944fd377d18cce14c7332e8535402f14cf3e7f868efedb6bd76d0df2b6ef2e`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf1e18dd00bf27cbb3e864554410943bf1a956c79e419f425bc9c32e27cdfc1`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 6.3 KB (6321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0b83b4efd1f698cb772fd86798e7d86319187dfa061f23e65f0ec7219bf47b`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 72.6 KB (72632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf13fb901ca461d5c90af9c4bcafe72fc025f492b91e249b00d01e5dd8bdcb0`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba65abe0a07dc348e560f7aefe6bf60e963623b575b02f07e3aa7ea9a43398`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:15f3896875ce258d3cd156c46422c7852b20b041b16a6cef39d7dd3481920d3c
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
$ docker pull spiped@sha256:4b24e590eaa621b7af92943e040768f90c3bb1df85fc17e5655abf9f6c70cb4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34320455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11675f8bb8daa2eb4e2b5193628e0f5785e57c2ef18efc4deb0fa741d2f2bc7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:07:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 11 Jun 2019 09:07:53 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:07:53 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 11 Jun 2019 09:07:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 11 Jun 2019 09:08:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 09:08:28 GMT
VOLUME [/spiped]
# Tue, 11 Jun 2019 09:08:29 GMT
WORKDIR /spiped
# Tue, 11 Jun 2019 09:08:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:08:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc6c4a793392aea7480f8954faf97381f6247c4033b81bd7174f5e9268b7e1b`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5952c5120e7d9637400368dfab6407bb1bb08d689b3e19d2a5fb5d225b556e70`  
		Last Modified: Tue, 11 Jun 2019 09:08:51 GMT  
		Size: 1.9 MB (1885410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43feaac8dd500c7b47fd4554fc87907663087805e8414b85c50805ae585e8f00`  
		Last Modified: Tue, 11 Jun 2019 09:08:54 GMT  
		Size: 9.3 MB (9312002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e019ad0ec63c7a88c9858a47bbbca0991f6956de929b8c1226198a5dad6d4f80`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf4a1421d144b2f4737d038e1af0fd9fd536cebf7dc5483129ed100244a8`  
		Last Modified: Tue, 11 Jun 2019 09:08:50 GMT  
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
