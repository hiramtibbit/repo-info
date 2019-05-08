## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:ed5b29cff4917aeabb8968cb2c9d87442e685d3693b393bcbbd315520098e0aa
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

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c07ce8e5be7a9bb729a852d5e9d1de39f4d5f53258801fae60a7af69fd86f8ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119818309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c59cbddae8b15c947a02c6c9ed1ecde2e93a8e0104c703ec94712fb5cc590f62`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:28:53 GMT
ADD file:1206af08b0982cf51772ede1bb826b30be8426cadc52014207fcddd1dce1a006 in / 
# Wed, 08 May 2019 00:28:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:27:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:27:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:78496f898f92b99fe2e84608b2142ab03f43c7f16be3ef2e394b7c61b0ae4f7f`  
		Last Modified: Wed, 08 May 2019 00:35:29 GMT  
		Size: 50.3 MB (50281451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371585a4d994e5e2a109f054c6b4f262cebc609dc5b8dfae60d3f469c0dbf9bc`  
		Last Modified: Wed, 08 May 2019 01:42:50 GMT  
		Size: 7.8 MB (7791309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40646915b45440e6e81e9db964eaf8634250379b3dc4a4ad6f89ebbd437af4dd`  
		Last Modified: Wed, 08 May 2019 01:42:50 GMT  
		Size: 10.0 MB (9977692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367f315d31e672cc89f8ce78e8220d1eba1bc429b350d84a537592677676486`  
		Last Modified: Wed, 08 May 2019 01:43:07 GMT  
		Size: 51.8 MB (51767857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:833f65a8355ee961e5ffefc36969ee1eb5dd88444fc3915df624c51b4b2a1fa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114512289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848c88d030fcc8c320faca0e366bcd8089ab4b8450ca68fbf066e7d260b3b977`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:49:07 GMT
ADD file:32322c35d043b12b15eabfa71c7e1f7ee0a9aa0da843563ae0071b2734f64e02 in / 
# Wed, 08 May 2019 08:49:08 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:48:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:49:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ec2a6987ecd7db01af5a6962ce511e10d30c11c3ec6500e3c2b48150bb874308`  
		Last Modified: Wed, 08 May 2019 08:56:06 GMT  
		Size: 48.0 MB (47991337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e09a6c0b2c2732cbc7a0798a062fb05a5da94cededd18b2c1ee906b90fb0a0`  
		Last Modified: Wed, 08 May 2019 10:05:22 GMT  
		Size: 7.3 MB (7340262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693b1cab3ce5f22f4b85020bf480b5b15266f54ace8a928cc08ab0e3e56c8c7b`  
		Last Modified: Wed, 08 May 2019 10:05:23 GMT  
		Size: 9.7 MB (9672420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2c4fd6787a7877877295e37cb51d56e3e499a38db9c74bb62e8fe830090ae6`  
		Last Modified: Wed, 08 May 2019 10:05:46 GMT  
		Size: 49.5 MB (49508270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cacaa8b8c0c3779f44793b7f8513e0f0aa03bea40fce52141d3e64c82dd51d3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111426037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdb1f83d4362f4087d7cd7fdabd4ecb2ed319e930ab1db4db5b2546657da13c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:03:01 GMT
ADD file:9ea8b1eaf7df65831f45d26aeac613288e975bb3de0402f2fb67620fa4073ade in / 
# Wed, 27 Mar 2019 12:03:03 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:58:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:58:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:59:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:029cf51a83d447de52cef0ffab80221ba6a4f49c0a5dd803f9a80b58ab2d2b72`  
		Last Modified: Wed, 27 Mar 2019 12:10:17 GMT  
		Size: 45.7 MB (45709457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468280e41ec0f2b8a9cfda166f27dc50bbc402a26d099d9910c3ab7cf75d761a`  
		Last Modified: Wed, 27 Mar 2019 13:17:45 GMT  
		Size: 7.1 MB (7083063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e2b2ba3f981d88992647688be409dbbaf46bf46f3960d2f67c48c32d086001`  
		Last Modified: Wed, 27 Mar 2019 13:17:37 GMT  
		Size: 9.3 MB (9324320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4126e5e1857f84500b1a5716ca66a61192e6cd92d30d96dd494bea19b4151092`  
		Last Modified: Wed, 27 Mar 2019 13:18:06 GMT  
		Size: 49.3 MB (49309197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5d620b236dcc4afb95e377400837d8d6d01c238d5c6799cde19d2f94a21b1c83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120876282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1140190d8a55a7e822e722232f89460cf051450d8e76bb8e42c8a728945b6a45`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:44:48 GMT
ADD file:efdad40bd88daf011b7ec9e7c3bf62f934bcb8f2e84321dcf5b519af553c8be2 in / 
# Wed, 27 Mar 2019 08:44:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:43:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83128e932c2f242170e54dd01950ab9384a9fb68c814a77c1632b9fb6a007661`  
		Last Modified: Wed, 27 Mar 2019 08:50:27 GMT  
		Size: 49.0 MB (49022969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80f3ad9712797dccb9be63a9f07b097495de62f956980d0d2369dfa244cc13`  
		Last Modified: Wed, 27 Mar 2019 10:31:54 GMT  
		Size: 7.6 MB (7649554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223575240873e37aa2265ea9e7b80eb3b7b52bf4e3ee6a95e4fc614db50faa96`  
		Last Modified: Wed, 27 Mar 2019 10:31:55 GMT  
		Size: 10.0 MB (9959515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f001e394762edf0d9410b5d39b7602b0a4578e5a711c04b7719b36c6a2b34b98`  
		Last Modified: Wed, 27 Mar 2019 10:32:30 GMT  
		Size: 54.2 MB (54244244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c6ab7a58cf57294833404875de33d02436ef876487fa7cb833586000ef7c6d9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124920712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1074c5f1c6132f6f0e06385e299b6728c645778a3f6f97d086f57c6d9a3a282e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:39:29 GMT
ADD file:e559a18019b869d561ce9206554ab0f0d70d2f0b5524ea6b6e98e94bf1ac2c09 in / 
# Wed, 27 Mar 2019 10:39:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:39:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a19caaf6f7524a9023673e7fe943eb4aeb990ad49b202bb21ebd76af7b2d6013`  
		Last Modified: Wed, 27 Mar 2019 10:46:01 GMT  
		Size: 51.0 MB (50992741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c29554f6331ff982085dae0958e8d8b9f765f1a1d8321674db501de13de268`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 7.9 MB (7948658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab48bc7a278fad7787facadc0eb1a55fe885b9cfe370f688312cf9c8421afef6`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 10.3 MB (10317991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47f2794fe4db08a46d5a6c5e4840ff62d6e1aeeeee7c181bde47c53f614513b`  
		Last Modified: Wed, 27 Mar 2019 14:07:01 GMT  
		Size: 55.7 MB (55661322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4ecebebe01a89d130e7713f2df3cf838a84a7215ed2704758b6673738055566b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132602012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad8bdd7ab4d3a8f367e0c058a940691f3b460a9e7d6ce668638ad33cd7d4a1b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:22:41 GMT
ADD file:aa7dc9cdae0cf7507369fae7d6118dcd3d999e00e3ef21068695fe6648ac20ca in / 
# Wed, 27 Mar 2019 08:22:45 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 08:53:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 08:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1bb6234125526f51a6b0bfb06f13173fcd77203e03fd3ea331c9bf5b8b9fd9a8`  
		Last Modified: Wed, 27 Mar 2019 08:28:51 GMT  
		Size: 54.0 MB (53972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57cdc447a7a0169ef80f47a0c1720252005fef375ead499d25d52a1cf711ce`  
		Last Modified: Wed, 27 Mar 2019 09:46:17 GMT  
		Size: 8.2 MB (8220179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a73c130df883fca60855727b95f93bac30bf0d5df50fee10997cff4dffe61b`  
		Last Modified: Wed, 27 Mar 2019 09:46:18 GMT  
		Size: 10.7 MB (10710648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd69301347f7a7ffda64b0c611893395c013f32af8193a7a4076862d385ee2bf`  
		Last Modified: Wed, 27 Mar 2019 09:46:56 GMT  
		Size: 59.7 MB (59698998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9c4e1ad805d8053fe689757148282ec13c7a1180fc858f9acfed95bc91959f0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119496693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34bc6dfc6b51ea8c742ec25ced5aab5af0f0fde60c069a357839ceea0dc8f33`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:12 GMT
ADD file:b91f4c9de51b195c8d4d540393591ec9025b5fafaab3be78636d24216fe7b04e in / 
# Wed, 27 Mar 2019 11:42:13 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:33:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:34:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:34:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c26d5718bd8ed95e77d7925c874534f3358d019637f944f35a70fdc0aeed7217`  
		Last Modified: Wed, 27 Mar 2019 11:45:22 GMT  
		Size: 48.8 MB (48798574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fb7c4fa0951f9c55f07e80dd1012a24f7d9ad9816ef34f42c8afa5119da878`  
		Last Modified: Wed, 27 Mar 2019 12:51:44 GMT  
		Size: 7.4 MB (7360192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e9703f04fe30fb4e0aff17d80fab29ebedc97a22be2a976cf13ae585c5c185`  
		Last Modified: Wed, 27 Mar 2019 12:51:42 GMT  
		Size: 9.9 MB (9860660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5516d720011e1bd08a080478dc0c00169a82740ed00a1c922dadf4e118bb5aa`  
		Last Modified: Wed, 27 Mar 2019 12:52:02 GMT  
		Size: 53.5 MB (53477267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
