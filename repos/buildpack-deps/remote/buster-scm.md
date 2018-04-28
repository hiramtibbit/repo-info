## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:cdab4dcd9d60978acda426ce2dfdd74c0b4aa0323e3eb490fbe711637ca4c42c
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
$ docker pull buildpack-deps@sha256:249778e145d4b7f5a5054151c4b8c47e0ef025a7e5889e4da4c897082c4a0334
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116159973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8353385ade1840a7dcf607b0ff79c8a9dcdeb45ff1364a3081de68de6c5e035b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:42:45 GMT
ADD file:3e44dc3efd4691d66535df49a5a805cae024578f150d8a17b801624a5b9703b5 in / 
# Sat, 28 Apr 2018 06:42:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:58:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:58:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:669cd012b9c151a1111764e66f8edf390cfc1d5c37c41f0268fa241837086cd0`  
		Last Modified: Sat, 28 Apr 2018 08:20:05 GMT  
		Size: 48.3 MB (48310892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276c2e85d55c01bb027fe846ededa2034b826deb1e4f4db6d4426b77b03c48ba`  
		Last Modified: Sat, 28 Apr 2018 20:07:47 GMT  
		Size: 8.7 MB (8654391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ebb62d52129e0cb18e93458458468c35ed78aaef8d8a10a7312035ca7db7bc`  
		Last Modified: Sat, 28 Apr 2018 20:07:47 GMT  
		Size: 9.1 MB (9112622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0971742e826ce719985d8a9aa6d47efc8b9918c8306dcd4817b4e546777dd9`  
		Last Modified: Sat, 28 Apr 2018 20:08:47 GMT  
		Size: 50.1 MB (50082068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f91a94960bd58542b8c8afb5872182aa9c501f41da3881e4f3e58331913f2471
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110625709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9dec9bc5a874688ad9135edc70731acb175fe119e87d5ce52a72cf618ce61c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:48:43 GMT
ADD file:66d920f27af34778b859ff44ac2f690b2f57a54a25e51a1186bfc8c8227115e0 in / 
# Sat, 28 Apr 2018 08:48:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:21:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:22:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c18fafa90d726e357067435541360e188b0202897339c69c0ec6942c58fe23a7`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 46.3 MB (46285529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1f92466ed8d708a6aadda46208946fa2cf7dae0b614062df8f805fb985b1bb`  
		Last Modified: Sat, 28 Apr 2018 09:36:49 GMT  
		Size: 7.8 MB (7819229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b5aef3d8865ea28de43a0ed7bc5de5593ba729c053363be2efd4d573d30610`  
		Last Modified: Sat, 28 Apr 2018 09:36:49 GMT  
		Size: 8.9 MB (8856139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63971a88c2a7bce7d056ae1f24cff6a8b6854e96a1056e57fec6ef231ee40869`  
		Last Modified: Sat, 28 Apr 2018 09:37:16 GMT  
		Size: 47.7 MB (47664812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b295bb8c9c57ee4b55c2d6ba8d438a2bd86aaa32c12b2aeb96b4089b76756311
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105890240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ecd0dca6e23849e92c0ddbb748339f53f63454c15835b3b4368583835df6fb`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:58:11 GMT
ADD file:f2876a722dd3fec61e9051a68a520019d6a5c08e33fe8e9e4c9ea2fca23db046 in / 
# Sat, 28 Apr 2018 11:58:12 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:32:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:33:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:538e2267e0d08299ff1f9bdc7a7e667616481e0dc6c2902bcae25740b91adb42`  
		Last Modified: Sat, 28 Apr 2018 12:09:39 GMT  
		Size: 44.2 MB (44192112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bce1a26d78a3172d27023c0939115a1d39982d6ba175290977201de30367f52`  
		Last Modified: Sat, 28 Apr 2018 13:00:57 GMT  
		Size: 7.5 MB (7549685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29439b1ee635f3aa9096db0ddaaa07a28fbc35539c942509a0298f49facc141e`  
		Last Modified: Sat, 28 Apr 2018 13:00:56 GMT  
		Size: 8.6 MB (8567787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98e484363017e254ae0790733283a5ab254acc30fd59c3401d163f12bc480de`  
		Last Modified: Sat, 28 Apr 2018 13:01:31 GMT  
		Size: 45.6 MB (45580656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:96db29fa48c9ef11033bf58fe1a86f5adecaa6e605471ef617eb2e2a7fe4589a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109546251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f4b2095a467d0012ba774779c365ded8dd5b1306c898d8e3493c4d10d28b24`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:23:02 GMT
ADD file:4d06cc781e9fabadda4327717b9e858e087a533b952ce4c62c6903392b4e76ce in / 
# Wed, 14 Mar 2018 17:23:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:10:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:11:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:12:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5f4421c3a5683a5815aa38bb9e5b6d9900c1fdead4046af0aa2e60a21ca2db9e`  
		Last Modified: Wed, 14 Mar 2018 17:36:30 GMT  
		Size: 45.5 MB (45463739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adc8930e784e1fdda85378c52f6f208653e7fb05f762bb8e7f429be32ead022`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 7.9 MB (7852846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870315f2036e8576f26842c96366fa568ab0156a2a2e17b8eb5e0e5b44f6b9b6`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 8.8 MB (8837935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5209cc31bbe17adc0667b8aa70b72a1613bcf1c931a898fa5b05f1f5aeb5bda5`  
		Last Modified: Wed, 14 Mar 2018 18:58:41 GMT  
		Size: 47.4 MB (47391731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:66d9ba4b22cf047180282b1c032f2d3911f0bbec9c4b658523953268109d5881
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118975899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0346e0ed4f0d5f01ef5cafd0dc4671663ef272d25d7b40c0bd4f3ea652460f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:09 GMT
ADD file:c7f45bbb36a6dc2b6b0b33d053bb2770ec06cdb2c900cff5af14d6489490b12e in / 
# Sat, 28 Apr 2018 10:39:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:59:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:59:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:00:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a8e1be398ceea51bbc9f18e247db10203d8e023e0be4dcf256a6756222e8879`  
		Last Modified: Sat, 28 Apr 2018 10:43:33 GMT  
		Size: 49.1 MB (49088138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae62e68633437ec13ff029590331cf457580af13f358ab1f78b7eefc16bb3d6c`  
		Last Modified: Sat, 28 Apr 2018 12:35:54 GMT  
		Size: 8.6 MB (8626683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd2336fb888c8f08a3f8caa7ad332ecc5f6472f1b15fb1925f97457e16e4e96`  
		Last Modified: Sat, 28 Apr 2018 12:35:54 GMT  
		Size: 9.4 MB (9388813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b414a82cd774c79a4f9970b1bbb18438660558a3e45d1bf7d77dac519ad2786`  
		Last Modified: Sat, 28 Apr 2018 12:38:09 GMT  
		Size: 51.9 MB (51872265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:18101e773edd19d029cd4e0bb297c6f50c62024ce01b4c55afdcb785e4bc153f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120484868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3d83eda0f6af7e5f307526dd675f6fade11e3cbe507d1bf902cbab07973424`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:10 GMT
ADD file:d3657c1f223127301379ac9ded23ac24fa9725bd9f8bc3e66ef79572f768815d in / 
# Sat, 28 Apr 2018 08:17:10 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:47:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:47:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:48:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:20d66f98ebb4d14ec30708a8ce75b4004164b1164afd9734a7fa623b2d1b9b77`  
		Last Modified: Sat, 28 Apr 2018 08:23:26 GMT  
		Size: 49.7 MB (49746693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3402b1ed3c4afd14c97880f7ada01d95c68f0f6e53b29fd6738970d2c5b14a4`  
		Last Modified: Sat, 28 Apr 2018 10:36:20 GMT  
		Size: 8.2 MB (8248361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225b2455b2130e63206a926365cf5c27e3d9a1e973bcfe7ba11b515e58559728`  
		Last Modified: Sat, 28 Apr 2018 10:36:20 GMT  
		Size: 9.3 MB (9348774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc706787f7ae98863a56194d06ea5765981eecb2a1db3482450e188244752d3`  
		Last Modified: Sat, 28 Apr 2018 10:36:58 GMT  
		Size: 53.1 MB (53141040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:95b56e8c14b4b9f095c92deee6b364082d15a98bd50713482ed6270faee210be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114258992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0986f76fd27d0b6c75d37e2ee5d791aa213e09b70e2a22bd7ab414f87dc1060`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:41:56 GMT
ADD file:a585239e7bbf89417d8a69d8397ff18404f3e0baf7c0d648078be548627561b1 in / 
# Sat, 28 Apr 2018 11:41:56 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:09:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:09:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:10:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:811bf1512e7bc49075b48591994ed3209ccd1ed59f6a9260e4fec18bec422a32`  
		Last Modified: Sat, 28 Apr 2018 11:47:16 GMT  
		Size: 47.3 MB (47336918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed70b61bb98b750e30c9fa7d121d9ebee2dbc4ed926e11d9ef9ac20e6dc65ff0`  
		Last Modified: Sat, 28 Apr 2018 13:27:52 GMT  
		Size: 8.1 MB (8141185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a49ac3473f99426565cd694c0dbd98065dc41fad72c18ec40a9dac38ce3b3`  
		Last Modified: Sat, 28 Apr 2018 13:27:51 GMT  
		Size: 9.1 MB (9076138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0df824d84393ebdcde1fffc84a5d25a64c882b946d3bae16cf872d897751dc`  
		Last Modified: Sat, 28 Apr 2018 13:28:15 GMT  
		Size: 49.7 MB (49704751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
