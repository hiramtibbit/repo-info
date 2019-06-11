## `debian:experimental-20190610`

```console
$ docker pull debian@sha256:98d3890c523c9bb1a6cd616cf7ff173b99fb3e6c52415180ae0d84c7d2e83da4
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

### `debian:experimental-20190610` - linux; amd64

```console
$ docker pull debian@sha256:22c16accf948640cf072532fe28a31d58c523b4b686075d9c9bc5108ceada3fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50416495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dea851b1dfedbde25f382791d2633d6dbc06d1e906118e9de2ee75114652b5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:25:03 GMT
ADD file:30e4a5bbcb6193bdf90cd4df787eab5abd3658cb9dac33307fc2923924c2b6d2 in / 
# Mon, 10 Jun 2019 23:25:03 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:25:20 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:7c0a820d386a053c5126415741696d7879de151698d23ae73a17e15a93cfdfea`  
		Last Modified: Mon, 10 Jun 2019 23:28:43 GMT  
		Size: 50.4 MB (50416273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0619c9e878e0eaab6f61d78ba2199f27ef7e7a9d65d4d6a03ae98be052bae4d5`  
		Last Modified: Mon, 10 Jun 2019 23:28:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190610` - linux; arm variant v5

```console
$ docker pull debian@sha256:41a41dc2e96fe6a5965ed4709dc541224299158becc115ffbecf640f84908103
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48134180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34083908c7af4bacddef9602a791d76408e15082284ae5f310ce8b05d2df28dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:54:45 GMT
ADD file:075dbf7f22b796f5394bd9aef0e86a58d8a909a1e7e864e21c77cda4c6b489aa in / 
# Mon, 10 Jun 2019 23:54:46 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:55:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:99588044629d27e8f5865c39647f17588141e18aad0df2a55c549f075695a905`  
		Last Modified: Tue, 11 Jun 2019 00:00:44 GMT  
		Size: 48.1 MB (48133959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d1fb68288f6ea0f5e82127939c348301aa9012bf28c8614d0f65de17e3df62`  
		Last Modified: Tue, 11 Jun 2019 00:01:05 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190610` - linux; arm variant v7

```console
$ docker pull debian@sha256:f411dbe5471ed530d6693ca4728a8c4413cd4989da385dd26d1de1dbcfce058f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45891472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa6e70d66d4f65ff94aa05efd8462ac289e8ac1146abe7d677017cb25855235`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:04:35 GMT
ADD file:614f04fd9ac28cdf55168120c8aae6b53b5287b1e16e842e902a15b8e4eafdbc in / 
# Tue, 11 Jun 2019 00:04:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:05:06 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6752255119bde5df2af0f38c5ce21897f68f79266c7cde8b1e4acbb0340ba706`  
		Last Modified: Tue, 11 Jun 2019 00:10:21 GMT  
		Size: 45.9 MB (45891251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58c09db04986f2d0328383becab3ef699242fdec5c8e7830014fc04bec7258e`  
		Last Modified: Tue, 11 Jun 2019 00:10:46 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190610` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:92f409537d67629005bb41a249e84f6b57bc335586a05a2ca2ba4207e0b30e95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49193355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7b63be8f56925bc4f66babc811f1304bd4ac1369723218c0d978820c904c53`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:19 GMT
ADD file:abad9413b94b31daf873c9ef599a67c419a33c38699f68ebfaa399e9b3a45719 in / 
# Mon, 10 Jun 2019 23:42:21 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:42:39 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:990e514b86a512912565caeef39b2e56275ea501c23176f5d941f5d048df4fc9`  
		Last Modified: Mon, 10 Jun 2019 23:46:07 GMT  
		Size: 49.2 MB (49193131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52222575ce2c1dd3dcbafdba7ef08445cd41dc325c99422892bc59106498dce9`  
		Last Modified: Mon, 10 Jun 2019 23:46:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190610` - linux; 386

```console
$ docker pull debian@sha256:2e7d7131ee6c251e70ac10cf9c75c6a6cefae40867b37fd9e6966336f7422ed6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51167249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2ac286a36dfd467488da99cf3f9f6b3bbe36fdbe220d6ed93093c5171acf99`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:17 GMT
ADD file:0b6a12baf1b9526d4c504999f10d2ed281fb0be822b203b6531db5e87ec1de4f in / 
# Mon, 10 Jun 2019 23:42:17 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:42:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:eb7d7c5dde35e437dbd5f7670dc504e4703de0ec872d0d64adf14e434c5de9e1`  
		Last Modified: Mon, 10 Jun 2019 23:46:57 GMT  
		Size: 51.2 MB (51167031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b437af584b498ef8a8a78c1d8d69bc811f087d12c08d3aa23828120cc120d65`  
		Last Modified: Mon, 10 Jun 2019 23:47:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190610` - linux; ppc64le

```console
$ docker pull debian@sha256:3e6479d0383bba1edefdfe3e88ca0296ce10aca88266661f0a4193deb6537895
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54137617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cb7e686866877a8c6eea15b92b1dae51c17df6b499577bdb5b1192ea3908e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:19:49 GMT
ADD file:90dfea11b7bbd601d93c8f035ac4dc33bcb08ae4893dad3197dd71d4189d407f in / 
# Mon, 10 Jun 2019 23:19:52 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:20:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1c0e0ca92db8f4364462d182e1633e47e3ff2b5253775576111cdb2e0a9ec608`  
		Last Modified: Mon, 10 Jun 2019 23:25:28 GMT  
		Size: 54.1 MB (54137395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef03f38e36461612cc7049436f674378906f948362b90586dd4381e0af7c7f0`  
		Last Modified: Mon, 10 Jun 2019 23:25:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190610` - linux; s390x

```console
$ docker pull debian@sha256:868ba0324b135243bbcaed624da6c7f9937bac5815b96a705fb5cd271439dfd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48985710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c03c7aae66092b4be3f7ea5c7316417bfcc9536cc240f5f3d1239513ac92971`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:44:23 GMT
ADD file:d0e01b4291d777a2218db6f2583c013bb86cf4a9f87e161db951bfa9312d387a in / 
# Mon, 10 Jun 2019 23:44:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5e04671339e7c66b0e953cf136ae54a1a91935f41e7aeb2aed81aee622a1123c`  
		Last Modified: Mon, 10 Jun 2019 23:47:22 GMT  
		Size: 49.0 MB (48985488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ae782e5d02e010e7b6ea8699ca24874dfc2340e391a7fea39deca97918771`  
		Last Modified: Mon, 10 Jun 2019 23:47:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
