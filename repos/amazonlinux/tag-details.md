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
$ docker pull amazonlinux@sha256:f70f3552c884e7b6395ac782c229e04925286efe9430372ad4d00641632d506a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fffb3ae83780ea52271f67dd2b8d47c19cb452f4c8ea64b9ca39e4e91c87f45b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61675380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3faa54d46dec29c12dbcdf92205f122addc98556aae03ee57206a19e09b8dd0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:02:55 GMT
ADD file:492f26279427ea21bc9c2b3cb75604010242e8c5e082b7dddf460fbbb6f9b04b in / 
# Mon, 26 Feb 2018 20:02:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ed57bbc2185f2ee5f1a3909c944e1b008eb51ccc327e9a3f6f3325d059d4aa4c`  
		Last Modified: Mon, 26 Feb 2018 20:19:36 GMT  
		Size: 61.7 MB (61675380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:bf32add9af7cec568d06221dfe2465453831708107b565c614aa2227612c3aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6ea506c84a0ef822dddb0d99b581679cdb5ab27e69d9f053274cabe42b862108
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350716574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d7ff40d29ef89de935bba351a2f73ff1fd21cb28160dcf4a488c05d87de2cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:02:55 GMT
ADD file:492f26279427ea21bc9c2b3cb75604010242e8c5e082b7dddf460fbbb6f9b04b in / 
# Mon, 26 Feb 2018 20:02:55 GMT
CMD ["/bin/bash"]
# Mon, 26 Feb 2018 20:03:34 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=BV.7nyWyerxY9mAgMwZhtzjodMDqo1Wj"  && echo "2ea2b568830c4e569ace5d22b3d637f00ca0c0c584884d6770ed7f0b722d601b /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:ed57bbc2185f2ee5f1a3909c944e1b008eb51ccc327e9a3f6f3325d059d4aa4c`  
		Last Modified: Mon, 26 Feb 2018 20:19:36 GMT  
		Size: 61.7 MB (61675380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d662ac4900a116a019b4770dabb28866aae6169815404425e1abbb6e9e13dc7`  
		Last Modified: Mon, 26 Feb 2018 20:21:12 GMT  
		Size: 289.0 MB (289041194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:0970c9e1d1042f0f944b033011035a49b5d5f92d35ef161f4e1f518b5d717456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:5ca454f1bc6d7fec9dc6615696eaa34f3dbb190d83d2addca41128979625063a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15deadb6ec15f375159d4c909bf01f98335929c118eba044817d412accb72a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:01:37 GMT
ADD file:6e14f2d79950a62aefbbe6819204d8dcb7410b7b6bf681e3cb8255756f014016 in / 
# Mon, 26 Feb 2018 20:01:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ced9da7fafb22c32b1830bf80972d7e5910a8fbeeb57f3635eae45bc9fc2b6f4`  
		Last Modified: Mon, 26 Feb 2018 20:17:20 GMT  
		Size: 59.7 MB (59732737 bytes)  
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
$ docker pull amazonlinux@sha256:f70f3552c884e7b6395ac782c229e04925286efe9430372ad4d00641632d506a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fffb3ae83780ea52271f67dd2b8d47c19cb452f4c8ea64b9ca39e4e91c87f45b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61675380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3faa54d46dec29c12dbcdf92205f122addc98556aae03ee57206a19e09b8dd0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:02:55 GMT
ADD file:492f26279427ea21bc9c2b3cb75604010242e8c5e082b7dddf460fbbb6f9b04b in / 
# Mon, 26 Feb 2018 20:02:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ed57bbc2185f2ee5f1a3909c944e1b008eb51ccc327e9a3f6f3325d059d4aa4c`  
		Last Modified: Mon, 26 Feb 2018 20:19:36 GMT  
		Size: 61.7 MB (61675380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.09.1.20180409`

**does not exist** (yet?)

## `amazonlinux:2017.09.1.20180409-with-sources`

**does not exist** (yet?)

## `amazonlinux:2017.09-with-sources`

```console
$ docker pull amazonlinux@sha256:bf32add9af7cec568d06221dfe2465453831708107b565c614aa2227612c3aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.09-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6ea506c84a0ef822dddb0d99b581679cdb5ab27e69d9f053274cabe42b862108
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350716574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d7ff40d29ef89de935bba351a2f73ff1fd21cb28160dcf4a488c05d87de2cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:02:55 GMT
ADD file:492f26279427ea21bc9c2b3cb75604010242e8c5e082b7dddf460fbbb6f9b04b in / 
# Mon, 26 Feb 2018 20:02:55 GMT
CMD ["/bin/bash"]
# Mon, 26 Feb 2018 20:03:34 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=BV.7nyWyerxY9mAgMwZhtzjodMDqo1Wj"  && echo "2ea2b568830c4e569ace5d22b3d637f00ca0c0c584884d6770ed7f0b722d601b /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:ed57bbc2185f2ee5f1a3909c944e1b008eb51ccc327e9a3f6f3325d059d4aa4c`  
		Last Modified: Mon, 26 Feb 2018 20:19:36 GMT  
		Size: 61.7 MB (61675380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d662ac4900a116a019b4770dabb28866aae6169815404425e1abbb6e9e13dc7`  
		Last Modified: Mon, 26 Feb 2018 20:21:12 GMT  
		Size: 289.0 MB (289041194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12`

```console
$ docker pull amazonlinux@sha256:0970c9e1d1042f0f944b033011035a49b5d5f92d35ef161f4e1f518b5d717456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12` - linux; amd64

```console
$ docker pull amazonlinux@sha256:5ca454f1bc6d7fec9dc6615696eaa34f3dbb190d83d2addca41128979625063a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15deadb6ec15f375159d4c909bf01f98335929c118eba044817d412accb72a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:01:37 GMT
ADD file:6e14f2d79950a62aefbbe6819204d8dcb7410b7b6bf681e3cb8255756f014016 in / 
# Mon, 26 Feb 2018 20:01:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ced9da7fafb22c32b1830bf80972d7e5910a8fbeeb57f3635eae45bc9fc2b6f4`  
		Last Modified: Mon, 26 Feb 2018 20:17:20 GMT  
		Size: 59.7 MB (59732737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2017.12.0.20180330`

**does not exist** (yet?)

## `amazonlinux:2017.12.0.20180330-with-sources`

**does not exist** (yet?)

## `amazonlinux:2017.12-with-sources`

```console
$ docker pull amazonlinux@sha256:f0afceb50d2333ee637eaccf39fd24ef7d5a53b2f338cdc4bb387d164dd99e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2017.12-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6ff36f7a2d8bf90b42c3024553570ff8199bf4f2b84af2d8defe30ff6acf4b1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367643780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfd61512c73426fcf96d47a6b27b1ed79618ea3440ac0ed1f117fc2cc65a9da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:01:37 GMT
ADD file:6e14f2d79950a62aefbbe6819204d8dcb7410b7b6bf681e3cb8255756f014016 in / 
# Mon, 26 Feb 2018 20:01:38 GMT
CMD ["/bin/bash"]
# Mon, 26 Feb 2018 20:02:19 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=BmBczAzkqWrsCFD2Q5vc8iqUyZIE0MG_"  && echo "b9d7340dd289dd321545417119df32865f4ae305fdc0fb89549e3c4a50caf5e7 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:ced9da7fafb22c32b1830bf80972d7e5910a8fbeeb57f3635eae45bc9fc2b6f4`  
		Last Modified: Mon, 26 Feb 2018 20:17:20 GMT  
		Size: 59.7 MB (59732737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe1eac2324916f4e62389506fd2cd68f02ef56d84dea15a3e701e48857d07e8`  
		Last Modified: Mon, 26 Feb 2018 20:18:31 GMT  
		Size: 307.9 MB (307911043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:f0afceb50d2333ee637eaccf39fd24ef7d5a53b2f338cdc4bb387d164dd99e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6ff36f7a2d8bf90b42c3024553570ff8199bf4f2b84af2d8defe30ff6acf4b1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367643780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfd61512c73426fcf96d47a6b27b1ed79618ea3440ac0ed1f117fc2cc65a9da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:01:37 GMT
ADD file:6e14f2d79950a62aefbbe6819204d8dcb7410b7b6bf681e3cb8255756f014016 in / 
# Mon, 26 Feb 2018 20:01:38 GMT
CMD ["/bin/bash"]
# Mon, 26 Feb 2018 20:02:19 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=BmBczAzkqWrsCFD2Q5vc8iqUyZIE0MG_"  && echo "b9d7340dd289dd321545417119df32865f4ae305fdc0fb89549e3c4a50caf5e7 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:ced9da7fafb22c32b1830bf80972d7e5910a8fbeeb57f3635eae45bc9fc2b6f4`  
		Last Modified: Mon, 26 Feb 2018 20:17:20 GMT  
		Size: 59.7 MB (59732737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe1eac2324916f4e62389506fd2cd68f02ef56d84dea15a3e701e48857d07e8`  
		Last Modified: Mon, 26 Feb 2018 20:18:31 GMT  
		Size: 307.9 MB (307911043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:f70f3552c884e7b6395ac782c229e04925286efe9430372ad4d00641632d506a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fffb3ae83780ea52271f67dd2b8d47c19cb452f4c8ea64b9ca39e4e91c87f45b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61675380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3faa54d46dec29c12dbcdf92205f122addc98556aae03ee57206a19e09b8dd0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:02:55 GMT
ADD file:492f26279427ea21bc9c2b3cb75604010242e8c5e082b7dddf460fbbb6f9b04b in / 
# Mon, 26 Feb 2018 20:02:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ed57bbc2185f2ee5f1a3909c944e1b008eb51ccc327e9a3f6f3325d059d4aa4c`  
		Last Modified: Mon, 26 Feb 2018 20:19:36 GMT  
		Size: 61.7 MB (61675380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:bf32add9af7cec568d06221dfe2465453831708107b565c614aa2227612c3aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6ea506c84a0ef822dddb0d99b581679cdb5ab27e69d9f053274cabe42b862108
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350716574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d7ff40d29ef89de935bba351a2f73ff1fd21cb28160dcf4a488c05d87de2cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Feb 2018 20:02:55 GMT
ADD file:492f26279427ea21bc9c2b3cb75604010242e8c5e082b7dddf460fbbb6f9b04b in / 
# Mon, 26 Feb 2018 20:02:55 GMT
CMD ["/bin/bash"]
# Mon, 26 Feb 2018 20:03:34 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=BV.7nyWyerxY9mAgMwZhtzjodMDqo1Wj"  && echo "2ea2b568830c4e569ace5d22b3d637f00ca0c0c584884d6770ed7f0b722d601b /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:ed57bbc2185f2ee5f1a3909c944e1b008eb51ccc327e9a3f6f3325d059d4aa4c`  
		Last Modified: Mon, 26 Feb 2018 20:19:36 GMT  
		Size: 61.7 MB (61675380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d662ac4900a116a019b4770dabb28866aae6169815404425e1abbb6e9e13dc7`  
		Last Modified: Mon, 26 Feb 2018 20:21:12 GMT  
		Size: 289.0 MB (289041194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
