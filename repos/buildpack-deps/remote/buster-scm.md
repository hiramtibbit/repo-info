## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:52b722495ff7da71e46269174352896b817f9290dde0e7a48d2541cf927be0af
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:790d180782c501ad85e29975d90eccdf5d828eb9759ad4a235cf539819287c17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119206823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2697107886918c859ea0c7f348b89fd6343444192aa02a107b42050ec4f301`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:42:45 GMT
ADD file:3e44dc3efd4691d66535df49a5a805cae024578f150d8a17b801624a5b9703b5 in / 
# Sat, 28 Apr 2018 06:42:45 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:03:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:04:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:04:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:669cd012b9c151a1111764e66f8edf390cfc1d5c37c41f0268fa241837086cd0`  
		Last Modified: Sat, 28 Apr 2018 08:20:05 GMT  
		Size: 48.3 MB (48310892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8c6af901f2f391212d0fe3d2343e0152accf1cf1f97121765a0d9b50da0ddc`  
		Last Modified: Tue, 05 Jun 2018 23:35:38 GMT  
		Size: 7.1 MB (7065131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31593d4fb2cc89d9519794f168a218bb12c9a11468b242416616a26981774b32`  
		Last Modified: Tue, 05 Jun 2018 23:35:38 GMT  
		Size: 9.6 MB (9616756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7584aee1bc41a063034097f3756643b7f3ee6b253b08b25b1d3b0b0ec530a4ff`  
		Last Modified: Tue, 05 Jun 2018 23:36:10 GMT  
		Size: 54.2 MB (54214044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:a5bdfbacc05c7095a6b3660c90fc287e76a209b37d8f5eceda18323f778a6c67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113489205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62632f13eaa86de019b0f3404a3c478b51c313c19d234d156fda8200d8db1caf`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:48:43 GMT
ADD file:66d920f27af34778b859ff44ac2f690b2f57a54a25e51a1186bfc8c8227115e0 in / 
# Sat, 28 Apr 2018 08:48:43 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:49:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:49:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c18fafa90d726e357067435541360e188b0202897339c69c0ec6942c58fe23a7`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 46.3 MB (46285529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5820562fc4968838851b12ea1fb01c7c0bd7dc73a66a95e6c57ce3da8cf8b7`  
		Last Modified: Sat, 05 May 2018 09:07:50 GMT  
		Size: 7.8 MB (7843302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b8da604e242e2a0eb181149354ba063240ac08d4a310930d4c3a611dadf1d5`  
		Last Modified: Sat, 05 May 2018 09:07:50 GMT  
		Size: 8.9 MB (8856582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855d5f15f4cc33ce9cd10e520d237c133e6691ff9b121ae63c02d1bf0e5a06ea`  
		Last Modified: Sat, 05 May 2018 09:08:22 GMT  
		Size: 50.5 MB (50503792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:97bea49f71634f349fa985ab77610994971c009c8ebb897908437620fc4fffe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108582905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9894d09119a2c6704dd1a7baff06576d36f927a0b0089d2e2d3bdd3c4e6157`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:58:11 GMT
ADD file:f2876a722dd3fec61e9051a68a520019d6a5c08e33fe8e9e4c9ea2fca23db046 in / 
# Sat, 28 Apr 2018 11:58:12 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:03:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:04:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:538e2267e0d08299ff1f9bdc7a7e667616481e0dc6c2902bcae25740b91adb42`  
		Last Modified: Sat, 28 Apr 2018 12:09:39 GMT  
		Size: 44.2 MB (44192112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002a940fa942ef835ff30908d7e739d52a9680081354a1109c224644f942704e`  
		Last Modified: Sat, 05 May 2018 12:29:30 GMT  
		Size: 7.6 MB (7564613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e65ea37767e19d753eb7d500b6ddc25fd380a50c602d74501a8e4f27125b696`  
		Last Modified: Sat, 05 May 2018 12:29:30 GMT  
		Size: 8.6 MB (8568225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed6a0fa58668f317bd6cb203c5c93b37a7dbf5916d879ebf5ca06e64597b119`  
		Last Modified: Sat, 05 May 2018 12:30:06 GMT  
		Size: 48.3 MB (48257955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:40f194128d4561f17564db698e78fcd6dbcdcf0ad2bcd5f96ea0054682dd78da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113501618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9602b333a028d197bd1809e39cc29751a112dd93921d0250850d7453f47641d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:17:08 GMT
ADD file:5036a242bb6fa4ea561cf86ebf48f2b1a664f2d77cf24b666f81097e1a7b7d16 in / 
# Mon, 30 Apr 2018 23:17:25 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:03:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:05:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9305dcbea4d3f6c722c3515486f787b6f5101c0713f49efe747fb5c54a456a3`  
		Last Modified: Mon, 30 Apr 2018 23:39:15 GMT  
		Size: 45.6 MB (45610650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bace1328ae4231253fb361afbfd80f0103d2bc07edaa8fececea36a3878b5bf`  
		Last Modified: Sat, 05 May 2018 10:20:40 GMT  
		Size: 7.9 MB (7894042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e5ab4f023875d9bd5cbbc9f39a53e779acd7402585aa71262ee2290c2c7945`  
		Last Modified: Sat, 05 May 2018 10:20:39 GMT  
		Size: 8.8 MB (8847764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a632e21db176e05849f14afb27c4d59521c28342c101cc56920d1dbc9a3466`  
		Last Modified: Sat, 05 May 2018 10:21:48 GMT  
		Size: 51.1 MB (51149162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:08d7e8bd535f9b9fa6bc88d43ac68d3b9de9517f44c061345fbff0b1e6b3376f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122173901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9d63880431e7d1e526193bb38c6a4ea6b962de4313a4e87fdb6de640eef204`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:09 GMT
ADD file:c7f45bbb36a6dc2b6b0b33d053bb2770ec06cdb2c900cff5af14d6489490b12e in / 
# Sat, 28 Apr 2018 10:39:09 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:27:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:27:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:28:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a8e1be398ceea51bbc9f18e247db10203d8e023e0be4dcf256a6756222e8879`  
		Last Modified: Sat, 28 Apr 2018 10:43:33 GMT  
		Size: 49.1 MB (49088138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2dc3dd10934addd8e287550e5c6b3338b49cc5ac3ec02fc0dcc50f0c0793d`  
		Last Modified: Wed, 06 Jun 2018 12:09:36 GMT  
		Size: 7.2 MB (7219988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d7ab70a893b261bd67725cbf1c30ba8d02b42bf0ba2239c075d542a06b5dda`  
		Last Modified: Wed, 06 Jun 2018 12:09:37 GMT  
		Size: 9.9 MB (9908071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0bc95ee8542514d17b841a9a9c7a18c5e18b222a5f9dc3d8215992e5d7767`  
		Last Modified: Wed, 06 Jun 2018 12:10:29 GMT  
		Size: 56.0 MB (55957704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4b88cfcd9c42a395dc7d8ee45763dd1a1d68b58aa0173ad5d045fec7ec6ca531
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123502082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b44c7179f25e9a4c13e69219670e2eb82dbc0acb49476144d7d60cf888ee0a1`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:10 GMT
ADD file:d3657c1f223127301379ac9ded23ac24fa9725bd9f8bc3e66ef79572f768815d in / 
# Sat, 28 Apr 2018 08:17:10 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:39:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:43:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:20d66f98ebb4d14ec30708a8ce75b4004164b1164afd9734a7fa623b2d1b9b77`  
		Last Modified: Sat, 28 Apr 2018 08:23:26 GMT  
		Size: 49.7 MB (49746693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2153a1377e49b7a8227707cd9cf8d48360b37d0a2f1606eea978bf0c96360e`  
		Last Modified: Sat, 05 May 2018 10:41:13 GMT  
		Size: 8.3 MB (8266268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121c636b399604342dcb5656f4bad42debb05fbb19b63c6293c1a9046953be19`  
		Last Modified: Sat, 05 May 2018 10:41:13 GMT  
		Size: 9.3 MB (9349240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d09c681c9567a871a4ad72e1ec29936f0ef69209d4d164843cb4210115d3b3`  
		Last Modified: Sat, 05 May 2018 10:44:21 GMT  
		Size: 56.1 MB (56139881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:05e1583777bc40efa3f7603c9f34609991b0c29ad5bed10932a64b6488205a57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117186369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae40030b14934a0c60b4152cde8834c88955a704a3bfbb77801a705fcebf2608`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:41:56 GMT
ADD file:a585239e7bbf89417d8a69d8397ff18404f3e0baf7c0d648078be548627561b1 in / 
# Sat, 28 Apr 2018 11:41:56 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:27:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:811bf1512e7bc49075b48591994ed3209ccd1ed59f6a9260e4fec18bec422a32`  
		Last Modified: Sat, 28 Apr 2018 11:47:16 GMT  
		Size: 47.3 MB (47336918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5638d6eb64b30dc68efd35f21f3da998e571384fe8c865d310ffcf6e56c4f5`  
		Last Modified: Sat, 05 May 2018 12:44:01 GMT  
		Size: 8.2 MB (8166660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de84873a88d576315068a1425e315dc1169f59e806900fc4d47b591369d633f`  
		Last Modified: Sat, 05 May 2018 12:44:01 GMT  
		Size: 9.1 MB (9076502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f922eacec1ee73cc9bcbfea8e42c00238a55fd33946531bafd6316b5d876f6`  
		Last Modified: Sat, 05 May 2018 12:44:27 GMT  
		Size: 52.6 MB (52606289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
