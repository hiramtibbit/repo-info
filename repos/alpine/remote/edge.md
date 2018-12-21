## `alpine:edge`

```console
$ docker pull alpine@sha256:7e5908004a20397916603beebaacf04849240ce96922e214957be6185fbfcc78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `alpine:edge` - linux; amd64

```console
$ docker pull alpine@sha256:654f94981d2fe6381decf901639af368cffae73814ac80935056085e16de37a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacde26455ab47a96ed5b69e8a64a43f07b27956a95065f78d601c33b4a59ab4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:50 GMT
ADD file:0f701db85b54d927890c39b9deba0ea384c8710c4ce9346b16851db469323002 in / 
# Fri, 21 Dec 2018 00:21:50 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:ba7f5deea89d795691de51a9e8bbd8494d95a261c47a2a61069f8b597f07afe0`  
		Last Modified: Fri, 21 Dec 2018 00:23:48 GMT  
		Size: 2.6 MB (2621862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; arm variant v6

```console
$ docker pull alpine@sha256:ebd212bba4e63a6bbf25e7a03d0078865870d52b6bd3c30ee71de04c85e2a966
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11498243e5a83b72140ae370256f4f6b4814605f9f29dd70e666e576548eab55`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:58 GMT
ADD file:3f342775cffbdc84658d18b867b9a1ac80a7f3bfae8fbe3aebc5fc860654f6d4 in / 
# Fri, 21 Dec 2018 08:49:58 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:59 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:8c72da470e59f3a6f3166f7079fab0b971e52bfdb0d4f5043a95afca12a4c662`  
		Last Modified: Mon, 11 Dec 2017 07:49:43 GMT  
		Size: 2.0 MB (2038147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2904fefb99d56d9c14bd8b0fe7bfa915b93c082beed3b748fb7ea26061c27a`  
		Last Modified: Fri, 21 Dec 2018 08:50:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; arm64 variant v8

```console
$ docker pull alpine@sha256:83ba4553af1b0405f6293f9ba34592924da5e935b89418365c5c198e1d0d734f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1988998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698b28d4f8d1d28818ba8e4fee1a210f7fdd6ef9559354019744a5dea5239248`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Jan 2018 17:32:09 GMT
ADD file:b9b4cf0892093a163477b5b91c7b0c45d9a69cd33d8c77545d2f80ef1e86ee77 in / 
# Wed, 10 Jan 2018 17:32:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 10 Jan 2018 17:32:11 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:e629e6244a0915335efdbb47b87e88884c96e65ddac9dccd5d59c6fa84e4bc15`  
		Last Modified: Mon, 25 Dec 2017 07:29:49 GMT  
		Size: 2.0 MB (1988823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafc292a94ab3e60d839625dc98392954cfa484448986ebb7334f481d0cd6991`  
		Last Modified: Wed, 10 Jan 2018 17:32:25 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; 386

```console
$ docker pull alpine@sha256:d4962e09190cfeaa7daf820a42821e9fdff8ccfedcc96aeb057f9edf3fe770d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37e41336956102cb02200e2d160c58d16305a4cd438660de8bf24cdc8acf26a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 10:39:04 GMT
ADD file:9403554c80ea9f7bb5e0881e039e82cb9e1a255161a3f6d780f2fb2810bf64af in / 
# Wed, 12 Sep 2018 10:39:04 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:39:04 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:ac09af6ab5b4f7b9c89c587cc5b243f1e34dea06b7ccd72922e91b3ab3e02f51`  
		Last Modified: Wed, 10 Jan 2018 19:08:38 GMT  
		Size: 2.1 MB (2126271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7ebddcd058db46d5b7e82c4d393ea85085cd6d25d36ca5c3efc128ffb7fd1a`  
		Last Modified: Wed, 12 Sep 2018 10:39:38 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; ppc64le

```console
$ docker pull alpine@sha256:c792a25846cd85aa91b61ab1cee69f52bcb1a45ecfd48b7fc99e54f9985c353c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2081650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394478f24f9247d59386b8cee903f342228cceaf8b288ca60c8fcf73243fd0e9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Jan 2018 14:13:38 GMT
ADD file:8844f3ce9a88a0723ca0ccc5b0905a66f984ec1dfb7537dbb88eec2c84d3d6e9 in / 
# Wed, 10 Jan 2018 14:13:39 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 10 Jan 2018 14:13:40 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:5bf5d27c02ade2920e9dac69bcf9fc1879e6dc85b4cc5587e443e9515de9423a`  
		Last Modified: Wed, 10 Jan 2018 14:13:53 GMT  
		Size: 2.1 MB (2081474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53827147c9222101c6b42234cd818d793ee0d7d551681e29334179a50797b031`  
		Last Modified: Wed, 10 Jan 2018 14:13:52 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; s390x

```console
$ docker pull alpine@sha256:32edb54e5577f1dbbca7008f55b2c32760478e29f302737254bb7e2737b6972f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1988999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff2099f6d914e712b62941bc4aabc4a811a0f7b5755a3c4716657e3a30d5429`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:41:53 GMT
ADD file:b9b4cf0892093a163477b5b91c7b0c45d9a69cd33d8c77545d2f80ef1e86ee77 in / 
# Tue, 09 Jan 2018 21:41:53 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Tue, 09 Jan 2018 21:41:53 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:e629e6244a0915335efdbb47b87e88884c96e65ddac9dccd5d59c6fa84e4bc15`  
		Last Modified: Mon, 25 Dec 2017 07:29:49 GMT  
		Size: 2.0 MB (1988823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229e17cf92fb1ca673c5333d09dd7bf8ba91336cb17c2724f3f4a30fc9f431af`  
		Last Modified: Tue, 09 Jan 2018 21:42:05 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
