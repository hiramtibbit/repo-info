## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:08a54d963c35d4916bac17ec46cd123cbf9b4406f41bc7d1b18738b0f57f0b77
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

### `buildpack-deps:sid-curl` - linux; arm variant v5

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

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bd96df1b1b067184af704f683dbbda0c34b7fa88489e8095641e1eda443c7aa5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61958849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ce23726a15f807fb4d10c7cb966e2260a2206e7f9cb1dfc4102b36425d9de6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:01:35 GMT
ADD file:a5ec8ee488d30cb687ca0762ec363e449fb00765212c6f1181848cbf3c3d6d1f in / 
# Thu, 07 Feb 2019 13:01:36 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:34:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:17febb2059b5733145fcd79dbf81a59c1cfe76c77c0288fcde8d76d9f19ee04c`  
		Last Modified: Thu, 07 Feb 2019 01:42:10 GMT  
		Size: 45.6 MB (45567644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79409742c2ceaeaf5a950e3f8c05f4776d47e4dc8a7d566a2ef1f9ae18a98db7`  
		Last Modified: Thu, 07 Feb 2019 15:50:47 GMT  
		Size: 7.1 MB (7075518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33df216f6fec4a0793c5bf6ea34fdc36193f3ea50a87d3e47deb6a93ec637686`  
		Last Modified: Thu, 07 Feb 2019 15:50:44 GMT  
		Size: 9.3 MB (9315687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b842095f72968a6ce3227336733a89e88d1d91b742d61a93a148d11b336dfd1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66404947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9e5f08d31cd6e17ddbc62e999b5a5895ee9c8322cb0fd091d47f3916f17b75`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:07:17 GMT
ADD file:7b42d90311ba4721000b061ce5688b7617c00f357746b95a1001654a8305cf2e in / 
# Wed, 06 Feb 2019 10:07:20 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:27:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f20511bfb9032422f9398607efa0d22ecc98b39ed90a1905a9bdf23e4a9fac4d`  
		Last Modified: Wed, 06 Feb 2019 10:13:03 GMT  
		Size: 48.8 MB (48820697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e7af22c8a8d91244e5d3dc8314423b1f51c571e552b3ca769fc46d670e1496`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 7.6 MB (7630486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e8fded67b605a465c7d15c4bd287883a27bb75b849b6671f4fd6e7f0b9bfc`  
		Last Modified: Wed, 06 Feb 2019 11:17:02 GMT  
		Size: 10.0 MB (9953764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4e4464a49802a306d277812da41adb2a0b6607dc3bc6523d1ef67eacdfa6ea1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69062384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f5f138916675712c7568a2e52c4502bb3d8333df1b05e862e856c9566fc08a8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:00:13 GMT
ADD file:ce7c45fff0d74bfe603a7138b818751de070b078ca0721b047e8567c30f61cf0 in / 
# Wed, 06 Feb 2019 12:00:13 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:46:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7f5d83ecefd7c06c9ad1f3c8e31a16ca0808dd67c4c337ffd67e9a10a97d7675`  
		Last Modified: Wed, 06 Feb 2019 12:06:14 GMT  
		Size: 50.8 MB (50829933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcf4f56465b45cfe5620cbd28fc67621aec9ed3ef1ff3a6e4e9a9e3b6b18cc`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 7.9 MB (7924724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1e77e887de2c62af9e946eeb3bdc7df911c334d8daa540671d5a51ab4ed6f5`  
		Last Modified: Thu, 07 Feb 2019 02:01:48 GMT  
		Size: 10.3 MB (10307727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6954d84a5a648e6154b075ccd1f9ba75d92b1fcf050b882385e55193ddb0925b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72678697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd16873b99bf75c43e4521cd53e7f33dc7b881b21c6deb3a64da420e105ee3ce`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:25:27 GMT
ADD file:a2cf5ae39385f7b927131248a493d2e950537da2b4a33c9a1623275b4c1f37cb in / 
# Wed, 06 Feb 2019 09:25:29 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:58:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7ca445fe7afd63ed9c58b670083df50dbc0ebbb9cb6206ca9bbdafb0f88349e3`  
		Last Modified: Wed, 06 Feb 2019 09:29:35 GMT  
		Size: 53.8 MB (53768634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0296a85176e72ceec71f4feb9fdf9312f2c705cf9b52811fbc848609e8f04e`  
		Last Modified: Wed, 06 Feb 2019 19:26:05 GMT  
		Size: 8.2 MB (8206996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cbc85de1461ac3cf707a9fdbb5ecc41c5b5483b6b97cac621fb2fc71d6dd1c`  
		Last Modified: Wed, 06 Feb 2019 19:26:05 GMT  
		Size: 10.7 MB (10703067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5e4f2f41b004710f29bddf24aceee90834f8c917ab4a7ea4e494eb34d1faa861
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65840492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f675ad24691242ce6389070d836e66fbbef958b55b921b7a908b4068ef352243`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:42:20 GMT
ADD file:a5ee680799f2f7c5bc6b342acbeccd9b53fcb4c9ead7369f835dd85be5ca3fa7 in / 
# Wed, 06 Feb 2019 12:42:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:26:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:26:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fa45b08f2a9797c6d1f48741b3f2096e45b319e1a52f713f1eac8b8e472e3521`  
		Last Modified: Wed, 06 Feb 2019 12:45:51 GMT  
		Size: 48.6 MB (48643552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83968d34fc41fa766d950210772d5f50c78a26b8549f3feb79c444ad6e78e44`  
		Last Modified: Wed, 06 Feb 2019 15:33:25 GMT  
		Size: 7.3 MB (7342529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca21562c0cbec64a6c6ea7bd50fd01a3cfff5ca91c8ffe3f6d9469380792b856`  
		Last Modified: Wed, 06 Feb 2019 15:33:25 GMT  
		Size: 9.9 MB (9854411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
