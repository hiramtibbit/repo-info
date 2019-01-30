## `alpine:edge`

```console
$ docker pull alpine@sha256:470a11fe3933f8028eadb0506b3ea319b5735937596514e8aedcff857ab0fecf
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
$ docker pull alpine@sha256:afb4c4dd2a295cead9da2ead946e1859ba2846d0e07b77b7be265f1537db26ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59478e7e0255d563032b36de933a857eff55653609b8f2d6cd3e89fc419a07e0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:58 GMT
ADD file:eac0bce4a6ab7b4027d86d3e47b5494be3a9e7dabcc0cc39670cee5766644dbf in / 
# Wed, 30 Jan 2019 22:19:58 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:5800546c068ede558ffe914a45d11440d6631d424a6507a3977d9780052c7f5e`  
		Last Modified: Wed, 30 Jan 2019 22:21:13 GMT  
		Size: 2.8 MB (2754082 bytes)  
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
$ docker pull alpine@sha256:045d852315242d3ae906a539d2eb0e3a06319032e87d46e15f19ecda65df7d0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1988999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7881f1d3b63105e8bb7e9e1a195c83dc639b2770f4f38072ca39e7156dd6355`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:25 GMT
ADD file:024eb79508d751a3295ce9cf2d4318e9579a60ec997685671489cc4953087297 in / 
# Fri, 21 Dec 2018 09:43:26 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:27 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:e629e6244a0915335efdbb47b87e88884c96e65ddac9dccd5d59c6fa84e4bc15`  
		Last Modified: Mon, 25 Dec 2017 07:29:49 GMT  
		Size: 2.0 MB (1988823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcd99832b3d0f61f364e895419642094c3ea73b0b5bc04b17f6436693335a7c`  
		Last Modified: Fri, 21 Dec 2018 09:43:58 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; 386

```console
$ docker pull alpine@sha256:b4a5b8c8b75f46399df776a4b145ad321769d7a7ea8d0c011c32e38284b1e7ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2126447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e483551d4ee937dd2c9585e20c214b81c9218d0a696783cca311d64dc8cac7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:33 GMT
ADD file:e86b5a481cbd69a81ef7e7a968c3c83d183f8871758e40bd8c95c7af715e97bf in / 
# Fri, 21 Dec 2018 11:40:33 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:34 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:ac09af6ab5b4f7b9c89c587cc5b243f1e34dea06b7ccd72922e91b3ab3e02f51`  
		Last Modified: Wed, 10 Jan 2018 19:08:38 GMT  
		Size: 2.1 MB (2126271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73426c7a5c514778249c669a017e721e7f00b0d70b8f323a0ad5b280a2608036`  
		Last Modified: Fri, 21 Dec 2018 11:40:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; ppc64le

```console
$ docker pull alpine@sha256:4bd23bfe6f45dfc22c9fb00da755924e048cac137393f1f29ba5665c9640b361
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2081150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04362d075f93b3cd428363c4e0faacce9dfdfc6ec24144571b92030683f526bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:45:15 GMT
ADD file:f67f0024f86f82d2947a0e106d2964afd187b5de48c755a665a0826397d9639a in / 
# Fri, 21 Dec 2018 09:45:16 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:45:17 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:5a879c2c0c447394c13cc76d59e77a1122adedc30d752ab6f92369973b83e580`  
		Last Modified: Fri, 21 Dec 2018 09:46:08 GMT  
		Size: 2.1 MB (2080974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a853a0372cb523ed0d22d3057704695eaa329050e1a3dd1ec9afe8c5d2bce7b8`  
		Last Modified: Fri, 21 Dec 2018 09:46:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alpine:edge` - linux; s390x

```console
$ docker pull alpine@sha256:c20fa90349da8c192c9b5b8e138cde1f1435b35bcb464ecf17efa16b38e59ca2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1988998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335096995d51eecd0776133083da535e4013e257d84639f98b4ef5aeeba30756`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:46 GMT
ADD file:024eb79508d751a3295ce9cf2d4318e9579a60ec997685671489cc4953087297 in / 
# Fri, 21 Dec 2018 12:42:46 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:46 GMT
CMD ["/bin/sh"]
```

-	Layers:
	-	`sha256:e629e6244a0915335efdbb47b87e88884c96e65ddac9dccd5d59c6fa84e4bc15`  
		Last Modified: Mon, 25 Dec 2017 07:29:49 GMT  
		Size: 2.0 MB (1988823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824ef0627289e17734a1c514d94d7e13f08e5cdbe7609be43e747620af43a5f0`  
		Last Modified: Fri, 21 Dec 2018 12:43:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
