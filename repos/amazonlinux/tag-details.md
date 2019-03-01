<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20190212`](#amazonlinux201803020190212)
-	[`amazonlinux:2018.03.0.20190212-with-sources`](#amazonlinux201803020190212-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20190228`](#amazonlinux2020190228)
-	[`amazonlinux:2.0.20190228-with-sources`](#amazonlinux2020190228-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:6f641aaae094efad1df7a9d120cfa69f6e9c8a38b9ab985b34767138aad801d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fed4296092c2eda6712234a67b9550370e57cb828fd49f47ef5c9ae6978246f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62743447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea12407ae7dfef579c48febbeaa2c46e8bc3f37ffafabd2fcbdf91c0170ed3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:ab0cc66c6e01adb4174851c89e2c09bf2ca5f2e0c03dc436cb386fa230d7c8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ecaf80363472b64dfa4fb25de4ec2139a3a493612462dff15b2ca20ca6e892f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.4 MB (387438224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a7aba63297153ec94073da0fd64f4d646d9d49109873f7bc721d3bc8307152`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-edec66042b312e0c355a9edb78ac48b3b0bfa85fb97bc8b115d35cb7e2fe2da2.tar.gz"  && echo "b2e5b6314f271462503fe3c5dd6022bfcd1ef926447a36748612ea6e6eb784b1  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a19d808defb53ab072fda25cef38a9f7c814a75b41e276525df36e0bef57d4`  
		Last Modified: Wed, 13 Feb 2019 01:22:09 GMT  
		Size: 324.7 MB (324694777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:80c0ac2a1ac346c018d143c91acb6d9e28112e6a738dcd2f4c82bca37c988731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:e767c697539f1327e5c9ec4130aef49c4bc21ec3a5558e23fcf9dcf841899d9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61300792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fc3a8cf6cce84a79e5489454a5fbbe8cb00e4d93433a856768221fd08a8d16`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 00:22:08 GMT
ADD file:3e10074b48c51f563af4a2b01b8e449c872ee7d119abdfb374d56a22c65149f0 in / 
# Tue, 26 Feb 2019 00:22:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d56dfdfb8504435b47d51e0f3ce14132b8242d2b479fa6d684adf958f84e712b`  
		Last Modified: Tue, 26 Feb 2019 00:23:01 GMT  
		Size: 61.3 MB (61300792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:517c4a7fb0faaee2576f7c6672d3a5f84627529616a84d2b57d44750cc5347ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84745394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f17d794c24ca34b9c77b56932460be272f93a40334fc3df6cd67269ba42991c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 09:46:10 GMT
ADD file:590a3f06060bb605fccc7a23fa5da0b68a4ca23b843795a78f74dbc31c767784 in / 
# Tue, 26 Feb 2019 09:46:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a1a5a8b5370d1d7bc3013116e0da2af18db695c79b08a67451a76bfcb7339d55`  
		Last Modified: Tue, 26 Feb 2019 09:47:57 GMT  
		Size: 84.7 MB (84745394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:6f641aaae094efad1df7a9d120cfa69f6e9c8a38b9ab985b34767138aad801d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fed4296092c2eda6712234a67b9550370e57cb828fd49f47ef5c9ae6978246f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62743447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea12407ae7dfef579c48febbeaa2c46e8bc3f37ffafabd2fcbdf91c0170ed3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190212`

```console
$ docker pull amazonlinux@sha256:6f641aaae094efad1df7a9d120cfa69f6e9c8a38b9ab985b34767138aad801d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190212` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fed4296092c2eda6712234a67b9550370e57cb828fd49f47ef5c9ae6978246f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62743447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea12407ae7dfef579c48febbeaa2c46e8bc3f37ffafabd2fcbdf91c0170ed3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190212-with-sources`

```console
$ docker pull amazonlinux@sha256:ab0cc66c6e01adb4174851c89e2c09bf2ca5f2e0c03dc436cb386fa230d7c8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190212-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ecaf80363472b64dfa4fb25de4ec2139a3a493612462dff15b2ca20ca6e892f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.4 MB (387438224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a7aba63297153ec94073da0fd64f4d646d9d49109873f7bc721d3bc8307152`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-edec66042b312e0c355a9edb78ac48b3b0bfa85fb97bc8b115d35cb7e2fe2da2.tar.gz"  && echo "b2e5b6314f271462503fe3c5dd6022bfcd1ef926447a36748612ea6e6eb784b1  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a19d808defb53ab072fda25cef38a9f7c814a75b41e276525df36e0bef57d4`  
		Last Modified: Wed, 13 Feb 2019 01:22:09 GMT  
		Size: 324.7 MB (324694777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:ab0cc66c6e01adb4174851c89e2c09bf2ca5f2e0c03dc436cb386fa230d7c8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ecaf80363472b64dfa4fb25de4ec2139a3a493612462dff15b2ca20ca6e892f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.4 MB (387438224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a7aba63297153ec94073da0fd64f4d646d9d49109873f7bc721d3bc8307152`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-edec66042b312e0c355a9edb78ac48b3b0bfa85fb97bc8b115d35cb7e2fe2da2.tar.gz"  && echo "b2e5b6314f271462503fe3c5dd6022bfcd1ef926447a36748612ea6e6eb784b1  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a19d808defb53ab072fda25cef38a9f7c814a75b41e276525df36e0bef57d4`  
		Last Modified: Wed, 13 Feb 2019 01:22:09 GMT  
		Size: 324.7 MB (324694777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190228`

**does not exist** (yet?)

## `amazonlinux:2.0.20190228-with-sources`

**does not exist** (yet?)

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:bef41954cc142a4807475ddde3f8655b2db922a5bf8379101703be4d766d87b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:16e1751ab6ee25117d7a4c244aeaab1006247e2379a5790da31ab0a49c710240
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410960802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eeeffad662977c4fd09d80343054dfc1129ce6b972fdd800326e2f0c5296b38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 00:22:08 GMT
ADD file:3e10074b48c51f563af4a2b01b8e449c872ee7d119abdfb374d56a22c65149f0 in / 
# Tue, 26 Feb 2019 00:22:09 GMT
CMD ["/bin/bash"]
# Tue, 26 Feb 2019 00:22:30 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-444d8c6710a3027a6c520d9ce5108f0f2570052a15d712f13454c6c6d2d232f9.tar.gz"  && echo "63aba32ac76cee05220b1ef7ebdb8e451e8b12bb8712896883f511ee625b8b45  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:d56dfdfb8504435b47d51e0f3ce14132b8242d2b479fa6d684adf958f84e712b`  
		Last Modified: Tue, 26 Feb 2019 00:23:01 GMT  
		Size: 61.3 MB (61300792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4f01b2a3170e697dcf779df7e9ec07785f7b416c724abe408357b1ebf717f3`  
		Last Modified: Tue, 26 Feb 2019 00:23:30 GMT  
		Size: 349.7 MB (349660010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:a28a6c59e1029ecaaec482863fa06ca36f37eca33fccf2deec685946d23f3c7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.4 MB (434405406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef033640cd9b9d1ab15bf992b545979bf51bba1f4909cffa712fe1d3b1a45ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 09:46:10 GMT
ADD file:590a3f06060bb605fccc7a23fa5da0b68a4ca23b843795a78f74dbc31c767784 in / 
# Tue, 26 Feb 2019 09:46:12 GMT
CMD ["/bin/bash"]
# Tue, 26 Feb 2019 09:47:07 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-444d8c6710a3027a6c520d9ce5108f0f2570052a15d712f13454c6c6d2d232f9.tar.gz"  && echo "63aba32ac76cee05220b1ef7ebdb8e451e8b12bb8712896883f511ee625b8b45  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:a1a5a8b5370d1d7bc3013116e0da2af18db695c79b08a67451a76bfcb7339d55`  
		Last Modified: Tue, 26 Feb 2019 09:47:57 GMT  
		Size: 84.7 MB (84745394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede59a84df060b0a01a3ef5c4c709120918393fb16bff4b8dea80c34327a74e7`  
		Last Modified: Tue, 26 Feb 2019 09:49:12 GMT  
		Size: 349.7 MB (349660012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:80c0ac2a1ac346c018d143c91acb6d9e28112e6a738dcd2f4c82bca37c988731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:e767c697539f1327e5c9ec4130aef49c4bc21ec3a5558e23fcf9dcf841899d9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61300792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fc3a8cf6cce84a79e5489454a5fbbe8cb00e4d93433a856768221fd08a8d16`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 00:22:08 GMT
ADD file:3e10074b48c51f563af4a2b01b8e449c872ee7d119abdfb374d56a22c65149f0 in / 
# Tue, 26 Feb 2019 00:22:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d56dfdfb8504435b47d51e0f3ce14132b8242d2b479fa6d684adf958f84e712b`  
		Last Modified: Tue, 26 Feb 2019 00:23:01 GMT  
		Size: 61.3 MB (61300792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:latest` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:517c4a7fb0faaee2576f7c6672d3a5f84627529616a84d2b57d44750cc5347ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84745394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f17d794c24ca34b9c77b56932460be272f93a40334fc3df6cd67269ba42991c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 09:46:10 GMT
ADD file:590a3f06060bb605fccc7a23fa5da0b68a4ca23b843795a78f74dbc31c767784 in / 
# Tue, 26 Feb 2019 09:46:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a1a5a8b5370d1d7bc3013116e0da2af18db695c79b08a67451a76bfcb7339d55`  
		Last Modified: Tue, 26 Feb 2019 09:47:57 GMT  
		Size: 84.7 MB (84745394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:bef41954cc142a4807475ddde3f8655b2db922a5bf8379101703be4d766d87b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:16e1751ab6ee25117d7a4c244aeaab1006247e2379a5790da31ab0a49c710240
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410960802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eeeffad662977c4fd09d80343054dfc1129ce6b972fdd800326e2f0c5296b38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 00:22:08 GMT
ADD file:3e10074b48c51f563af4a2b01b8e449c872ee7d119abdfb374d56a22c65149f0 in / 
# Tue, 26 Feb 2019 00:22:09 GMT
CMD ["/bin/bash"]
# Tue, 26 Feb 2019 00:22:30 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-444d8c6710a3027a6c520d9ce5108f0f2570052a15d712f13454c6c6d2d232f9.tar.gz"  && echo "63aba32ac76cee05220b1ef7ebdb8e451e8b12bb8712896883f511ee625b8b45  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:d56dfdfb8504435b47d51e0f3ce14132b8242d2b479fa6d684adf958f84e712b`  
		Last Modified: Tue, 26 Feb 2019 00:23:01 GMT  
		Size: 61.3 MB (61300792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4f01b2a3170e697dcf779df7e9ec07785f7b416c724abe408357b1ebf717f3`  
		Last Modified: Tue, 26 Feb 2019 00:23:30 GMT  
		Size: 349.7 MB (349660010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:a28a6c59e1029ecaaec482863fa06ca36f37eca33fccf2deec685946d23f3c7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.4 MB (434405406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef033640cd9b9d1ab15bf992b545979bf51bba1f4909cffa712fe1d3b1a45ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 09:46:10 GMT
ADD file:590a3f06060bb605fccc7a23fa5da0b68a4ca23b843795a78f74dbc31c767784 in / 
# Tue, 26 Feb 2019 09:46:12 GMT
CMD ["/bin/bash"]
# Tue, 26 Feb 2019 09:47:07 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-444d8c6710a3027a6c520d9ce5108f0f2570052a15d712f13454c6c6d2d232f9.tar.gz"  && echo "63aba32ac76cee05220b1ef7ebdb8e451e8b12bb8712896883f511ee625b8b45  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:a1a5a8b5370d1d7bc3013116e0da2af18db695c79b08a67451a76bfcb7339d55`  
		Last Modified: Tue, 26 Feb 2019 09:47:57 GMT  
		Size: 84.7 MB (84745394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede59a84df060b0a01a3ef5c4c709120918393fb16bff4b8dea80c34327a74e7`  
		Last Modified: Tue, 26 Feb 2019 09:49:12 GMT  
		Size: 349.7 MB (349660012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
