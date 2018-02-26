<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2016.09`](#amazonlinux201609)
-	[`amazonlinux:2016.09.1.20161221`](#amazonlinux201609120161221)
-	[`amazonlinux:2016.09.1.20161221-with-sources`](#amazonlinux201609120161221-with-sources)
-	[`amazonlinux:2016.09-with-sources`](#amazonlinux201609-with-sources)
-	[`amazonlinux:2017.03`](#amazonlinux201703)
-	[`amazonlinux:2017.03.1.20170812`](#amazonlinux201703120170812)
-	[`amazonlinux:2017.03.1.20170812-with-sources`](#amazonlinux201703120170812-with-sources)
-	[`amazonlinux:2017.03-with-sources`](#amazonlinux201703-with-sources)
-	[`amazonlinux:2017.09`](#amazonlinux201709)
-	[`amazonlinux:2017.09.1.20180222`](#amazonlinux201709120180222)
-	[`amazonlinux:2017.09.1.20180222-with-sources`](#amazonlinux201709120180222-with-sources)
-	[`amazonlinux:2017.09-with-sources`](#amazonlinux201709-with-sources)
-	[`amazonlinux:2017.12`](#amazonlinux201712)
-	[`amazonlinux:2017.12.0.20180222`](#amazonlinux201712020180222)
-	[`amazonlinux:2017.12.0.20180222-with-sources`](#amazonlinux201712020180222-with-sources)
-	[`amazonlinux:2017.12-with-sources`](#amazonlinux201712-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:b852ce504670f604074bb0a0285849c95541453c39da4a6abe19c096695ccfca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:359b948ea8866817e94765822787cd482279eed0c17bc674a7707f4256d5d497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61590506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6133b2c7d7c2fb402770857b7ebaa1eff3613c21cc257aac42a8de49e3c7f74e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:28 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Fri, 03 Nov 2017 22:51:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:0978f265bf7bbe7617502b511f24e31aedd1fb71f14a5d69897f1fed03363b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:856bef5493a153aa1643ed17e4df9b0dce64f01b1df289c4d2deb1ba5112cf5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360562408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea96f042418df502c70834ea98ebac90566495899d64cd5d88fe03a9892c47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:28 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Fri, 03 Nov 2017 22:51:28 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:51:40 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=krS6u2CG0dlP3bhFMTy4WWyS6NLnygew"  && echo "d3f06b2ca42112eec2c847f58da6b9b2fe477f49919a41e886e19e07b9baedb1 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb38487110e286917d5301d89f230a4b6a48cd5cbaaa0c82e0e021e25ef78a`  
		Last Modified: Fri, 03 Nov 2017 22:53:27 GMT  
		Size: 299.0 MB (298971902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:17b49bb09ce493b720da62c4d033a7f4e30202619361812f06a91ec27fcc8c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a60d573010e99bf98ac04442089dd678dee2c1382c58e6bc5ec59d2d78d6bc56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76412625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0275117ec9bcb3ae1f3b9d1c84daacb53cf784a4b383f17c24e6f0c7e7b2f09b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Dec 2017 20:46:04 GMT
ADD file:2705be329e753885b4f10fc191a0c81d18fa96ae99f22d7a6e77f244a520f341 in / 
# Wed, 13 Dec 2017 20:46:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e947bd17727df8c2f97de67c95d52a8e84a5396049803e25ddd179536d577a8`  
		Last Modified: Wed, 13 Dec 2017 20:47:01 GMT  
		Size: 76.4 MB (76412625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2016.09`

```console
$ docker pull amazonlinux@sha256:0ef2cddab9efed1595ab882f2deafffb4958986d6b04b314ddf3009869b96f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3abc35069586f4d121ad6dac046d03219cd8f67e32997b74ae6d2b73acb27a9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98754127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1302c1eebf29c11eb257e21d27e881d7b4e810a09352ebebe45625d29a9f19d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:52:15 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Fri, 03 Nov 2017 22:52:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2016.09.1.20161221`

```console
$ docker pull amazonlinux@sha256:0ef2cddab9efed1595ab882f2deafffb4958986d6b04b314ddf3009869b96f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09.1.20161221` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3abc35069586f4d121ad6dac046d03219cd8f67e32997b74ae6d2b73acb27a9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98754127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1302c1eebf29c11eb257e21d27e881d7b4e810a09352ebebe45625d29a9f19d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:52:15 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Fri, 03 Nov 2017 22:52:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2016.09.1.20161221-with-sources`

```console
$ docker pull amazonlinux@sha256:45a53105bdbbf402c42b85eec4a1265a5377620f0bdbe75e4db56b927b2ae3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09.1.20161221-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:31e1de5f023596b3873556b301fe5a82a9f69fde1927259fc612b7df5cef304a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.4 MB (403430636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2650a4e14e0e0bf4c5597fa06126815bc5d0df3d564df88a8b6ce5336736e7a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:52:15 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Fri, 03 Nov 2017 22:52:15 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:52:28 GMT
RUN curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=IGTZ.Uzl4n4Vmg1z88gcQ0zKpHdgEUIW"  && echo "83e8a2a80e6607e89dc2a7848ccd1e5487970267bd95eb96512c706307092328 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c72b47588651497622e7d33d38beddfc519f33311171d28949d9e60dcf3802`  
		Last Modified: Fri, 03 Nov 2017 22:55:30 GMT  
		Size: 304.7 MB (304676509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2016.09-with-sources`

```console
$ docker pull amazonlinux@sha256:45a53105bdbbf402c42b85eec4a1265a5377620f0bdbe75e4db56b927b2ae3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2016.09-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:31e1de5f023596b3873556b301fe5a82a9f69fde1927259fc612b7df5cef304a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.4 MB (403430636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2650a4e14e0e0bf4c5597fa06126815bc5d0df3d564df88a8b6ce5336736e7a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:52:15 GMT
ADD file:e294b217c1dfae0777e67c33c8cf8235d3c4c786dae2f51da2b648192c9e59d4 in / 
# Fri, 03 Nov 2017 22:52:15 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:52:28 GMT
RUN curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=IGTZ.Uzl4n4Vmg1z88gcQ0zKpHdgEUIW"  && echo "83e8a2a80e6607e89dc2a7848ccd1e5487970267bd95eb96512c706307092328 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:9013413dd2f3fe43968afb3df07d2c8a9f2ea1e777da5b2f41439bc78004308c`  
		Last Modified: Sun, 19 Mar 2017 06:06:10 GMT  
		Size: 98.8 MB (98754127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c72b47588651497622e7d33d38beddfc519f33311171d28949d9e60dcf3802`  
		Last Modified: Fri, 03 Nov 2017 22:55:30 GMT  
		Size: 304.7 MB (304676509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03`

```console
$ docker pull amazonlinux@sha256:2aba195b4192b5bf93296ecefa1086c5b7fd10bcad38830b57e925cffe53e278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:007390cb34ee7f54636a75fef6192d26724089e07c8a3d9f144a083aaa6c57e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b6d09fbbe41634e824119366cb57b16758a281e2d3dd4bedbce6b8fc31ffff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:51 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Fri, 03 Nov 2017 22:51:51 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03.1.20170812`

```console
$ docker pull amazonlinux@sha256:2aba195b4192b5bf93296ecefa1086c5b7fd10bcad38830b57e925cffe53e278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03.1.20170812` - linux; amd64

```console
$ docker pull amazonlinux@sha256:007390cb34ee7f54636a75fef6192d26724089e07c8a3d9f144a083aaa6c57e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61045051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b6d09fbbe41634e824119366cb57b16758a281e2d3dd4bedbce6b8fc31ffff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:51 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Fri, 03 Nov 2017 22:51:51 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03.1.20170812-with-sources`

```console
$ docker pull amazonlinux@sha256:ab5e917a36301f34e6aae16ee4411934025130f2727c48649a423077029a6970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03.1.20170812-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fdf297abd3d0fa87123ff503506fe916b31f0176ade8c5eb9365ef2d2a20693e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.2 MB (350180794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4c5548da825c3da1b0516518f3a0923a00564c3102ec4e9cae30e71d1cf8ce`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:51 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Fri, 03 Nov 2017 22:51:51 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:52:05 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=ZVTePIIr6bdWA56CVZ7EkRKV5So3o4hl"  && echo "9be0315c2e647f7d1ba59fd843e5ea7bc4506028fa1329415477618a42aaa4b2 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc586b65725f8f0f235c5646ad058f11aaec6827314990b21cd2a64989d84e7`  
		Last Modified: Fri, 03 Nov 2017 22:54:21 GMT  
		Size: 289.1 MB (289135743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.03-with-sources`

```console
$ docker pull amazonlinux@sha256:ab5e917a36301f34e6aae16ee4411934025130f2727c48649a423077029a6970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fdf297abd3d0fa87123ff503506fe916b31f0176ade8c5eb9365ef2d2a20693e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.2 MB (350180794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4c5548da825c3da1b0516518f3a0923a00564c3102ec4e9cae30e71d1cf8ce`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:51 GMT
ADD file:d6f930eb0249084dee652ec0d40505d29ac5e7aeeb2ecd5705916b2fd0c60c6e in / 
# Fri, 03 Nov 2017 22:51:51 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:52:05 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=ZVTePIIr6bdWA56CVZ7EkRKV5So3o4hl"  && echo "9be0315c2e647f7d1ba59fd843e5ea7bc4506028fa1329415477618a42aaa4b2 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2fd2f27d0459b3fc333cf344b655b13ba970a44c295ff9e2109adac0ed6f6da9`  
		Last Modified: Mon, 04 Sep 2017 05:49:40 GMT  
		Size: 61.0 MB (61045051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc586b65725f8f0f235c5646ad058f11aaec6827314990b21cd2a64989d84e7`  
		Last Modified: Fri, 03 Nov 2017 22:54:21 GMT  
		Size: 289.1 MB (289135743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09`

```console
$ docker pull amazonlinux@sha256:b852ce504670f604074bb0a0285849c95541453c39da4a6abe19c096695ccfca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09` - linux; amd64

```console
$ docker pull amazonlinux@sha256:359b948ea8866817e94765822787cd482279eed0c17bc674a7707f4256d5d497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61590506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6133b2c7d7c2fb402770857b7ebaa1eff3613c21cc257aac42a8de49e3c7f74e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:28 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Fri, 03 Nov 2017 22:51:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09.1.20180222`

**does not exist** (yet?)

## `amazonlinux:2017.09.1.20180222-with-sources`

**does not exist** (yet?)

## `amazonlinux:2017.09-with-sources`

```console
$ docker pull amazonlinux@sha256:0978f265bf7bbe7617502b511f24e31aedd1fb71f14a5d69897f1fed03363b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:856bef5493a153aa1643ed17e4df9b0dce64f01b1df289c4d2deb1ba5112cf5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360562408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea96f042418df502c70834ea98ebac90566495899d64cd5d88fe03a9892c47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:28 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Fri, 03 Nov 2017 22:51:28 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:51:40 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=krS6u2CG0dlP3bhFMTy4WWyS6NLnygew"  && echo "d3f06b2ca42112eec2c847f58da6b9b2fe477f49919a41e886e19e07b9baedb1 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb38487110e286917d5301d89f230a4b6a48cd5cbaaa0c82e0e021e25ef78a`  
		Last Modified: Fri, 03 Nov 2017 22:53:27 GMT  
		Size: 299.0 MB (298971902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12`

```console
$ docker pull amazonlinux@sha256:17b49bb09ce493b720da62c4d033a7f4e30202619361812f06a91ec27fcc8c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a60d573010e99bf98ac04442089dd678dee2c1382c58e6bc5ec59d2d78d6bc56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76412625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0275117ec9bcb3ae1f3b9d1c84daacb53cf784a4b383f17c24e6f0c7e7b2f09b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Dec 2017 20:46:04 GMT
ADD file:2705be329e753885b4f10fc191a0c81d18fa96ae99f22d7a6e77f244a520f341 in / 
# Wed, 13 Dec 2017 20:46:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e947bd17727df8c2f97de67c95d52a8e84a5396049803e25ddd179536d577a8`  
		Last Modified: Wed, 13 Dec 2017 20:47:01 GMT  
		Size: 76.4 MB (76412625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12.0.20180222`

**does not exist** (yet?)

## `amazonlinux:2017.12.0.20180222-with-sources`

**does not exist** (yet?)

## `amazonlinux:2017.12-with-sources`

```console
$ docker pull amazonlinux@sha256:ae278906bbdff3433361dc5bcda64316e7b5c3207bd41f88abda36ee7d9a206a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:c5b1b602654219f90de3187b4d8e4d3678a746125bba819ecd34ef70701c2579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417147769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0074e653aef6a295547416274a17a7ebba6fd512473068d32ffbfe2833250fef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Dec 2017 20:46:04 GMT
ADD file:2705be329e753885b4f10fc191a0c81d18fa96ae99f22d7a6e77f244a520f341 in / 
# Wed, 13 Dec 2017 20:46:05 GMT
CMD ["/bin/bash"]
# Wed, 13 Dec 2017 20:46:30 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=zLN.zsz8iZ2mjVR6CQeBS1t_5MSXnQfu"  && echo "04c78fbd6ab0f8eb142557365e0b78bfb2f25bdadf3633f666ab4f2846c52a78 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2e947bd17727df8c2f97de67c95d52a8e84a5396049803e25ddd179536d577a8`  
		Last Modified: Wed, 13 Dec 2017 20:47:01 GMT  
		Size: 76.4 MB (76412625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d372d2051f3844676e41347a57f333d8f141542d65d872c262fb407e46ae7e55`  
		Last Modified: Wed, 13 Dec 2017 20:48:07 GMT  
		Size: 340.7 MB (340735144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:ae278906bbdff3433361dc5bcda64316e7b5c3207bd41f88abda36ee7d9a206a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:c5b1b602654219f90de3187b4d8e4d3678a746125bba819ecd34ef70701c2579
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417147769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0074e653aef6a295547416274a17a7ebba6fd512473068d32ffbfe2833250fef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Dec 2017 20:46:04 GMT
ADD file:2705be329e753885b4f10fc191a0c81d18fa96ae99f22d7a6e77f244a520f341 in / 
# Wed, 13 Dec 2017 20:46:05 GMT
CMD ["/bin/bash"]
# Wed, 13 Dec 2017 20:46:30 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=zLN.zsz8iZ2mjVR6CQeBS1t_5MSXnQfu"  && echo "04c78fbd6ab0f8eb142557365e0b78bfb2f25bdadf3633f666ab4f2846c52a78 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2e947bd17727df8c2f97de67c95d52a8e84a5396049803e25ddd179536d577a8`  
		Last Modified: Wed, 13 Dec 2017 20:47:01 GMT  
		Size: 76.4 MB (76412625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d372d2051f3844676e41347a57f333d8f141542d65d872c262fb407e46ae7e55`  
		Last Modified: Wed, 13 Dec 2017 20:48:07 GMT  
		Size: 340.7 MB (340735144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:b852ce504670f604074bb0a0285849c95541453c39da4a6abe19c096695ccfca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:359b948ea8866817e94765822787cd482279eed0c17bc674a7707f4256d5d497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61590506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6133b2c7d7c2fb402770857b7ebaa1eff3613c21cc257aac42a8de49e3c7f74e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:28 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Fri, 03 Nov 2017 22:51:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:0978f265bf7bbe7617502b511f24e31aedd1fb71f14a5d69897f1fed03363b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:856bef5493a153aa1643ed17e4df9b0dce64f01b1df289c4d2deb1ba5112cf5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360562408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea96f042418df502c70834ea98ebac90566495899d64cd5d88fe03a9892c47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:28 GMT
ADD file:e4c730c8b22cb23a2b44ff9d7c9d4193909d05c7e7b76c823fbf9d960375f044 in / 
# Fri, 03 Nov 2017 22:51:28 GMT
CMD ["/bin/bash"]
# Fri, 03 Nov 2017 22:51:40 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=krS6u2CG0dlP3bhFMTy4WWyS6NLnygew"  && echo "d3f06b2ca42112eec2c847f58da6b9b2fe477f49919a41e886e19e07b9baedb1 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:40280b975f14b6619ad4cdcc80cda45fa03fa487b8f15ee0a8c3bba37bd63e6b`  
		Last Modified: Tue, 03 Oct 2017 20:20:23 GMT  
		Size: 61.6 MB (61590506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eb38487110e286917d5301d89f230a4b6a48cd5cbaaa0c82e0e021e25ef78a`  
		Last Modified: Fri, 03 Nov 2017 22:53:27 GMT  
		Size: 299.0 MB (298971902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
