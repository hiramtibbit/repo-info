## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:22f3527613678b34d2df079ba36224b9e1f84ec8fa87cf49619116b77ca5290c
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

### `buildpack-deps:unstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c99ba74fb46c894300cc7714824715a635b5ffba6ef53a43af79e2c998a03f6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68672277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f895e7ade47da15ee8f4dc4acb6a786981aa463d571a2714a3bbac015f7124`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:27 GMT
ADD file:dca5a20f97013b9a80952784924ca7f3820f99958ad080344fe8445a67c2ca92 in / 
# Mon, 04 Mar 2019 23:21:27 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9785490dff12d73b09ebaeb9dfa12d32bc61a107039000030ea3d9da0db5f77a`  
		Last Modified: Mon, 04 Mar 2019 23:25:37 GMT  
		Size: 50.2 MB (50217046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81298de37ef3a5fa4733f0841b968e44cf8a8e3c50d4c2e14c599ef4066a4083`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 7.8 MB (7785176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae9f220b3fb2f6292283f3afdfbc148c506980841df909b63b2faf289cd618a`  
		Last Modified: Tue, 05 Mar 2019 02:42:40 GMT  
		Size: 10.7 MB (10670055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:01c4324156d4ebfb4bde283b5a615805d4685e9f37f91b4b0d4c66d96abb418b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65606591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2da5e0c3b6e06550be7e224cdf537057960f54ac44e560b3cf0b1d55cb27dad`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:52:57 GMT
ADD file:408a135a9a2b4df4beece5b2de3301cfa0e45a7a062eb63e9a0e7e9192bd5f99 in / 
# Tue, 05 Mar 2019 09:52:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:29:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:29:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3f835cac0c7da48ab45ed34e7fa9323dc275f7e955809e476af719eca0844a82`  
		Last Modified: Tue, 05 Mar 2019 10:01:18 GMT  
		Size: 47.9 MB (47927091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a13c1b08400ad8c370949bdf50dd9e9beb876d921502e30bf1b5fd309b9ac`  
		Last Modified: Tue, 05 Mar 2019 10:41:47 GMT  
		Size: 7.3 MB (7336165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddae599fbb72dbcdfff564e64d55467d131f4ef12a46081715d0f6e05b06ce8`  
		Last Modified: Tue, 05 Mar 2019 10:41:48 GMT  
		Size: 10.3 MB (10343335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:aa4307e4a0d255e8a96da0cd9e465642d966fb78e62390da6d9728f527b33498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62760343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1563999ea5f4cfbf929a8caecafce98b85c491d7d93577c3a4a7d000c2e2c0d7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:08:38 GMT
ADD file:b72300898197970109a36b5e6d6d7a6bb43e7b98f2031ae4e0209656631a1896 in / 
# Tue, 05 Mar 2019 13:08:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:47:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4d624d22f7bf6fc6089b3a8dad99963dba88224793cf4fd6e125d78127c11b12`  
		Last Modified: Tue, 05 Mar 2019 13:17:19 GMT  
		Size: 45.7 MB (45702215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd7518521f31fa10a388738bf1f88c27ca903200f6142f6a055cf36cde6e0c`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 7.1 MB (7082522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7401310a12e54a641edd646e202ab8fc761837c53b172213c67d172f3ae3a985`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 10.0 MB (9975606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6933dea34e75e85b3dec6777ff0ab091319ca5e8efbdcbf61e35d114708a94e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67321820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe6b1cdb1dea55ac5a8810eb92c1fb957e9d1861bf91902177ca44092ff07ad`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:58:23 GMT
ADD file:90460bfea8197db08228883344f54de9af9e181235af744b6ced1c92c9232c0e in / 
# Tue, 05 Mar 2019 09:58:25 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:20:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:21:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:144b366f7c016e373caca8c07d7f49863e1f58cd34df77dd477c040ad69a0834`  
		Last Modified: Tue, 05 Mar 2019 10:04:44 GMT  
		Size: 49.0 MB (49013519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38aff23d039c17ce98ae2f6276035844062b76a9cb6721e48c87767550993c0`  
		Last Modified: Tue, 05 Mar 2019 11:44:40 GMT  
		Size: 7.6 MB (7648958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51426802a8ba0dd98b6e4c8ab18780ce139927b80caa959bf3e47c6cefe81324`  
		Last Modified: Tue, 05 Mar 2019 11:44:40 GMT  
		Size: 10.7 MB (10659343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:24b465a23f40e1ce026f69940214c6ef4709690a204e8d35d5ef7e5b0e82fbc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (69974539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dea43b2c74c7cb8a1a945a57dea8fd286de679ec09a6f68fc478d292ad611d7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:43:40 GMT
ADD file:aabddc8503779289fa215ba4c8cedd2315637c37836b974d0cd854497316f3f6 in / 
# Tue, 05 Mar 2019 11:43:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:07:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:08:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ac3a27f255b7ba1504a24556064a0ff04577e55ba608928511824b9082daf96d`  
		Last Modified: Tue, 05 Mar 2019 11:53:28 GMT  
		Size: 51.0 MB (50983496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bc0d170f107a8a8fd0c413158849c3b7ee2c0cd150567e7cbf6c80dca37b24`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 7.9 MB (7948271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc50443f43bb98bad15dc3986ff01968f8482cb3aa13a58e5d7461a4113097`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 11.0 MB (11042772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c773598f94eee94cf628ac9ad1e5cae66106f03280fbf42c4dadba6b754e56b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73643049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2484f080b4405a457635001144454ac41ccdb998dc1b39f52344f9758568404`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:24:04 GMT
ADD file:40f652d32e0b76ec071fd9402a46baf708b4a93a447746fa2c6a983037783a9e in / 
# Tue, 05 Mar 2019 09:24:08 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:33:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:34:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2592b3cdddbd90d7ba646742ad2e42d88b7ff2e928a2409bcaaa0e0b3a57313c`  
		Last Modified: Tue, 05 Mar 2019 09:29:29 GMT  
		Size: 54.0 MB (53964088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ea9ab9e821963916336b853e74d8c29cc094b1d40d76c3ed5a818eddc133b4`  
		Last Modified: Tue, 05 Mar 2019 13:00:10 GMT  
		Size: 8.2 MB (8219458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfaab8d8f558ef22051e46a930446f1691e01632a550283553b40931dcd1bac9`  
		Last Modified: Tue, 05 Mar 2019 13:00:09 GMT  
		Size: 11.5 MB (11459503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:376b9f4d8216a182c9a7ebb4740d1ceeadb513bc9ca078e1d5e10f839931823a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66696605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901c556de4371097f501377b202c89cc9d53f08cc60c376660065257a78a28a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:17 GMT
ADD file:1f39bab5b8349914aec5d4d7288d3789725c246ce0f265333d09a89c90440aed in / 
# Tue, 05 Mar 2019 12:42:17 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:33:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:33:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:536f0d4b71a17b5b6bc1c252fc284b7fc8706b9e795c0e4d2deea17eba78a0ad`  
		Last Modified: Tue, 05 Mar 2019 12:44:44 GMT  
		Size: 48.8 MB (48790038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8403a183fbdbe6a15804cab9423acd790ec2a65a956e4737c2180da831e9fa9`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 7.4 MB (7359778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c076f27a63a721173e5f70a226c82d25b5bb5d02641c41bce852d28f8142bd`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 10.5 MB (10546789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
