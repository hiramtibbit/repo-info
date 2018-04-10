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
-	[`amazonlinux:2017.09.1.20180409`](#amazonlinux201709120180409)
-	[`amazonlinux:2017.09.1.20180409-with-sources`](#amazonlinux201709120180409-with-sources)
-	[`amazonlinux:2017.09-with-sources`](#amazonlinux201709-with-sources)
-	[`amazonlinux:2017.12`](#amazonlinux201712)
-	[`amazonlinux:2017.12.0.20180330`](#amazonlinux201712020180330)
-	[`amazonlinux:2017.12.0.20180330-with-sources`](#amazonlinux201712020180330-with-sources)
-	[`amazonlinux:2017.12-with-sources`](#amazonlinux201712-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:9c691dbdd098f3e40f36ba87ba251818795dc6cf8c22d0c7665144f9fd6d5fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:09f6ed533b21acb25a2b693165813f0038394c02a2ed412bf3da96c6b4861044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61729049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a7ae8f1db97e4931b65cba16e13449b029679799313c7ada317a8a16b8d04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:24a68324c9f7be9bff2d1bdfc7e9685678c0f5b45f164d52e7d7638ff9d608e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a6bf124c12cb2a0fa485aa9c23c1289294d9403daa8af1f726257ea069896e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352966261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f67a14e2a0c8a01fb73e4bbef2c297ddaf0874aa8a9272c52c5adeec73d6ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
# Tue, 10 Apr 2018 00:06:14 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=yLR2HAwYv1zX8_5cmj9QoFHz8cCgSCpE"  && echo "311fa0fe6cc982b86636f9966f968432357d9d6074b1991c39d0f84d5219b49b /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8a3afe4d73f60ba583ef72391c021a2183bb5e1789ae52b30ea427f76b83c`  
		Last Modified: Tue, 10 Apr 2018 00:39:23 GMT  
		Size: 291.2 MB (291237212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:df609b745f6a886d7b0724a0be3e0d895e0075da0c6e9102194e5f523e527972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:e87043a2c9bb1feddda53894bebf8c309b0a2865ec016de86a60e899853317b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82825585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7831dfe956a182f9977efa43c0543b7ad4ffa3f8b9cb412665008b88cb6d7e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
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
$ docker pull amazonlinux@sha256:9c691dbdd098f3e40f36ba87ba251818795dc6cf8c22d0c7665144f9fd6d5fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09` - linux; amd64

```console
$ docker pull amazonlinux@sha256:09f6ed533b21acb25a2b693165813f0038394c02a2ed412bf3da96c6b4861044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61729049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a7ae8f1db97e4931b65cba16e13449b029679799313c7ada317a8a16b8d04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09.1.20180409`

```console
$ docker pull amazonlinux@sha256:9c691dbdd098f3e40f36ba87ba251818795dc6cf8c22d0c7665144f9fd6d5fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09.1.20180409` - linux; amd64

```console
$ docker pull amazonlinux@sha256:09f6ed533b21acb25a2b693165813f0038394c02a2ed412bf3da96c6b4861044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61729049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a7ae8f1db97e4931b65cba16e13449b029679799313c7ada317a8a16b8d04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09.1.20180409-with-sources`

```console
$ docker pull amazonlinux@sha256:24a68324c9f7be9bff2d1bdfc7e9685678c0f5b45f164d52e7d7638ff9d608e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09.1.20180409-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a6bf124c12cb2a0fa485aa9c23c1289294d9403daa8af1f726257ea069896e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352966261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f67a14e2a0c8a01fb73e4bbef2c297ddaf0874aa8a9272c52c5adeec73d6ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
# Tue, 10 Apr 2018 00:06:14 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=yLR2HAwYv1zX8_5cmj9QoFHz8cCgSCpE"  && echo "311fa0fe6cc982b86636f9966f968432357d9d6074b1991c39d0f84d5219b49b /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8a3afe4d73f60ba583ef72391c021a2183bb5e1789ae52b30ea427f76b83c`  
		Last Modified: Tue, 10 Apr 2018 00:39:23 GMT  
		Size: 291.2 MB (291237212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09-with-sources`

```console
$ docker pull amazonlinux@sha256:24a68324c9f7be9bff2d1bdfc7e9685678c0f5b45f164d52e7d7638ff9d608e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a6bf124c12cb2a0fa485aa9c23c1289294d9403daa8af1f726257ea069896e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352966261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f67a14e2a0c8a01fb73e4bbef2c297ddaf0874aa8a9272c52c5adeec73d6ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
# Tue, 10 Apr 2018 00:06:14 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=yLR2HAwYv1zX8_5cmj9QoFHz8cCgSCpE"  && echo "311fa0fe6cc982b86636f9966f968432357d9d6074b1991c39d0f84d5219b49b /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8a3afe4d73f60ba583ef72391c021a2183bb5e1789ae52b30ea427f76b83c`  
		Last Modified: Tue, 10 Apr 2018 00:39:23 GMT  
		Size: 291.2 MB (291237212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12`

```console
$ docker pull amazonlinux@sha256:df609b745f6a886d7b0724a0be3e0d895e0075da0c6e9102194e5f523e527972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12` - linux; amd64

```console
$ docker pull amazonlinux@sha256:e87043a2c9bb1feddda53894bebf8c309b0a2865ec016de86a60e899853317b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82825585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7831dfe956a182f9977efa43c0543b7ad4ffa3f8b9cb412665008b88cb6d7e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12.0.20180330`

```console
$ docker pull amazonlinux@sha256:df609b745f6a886d7b0724a0be3e0d895e0075da0c6e9102194e5f523e527972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12.0.20180330` - linux; amd64

```console
$ docker pull amazonlinux@sha256:e87043a2c9bb1feddda53894bebf8c309b0a2865ec016de86a60e899853317b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82825585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7831dfe956a182f9977efa43c0543b7ad4ffa3f8b9cb412665008b88cb6d7e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12.0.20180330-with-sources`

```console
$ docker pull amazonlinux@sha256:df19de26e67f15c5f9bb7319ba68d1ce10585dd9e22e4c4f551b201f1f09de99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12.0.20180330-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:47cb7300bba287f2324f13e2a69d707de10f33e064303060baaed7dc6f38344d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.6 MB (399614690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24925b3a86315ef51c76db4bea40153b3f2e9d3640a77f1a8f7ab01fa02224fd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Apr 2018 23:46:18 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=8mjrgeFJaShkkKMhxThnPadPGHh2ayog"  && echo "f133970b2c227b440c92d44de5ff329b6fd4d2454ddbebacba98070ffb224caa /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1800e096406c08e1c961e0fa463f8bbe8b99aa3f8bb2c5083f42bef1f75c88`  
		Last Modified: Tue, 10 Apr 2018 00:22:55 GMT  
		Size: 316.8 MB (316789105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12-with-sources`

```console
$ docker pull amazonlinux@sha256:df19de26e67f15c5f9bb7319ba68d1ce10585dd9e22e4c4f551b201f1f09de99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:47cb7300bba287f2324f13e2a69d707de10f33e064303060baaed7dc6f38344d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.6 MB (399614690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24925b3a86315ef51c76db4bea40153b3f2e9d3640a77f1a8f7ab01fa02224fd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Apr 2018 23:46:18 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=8mjrgeFJaShkkKMhxThnPadPGHh2ayog"  && echo "f133970b2c227b440c92d44de5ff329b6fd4d2454ddbebacba98070ffb224caa /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1800e096406c08e1c961e0fa463f8bbe8b99aa3f8bb2c5083f42bef1f75c88`  
		Last Modified: Tue, 10 Apr 2018 00:22:55 GMT  
		Size: 316.8 MB (316789105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:df19de26e67f15c5f9bb7319ba68d1ce10585dd9e22e4c4f551b201f1f09de99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:47cb7300bba287f2324f13e2a69d707de10f33e064303060baaed7dc6f38344d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.6 MB (399614690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24925b3a86315ef51c76db4bea40153b3f2e9d3640a77f1a8f7ab01fa02224fd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Apr 2018 23:46:18 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=8mjrgeFJaShkkKMhxThnPadPGHh2ayog"  && echo "f133970b2c227b440c92d44de5ff329b6fd4d2454ddbebacba98070ffb224caa /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1800e096406c08e1c961e0fa463f8bbe8b99aa3f8bb2c5083f42bef1f75c88`  
		Last Modified: Tue, 10 Apr 2018 00:22:55 GMT  
		Size: 316.8 MB (316789105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:9c691dbdd098f3e40f36ba87ba251818795dc6cf8c22d0c7665144f9fd6d5fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:09f6ed533b21acb25a2b693165813f0038394c02a2ed412bf3da96c6b4861044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61729049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a7ae8f1db97e4931b65cba16e13449b029679799313c7ada317a8a16b8d04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:24a68324c9f7be9bff2d1bdfc7e9685678c0f5b45f164d52e7d7638ff9d608e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a6bf124c12cb2a0fa485aa9c23c1289294d9403daa8af1f726257ea069896e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352966261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f67a14e2a0c8a01fb73e4bbef2c297ddaf0874aa8a9272c52c5adeec73d6ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:57:59 GMT
ADD file:2d54148da3df74206f022141b8c0167925862cc8eb491f496f48f3172699b46e in / 
# Mon, 09 Apr 2018 23:57:59 GMT
CMD ["/bin/bash"]
# Tue, 10 Apr 2018 00:06:14 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=yLR2HAwYv1zX8_5cmj9QoFHz8cCgSCpE"  && echo "311fa0fe6cc982b86636f9966f968432357d9d6074b1991c39d0f84d5219b49b /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4542038fe887528f27c59db8c4794ee942983f3aed9bb4816c65db1199a78d97`  
		Last Modified: Tue, 10 Apr 2018 00:37:44 GMT  
		Size: 61.7 MB (61729049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8a3afe4d73f60ba583ef72391c021a2183bb5e1789ae52b30ea427f76b83c`  
		Last Modified: Tue, 10 Apr 2018 00:39:23 GMT  
		Size: 291.2 MB (291237212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
