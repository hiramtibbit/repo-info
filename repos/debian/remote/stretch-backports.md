## `debian:stretch-backports`

```console
$ docker pull debian@sha256:2a3c36c036eda68dfcf8c4041191bcd9d96ac3f58793d6b451dca42f818a47bf
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

### `debian:stretch-backports` - linux; amd64

```console
$ docker pull debian@sha256:242b0d4c552b48f9ed92dfee2a17edf85ec2413a0881519035f5d4494bdafe40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45339573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5f15f55a44f5387860bef303c1db80a5994bbbcbc34ff98c8ee23a37b40071`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:24:12 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1192ea62ca13a2f847243aa019f6509b5427eeccf6e92ee4d6ffc27d144f861`  
		Last Modified: Mon, 10 Jun 2019 23:28:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:b8a649b88e45f91a8a6f043ed6d6b2da29b05e34e01beef95de1b60a5680be1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44046003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58eb29681477e9c5a4e7b3c3bb86181a48b1006942561b33cfeb828b6ac98c6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:53:17 GMT
ADD file:5dfe3b771bd67a2856913544993e219cb8c7933c33523cc56fe13a3a0e76ce9b in / 
# Wed, 08 May 2019 08:53:18 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:53:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ca892ced475bf1c51c1f13b76a64549cfc5d1a0b55d33d8b9418efbb47887bf8`  
		Last Modified: Wed, 08 May 2019 08:59:09 GMT  
		Size: 44.0 MB (44045778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16d62c2bf0b5793bde35c550f038d39d6ab1ce670f079f712f7d1c66cc1689a`  
		Last Modified: Wed, 08 May 2019 08:59:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7a4e64dec82ab9eb50a5ba8381924be323e156cc55940c037ae382137e337068
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42082830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec71659022ba2fede25c96b72e325958609fd56231b62d38273b788c1a79ded`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:03:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78858d092ea7c60fe47489724aaf851ba488dd349d97e38109e463b84d69c3`  
		Last Modified: Wed, 08 May 2019 12:09:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:45f039503285ae0945fb93d7f3d790e08e27260bddeb9af7d6e08d58b465394e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43142199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c188daccd7aab43f4e1fdcdaa1408ce93cf9167f16db27c24708bd39eee8b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:26 GMT
ADD file:24985af95c6d4e897ef3e2c7caa4b924f5b845a23e64ec8f50df3ca2d304039d in / 
# Mon, 10 Jun 2019 23:41:27 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:41:33 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7264ce755e9c156a88727829c0c572cb42ec249bf8dff3ed39edfb5202d6a1ed`  
		Last Modified: Mon, 10 Jun 2019 23:44:56 GMT  
		Size: 43.1 MB (43141977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90322a34f3c25b60e3a0e67ef879626a502a46873c61cd44c7a495dd691d64f0`  
		Last Modified: Mon, 10 Jun 2019 23:45:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:89672ab2f624dca99652bbc1ae4c0f339cfaa65d72a71a5da8458bbe1a84be91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46063513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0eb56e1293170b24deaa69e9bdfa54a74e6d9272c88192fea4ac8ea5bc6198`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:41:26 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f32d959e62965053bd69a9252a9a8462de0608c8d6234bfc0c032bd2391d1de`  
		Last Modified: Mon, 10 Jun 2019 23:45:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:30c250fd3074424e83219583af33d7789d65accd52493d5e74044d3cf3090ac5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45603397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75de7d916ca695c84e570a6a72d76a28d87bdef6edb1de848a581ae2601c5b2c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:18:48 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ff1f621ec30556e860fabee093a75dde88f499d16659a4f284cb17292eb09b`  
		Last Modified: Mon, 10 Jun 2019 23:24:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:12b05c2f617454858e41ddcf1a71f00d26c571352b2251966baf10f8b8fb5ae5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45197861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2efbca8bcaf5a989ff8d58ff19966a65edbdc8fab2a5404312e09cdd5e8ee1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:43:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955bd88bf4b87a8a2795a38855f4dc2280320d87eeb15f2b9b63028cd5a1669`  
		Last Modified: Mon, 10 Jun 2019 23:46:32 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
