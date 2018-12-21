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
$ docker pull spiped@sha256:2430fb8575e3188e0f2956b7f7b0f39fff35a2415acfb98b9a4542c02ee5ef31
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
$ docker pull spiped@sha256:eb3eb24b71792409590a79291bfad77997daeddfa60188605887fb8c31afb65d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382c303c1d3255f9332b64eae97b9f61826ee3b300c20862ef0518609c1ec3c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:51:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 17:51:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 17:51:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:51:38 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 17:51:38 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 17:51:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:51:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba59526a912ba6799363acb7ea0701e036cf85d158ef156afb3cbb916f1b6ce9`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0fe6007967d7c7e639729b06d98f073b70463a0428fd258cb55cf3f3c4b3d`  
		Last Modified: Fri, 16 Nov 2018 17:52:47 GMT  
		Size: 1.9 MB (1881468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e033bfa9914a22033bfcdc8a40b6c679c64fd35a530970b3546ab3f13a6275a8`  
		Last Modified: Fri, 16 Nov 2018 17:52:48 GMT  
		Size: 5.9 MB (5877757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e634d2ef35db8ad6f60f2f7b819f00dcdc90cb477b40e737c32cd01c17a04a0`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533121b3db19e31f50bc10eb95c83bb8534a2759c5984fbdd568f7b1c252a028`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:5965ede5602862ac6603e56d8c64f32471fdda44f7eee731535ae0e51b1eae3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb333db521c8b01f2b7d5e2294740ec51a5ef2ac36923d74c2332ac95ae5807f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:14:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:14:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:15:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:15:04 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:15:04 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:15:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:15:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:15:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23557c5d7385b13f022c50e3a8c5ddee8ed5b3d9baebf2cea168670ad45d973`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afacd1b00f1caeaf5197fac7fa88c042de2d5cb5decc3faee6b98fde4f1dd9a4`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.6 MB (1622944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b0ad1de46b1756fbec503b63f0c4e5ad7377de2e4ac4bec026a33595ba9903`  
		Last Modified: Fri, 16 Nov 2018 18:15:37 GMT  
		Size: 5.0 MB (4951518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c469f1a49462b0f1c519985318eeea83b24b679f58901bee3b64ce3849d53914`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ea57fc0f4bc993abae729fd12b0aebd7e83aaed8d421871b10dc1f4252f68`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d938a3a0b0e8cbc7ee0f1b6dbbc77980acd2e0ff31456409efbf993577b89b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6eb669f05bc8e517be765e0aadd4f8771003b6fd10b097e7042f3756575ec47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 20:17:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 20:17:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 20:17:49 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 20:17:50 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 20:17:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 20:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 20:17:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919f9207646099a1835fefab8375e7c36e11fbdaa9887df63b470669b90459d7`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a058001500144ae81880b7448dd805500eded61b96c585efbcbfc363ed765`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.6 MB (1564314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279513020ef38cfc98135399e22a4230802b7daa1e3bf849719ef787008487fe`  
		Last Modified: Fri, 16 Nov 2018 20:18:16 GMT  
		Size: 4.7 MB (4707759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219df776ecbcefea718901303174693af8824c7a0a5006ff7b4885197ea5596`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99985920084270336fe264932d5b209298452a2beb92d1d91316dc06b42b6e95`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5c36b533c6ee559f8859eeb1c9bf3b275677c71d412c80e37bec89773a9b2292
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7678f12152fd2ab96ac1d3bd5ff938ed99b338dd858f7418e7a07549527385c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 07:36:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 07:37:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:37:13 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 07:39:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 07:39:54 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 07:39:55 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469cd84b4ae55ad1f1f8f5e01045de5f062db83132095cf01999a1c6dbba0e7`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac53718a0773eab500c8ce00e74f48edda38af450c6c1e4bdf128909aba040`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.6 MB (1614907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5037b1081a32c456873a634444cb251a28809e2eeebca8813e8841ee9205bf43`  
		Last Modified: Sat, 17 Nov 2018 07:41:43 GMT  
		Size: 5.2 MB (5236443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286b240495e157b88f39964d53cdc708af383e9695d6f7944a38e35e3f33353`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd61ce26938dc227ed87d2887acdc19d85ddc7fc7fc563f8723b6b6e37bc0ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:06 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:c39776b0236d6317a0d96861e7f07a7705b95ba2fb070a9d5e3cb9503823290c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e21cd9554c3d628ea48b005bfa5b7f685676e12a2ed01c42b5da8a7d19418b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:01:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 11:01:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 11:02:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 11:02:42 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 11:02:42 GMT
WORKDIR /spiped
# Sat, 17 Nov 2018 11:02:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 17 Nov 2018 11:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 11:02:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b8646ff7a23a99ffdf4c956f13205463d3e723fac09905a0776f39eba0be52`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2060e0ca05209a87795fe17d89438a714032d724a336837ce4862cba07d448`  
		Last Modified: Sat, 17 Nov 2018 11:03:46 GMT  
		Size: 1.9 MB (1874128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d16bf814fe616e805fda99421e7d3238fce35c2dc7944906fbd3c58e7294c64`  
		Last Modified: Sat, 17 Nov 2018 11:03:50 GMT  
		Size: 9.3 MB (9303299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24a9b8504df1125d1da6c01b342f02142d99cca10eb7229cc19dc9307fa5e5b`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bad285850b16f85f1365556aacdce47cc378ab69e8ad30d178d854cb6bcb85`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:000cd856bc7dc1b2773642c86b81fd51c73b4b052cb3b38650aa37508eb955b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e536a13cfd01645c3299697a0c2fbf5f511017c05a1da5f2d9d93d4bacf1e657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:54:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:54:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:54:41 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:54:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:57:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:57:25 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:57:27 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:57:38 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:57:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:57:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442101cde07847c1bcdd274da446ccb43f6df242db61948086b50f3d7950487`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f35dfb8894392212199bb1d0a5256f5bb1a28a0562ac8cc7e4ce51188266552`  
		Last Modified: Fri, 16 Nov 2018 18:58:48 GMT  
		Size: 1.6 MB (1552470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5050ae8ebf18163091bea99842d91d13c3ea60c2a1f0ad2cf18494f4f75ccdd1`  
		Last Modified: Fri, 16 Nov 2018 18:58:49 GMT  
		Size: 5.8 MB (5847547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2005e4e99347e4c3c309d267e2ecf40712a50389f95862b33e059d4c1a63c4c2`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0caec95fa8f8bac2710878e778db968e7eb626bbe409ba5593c4728681b20d06`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:277c8cf8f35e236d0e2f6fa985f1edd826d3ee16ae1a19dd961a71b00cc6e73e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd228d40af2011b5ac77c9fd078701f3780e6a122a7afc321ab60bf25431ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:54:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 21:55:02 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 21:55:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 21:55:29 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 21:55:30 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 21:55:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 21:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 21:55:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832dd9c27a6630aba7d61cd160ef7ebe63139f8462cb6274c3c70f0eb96fa3b5`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d884edbd2fc756f8700aa5e4f86820c0f9e0ff1189fc5831f60ab55a06d4023c`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 1.6 MB (1615652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d5cf7879c7c6d7197e7c864e722334102b7b029c13593224c04d670aeefdb8`  
		Last Modified: Fri, 16 Nov 2018 21:56:00 GMT  
		Size: 6.8 MB (6770383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04961356710821bc7a511f11e4a9247f92134bc25dd8dca8e7ede3d1259f8649`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cedc161ab6e5af7a4c2a3851e38e09fb1f6cfcac5ff2c7ff0fdb78274a08c43`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:2430fb8575e3188e0f2956b7f7b0f39fff35a2415acfb98b9a4542c02ee5ef31
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
$ docker pull spiped@sha256:eb3eb24b71792409590a79291bfad77997daeddfa60188605887fb8c31afb65d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382c303c1d3255f9332b64eae97b9f61826ee3b300c20862ef0518609c1ec3c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:51:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 17:51:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 17:51:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:51:38 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 17:51:38 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 17:51:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:51:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba59526a912ba6799363acb7ea0701e036cf85d158ef156afb3cbb916f1b6ce9`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0fe6007967d7c7e639729b06d98f073b70463a0428fd258cb55cf3f3c4b3d`  
		Last Modified: Fri, 16 Nov 2018 17:52:47 GMT  
		Size: 1.9 MB (1881468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e033bfa9914a22033bfcdc8a40b6c679c64fd35a530970b3546ab3f13a6275a8`  
		Last Modified: Fri, 16 Nov 2018 17:52:48 GMT  
		Size: 5.9 MB (5877757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e634d2ef35db8ad6f60f2f7b819f00dcdc90cb477b40e737c32cd01c17a04a0`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533121b3db19e31f50bc10eb95c83bb8534a2759c5984fbdd568f7b1c252a028`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:5965ede5602862ac6603e56d8c64f32471fdda44f7eee731535ae0e51b1eae3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb333db521c8b01f2b7d5e2294740ec51a5ef2ac36923d74c2332ac95ae5807f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:14:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:14:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:15:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:15:04 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:15:04 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:15:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:15:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:15:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23557c5d7385b13f022c50e3a8c5ddee8ed5b3d9baebf2cea168670ad45d973`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afacd1b00f1caeaf5197fac7fa88c042de2d5cb5decc3faee6b98fde4f1dd9a4`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.6 MB (1622944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b0ad1de46b1756fbec503b63f0c4e5ad7377de2e4ac4bec026a33595ba9903`  
		Last Modified: Fri, 16 Nov 2018 18:15:37 GMT  
		Size: 5.0 MB (4951518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c469f1a49462b0f1c519985318eeea83b24b679f58901bee3b64ce3849d53914`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ea57fc0f4bc993abae729fd12b0aebd7e83aaed8d421871b10dc1f4252f68`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d938a3a0b0e8cbc7ee0f1b6dbbc77980acd2e0ff31456409efbf993577b89b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6eb669f05bc8e517be765e0aadd4f8771003b6fd10b097e7042f3756575ec47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 20:17:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 20:17:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 20:17:49 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 20:17:50 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 20:17:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 20:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 20:17:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919f9207646099a1835fefab8375e7c36e11fbdaa9887df63b470669b90459d7`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a058001500144ae81880b7448dd805500eded61b96c585efbcbfc363ed765`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.6 MB (1564314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279513020ef38cfc98135399e22a4230802b7daa1e3bf849719ef787008487fe`  
		Last Modified: Fri, 16 Nov 2018 20:18:16 GMT  
		Size: 4.7 MB (4707759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219df776ecbcefea718901303174693af8824c7a0a5006ff7b4885197ea5596`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99985920084270336fe264932d5b209298452a2beb92d1d91316dc06b42b6e95`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5c36b533c6ee559f8859eeb1c9bf3b275677c71d412c80e37bec89773a9b2292
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7678f12152fd2ab96ac1d3bd5ff938ed99b338dd858f7418e7a07549527385c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 07:36:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 07:37:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:37:13 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 07:39:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 07:39:54 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 07:39:55 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469cd84b4ae55ad1f1f8f5e01045de5f062db83132095cf01999a1c6dbba0e7`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac53718a0773eab500c8ce00e74f48edda38af450c6c1e4bdf128909aba040`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.6 MB (1614907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5037b1081a32c456873a634444cb251a28809e2eeebca8813e8841ee9205bf43`  
		Last Modified: Sat, 17 Nov 2018 07:41:43 GMT  
		Size: 5.2 MB (5236443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286b240495e157b88f39964d53cdc708af383e9695d6f7944a38e35e3f33353`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd61ce26938dc227ed87d2887acdc19d85ddc7fc7fc563f8723b6b6e37bc0ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:06 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:c39776b0236d6317a0d96861e7f07a7705b95ba2fb070a9d5e3cb9503823290c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e21cd9554c3d628ea48b005bfa5b7f685676e12a2ed01c42b5da8a7d19418b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:01:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 11:01:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 11:02:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 11:02:42 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 11:02:42 GMT
WORKDIR /spiped
# Sat, 17 Nov 2018 11:02:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 17 Nov 2018 11:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 11:02:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b8646ff7a23a99ffdf4c956f13205463d3e723fac09905a0776f39eba0be52`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2060e0ca05209a87795fe17d89438a714032d724a336837ce4862cba07d448`  
		Last Modified: Sat, 17 Nov 2018 11:03:46 GMT  
		Size: 1.9 MB (1874128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d16bf814fe616e805fda99421e7d3238fce35c2dc7944906fbd3c58e7294c64`  
		Last Modified: Sat, 17 Nov 2018 11:03:50 GMT  
		Size: 9.3 MB (9303299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24a9b8504df1125d1da6c01b342f02142d99cca10eb7229cc19dc9307fa5e5b`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bad285850b16f85f1365556aacdce47cc378ab69e8ad30d178d854cb6bcb85`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:000cd856bc7dc1b2773642c86b81fd51c73b4b052cb3b38650aa37508eb955b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e536a13cfd01645c3299697a0c2fbf5f511017c05a1da5f2d9d93d4bacf1e657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:54:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:54:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:54:41 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:54:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:57:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:57:25 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:57:27 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:57:38 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:57:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:57:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442101cde07847c1bcdd274da446ccb43f6df242db61948086b50f3d7950487`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f35dfb8894392212199bb1d0a5256f5bb1a28a0562ac8cc7e4ce51188266552`  
		Last Modified: Fri, 16 Nov 2018 18:58:48 GMT  
		Size: 1.6 MB (1552470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5050ae8ebf18163091bea99842d91d13c3ea60c2a1f0ad2cf18494f4f75ccdd1`  
		Last Modified: Fri, 16 Nov 2018 18:58:49 GMT  
		Size: 5.8 MB (5847547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2005e4e99347e4c3c309d267e2ecf40712a50389f95862b33e059d4c1a63c4c2`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0caec95fa8f8bac2710878e778db968e7eb626bbe409ba5593c4728681b20d06`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:277c8cf8f35e236d0e2f6fa985f1edd826d3ee16ae1a19dd961a71b00cc6e73e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd228d40af2011b5ac77c9fd078701f3780e6a122a7afc321ab60bf25431ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:54:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 21:55:02 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 21:55:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 21:55:29 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 21:55:30 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 21:55:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 21:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 21:55:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832dd9c27a6630aba7d61cd160ef7ebe63139f8462cb6274c3c70f0eb96fa3b5`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d884edbd2fc756f8700aa5e4f86820c0f9e0ff1189fc5831f60ab55a06d4023c`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 1.6 MB (1615652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d5cf7879c7c6d7197e7c864e722334102b7b029c13593224c04d670aeefdb8`  
		Last Modified: Fri, 16 Nov 2018 21:56:00 GMT  
		Size: 6.8 MB (6770383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04961356710821bc7a511f11e4a9247f92134bc25dd8dca8e7ede3d1259f8649`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cedc161ab6e5af7a4c2a3851e38e09fb1f6cfcac5ff2c7ff0fdb78274a08c43`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:2430fb8575e3188e0f2956b7f7b0f39fff35a2415acfb98b9a4542c02ee5ef31
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
$ docker pull spiped@sha256:eb3eb24b71792409590a79291bfad77997daeddfa60188605887fb8c31afb65d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382c303c1d3255f9332b64eae97b9f61826ee3b300c20862ef0518609c1ec3c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:51:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 17:51:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 17:51:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:51:38 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 17:51:38 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 17:51:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:51:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba59526a912ba6799363acb7ea0701e036cf85d158ef156afb3cbb916f1b6ce9`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0fe6007967d7c7e639729b06d98f073b70463a0428fd258cb55cf3f3c4b3d`  
		Last Modified: Fri, 16 Nov 2018 17:52:47 GMT  
		Size: 1.9 MB (1881468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e033bfa9914a22033bfcdc8a40b6c679c64fd35a530970b3546ab3f13a6275a8`  
		Last Modified: Fri, 16 Nov 2018 17:52:48 GMT  
		Size: 5.9 MB (5877757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e634d2ef35db8ad6f60f2f7b819f00dcdc90cb477b40e737c32cd01c17a04a0`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533121b3db19e31f50bc10eb95c83bb8534a2759c5984fbdd568f7b1c252a028`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:5965ede5602862ac6603e56d8c64f32471fdda44f7eee731535ae0e51b1eae3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb333db521c8b01f2b7d5e2294740ec51a5ef2ac36923d74c2332ac95ae5807f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:14:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:14:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:15:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:15:04 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:15:04 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:15:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:15:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:15:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23557c5d7385b13f022c50e3a8c5ddee8ed5b3d9baebf2cea168670ad45d973`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afacd1b00f1caeaf5197fac7fa88c042de2d5cb5decc3faee6b98fde4f1dd9a4`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.6 MB (1622944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b0ad1de46b1756fbec503b63f0c4e5ad7377de2e4ac4bec026a33595ba9903`  
		Last Modified: Fri, 16 Nov 2018 18:15:37 GMT  
		Size: 5.0 MB (4951518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c469f1a49462b0f1c519985318eeea83b24b679f58901bee3b64ce3849d53914`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ea57fc0f4bc993abae729fd12b0aebd7e83aaed8d421871b10dc1f4252f68`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d938a3a0b0e8cbc7ee0f1b6dbbc77980acd2e0ff31456409efbf993577b89b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6eb669f05bc8e517be765e0aadd4f8771003b6fd10b097e7042f3756575ec47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 20:17:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 20:17:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 20:17:49 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 20:17:50 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 20:17:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 20:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 20:17:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919f9207646099a1835fefab8375e7c36e11fbdaa9887df63b470669b90459d7`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a058001500144ae81880b7448dd805500eded61b96c585efbcbfc363ed765`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.6 MB (1564314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279513020ef38cfc98135399e22a4230802b7daa1e3bf849719ef787008487fe`  
		Last Modified: Fri, 16 Nov 2018 20:18:16 GMT  
		Size: 4.7 MB (4707759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219df776ecbcefea718901303174693af8824c7a0a5006ff7b4885197ea5596`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99985920084270336fe264932d5b209298452a2beb92d1d91316dc06b42b6e95`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5c36b533c6ee559f8859eeb1c9bf3b275677c71d412c80e37bec89773a9b2292
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7678f12152fd2ab96ac1d3bd5ff938ed99b338dd858f7418e7a07549527385c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 07:36:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 07:37:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:37:13 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 07:39:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 07:39:54 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 07:39:55 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469cd84b4ae55ad1f1f8f5e01045de5f062db83132095cf01999a1c6dbba0e7`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac53718a0773eab500c8ce00e74f48edda38af450c6c1e4bdf128909aba040`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.6 MB (1614907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5037b1081a32c456873a634444cb251a28809e2eeebca8813e8841ee9205bf43`  
		Last Modified: Sat, 17 Nov 2018 07:41:43 GMT  
		Size: 5.2 MB (5236443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286b240495e157b88f39964d53cdc708af383e9695d6f7944a38e35e3f33353`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd61ce26938dc227ed87d2887acdc19d85ddc7fc7fc563f8723b6b6e37bc0ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:06 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:c39776b0236d6317a0d96861e7f07a7705b95ba2fb070a9d5e3cb9503823290c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e21cd9554c3d628ea48b005bfa5b7f685676e12a2ed01c42b5da8a7d19418b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:01:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 11:01:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 11:02:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 11:02:42 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 11:02:42 GMT
WORKDIR /spiped
# Sat, 17 Nov 2018 11:02:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 17 Nov 2018 11:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 11:02:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b8646ff7a23a99ffdf4c956f13205463d3e723fac09905a0776f39eba0be52`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2060e0ca05209a87795fe17d89438a714032d724a336837ce4862cba07d448`  
		Last Modified: Sat, 17 Nov 2018 11:03:46 GMT  
		Size: 1.9 MB (1874128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d16bf814fe616e805fda99421e7d3238fce35c2dc7944906fbd3c58e7294c64`  
		Last Modified: Sat, 17 Nov 2018 11:03:50 GMT  
		Size: 9.3 MB (9303299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24a9b8504df1125d1da6c01b342f02142d99cca10eb7229cc19dc9307fa5e5b`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bad285850b16f85f1365556aacdce47cc378ab69e8ad30d178d854cb6bcb85`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:000cd856bc7dc1b2773642c86b81fd51c73b4b052cb3b38650aa37508eb955b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e536a13cfd01645c3299697a0c2fbf5f511017c05a1da5f2d9d93d4bacf1e657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:54:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:54:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:54:41 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:54:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:57:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:57:25 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:57:27 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:57:38 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:57:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:57:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442101cde07847c1bcdd274da446ccb43f6df242db61948086b50f3d7950487`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f35dfb8894392212199bb1d0a5256f5bb1a28a0562ac8cc7e4ce51188266552`  
		Last Modified: Fri, 16 Nov 2018 18:58:48 GMT  
		Size: 1.6 MB (1552470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5050ae8ebf18163091bea99842d91d13c3ea60c2a1f0ad2cf18494f4f75ccdd1`  
		Last Modified: Fri, 16 Nov 2018 18:58:49 GMT  
		Size: 5.8 MB (5847547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2005e4e99347e4c3c309d267e2ecf40712a50389f95862b33e059d4c1a63c4c2`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0caec95fa8f8bac2710878e778db968e7eb626bbe409ba5593c4728681b20d06`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:277c8cf8f35e236d0e2f6fa985f1edd826d3ee16ae1a19dd961a71b00cc6e73e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd228d40af2011b5ac77c9fd078701f3780e6a122a7afc321ab60bf25431ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:54:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 21:55:02 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 21:55:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 21:55:29 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 21:55:30 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 21:55:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 21:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 21:55:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832dd9c27a6630aba7d61cd160ef7ebe63139f8462cb6274c3c70f0eb96fa3b5`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d884edbd2fc756f8700aa5e4f86820c0f9e0ff1189fc5831f60ab55a06d4023c`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 1.6 MB (1615652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d5cf7879c7c6d7197e7c864e722334102b7b029c13593224c04d670aeefdb8`  
		Last Modified: Fri, 16 Nov 2018 21:56:00 GMT  
		Size: 6.8 MB (6770383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04961356710821bc7a511f11e4a9247f92134bc25dd8dca8e7ede3d1259f8649`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cedc161ab6e5af7a4c2a3851e38e09fb1f6cfcac5ff2c7ff0fdb78274a08c43`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:59061e20aa2e65ebd52bb28c6159e686a139ab1eaec0f582dbffa8f5915564e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6.0-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:f88735d90700ff7bbc16438fd7688dbcee855a820e0b4174da7a9e1e9895cbf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4804760cc98c93f970d40dc3f12b8cfb14626c271f3fae73398d58fa4727d6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:39:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 00:39:29 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 00:39:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 00:39:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 00:39:39 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 00:39:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 00:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:39:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f16ae6068a1b8f4b6c49f02a963f7960dc3676c62b897e90ec93849a542529`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd2d56913cf9219d5028889784910e1752d3c0be166e14a86fa6792f85823fb`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.3 MB (1304297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b49e8a5d47e1311019bad9d19f95d6543f8f6e670aa9930129ddb15812c0f20`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 80.5 KB (80482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26671f7b3c2512606f970063bda286f1bb1bbbda71bb6b712f14e66afe1fc81a`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556b71b8f4538d58d467e6222a41ab7b511f02355ca6c201f370db1ec54b9bf3`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
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
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:59061e20aa2e65ebd52bb28c6159e686a139ab1eaec0f582dbffa8f5915564e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:f88735d90700ff7bbc16438fd7688dbcee855a820e0b4174da7a9e1e9895cbf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4804760cc98c93f970d40dc3f12b8cfb14626c271f3fae73398d58fa4727d6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:39:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 00:39:29 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 00:39:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 00:39:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 00:39:39 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 00:39:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 00:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:39:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f16ae6068a1b8f4b6c49f02a963f7960dc3676c62b897e90ec93849a542529`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd2d56913cf9219d5028889784910e1752d3c0be166e14a86fa6792f85823fb`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.3 MB (1304297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b49e8a5d47e1311019bad9d19f95d6543f8f6e670aa9930129ddb15812c0f20`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 80.5 KB (80482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26671f7b3c2512606f970063bda286f1bb1bbbda71bb6b712f14e66afe1fc81a`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556b71b8f4538d58d467e6222a41ab7b511f02355ca6c201f370db1ec54b9bf3`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
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
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:59061e20aa2e65ebd52bb28c6159e686a139ab1eaec0f582dbffa8f5915564e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:f88735d90700ff7bbc16438fd7688dbcee855a820e0b4174da7a9e1e9895cbf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4804760cc98c93f970d40dc3f12b8cfb14626c271f3fae73398d58fa4727d6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:39:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 00:39:29 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 00:39:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 00:39:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 00:39:39 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 00:39:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 00:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:39:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f16ae6068a1b8f4b6c49f02a963f7960dc3676c62b897e90ec93849a542529`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd2d56913cf9219d5028889784910e1752d3c0be166e14a86fa6792f85823fb`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.3 MB (1304297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b49e8a5d47e1311019bad9d19f95d6543f8f6e670aa9930129ddb15812c0f20`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 80.5 KB (80482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26671f7b3c2512606f970063bda286f1bb1bbbda71bb6b712f14e66afe1fc81a`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556b71b8f4538d58d467e6222a41ab7b511f02355ca6c201f370db1ec54b9bf3`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
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
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:59061e20aa2e65ebd52bb28c6159e686a139ab1eaec0f582dbffa8f5915564e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:f88735d90700ff7bbc16438fd7688dbcee855a820e0b4174da7a9e1e9895cbf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4804760cc98c93f970d40dc3f12b8cfb14626c271f3fae73398d58fa4727d6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:39:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 00:39:29 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 00:39:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 00:39:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 00:39:38 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 00:39:39 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 00:39:39 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 00:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 00:39:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f16ae6068a1b8f4b6c49f02a963f7960dc3676c62b897e90ec93849a542529`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd2d56913cf9219d5028889784910e1752d3c0be166e14a86fa6792f85823fb`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 1.3 MB (1304297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b49e8a5d47e1311019bad9d19f95d6543f8f6e670aa9930129ddb15812c0f20`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 80.5 KB (80482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26671f7b3c2512606f970063bda286f1bb1bbbda71bb6b712f14e66afe1fc81a`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556b71b8f4538d58d467e6222a41ab7b511f02355ca6c201f370db1ec54b9bf3`  
		Last Modified: Fri, 21 Dec 2018 00:39:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:00a843424142bea09da8217b82a334ee561f52fb44210aea8965c50943a29a88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beec6013e5d02eb6e05e82126a842349b00bdc8881e98283db21e392aa80a12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:07:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 14:07:17 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 14:07:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 14:07:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 14:09:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 14:09:44 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 14:09:45 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 14:09:46 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 14:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:09:48 GMT
CMD ["spiped"]
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
	-	`sha256:63d4643a3ff8ac6f9f0dd09d7c503139d4b5731ee229d1d2df60acfd5e040ffb`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e7ab2230e639edfcb2e7bbc07d5a03f11a0a5159482fe8d879b0a4eeeb9617`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 911.6 KB (911604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36725bbf69d18b7a1b1209abb132f1cb2a4ccad1aa6169b7bb4bdc7bdd539d5`  
		Last Modified: Wed, 12 Sep 2018 14:10:14 GMT  
		Size: 69.0 KB (69009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f70e3afe5520ac1703e050c21613539c69ede2023cc9edb494131be4490fdc`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199ea0d48d9147070216826ef848db2e4b45e0eecd4c6fa4b70f04d45cf44e4`  
		Last Modified: Wed, 12 Sep 2018 14:10:13 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:97154842a80dbf04b50b7223b0ba187b5d56a946fbeddf4afbf97ed72a01533c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3096495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f2e36c5275fd6c19c466fae4b90f7dd9673825c0e8cc4c41d9b699bbf66126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:45:15 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:45:17 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:45:17 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:45:18 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:45:19 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:45:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:45:42 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:45:44 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3011bfe59e7e46bba7059016bed6ab0d1e6bf0074e1723ae18ac0639ace2b`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e794155986fa7f4d95b51ca8477d9a7fcec1bd0b3db89d790b491e0f368dcdc`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 929.9 KB (929928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d582532a92c8b1692dfba7fc16da41873f22242c3f2b499ea24970de496ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 64.9 KB (64863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74864b4109229cef2349743565baca853dffe71230601f2918d976671e234b7a`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f1a5e31785c6df2b57bdec50b688150cf0e679cfbb9d21df90f4093afe3922`  
		Last Modified: Fri, 21 Dec 2018 13:46:18 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:ecc084006e7a47fb9acd8f951d8506431436ad83c011336da87bb5ffa84f9f31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3485956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54d121308163d9c4540a2db17e119b8e3807835637545a83e0aa2645c9a4550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 17:24:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 12 Sep 2018 17:24:25 GMT
RUN apk add --no-cache libssl1.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Sep 2018 17:24:26 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Sep 2018 17:24:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 12 Sep 2018 17:24:36 GMT
VOLUME [/spiped]
# Wed, 12 Sep 2018 17:24:36 GMT
WORKDIR /spiped
# Wed, 12 Sep 2018 17:24:37 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Sep 2018 17:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 17:24:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e611caebda645f20d65b0704fb755af5b294708ad43c9634583913a95ad54d7`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792bf07a961c7d263600fe88d1a174cb893a526a356d0549409acb4ac0064fb`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 1.1 MB (1123904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a6564b09d4f759257890bacd3d81fa0c0e4bb6c5b809a8b4bf8ac007e18019`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 88.7 KB (88731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58476aaa6793ce963880079bc3c94ccc4f326cc2c719bfcc72267f0394c01af3`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09347a9db1ced7f9fd725fe5e1a92c53509f276f4102e4aeda5be09f7f6c2347`  
		Last Modified: Wed, 12 Sep 2018 17:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:e3dcfb3e2b24fed4849e0dd434e29fb213e1b8b18128ae74b175f446c1cd9bb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc172ef37a880be166aa8cdb70f46c2e53307513a18f02cb8fe1dc76df4395ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:13:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 12:13:39 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 12:13:41 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 12:13:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 12:13:44 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 12:13:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 12:14:03 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 12:14:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 12:14:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:14:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3eabda2a106817357c2c0e19723d8d9c173b006e6da388e29c499ed3b64d73`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61b8ec8dfb1751d8f61c0fd5ba9f74513dec0949c9046de21ea8eb233a13e20`  
		Last Modified: Fri, 21 Dec 2018 12:14:42 GMT  
		Size: 1000.3 KB (1000308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72739e935a4580e95c7edf6c60855af49177bd030548eaf9fcead262125a1c`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 73.8 KB (73766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c306d787d4f685a70ffcb6f41f75de10fef311c27a35cdb4f1137b62c4c223`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464339250bacb135b3ece9580657c8bd73a3ef2e4e4cbf378d7ee55849fc614`  
		Last Modified: Fri, 21 Dec 2018 12:14:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:2430fb8575e3188e0f2956b7f7b0f39fff35a2415acfb98b9a4542c02ee5ef31
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
$ docker pull spiped@sha256:eb3eb24b71792409590a79291bfad77997daeddfa60188605887fb8c31afb65d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30247691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382c303c1d3255f9332b64eae97b9f61826ee3b300c20862ef0518609c1ec3c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:51:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 17:51:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 17:51:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 17:51:38 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 17:51:38 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 17:51:38 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 17:51:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 17:51:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 17:51:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba59526a912ba6799363acb7ea0701e036cf85d158ef156afb3cbb916f1b6ce9`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0fe6007967d7c7e639729b06d98f073b70463a0428fd258cb55cf3f3c4b3d`  
		Last Modified: Fri, 16 Nov 2018 17:52:47 GMT  
		Size: 1.9 MB (1881468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e033bfa9914a22033bfcdc8a40b6c679c64fd35a530970b3546ab3f13a6275a8`  
		Last Modified: Fri, 16 Nov 2018 17:52:48 GMT  
		Size: 5.9 MB (5877757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e634d2ef35db8ad6f60f2f7b819f00dcdc90cb477b40e737c32cd01c17a04a0`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533121b3db19e31f50bc10eb95c83bb8534a2759c5984fbdd568f7b1c252a028`  
		Last Modified: Fri, 16 Nov 2018 17:52:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:5965ede5602862ac6603e56d8c64f32471fdda44f7eee731535ae0e51b1eae3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27739683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb333db521c8b01f2b7d5e2294740ec51a5ef2ac36923d74c2332ac95ae5807f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:06 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:14:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:14:16 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:14:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:15:03 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:15:04 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:15:04 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:15:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:15:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:15:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23557c5d7385b13f022c50e3a8c5ddee8ed5b3d9baebf2cea168670ad45d973`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afacd1b00f1caeaf5197fac7fa88c042de2d5cb5decc3faee6b98fde4f1dd9a4`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 1.6 MB (1622944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b0ad1de46b1756fbec503b63f0c4e5ad7377de2e4ac4bec026a33595ba9903`  
		Last Modified: Fri, 16 Nov 2018 18:15:37 GMT  
		Size: 5.0 MB (4951518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c469f1a49462b0f1c519985318eeea83b24b679f58901bee3b64ce3849d53914`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ea57fc0f4bc993abae729fd12b0aebd7e83aaed8d421871b10dc1f4252f68`  
		Last Modified: Fri, 16 Nov 2018 18:15:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d938a3a0b0e8cbc7ee0f1b6dbbc77980acd2e0ff31456409efbf993577b89b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6eb669f05bc8e517be765e0aadd4f8771003b6fd10b097e7042f3756575ec47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:16:59 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 20:17:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:07 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 20:17:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 20:17:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 20:17:49 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 20:17:50 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 20:17:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 20:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 20:17:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919f9207646099a1835fefab8375e7c36e11fbdaa9887df63b470669b90459d7`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a058001500144ae81880b7448dd805500eded61b96c585efbcbfc363ed765`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 1.6 MB (1564314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279513020ef38cfc98135399e22a4230802b7daa1e3bf849719ef787008487fe`  
		Last Modified: Fri, 16 Nov 2018 20:18:16 GMT  
		Size: 4.7 MB (4707759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4219df776ecbcefea718901303174693af8824c7a0a5006ff7b4885197ea5596`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99985920084270336fe264932d5b209298452a2beb92d1d91316dc06b42b6e95`  
		Last Modified: Fri, 16 Nov 2018 20:18:15 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5c36b533c6ee559f8859eeb1c9bf3b275677c71d412c80e37bec89773a9b2292
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7678f12152fd2ab96ac1d3bd5ff938ed99b338dd858f7418e7a07549527385c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 07:36:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 07:37:06 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:37:13 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 07:37:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 07:39:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 07:39:54 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 07:39:55 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:45:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:45:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:45:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469cd84b4ae55ad1f1f8f5e01045de5f062db83132095cf01999a1c6dbba0e7`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac53718a0773eab500c8ce00e74f48edda38af450c6c1e4bdf128909aba040`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 1.6 MB (1614907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5037b1081a32c456873a634444cb251a28809e2eeebca8813e8841ee9205bf43`  
		Last Modified: Sat, 17 Nov 2018 07:41:43 GMT  
		Size: 5.2 MB (5236443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7286b240495e157b88f39964d53cdc708af383e9695d6f7944a38e35e3f33353`  
		Last Modified: Sat, 17 Nov 2018 07:41:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd61ce26938dc227ed87d2887acdc19d85ddc7fc7fc563f8723b6b6e37bc0ed`  
		Last Modified: Fri, 21 Dec 2018 13:46:06 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:c39776b0236d6317a0d96861e7f07a7705b95ba2fb070a9d5e3cb9503823290c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e21cd9554c3d628ea48b005bfa5b7f685676e12a2ed01c42b5da8a7d19418b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:01:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 17 Nov 2018 11:01:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 17 Nov 2018 11:01:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 17 Nov 2018 11:02:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 11:02:42 GMT
VOLUME [/spiped]
# Sat, 17 Nov 2018 11:02:42 GMT
WORKDIR /spiped
# Sat, 17 Nov 2018 11:02:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 17 Nov 2018 11:02:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 11:02:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b8646ff7a23a99ffdf4c956f13205463d3e723fac09905a0776f39eba0be52`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2060e0ca05209a87795fe17d89438a714032d724a336837ce4862cba07d448`  
		Last Modified: Sat, 17 Nov 2018 11:03:46 GMT  
		Size: 1.9 MB (1874128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d16bf814fe616e805fda99421e7d3238fce35c2dc7944906fbd3c58e7294c64`  
		Last Modified: Sat, 17 Nov 2018 11:03:50 GMT  
		Size: 9.3 MB (9303299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24a9b8504df1125d1da6c01b342f02142d99cca10eb7229cc19dc9307fa5e5b`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bad285850b16f85f1365556aacdce47cc378ab69e8ad30d178d854cb6bcb85`  
		Last Modified: Sat, 17 Nov 2018 11:03:45 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:000cd856bc7dc1b2773642c86b81fd51c73b4b052cb3b38650aa37508eb955b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30142963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e536a13cfd01645c3299697a0c2fbf5f511017c05a1da5f2d9d93d4bacf1e657`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:54:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 18:54:27 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:54:28 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 18:54:41 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 18:54:42 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 18:57:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:57:25 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 18:57:27 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 18:57:38 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:57:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:57:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442101cde07847c1bcdd274da446ccb43f6df242db61948086b50f3d7950487`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f35dfb8894392212199bb1d0a5256f5bb1a28a0562ac8cc7e4ce51188266552`  
		Last Modified: Fri, 16 Nov 2018 18:58:48 GMT  
		Size: 1.6 MB (1552470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5050ae8ebf18163091bea99842d91d13c3ea60c2a1f0ad2cf18494f4f75ccdd1`  
		Last Modified: Fri, 16 Nov 2018 18:58:49 GMT  
		Size: 5.8 MB (5847547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2005e4e99347e4c3c309d267e2ecf40712a50389f95862b33e059d4c1a63c4c2`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0caec95fa8f8bac2710878e778db968e7eb626bbe409ba5593c4728681b20d06`  
		Last Modified: Fri, 16 Nov 2018 18:58:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:277c8cf8f35e236d0e2f6fa985f1edd826d3ee16ae1a19dd961a71b00cc6e73e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd228d40af2011b5ac77c9fd078701f3780e6a122a7afc321ab60bf25431ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:54:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 16 Nov 2018 21:55:02 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 16 Nov 2018 21:55:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 16 Nov 2018 21:55:29 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 21:55:29 GMT
VOLUME [/spiped]
# Fri, 16 Nov 2018 21:55:30 GMT
WORKDIR /spiped
# Fri, 16 Nov 2018 21:55:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 16 Nov 2018 21:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 21:55:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832dd9c27a6630aba7d61cd160ef7ebe63139f8462cb6274c3c70f0eb96fa3b5`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d884edbd2fc756f8700aa5e4f86820c0f9e0ff1189fc5831f60ab55a06d4023c`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 1.6 MB (1615652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d5cf7879c7c6d7197e7c864e722334102b7b029c13593224c04d670aeefdb8`  
		Last Modified: Fri, 16 Nov 2018 21:56:00 GMT  
		Size: 6.8 MB (6770383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04961356710821bc7a511f11e4a9247f92134bc25dd8dca8e7ede3d1259f8649`  
		Last Modified: Fri, 16 Nov 2018 21:55:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cedc161ab6e5af7a4c2a3851e38e09fb1f6cfcac5ff2c7ff0fdb78274a08c43`  
		Last Modified: Fri, 16 Nov 2018 21:55:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
