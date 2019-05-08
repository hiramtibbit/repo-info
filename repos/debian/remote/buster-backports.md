## `debian:buster-backports`

```console
$ docker pull debian@sha256:cb26930b559b20087225f32ee6c7f3907c4de38513e81faec2cb7c69eecda5d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `debian:buster-backports` - linux; amd64

```console
$ docker pull debian@sha256:e251202e8d3b824a06c0b08ffd6d6a3633340ab402ab071a8c7d7f692bfbe498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51de01f91caf472a63486d9972f916a4411b0ba281f7d79e2305180efa44eac6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:28:53 GMT
ADD file:1206af08b0982cf51772ede1bb826b30be8426cadc52014207fcddd1dce1a006 in / 
# Wed, 08 May 2019 00:28:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:29:03 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:78496f898f92b99fe2e84608b2142ab03f43c7f16be3ef2e394b7c61b0ae4f7f`  
		Last Modified: Wed, 08 May 2019 00:35:29 GMT  
		Size: 50.3 MB (50281451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c567bb065eb12b57705cf9fcadcd37cb5f434a457d5502c613b2940078e10df0`  
		Last Modified: Wed, 08 May 2019 00:35:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:10d53c8c456ffd50ba6b28fa3643870467cbb918732a071e9535fe4f5745db54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47991560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e395f8e5df94ca3f8551ac9cc2bcff267cdb7d783edd7984faf697c47c46ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:49:07 GMT
ADD file:32322c35d043b12b15eabfa71c7e1f7ee0a9aa0da843563ae0071b2734f64e02 in / 
# Wed, 08 May 2019 08:49:08 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:49:15 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ec2a6987ecd7db01af5a6962ce511e10d30c11c3ec6500e3c2b48150bb874308`  
		Last Modified: Wed, 08 May 2019 08:56:06 GMT  
		Size: 48.0 MB (47991337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db50b17f5e63d4c8fb469dc35444a0dea9e134cf55f78039cd2ae66131863f8`  
		Last Modified: Wed, 08 May 2019 08:56:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:4e51bbd0c8553dd6a092c2b28ed10db7b754277f49776e338d9d51db641464bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49073248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d31848e21ba675b913628072bc952270858aa6322b8850800a7a647fc0e720d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:45:01 GMT
ADD file:4ac330b79160164d8baf8c9927dd9364c8efae6551ddaf507dbf46315abdb184 in / 
# Wed, 08 May 2019 08:45:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:45:08 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f6fb23aad628a3be4a2fe2611a079b21a896b677f5e511e4beb479ebdceae480`  
		Last Modified: Wed, 08 May 2019 08:52:20 GMT  
		Size: 49.1 MB (49073023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8da678466317a57b54b3543eaa1dca97189e7885bec6efcd9b2d409eed2295`  
		Last Modified: Wed, 08 May 2019 08:52:29 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:b5957d0da84c3092cc139e03e370b58d630f6204e6df847ff7f313abb397da50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54033887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6789093d804bac7419f1035aac991c3fef848b57c2d9f1279a8e85dc8fb9feee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:37:11 GMT
ADD file:860c3e54b1361dc72471f0b2d2a052c0c4a02df3bd46462099169ec6ad3057a3 in / 
# Wed, 08 May 2019 08:37:14 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:37:36 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bcb4d3ba89e937d3c22cda2d7f5c8305b83bd698e18972597f0f1db8b53d11fd`  
		Last Modified: Wed, 08 May 2019 09:22:07 GMT  
		Size: 54.0 MB (54033662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6db7dba1debc618aa80ce56066244e15c3eea26d83c95c39805e05075a285c`  
		Last Modified: Wed, 08 May 2019 09:22:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
