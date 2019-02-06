## `spiped:latest`

```console
$ docker pull spiped@sha256:a6be391fd0c60084f62dfeb895710b4349d51f72fbe9e5ba025de30394b49664
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
$ docker pull spiped@sha256:5d709fc85eebdbae907be642a06e16a5d727d9f581afe9724490be0683c03c63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30271718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff80a72458c6bbeb4a37015ce261eb28da7eeb43f263629eeebb027ce1102a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:09:42 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 09:09:46 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 09:09:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 09:10:11 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 09:10:11 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 09:10:11 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 09:10:11 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:10:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d552125b09b5ce62c23bd69b845a9e46e99b1254fff13f4ee42cbdbbe15197`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685dcba75b8d55c04f4a8f8c3bff87836f0f2e94e5c273025183dc77384abd16`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 1.9 MB (1891371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c5e70f16de59738a7499611ffcda1b821c356cd95a31005943b968dfc826eb`  
		Last Modified: Wed, 06 Feb 2019 09:10:28 GMT  
		Size: 5.9 MB (5877872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d15ff32c20a17a9e845f7f07b43c253c4042bd3cce0e97b92d92570e983430`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef9f86d65a7ecda74a2c29103ad7de47adc4a8009fbe17578818b949b334dc`  
		Last Modified: Wed, 06 Feb 2019 09:10:27 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:4ce244b79f5f5080ce5fff39081e908dd6679f4d677ba7e26bd88d6d4a8f3c4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27212713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db4bffe72f85f065b55dc9a7ba14c3496f8b73bdf34d401e0b31991ca09e89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:10:56 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 25 Jan 2019 05:11:20 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 05:11:22 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 25 Jan 2019 05:11:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 25 Jan 2019 05:11:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 25 Jan 2019 05:14:01 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 25 Jan 2019 05:14:02 GMT
VOLUME [/spiped]
# Fri, 25 Jan 2019 05:14:06 GMT
WORKDIR /spiped
# Fri, 25 Jan 2019 05:14:08 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 25 Jan 2019 05:14:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 05:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66431ff1a975e241627fcbc9b916f51b41bde9ae44ce2a59bc4ea68eb95d7461`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d6683a2b0f67fc571a847f02e306741becd7b2e1c257f9caa667408ce035b`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 1.6 MB (1623677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83775b7c5b3260efa369e7162e72e302ef7e410180bfb2e81d78abe91806afdd`  
		Last Modified: Fri, 25 Jan 2019 05:14:37 GMT  
		Size: 5.2 MB (5236652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8459b7ba90f28a5f032712753ad0ba306d92ec5dcfe692ffeed1663fb018d07d`  
		Last Modified: Fri, 25 Jan 2019 05:14:33 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2047151c393bf5d244cae883f8a7c5bc84fd49f876a868e2536cb0194a491`  
		Last Modified: Fri, 25 Jan 2019 05:14:34 GMT  
		Size: 351.0 B  
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
$ docker pull spiped@sha256:190912b473f4814d951e3f3c8440d3e162c4e4733b838726ca0f92e233e1c2aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30751664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3747cc66d735fbde84171955c10ad34ecb43274ae98524c4c3b53af632a5d426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:51:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 06 Feb 2019 17:51:23 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:51:23 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 06 Feb 2019 17:51:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 06 Feb 2019 17:51:40 GMT
RUN DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 17:51:40 GMT
VOLUME [/spiped]
# Wed, 06 Feb 2019 17:51:40 GMT
WORKDIR /spiped
# Wed, 06 Feb 2019 17:51:41 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 06 Feb 2019 17:51:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 17:51:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8b16150d2067fb0be8f3bcf9ce77bc01b2663f2ecd3bf2f26e9bf23861534f`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4257aa2c1658782b6ba65dfb9eafee998b516f77bc2045461fba9a03a9504bec`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 1.6 MB (1625747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a05e3a37eb56bfdf6d589fc30bab82ee31778862cbf1c6b078c4ee9a671880`  
		Last Modified: Wed, 06 Feb 2019 17:51:59 GMT  
		Size: 6.8 MB (6770394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e18cf11df3a111f02f650e5cac921a7b3ea676977c0614dcb1710f9a7a006a4`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40b3f6de4c29a72c38a826ccd85709851207d6eccccbaf3e48ca9690355fe26`  
		Last Modified: Wed, 06 Feb 2019 17:51:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
