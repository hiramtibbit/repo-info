## `spiped:latest`

```console
$ docker pull spiped@sha256:d5bf28e5232b0807b7f2c58050c1b0899b071c83825c44209bf692f093c936b4
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
$ docker pull spiped@sha256:78296845c3742c036259d3eb9a86398f19cf7503f63ae409bac43586bd13f04a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30272048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5dca578f70529fd89c9cdfbde6a1d0ef7963b5666774f19cddb55eafbeb53e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:17:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 02:17:50 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 02:17:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 02:18:14 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 02:18:14 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 02:18:14 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 02:18:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 02:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 02:18:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de31842e0dc7f6327ad2e73ad69b906b68bc69fb356a049b49ec51f26f2588d2`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f0530cec2286d7c45024aea225ae05548433b4a5fcb0335db99c4e9cf82d83`  
		Last Modified: Wed, 23 Jan 2019 02:18:31 GMT  
		Size: 1.9 MB (1891332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80736f0d2f1c521cb8c21bfd832118fa0032d6c74f0f049f3f106aadd40eed3f`  
		Last Modified: Wed, 23 Jan 2019 02:18:32 GMT  
		Size: 5.9 MB (5877823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5345795de598f4dfbf4ad692c08030ac6077ee54e52de4aaec0c1abc7c55eb`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7d3dd7a592518a6513f422b65864c2c9fe0fb78560fc92825b763e79092bee`  
		Last Modified: Wed, 23 Jan 2019 02:18:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:4279240dcbe527c5d47906f0d377bd86a08c3370df4a11aa9240bfc1fc5c2d1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27768126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b63f2581269b878d7ae737a14b694079f484aca06219c232680fc36797a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:09:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:09:57 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:09:57 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:09:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:10:41 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:10:41 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:10:42 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:10:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:10:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dc746aa5e7182bec83be6db19606b48a6a1e84b85708db279c081bb4dd210a`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab12c6702a1b3d3b0fd47fabd3a605bfacf9daf106f84d75e43df5587372b80d`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 1.6 MB (1632484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0875e77423600654bded56927b291feedc8faea757d3dfa4be5bf4cef568a5ac`  
		Last Modified: Wed, 23 Jan 2019 11:10:56 GMT  
		Size: 5.0 MB (4951604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a1a6405e0a350a951dccb2ec3ce27a88065aa7e68257562ae6d81f3d2aad`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c916df86d6cd97435061e203c732e034f6310401e4c41d1b9a1f9ff4dfe896fc`  
		Last Modified: Wed, 23 Jan 2019 11:10:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1b32d7df10a196325c756eef63dcb0ed08a54f876af6d3acab558ddd39d22cc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25574001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80183a66a689d32bd1dbcb0bfbbda9dfbdb9291e68bfb4fa83b637512fa52997`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:38:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 15:38:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 15:38:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 15:38:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 15:39:15 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 15:39:16 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 15:39:17 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 15:39:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 15:39:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:39:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52001b7272507b4ef9db5bffded8d94f1f062abeaf9f8b7eceeae08cb964d6d6`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7824c207dbc5379a9f6827e95a5f8f837dbab9b615a5071d80a30910eed12ee5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 1.6 MB (1573629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce28ee042d7a52cdca4791ea41a40877cd4a94685b2cb974718cb2e8ff44fa3`  
		Last Modified: Wed, 23 Jan 2019 15:39:44 GMT  
		Size: 4.7 MB (4707868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc044d71958bc5b4418b9705870f2083a6fe7fb68001cdb17a10acae53180be5`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6d8d786fc05c66534f42018fd661bd206e6ca934c0ba0b8e5bb4be6c00a733`  
		Last Modified: Wed, 23 Jan 2019 15:39:43 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:5ac5a3a70234109e1aa30f923679d67c200b386212978725821e1a85b824e83e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27199539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0f01b625b6f100624ff09c2cc1e2e597f5e977e33244c44e9a5283d4afecd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 18:39:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 29 Dec 2018 18:39:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 18:39:33 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 29 Dec 2018 18:39:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 29 Dec 2018 18:39:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 29 Dec 2018 18:41:31 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 18:41:32 GMT
VOLUME [/spiped]
# Sat, 29 Dec 2018 18:41:33 GMT
WORKDIR /spiped
# Sat, 29 Dec 2018 18:41:34 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 29 Dec 2018 18:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 18:41:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895d2dec622525c20bd2ff5311b0bcc71a3047f6d014fa406f57efe39846273`  
		Last Modified: Sat, 29 Dec 2018 18:41:58 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf870c320a1f7bb6a4bed3601e36fcbd7893fa00947e79f3e238dfd000f56032`  
		Last Modified: Sat, 29 Dec 2018 18:41:59 GMT  
		Size: 1.6 MB (1623516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da1adf5fa9fc3857f8a20d7b3053626e086a34923e8508121f5c055d54402bb`  
		Last Modified: Sat, 29 Dec 2018 18:42:01 GMT  
		Size: 5.2 MB (5236320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e35a9c345f5c7c329bb94f556844ffffba46b83a3f17f270a7909c266a3a79`  
		Last Modified: Sat, 29 Dec 2018 18:41:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e26ac0ae3235f9d8b2510af41f63f9418534856ebd925edbf23f1e66c609b2`  
		Last Modified: Sat, 29 Dec 2018 18:41:58 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:8e8b0710833b35cb585f13bd70fa5dd73a801df84327462c694dc73938a7d883
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34338060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883668fe6a35e572a24c700fc787c0da3767648c5c23dd5e4cd53041e88ed49a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:50:27 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 17:50:32 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 17:50:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 17:50:33 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 17:50:58 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 17:50:58 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 17:50:58 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 17:50:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 17:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:50:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50b9f534a87e6266c70f2607c94c6131fcfa716d57030acaf0cf441a866d070`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b15629e250d9e38d015676f9095f2a1d01b6115e29c9e1795481a5dfe148fe`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 1.9 MB (1885421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07a4d9f7471bc403880cf4d18866605b4c1bdd42189d5beb3b990874437f98f`  
		Last Modified: Wed, 23 Jan 2019 17:51:14 GMT  
		Size: 9.3 MB (9303337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4fb027bdafbe1a38432e75240d718baa8184a584722f18bb1cce537c3c0952`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09692f6078c9c62f428facdd53c6526cd6a62966fa5f7bd13b97d5092cbf257`  
		Last Modified: Wed, 23 Jan 2019 17:51:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:0f80976f763af165b770f5d108d12a25d824393ce81284c17c82e7d72c345d1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30166403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f40f8a4122a560f2382a72d2bde0b0315d6f8049c03e02dcc658309ba22e3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:55:21 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 11:55:35 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:55:37 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 11:55:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 11:55:43 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 11:57:39 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 11:57:43 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 11:57:46 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 11:57:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:57:56 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4f6bd79971d11a28f6db1139c49ed6ac828eab5b11ad65b19acb4a52bbee11`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6a53837222492513a246d423435eac0fa699a4f65856f93ecf5d5bed31bdd8`  
		Last Modified: Wed, 23 Jan 2019 11:58:27 GMT  
		Size: 1.6 MB (1561338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8e349d8a43fdb6e298c166ede4e131937a8e7c8ff86ac9d038dc64c2756589`  
		Last Modified: Wed, 23 Jan 2019 11:58:28 GMT  
		Size: 5.8 MB (5847512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3011cefbb9a903372a3a5bc4be3e85c7cc9bd4a4ba8946e81ee31631b163c4a1`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15bb2e44dae8f80e442f22b98b6c362e720f2a19b8d4f6a5654bf5529809c47`  
		Last Modified: Wed, 23 Jan 2019 11:58:26 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:1d8cdd7f59bb5c6aaf4dfaaf9cf079653756843d7b0ae755b0bb034c2a45aea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c4c772d11a067350da8373a800eefcd7712c6efcde65d7d4ee814befc0db4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:49:24 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 23 Jan 2019 13:49:28 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:49:28 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 23 Jan 2019 13:49:29 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 23 Jan 2019 13:49:48 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 13:49:48 GMT
VOLUME [/spiped]
# Wed, 23 Jan 2019 13:49:48 GMT
WORKDIR /spiped
# Wed, 23 Jan 2019 13:49:49 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:49:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:49:49 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab28850c35f98ea8b217dfbf38b9a548d9176b788fac35c8817dbf1ef24e568`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3d56a3191ef390996546cebae21e2558093047c03c9a1362347075ff279c40`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 1.6 MB (1625745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a78f67e10abe189e0c96b634c6adbf41380e9407e1a36145ef4c5e5adf481`  
		Last Modified: Wed, 23 Jan 2019 13:50:08 GMT  
		Size: 6.8 MB (6770373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6eaba1b689a1f78bddb77f86f91f046be850a261a281b7b3e6bddb9b58ec5`  
		Last Modified: Wed, 23 Jan 2019 13:50:07 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c6cb18e63b6d30799eb630e9afedc49d99a5264232a0245088ea7b108b118b`  
		Last Modified: Wed, 23 Jan 2019 13:50:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
