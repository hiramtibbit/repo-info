## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:6a0a4e217eb65916d17b1c96608bc78987ca79f70fbb66dad56c75eb3018f2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:b067d3243159389a8bb456794b5481647d01b90d2c37a4b142143356cf5fe7fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44970535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65125702da81810107fead56fa39eaf78e03dbb1a8e6eb019a9a697bb1fe931a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:48:51 GMT
ADD file:8699192301f1ef9f9128a50c6fbb453bf22dd5451d822d05a034a99c53d93921 in / 
# Thu, 15 Nov 2018 22:49:00 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:22:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:22:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:75eb993070b83359932a9837d457b21b19952ea305d45fc39f2974e9c174022d`  
		Last Modified: Thu, 15 Nov 2018 23:23:05 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92b5f8f207d68ec8d6467df75481e5541c92cfa4fe6361520df0edf54287e16`  
		Last Modified: Fri, 16 Nov 2018 11:37:14 GMT  
		Size: 5.6 MB (5630804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:feac1c0d5ef8fb690ddf2a53c140729b1ebd50ded667f6c132c855199b3397bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43468436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a68c7b7e60df31b32abc36c7fbc6bf6124c46d418af62dca4a4dd2a4e6b139`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:01:50 GMT
ADD file:7fa32f63a9a6cff48266f7afe3843db8f84995b13663eac5199dd7027bef743c in / 
# Fri, 16 Nov 2018 10:01:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:41:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:41:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f2509498a89240dc1cfe86f8e2bc15366b63a69b5a49e209394999a4297dedde`  
		Last Modified: Fri, 16 Nov 2018 10:16:29 GMT  
		Size: 38.0 MB (37993565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b541535b0699a8d321a281618a0854b5158af2ca61ab032b66c360a86c3b23`  
		Last Modified: Fri, 16 Nov 2018 18:54:41 GMT  
		Size: 5.5 MB (5474871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:63aab9ca6a82d802ca1d147711c67614036aed2670c60756a931c78388446e8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41942302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92e09cb4f4059c58d3fc4c6014db9d9c50b20d916daaed81adbea12ec5b3598`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:22:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5dbcd0fa8f23a6f7b0e99bb6881d065d2e29e3cafe52a50f6ab926d59b8375`  
		Last Modified: Fri, 16 Nov 2018 18:34:03 GMT  
		Size: 5.3 MB (5321959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9ba1fbf182272e0c37de58592c56e19a7bce66b07703ab4328979d65ef77b58b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46149950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787df34d409f9b9049e07272635697a3357ad2796e6d7ff4b99e804bfd16e7d0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:31:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:31:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab244a3de6773ced8cdd912ad951766f806772ad7c61d45f3a660e40c8f4b8d5`  
		Last Modified: Sat, 17 Nov 2018 11:55:54 GMT  
		Size: 5.6 MB (5617160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
