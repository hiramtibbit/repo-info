## `spiped:latest`

```console
$ docker pull spiped@sha256:e973d0024b0606149749ba89fedee908a2840750bf0a6afcbd2de732ef781007
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
$ docker pull spiped@sha256:3e6bc9e42956488c174eb052fbb4a3326c2eddb7a6c91832e7ff0c96a30fada4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30256635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac97fb5e1163673b2754e589d047e28cef2647e21266c5fdac9f8ae6dfd420c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 06:54:11 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 02 May 2018 06:54:18 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 06:54:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 02 May 2018 06:54:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 02 May 2018 06:54:18 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 02 May 2018 06:54:49 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 06:54:49 GMT
VOLUME [/spiped]
# Wed, 02 May 2018 06:54:50 GMT
WORKDIR /spiped
# Wed, 02 May 2018 06:54:50 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 02 May 2018 06:54:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 06:54:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b8728ac5b2fa5af1fd77fb2144a0d70e1c7c184aee310d15d64ed48bb59529`  
		Last Modified: Wed, 02 May 2018 07:07:20 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da36bfce43f9c2dce8f0b7b535d7c5bd38d32b12ee128926384be037c6f983a`  
		Last Modified: Wed, 02 May 2018 07:07:21 GMT  
		Size: 1.9 MB (1881417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022a7eeb7ba6140fcb94ad35789f386dc7013b5b620272cd05f793f6f5aaea8c`  
		Last Modified: Wed, 02 May 2018 07:07:21 GMT  
		Size: 5.9 MB (5876999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7f00276226f7309077e7da2d0c9ea8911042954c64c73a5f55c8c6691dc0c3`  
		Last Modified: Wed, 02 May 2018 07:07:21 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7d6093693cd2e4bdaae87a8117aa6d896d23f830d1b2ac9639c4fe1a77853f`  
		Last Modified: Wed, 02 May 2018 07:07:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:e73f33774e2ba292ad97ab05daa637a8b4747a917c9cee3224b5a36d34c0a9d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27751905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d66f9c61e01eec231072c2d369ca21924d4ed747437f35ad2776bdf7bc59ffb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:15:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:16:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:16:06 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:16:42 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:16:42 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:16:42 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:16:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:16:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd77e2a0189b0813d5ed278dcc1b36fe276e866e9895a8f5489789cce856018a`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdd77005eaff80fd0aaa072639b04f96aea85e011577a61e45fc8def7dc1cee`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 1.6 MB (1622907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e542922c2498c6d285ef1dc87b0407442129450895b7c36fcb3e9e93653c98a`  
		Last Modified: Sat, 28 Apr 2018 12:16:59 GMT  
		Size: 5.0 MB (4951116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af636ab0005a163dece2ce400259194c3e16e93df87bc6656a05257bf06b032d`  
		Last Modified: Sat, 28 Apr 2018 12:16:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2a42e5e9db654c1853e22ff75c3af104c30717c4b6af84cd4b8e17db3867c1`  
		Last Modified: Sat, 28 Apr 2018 12:16:57 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:23885e4ba17cba87e0caa5f4babc426c38f9a752a0138005364ac256c91f5a7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25560730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3934ce65de83e6eeb2f3145a3927f8dc88ee978ec475e6ab760216806487728f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:31:30 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 15:31:36 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:31:36 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 15:31:37 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 15:31:37 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 15:32:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:32:07 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 15:32:07 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 15:32:08 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:32:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc99ef703b23a9b7a503b9ceafe37a64b3e971d43c94d30a4c8844a5e967f0`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4480200cf21d8dc50d13f86c490f1299220b2caf1d83e5ab10c3bd361ffb6568`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 1.6 MB (1564311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febe5141bf7588eed49ee4a9312cdca0815007cded7ab017c2d0449131d72ee2`  
		Last Modified: Sat, 28 Apr 2018 15:32:33 GMT  
		Size: 4.7 MB (4707416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09fc5a064e78ca191d61be1a168963352f5f29798406899ec472bbb0e83a27b`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d8eb2319203499f8729cb7181492b9a17a7b37a3233e8a718470eb42259306`  
		Last Modified: Sat, 28 Apr 2018 15:32:31 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:a38273ab2ac122eb978b4e4bdf7dc3e4662f164ee83d01716015da41870ef93f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27201012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666f773a5f0f8fc6871e98b6fe3c4fe153470120abb4a6ec9cf25c8b60655648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:47:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 01 May 2018 12:47:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 12:47:38 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 01 May 2018 12:47:38 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 01 May 2018 12:47:39 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 01 May 2018 12:49:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 12:49:19 GMT
VOLUME [/spiped]
# Tue, 01 May 2018 12:49:20 GMT
WORKDIR /spiped
# Tue, 01 May 2018 12:49:22 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 01 May 2018 12:49:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:49:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d9cd87c1fef15057a3132592b3b6685c232e59de278e19f1e636f01de106df`  
		Last Modified: Tue, 01 May 2018 12:49:58 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bcce7c92bf8a7ee67c3b9cb69f69c61ad4f9adc69c7d65da970d82741fcace`  
		Last Modified: Tue, 01 May 2018 12:49:59 GMT  
		Size: 1.6 MB (1614879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e06a089dc01089640f094d8839f8151bc97cd5f03f791c49230ef61f81dcae1`  
		Last Modified: Tue, 01 May 2018 12:50:01 GMT  
		Size: 5.2 MB (5236031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b2b3f15142865e07bb9c5f6cce0dd327546e56a37dab9103611a4aa8c76c67`  
		Last Modified: Tue, 01 May 2018 12:49:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efd48139e216a67593b957780850b1df17e9440e56c0782361fed5d56ecb001`  
		Last Modified: Tue, 01 May 2018 12:49:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:4ab057b3d820a906e36bca28439c2130d2a89bab82fbc446b13a90e83b9ac159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34316602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588592fead0bfd36e91dbaa82dade4c8fe6e8ee5609ebe6de13104672805351a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:25:51 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 17:25:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:25:57 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 17:25:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 17:25:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 17:26:25 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 17:26:26 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 17:26:26 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 17:26:26 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 17:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 17:26:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2877f245e7a65ce67343c53c187ba3c8de63a8329da7ac07250c4ceb35fa51c`  
		Last Modified: Sat, 28 Apr 2018 17:26:58 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f1c5a48f7bc82970f4dc07a3b7f99f4e6af713c416d368737307feb1796828`  
		Last Modified: Sat, 28 Apr 2018 17:26:58 GMT  
		Size: 1.9 MB (1874187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695e8bc4124adb17e6615ea95eb028053bc62eb660142d4264bbf6d78a8e9b9e`  
		Last Modified: Sat, 28 Apr 2018 17:27:00 GMT  
		Size: 9.3 MB (9301722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4829c759f70c85891075a0c809e58578aa56e48b0f4b2e1bad8d19a47b16bee8`  
		Last Modified: Sat, 28 Apr 2018 17:26:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ee3353315d5708f872db4307977c3208ebdf2d7f2f37e46e2ce6f84f417c0`  
		Last Modified: Sat, 28 Apr 2018 17:26:58 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:edfb97d4a273fb10bb39a3bb3e7b994040b3215b8be008e0b8405d54dccf962a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30153837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac642eab07adeb30bae9dd8f9789ec43813f5975853c6eb12fb9053b24ef534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:57:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 12:58:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 12:58:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 12:58:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 12:59:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:59:30 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 12:59:31 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 12:59:31 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:59:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:59:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d5749fd929baf5f38af36b9e0cc29082ec2ad3b9ad343ca69390540b02e329`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec64c686177f3d64d117aa46347e87f320565f56caf20fe6482324c700e3bc`  
		Last Modified: Sat, 28 Apr 2018 13:00:02 GMT  
		Size: 1.6 MB (1552447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e74437e86762ded58e9b755170236574861c5d601e957a5bcb21415a172f6ea`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 5.8 MB (5846070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207aab2c782258e1c0baf93c444e33abdb13f3d472090a843d48303efb8b1f4a`  
		Last Modified: Sat, 28 Apr 2018 13:00:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6781ab0b3b80ee2221c02b0dbed798c0f9da07c2f5b6a0af5ee63da5ca90c03`  
		Last Modified: Sat, 28 Apr 2018 13:00:04 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:3e30b02f33524f4adec95b5fa12e15d60927ab22269dff9adc58ad432bee101e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30737538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b334ddfddde6fdfa4ace7684a32b7b02b632d194ef85428b0646e92e5cb76051`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:25:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 28 Apr 2018 15:25:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:25:28 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 28 Apr 2018 15:25:28 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 28 Apr 2018 15:25:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 28 Apr 2018 15:25:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:25:47 GMT
VOLUME [/spiped]
# Sat, 28 Apr 2018 15:25:47 GMT
WORKDIR /spiped
# Sat, 28 Apr 2018 15:25:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:25:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:25:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cdea8e2fc895db984808d1a335ef0c35afda3ab94e918c7b2e026468973eab`  
		Last Modified: Sat, 28 Apr 2018 15:26:22 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2694a6d08b4248414c48b6b4ec0784e67d20d4f1f7b3a109c040ce5fe02b3fec`  
		Last Modified: Sat, 28 Apr 2018 15:26:23 GMT  
		Size: 1.6 MB (1615557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c49930aec413f3d32c2e2e59cfbe18e4b6ea0bfefeb96fdde16e77024646888`  
		Last Modified: Sat, 28 Apr 2018 15:26:24 GMT  
		Size: 6.8 MB (6769902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b7d50b36b371050dc96f3cf50f4f281f8cb925f656bd2c4f469ab8bdbc56b2`  
		Last Modified: Sat, 28 Apr 2018 15:26:22 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f14b624ce4e59732e7dccac3c164a8b5d3f308d1c1a69a39d40f4e2217c85fe`  
		Last Modified: Sat, 28 Apr 2018 15:26:22 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
