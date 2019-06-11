## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:1ed6921b9a8cbe1e40dc4660bf17bc2fc561558bbe93d306fe6a04122cbc0eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:0ae4cb1279c8847ca72bd1d19d53cb95b18bad5b90deaa026f39fc1571b8bfb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71958017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2355032820f0ee443295babd3434dd3f7f8cc2465f12e8b6cc5c6fea38e3f143`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:09 GMT
ADD file:6f4dbeacd2c7a48941d1b7aacc0e881df9cd6e3c2bcc54665038e0f2e29c7ac1 in / 
# Mon, 10 Jun 2019 23:22:14 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9811207f4ebad5e666eddf6e1684e4eabe16efc94008f77fc6fd17f02c583d17`  
		Last Modified: Mon, 10 Jun 2019 23:26:18 GMT  
		Size: 54.4 MB (54385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8f4d0494dc910e90a45519fd46ead7a76c43073a36a726ddcedbdfafbd80cf`  
		Last Modified: Tue, 11 Jun 2019 00:35:12 GMT  
		Size: 17.6 MB (17572182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:4db1c0b6a1cdbee19092bb38d27d6f7abb42d0c5c1cc9e9a82d87c2b162b12f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69607718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c37b6aa184ad485ebfa7ca25f1d50148c5c366bb2e352138803a759a3f62168`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:49:59 GMT
ADD file:7f8109dd37b2c20302f7a90e042e3dca781757478e499034c546fb898e6fc96e in / 
# Mon, 10 Jun 2019 23:50:00 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:21:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5d91a8f5de0e5f384568f40fe9ac89414f2afbdb38d7744ff944cead02827c60`  
		Last Modified: Mon, 10 Jun 2019 23:56:45 GMT  
		Size: 52.6 MB (52575080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0dec262b7c726fae31a74bd90e247b518c277ca6a002ff602d64dc6155b6bb`  
		Last Modified: Tue, 11 Jun 2019 00:35:42 GMT  
		Size: 17.0 MB (17032638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:302d71e875968e6b2e258e386c89d0fad9641399ce0cb013c27fef14e4feb4df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67016215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0ca135c836c546bca0440e13640356cc61ae3c44c3bd7963193d079862ab9a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:58:52 GMT
ADD file:fd38fec1d1ecba98d40ef09479860aea406e5721e9752fa0c1d231944306c438 in / 
# Mon, 10 Jun 2019 23:58:53 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ad656537a00a24adfe5e93daf249c9dad7f6db57aacfc13bacd0416aa3f5199e`  
		Last Modified: Tue, 11 Jun 2019 00:06:42 GMT  
		Size: 50.3 MB (50297275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f42b2bf8f8b361bf0098ee7a640f6f7180ffbf3de0f2095ffdabc3eed02f`  
		Last Modified: Tue, 11 Jun 2019 01:14:55 GMT  
		Size: 16.7 MB (16718940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:79181569b7b525463f937aefd06b0c1a119a6695b5102447dd204a8e3451520c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74454996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038c9daf82b654e778ff892faf885cf64fb2827aa48b121698ff72e95fb88a69`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:42:11 GMT
ADD file:383a4648827e4920fc38f6ee93e3a1b0198694530961012a3ac4ff2b60d469f0 in / 
# Wed, 08 May 2019 10:42:12 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6b6ce677eea2e67f795221107c4a01e07d07480fa9706aa20331a88f2a6f8617`  
		Last Modified: Wed, 08 May 2019 10:54:05 GMT  
		Size: 54.6 MB (54605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f48be8120c22e9a5375fa05aea15ce2e87362772a9df12046625d8fcaba344`  
		Last Modified: Wed, 08 May 2019 19:12:01 GMT  
		Size: 19.8 MB (19849905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
