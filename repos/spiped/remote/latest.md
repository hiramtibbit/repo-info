## `spiped:latest`

```console
$ docker pull spiped@sha256:4371ce817c34ad842314a96721018e89332a8c24133a5d3fa2d95328249e0747
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
$ docker pull spiped@sha256:15db97143bdef13a6f8857c5ec18624a33399df2329ecb5843e98a847822c428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25544397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0794ad874be303e95b77432953bee3cf247683a8581f21397e3e3c779be3e6e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:48:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 05 Sep 2018 13:48:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 05 Sep 2018 13:48:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 05 Sep 2018 13:48:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 05 Sep 2018 13:48:37 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 13:48:37 GMT
VOLUME [/spiped]
# Wed, 05 Sep 2018 13:48:38 GMT
WORKDIR /spiped
# Wed, 05 Sep 2018 13:48:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:48:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:48:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d807de210a85b89719f15d54945081fd57f3018f44d21a1b4811a884a2ac6e7`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ecb7631fb7baa5b05ea5c40306da47665a1baf1bfea06f96b13cd874884b04`  
		Last Modified: Wed, 05 Sep 2018 13:48:56 GMT  
		Size: 1.6 MB (1564301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8790ddf7922fe9e5b8ea9e9c40c9dacdb8bbc69c78d2c4f00574cbbd4cc37616`  
		Last Modified: Wed, 05 Sep 2018 13:48:57 GMT  
		Size: 4.7 MB (4707718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48e26944c329774ec908d33b7592b0976e57ecc05724b66dfbf90dec81d2b8f`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6b7f05f0e9a163a836c7e5fa05b7b27c095580ce42c80ec5e75972ccec6cb`  
		Last Modified: Wed, 05 Sep 2018 13:48:55 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:de921f604234c88275b2eabcf38786064d1f1a98303cda48f09c934ffbae60ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27184842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59aa8164a7c8d13f2a0621cb6d5fee1be76f740baa3bce61a01aed3c81110f7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:07:57 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 21:08:07 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 21:08:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 21:08:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 21:09:44 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 21:09:45 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 21:09:46 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 21:09:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 21:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 21:09:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38384241fdd3f1d522279dcebae58317063f256968f6ecc44c3730a30ba465ca`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a689a3c2bc58ff11567229039928ae0561bb3e9c2d3e70380137faf729cabe21`  
		Last Modified: Tue, 16 Oct 2018 21:10:49 GMT  
		Size: 1.6 MB (1614877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3930c0a6c0d9d37ae1b5b32326b0dffc1d1506bd30ddb91368e9cd8d50a04900`  
		Last Modified: Tue, 16 Oct 2018 21:11:32 GMT  
		Size: 5.2 MB (5236186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505faad41b9d4798cb7c77d3f56b00cbd1762da19d10bb143bee95fbff1a5c3a`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188293f30c3c905bbf712e3ba288d20833c00c6f115607ac83756275a016516f`  
		Last Modified: Tue, 16 Oct 2018 21:10:48 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:374110b135fcae920ef23fc2f3e0323e3669ec114594854aa3e648136981d2ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34306250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf0b2729c465909cefcafbba3cad26924c630622c424bbec7dff68867061a35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:14:14 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 22:14:19 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:14:19 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 22:14:20 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 22:14:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 22:14:47 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 22:14:47 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 22:14:47 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 22:14:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 22:14:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de3efcd25105b1b8b691a38a3264a4087a12c9a09d396da55bd5d92557729a6`  
		Last Modified: Tue, 16 Oct 2018 22:15:02 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a9672ed4d9f0558371083ca5db30c909d65610c166e3948871501e39c7bde5`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 1.9 MB (1874162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7d97b45f78a1ac4131fd06b3770295efff0c2cfe9c70506cffc40a105b3daf`  
		Last Modified: Tue, 16 Oct 2018 22:15:06 GMT  
		Size: 9.3 MB (9303298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83360694a312146b4ce44f4f0a9a56414b0ca94b2626b2972ef9a4f6f5f8e0ad`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e313f32e062b21b250aac4f28cb7381f0e779d1cd2df98bb00d9aaa7f0355bf`  
		Last Modified: Tue, 16 Oct 2018 22:15:03 GMT  
		Size: 353.0 B  
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
$ docker pull spiped@sha256:4ffd7bfa6027a62ffbb70519ac13203b358c55c12f6f79697954554170887a1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30722883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9834066afbafd563e8466cdd3cefb0a50bb1e7fa6aba7c8b76d5c3e02c983f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:26:54 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 16 Oct 2018 12:26:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 16 Oct 2018 12:26:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 16 Oct 2018 12:27:24 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 12:27:24 GMT
VOLUME [/spiped]
# Tue, 16 Oct 2018 12:27:24 GMT
WORKDIR /spiped
# Tue, 16 Oct 2018 12:27:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:27:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:27:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f297c844ef6d8b2fb45ccc8e1041aec7e500b345e2e825486f053a073012d64`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac669a6cb40400cfc70849f689bbeea639b106482eaffdb57bc0fccb56a4b4`  
		Last Modified: Tue, 16 Oct 2018 12:27:38 GMT  
		Size: 1.6 MB (1615639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18718a25fa922b8f12e34812be8bf5c0f77fccf25aaed5c390ff3072204be785`  
		Last Modified: Tue, 16 Oct 2018 12:27:40 GMT  
		Size: 6.8 MB (6770376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723422ff95b5ead0c857f0f6a270f8dfb945ce115b6c8816da72896a3be46c53`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4008b6b2dc4178d1797f65ce8af7fe04aa017d9f1962741b23584e1a93ebc45d`  
		Last Modified: Tue, 16 Oct 2018 12:27:37 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
