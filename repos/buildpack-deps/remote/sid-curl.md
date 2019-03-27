## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:4f3484a49d8b4a7736af1b8313a76c52e8b5374ae88b011dabb555f5b10755b3
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

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3587d39dd6ef95d5cc3a7c341b33f486c7f16c09e507f4a721407cb51655dfb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68117073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87bb63e11e50e4f466a7b65fd4e45834d149cb709006dd7459f5fd736eddd295`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:40:23 GMT
ADD file:ae997b4827aa33b5d2a8d031fee7fd4a7f0d7839e72d2cd38977fdf806b1e21c in / 
# Tue, 26 Mar 2019 22:40:23 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:24:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f747399e18307cd4cfb6e3aa0f45160b5c14d6b14f60316342b9f37bac4e7a2d`  
		Last Modified: Tue, 26 Mar 2019 22:43:49 GMT  
		Size: 50.3 MB (50280305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed3f0fd634fcec3c6557dd8bca5f8eac4f290cce090459ec6d0515d5fb76e13`  
		Last Modified: Tue, 26 Mar 2019 23:31:09 GMT  
		Size: 7.8 MB (7787505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32446fe911be1a551426461c98ca9b48b5bb404064850c52997183fa960325c0`  
		Last Modified: Tue, 26 Mar 2019 23:31:09 GMT  
		Size: 10.0 MB (10049263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f98169de5e7bf2b33b23da23b6e9d13deb1377f339edb4ea2f5137a4d1b47df7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65080962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c206fb24f90a91b9ef6d237e3e6699b4ab0b429b17dc1d99bf25eff27386ad`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:52:02 GMT
ADD file:ac5e335fe2fd6af8593e884cf6e7ba86f073712dd654c8b8aa8fc7c0075195b0 in / 
# Wed, 27 Mar 2019 08:52:03 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bfd21f8be5c8af18db3021973af86c6d365dbccbad50938d0d5755ee3ec740c6`  
		Last Modified: Wed, 27 Mar 2019 08:58:12 GMT  
		Size: 48.0 MB (48001625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480d677c0002914b59fca9d431aafd9b14641a83efa24cc32d8a435033a658dc`  
		Last Modified: Wed, 27 Mar 2019 10:08:19 GMT  
		Size: 7.3 MB (7339934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781405708c553baa144575646540906584f022ff615ac8994d4c2a3e731c958d`  
		Last Modified: Wed, 27 Mar 2019 10:08:19 GMT  
		Size: 9.7 MB (9739403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v7

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

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c8f4e1836dca7610fb166d3ad94c9fda021bcd0aca7cfafd2294551efd721a17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66764019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e6ae9a22b8096f419f7d1ba7a8a4532cfadae153a9980fd1dccbd942f8d3f4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:45:41 GMT
ADD file:68cb85d4af7b927b8543f3786f7ca7100ac3b9c18b420b47dac25daf5799832b in / 
# Wed, 27 Mar 2019 08:45:42 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:06:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ec45e1f43eaad20885a807eff4b048b1dcf620827bffc3e1060a75bb358a1c7a`  
		Last Modified: Wed, 27 Mar 2019 08:51:07 GMT  
		Size: 49.1 MB (49075641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7d470ff2f1e2e1bcb47aa4cd6dd5490bc5d3c4e107dca4f28c486928335e6c`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 7.7 MB (7652313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b807aee712d82fec33d798a7daf3c4aa366089bde485475e5050b45c0d85aad`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 10.0 MB (10036065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; 386

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

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b8d322ab20d54304a73f64321cd5b806d2c785cd53fd47c66f1481f22c88a985
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73040681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3553e3566bb9c27a0569374616e94a8b1eac80ce80bf0ccb3c398db1d55978bd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:23:25 GMT
ADD file:a95861734bc310e50b882d74e42d04bbd062e0e399fad88a4514440fa4d6c983 in / 
# Wed, 27 Mar 2019 08:23:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:19:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:de010fce00f5a67d16b84c1807875f16c577630cf29414a47d72c806e1dd7fdb`  
		Last Modified: Wed, 27 Mar 2019 08:29:58 GMT  
		Size: 54.0 MB (54027867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8973a9087cce195d08df0036cbd4ad7947844d92995a1c5a4715d7f60fc6f2`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 8.2 MB (8222691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c4202494b5950b1fb154e8321cc6aaf924e6142ba18ebfb4d8cc7c4a39aa9`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 10.8 MB (10790123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; s390x

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
