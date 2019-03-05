## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:af6e08e320616b835c4824c44f5cf6b629e33f46cd7d3b63ef3332792b02d169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:f17f1b96bac832ba793c20ae63622f6dd69ec430ab7d72e51b2baa25b57e34ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9630acf5b95b1d3c38f602f84d13565f6896c86d64db2fd8bd1e5fee3cfe0ff`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:40 GMT
ADD file:d41de34f44b3dd6bc7a9b200b90f2ba9f46e207a09e8570249fed0d065c755a3 in / 
# Mon, 04 Mar 2019 23:20:40 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:20:44 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b6a968a0691c47dc3c7b611b431cbf904377404615d57dc6495fea107ebd2a91`  
		Last Modified: Mon, 04 Mar 2019 23:24:49 GMT  
		Size: 39.3 MB (39339757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4618da449022f247ff61a4dc757021272c0c1935aae412faf2926d92201b5095`  
		Last Modified: Mon, 04 Mar 2019 23:24:52 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:3deca4346d0adf71bcd478a88754939c5dac494d82773f3edd752f9a3001a434
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1834fc0ffff552efedcc907c222095a831067576098339a283cc70f089b98e6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:51:01 GMT
ADD file:e25e1071b4ceec7a66ec17228b9554de6480a84efd8347423f93298a2b815fd4 in / 
# Tue, 05 Mar 2019 09:51:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:51:10 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f9d75622569e42bad4acffe99f3f89c7cba69821375e6bcd39e8a9f1df4ea903`  
		Last Modified: Tue, 05 Mar 2019 09:59:58 GMT  
		Size: 38.0 MB (37992215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc6b8c1ea5eed4ddff5e88a462bd69c2763b72c70fd7e03fa1d2f753d6e9e3c`  
		Last Modified: Tue, 05 Mar 2019 10:00:04 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:b2c40b6b4684ee1194e03a6d3fe3004675afe81f7bdda476021c03c225a56b2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3554ccd8563cf9b6640118a510fbbdfab1894464eb1ef2e4254ccc1f76f64199`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:50 GMT
ADD file:1310b8b79070a63cea5edef28ff185c3e50fc3d23e2c00622da1e86d91b866a2 in / 
# Thu, 07 Feb 2019 12:59:51 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 12:59:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:15fd9fcf19ec0a9bc730fd65dc97fa011589285b4e2a6119b1d583b534d4368c`  
		Last Modified: Thu, 07 Feb 2019 13:08:08 GMT  
		Size: 36.6 MB (36619999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee75acca55315907d269106f2e0c00ac817252681fcfe3133180bde799405441`  
		Last Modified: Thu, 07 Feb 2019 13:08:14 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:02934282f1bf5990e789f85d3399a7feca9e75538328dad0cb4fe80a071e1dea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4de7bbe0ff3a19e8a2beba3624a37ed0e08ebc6b47bf3552863bea7e75e1a0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:41:55 GMT
ADD file:4a0f80e3355f455ee17c582e67924e55068cb62a14a05a612d803de9657247be in / 
# Tue, 05 Mar 2019 11:41:55 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:42:01 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4e9a483af00406f4fa56a07c819dafc6ad023c04c6879b60587ad968e3f02541`  
		Last Modified: Tue, 05 Mar 2019 11:51:56 GMT  
		Size: 40.5 MB (40532895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9416cfeff104e050253395d35cedc5080cb5730b59258a0f09bf610c51e46cf`  
		Last Modified: Tue, 05 Mar 2019 11:52:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
