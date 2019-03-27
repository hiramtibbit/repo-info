## `spiped:latest`

```console
$ docker pull spiped@sha256:77d85d1f14a82ad147832ea4223d2c6ba5f2dfdad43db22d1eb413788d886518
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
$ docker pull spiped@sha256:288d03e90855c467c039b42fdf617f11641eb3c083a6bbf3d8c187eb66dbacab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30267935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6501a4ca3adbb2be5fe0726c5966ce8c1282385104cfcc8d9fba16d7fcc5246c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:27:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 03:27:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:27:44 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 03:27:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 03:28:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 03:28:11 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 03:28:11 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 03:28:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 03:28:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efa62874fa9ee3a28d4f29bbc5a5e74a75e60c9849af876896f1fab525dcee3`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4320eee094d4433d1747676e8533654e75f10d48eaad79467ad58c0e2b1acb`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 1.9 MB (1891382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cf09b7da38a1e551c9cc956eec205ea5e50cc9aa85fcfcc56f07cb9ebfb4e`  
		Last Modified: Wed, 27 Mar 2019 03:28:24 GMT  
		Size: 5.9 MB (5878319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b100f66cd89df86131bf97617a0aa879a21cb2192da1851ccc028265c0b5bd1`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2dec97127839b9ded8b53b4e9d7bc8fad9b2abf8366f6437db557a26268c33`  
		Last Modified: Wed, 27 Mar 2019 03:28:23 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:669ae0c7c7afcf392ca23c9ae8b65c69aa2bcc6bbee60fa2c0fcdf312c9be8e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1800114e33c090e4d78001f3728dd171dadcbb808ddb4488494d0a558f20dac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:46:04 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 11:46:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 11:46:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 11:46:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 11:47:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 11:47:35 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 11:47:35 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 11:47:36 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:47:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:47:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb4352de43c0e60fae432a7386b963879c74ae6fa752bdbecfa5c456445ded`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d95a87a5986aa3e4051531fb695c3640c8986dea91401284934e34f64525b4`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 1.6 MB (1632496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a7318a56c417d3bc90386e56837134101ce44dc1b76eaacfa0669751622f88`  
		Last Modified: Wed, 27 Mar 2019 11:47:54 GMT  
		Size: 5.0 MB (4953273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00059192b792dd497a6196b29642fa5c56f35d5726d97ff660a76214809ff31`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4da1feea4d7edf68fa306045da0f5cb12c03f42a56c9f4340f488cbe6d8e8`  
		Last Modified: Wed, 27 Mar 2019 11:47:52 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:303328baa0ff827a423fd1a1c5942cdc08e77ff7488c0113d6c2a50c80821eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25566908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae5c0234d107eb0baac7b96d75f74574a8df8c9e2ef5704cd41211aa1f6bbdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 16:00:10 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 16:00:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 16:00:19 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 16:00:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 16:01:05 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 16:01:06 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 16:01:06 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 16:01:07 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 16:01:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 16:01:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1079a0e4e27eef8f15fcb4dc66191c3131b53380657665a6aec30171a9ede9`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582de0c844438590bdba8a890e4bed1849b8144a8e72d5b7bab58fda0118b7ae`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 1.6 MB (1573638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e83be5cb61ede383048a46f0b49a3bf75408d1ef02f5c0f10474112ea06f92`  
		Last Modified: Tue, 05 Mar 2019 16:01:29 GMT  
		Size: 4.7 MB (4708558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9ec4e310cd37265d3c7eee858c7f5917e8b5a96bdffc9229b563f47ee801e`  
		Last Modified: Tue, 05 Mar 2019 16:01:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2209b520c251832bf4e9a6783639fa2ff7b668102020de2acc1c5fd27d2540bd`  
		Last Modified: Tue, 05 Mar 2019 16:01:27 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:589ccf3e70de7b31c385e893ecfa702513e626f7a6c78a35c4cbfe88f731f6d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51636bc03e47395d43f474f876aeed4d831879380b31276082171f0a032ee996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:48:03 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 07 Feb 2019 00:48:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:48:43 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 07 Feb 2019 00:48:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 07 Feb 2019 00:48:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 07 Feb 2019 00:52:54 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Feb 2019 00:52:56 GMT
VOLUME [/spiped]
# Thu, 07 Feb 2019 00:52:58 GMT
WORKDIR /spiped
# Thu, 07 Feb 2019 00:52:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 07 Feb 2019 00:53:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 00:53:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3565ce75a9b04ef907f9bc8373e07c3a5669d47000f50af00854c5ece30b4a4`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08c92f2efed3998738e623c117cecc8299ed309171bf2224efebdcd9f971a0`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 1.6 MB (1623652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6192a6210aa3a18f33885a722cbeafe960c3994d8f7ba1c0b01111262dad6fe`  
		Last Modified: Thu, 07 Feb 2019 00:53:26 GMT  
		Size: 5.2 MB (5236809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5365da16b09c00f439a7f5beff12e8a8ab5c9717853c90eab7bf69c5ba2c16f9`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b24e845ce9f097523dd7e4d76d5ee62d75824eeed021243a74fda0bdd14147`  
		Last Modified: Thu, 07 Feb 2019 00:53:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:e54dc515e3615f4534671fd1b63739a67820bb8b5485806bc6b4969de1c98755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34324722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2422f25f8c95be624cf47886751b5569c63eee55a508806083408634c3d1512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:20:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 21:20:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 21:20:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 21:20:33 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 21:20:33 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 21:20:33 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 21:20:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 21:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 21:20:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f111440c76b2bcce0744bda938e41961e4157fd293d45cf779680d62b7d10`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76681ea2809c082ff7a6cfb7185b77615c0f91d0609a5226690819f90dabd64`  
		Last Modified: Tue, 05 Mar 2019 21:20:46 GMT  
		Size: 1.9 MB (1885364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c3f5a1a3bc7caa7eb49c09a83f8f3439f80268e642057cfd7fcce3b1176ccf`  
		Last Modified: Tue, 05 Mar 2019 21:20:48 GMT  
		Size: 9.3 MB (9311498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85211191169be0d0488962c1a8e164c70c167cb71fcdff2d0fdea844f1b5bb12`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aec2072af975505ab2f1956f7ee75726ce78a3b3e8bbcf3078b4741d55ced4`  
		Last Modified: Tue, 05 Mar 2019 21:20:45 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:a90538c4b1450f955b6ba367dee3adf6c317d25923478d961e47f3016435d6f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30164490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28056f8b6309e1448a6ef8b80159f7b67f3a2ac70f355d3bf6c1220758095c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:29:08 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 27 Mar 2019 12:29:25 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:29:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 27 Mar 2019 12:29:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 27 Mar 2019 12:29:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 27 Mar 2019 12:31:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 12:31:39 GMT
VOLUME [/spiped]
# Wed, 27 Mar 2019 12:31:42 GMT
WORKDIR /spiped
# Wed, 27 Mar 2019 12:31:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 12:31:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc5429d64237974ea8695fad2bb34ec4758f4d55fd50bc2de9d824fbf7c8dc`  
		Last Modified: Wed, 27 Mar 2019 12:32:10 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e81ff6fd7c1e79e229ff632b2aed426cce8851c4a3f9058b2c256ae2bfbc5d4`  
		Last Modified: Wed, 27 Mar 2019 12:32:08 GMT  
		Size: 1.6 MB (1561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cf0540fec8bb17ab25b94564a394622b6497650e710bf86504c3805e522d8d`  
		Last Modified: Wed, 27 Mar 2019 12:32:07 GMT  
		Size: 5.8 MB (5849482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f63a6b59ecc1c31747a4040574dc98fd1f7c86b2b15f80ed4acf01b11550609`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e86f733e43c79235771834c6498614921dc5c5c8c368bf76af4ba5470390863`  
		Last Modified: Wed, 27 Mar 2019 12:32:06 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:915d5da4c517f125ec920a769e52db14ab749304a2c26b7d4c7cc89a1e8cd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30745600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e054645d89fc96e4984a6986495c5c8b1dadf0a303deb42e10f8ca15f8f43e86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:44:52 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 05 Mar 2019 15:44:56 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 05 Mar 2019 15:44:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 05 Mar 2019 15:45:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 15:45:20 GMT
VOLUME [/spiped]
# Tue, 05 Mar 2019 15:45:20 GMT
WORKDIR /spiped
# Tue, 05 Mar 2019 15:45:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:45:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:45:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8703f25d6c53db3ca19e8201198e5b332091b988b7db26dd927ca56bb1bff8`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2671cebed7f34d9ae36f28e6ded50035c70d2caa9da5307a829e3b9c00ac01`  
		Last Modified: Tue, 05 Mar 2019 15:45:42 GMT  
		Size: 1.6 MB (1625688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8b8d401d369686122da77612a89df78c2b4ceb9fb44479682743a77698cd7f`  
		Last Modified: Tue, 05 Mar 2019 15:45:43 GMT  
		Size: 6.8 MB (6772339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d5f5498174f820b7ce8715ca72e24e45d98c1552e0b9f40b2c3fe6355cce77`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc63fc57c62818c0ad29b520a1e8cc830586f884ee2f1da31885f95d9bdc1ad`  
		Last Modified: Tue, 05 Mar 2019 15:45:41 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
