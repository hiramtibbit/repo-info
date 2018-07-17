## `debian:experimental`

```console
$ docker pull debian@sha256:b6eabf6b12ef7e69817c7e7a818ff826dcc542cdb0fef51e10f20ad87ee30b18
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:2373d18cb193aa94da0b9c1457601d2e162ff5d0127bf90e64c073fe93831b66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48725742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca08d45ab0be7fce3226f576da76a00fa9a62c01af4e7544d8fd763efac1659`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:29:33 GMT
ADD file:cda92a0cf83d9355ca9b28461c0b0616e0f49c830e4b22595c95bb81c332d216 in / 
# Tue, 17 Jul 2018 00:29:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:31:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f61e4508555070fbac5e6baa45609fec40a4b51b272c07c9e37bc31b966ba677`  
		Last Modified: Tue, 17 Jul 2018 00:46:30 GMT  
		Size: 48.7 MB (48725524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3fa823b1dc8552e2a235ec90a265c6bc15944799d9a9d5d4edf7fd6d2bba4b`  
		Last Modified: Tue, 17 Jul 2018 00:49:52 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:74421f3fa1db3773f82b202769558470db276e9a7ad413a692132f1eb439b3bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46645742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151a8dd01365b284361350d50bfc21a0915064e2a6cf4c96f29496b4e56f573b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:58:17 GMT
ADD file:457e48e2b1908ec8d6ec0a5d3021287a07fb537686100d5afaefeb0ebd510b66 in / 
# Tue, 17 Jul 2018 08:58:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:00:43 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:bb09deca004d00201385466417cc3b0fccdafea589862dc5395899e9557c80df`  
		Last Modified: Tue, 17 Jul 2018 09:10:27 GMT  
		Size: 46.6 MB (46645522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2cb8b1c6201aacb68037c9bbb55ac4ccb5f3c6dd539c7e89ce4795943bf453`  
		Last Modified: Tue, 17 Jul 2018 09:12:32 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:c4d89c31ceee50c9a22c27752627b8a0eb2ea77d673b13f787bdf3882a042ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44475079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c50fad75f1e3ce2357d0df18d95f253ce2a9bc210d3f8183f0cf8f3fc2ea5b9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:04:52 GMT
ADD file:80fbd6770a0d28cf3645337b4180fa094b82abb63001004ff0fb5d67e03b5a3a in / 
# Wed, 27 Jun 2018 12:04:53 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:06:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c9d1267f34126212222412fed43f5c1fb4395630ee7ce91637545f3b5a35da23`  
		Last Modified: Wed, 27 Jun 2018 12:14:44 GMT  
		Size: 44.5 MB (44474858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e51e5115a47e2a1ed2ffcf1d27a0774cb9ae19454452a438d18f0c3616101b3`  
		Last Modified: Wed, 27 Jun 2018 12:16:22 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:41ef9871a120cd78673f60fb693dbcf0f6666a8b6ef584d09a44481cc1438640
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45967636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3af52d3fafd69a6cc612360a8e72f0a70883d3b332ea6a44e3b022f3b75a0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:49:55 GMT
ADD file:640cc8b7703c25669e540eafe97caf4ea29e44ef194293eb13cba892b7f96788 in / 
# Tue, 17 Jul 2018 08:49:56 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:50:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3b923e10f2f8cec7c7cf512b3563dbd8123a45fdf7c2f4dc25e81efabdfd4b27`  
		Last Modified: Tue, 17 Jul 2018 08:59:48 GMT  
		Size: 46.0 MB (45967414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee4989af331c762fd6beb8165086658bd7189f236bedef2c7d807c4cb32bad3`  
		Last Modified: Tue, 17 Jul 2018 09:00:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:e3f8aaee201b9369450ffc0a559d778f2560642c3ff3042c0f1c46b83800611a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49529638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85c2840ad8ff192a23e2efb2b68b6572f6c03dd8dd9308185888c16fe031453`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:51:45 GMT
ADD file:0c87be34eb30fcd46a2ac93289b13990f1a61fec6f442c24c125d598ef44966d in / 
# Tue, 17 Jul 2018 10:51:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:53:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:ab46503358aa2c4d58aa7a286b01e7f31691f6d44e6d286e46dc67c73c3f2bed`  
		Last Modified: Tue, 17 Jul 2018 11:11:43 GMT  
		Size: 49.5 MB (49529419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb7af0ebdc907c2fb50826c915d09569f6e5ecbcc658a26acf9ee7e2c16041b`  
		Last Modified: Tue, 17 Jul 2018 11:14:53 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:bd7fa6ef432d1c513b7475b93d505413c6cb6d82f7ac33c0055177b6cae1d25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50185219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea960435f9b6f91983348c9fe8de37b014e15d825443703ae06744889401e4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:21:30 GMT
ADD file:1130cd32cc62220707c607af2cd6a357b9e431c800977e44687003649251e58f in / 
# Tue, 17 Jul 2018 08:21:32 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:21:58 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f8ec500e0106e58cdef31ca9f52a8864299bd9e6fd158ba115091ba3b7d91fb0`  
		Last Modified: Tue, 17 Jul 2018 08:27:53 GMT  
		Size: 50.2 MB (50184998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1135b94526939be162d14731d8b18a6d993d6cb4b2d6c842c569260134c4b87d`  
		Last Modified: Tue, 17 Jul 2018 08:28:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:622576ea37f16e3a57e873304a748430961f87158dbf27020f116b1fc5871638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47624359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743dd107fa5c58da855669656e16827535cd5953659e760a2e650ed796d4613e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:49:25 GMT
ADD file:8a77c2ab9c67fc7e2c80deeef815042226e4001e810e42ca683c2f03ede9dd60 in / 
# Wed, 27 Jun 2018 11:49:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:49:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:450ee941b07d8606d702dfb9a4268982a444d34564564de5d6626e0c96a815e7`  
		Last Modified: Wed, 27 Jun 2018 11:54:29 GMT  
		Size: 47.6 MB (47624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720b72cb5ce462567e88ce878b0ad10efd9e335928a70314b8c15e7ba8cabf35`  
		Last Modified: Wed, 27 Jun 2018 11:54:50 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
