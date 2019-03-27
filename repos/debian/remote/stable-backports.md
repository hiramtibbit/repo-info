## `debian:stable-backports`

```console
$ docker pull debian@sha256:15714b58dcd3af898c6d848630af7f76de3c1ec109a2b0432a5685f3c1dc1c3b
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:03d15133c722395d88aed47daa1f78d2be4605ed1a6ed8863e9975737bb2e0e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45342816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b82cbe6c6c363810cf03600bc75a936bcb1657f41445c0e4f82818ecc7913e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:40:45 GMT
ADD file:d891105338b1a0ab1530182525676645497da13ebdc00de2945c2bc10cc5782b in / 
# Tue, 26 Mar 2019 22:40:46 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 22:40:50 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4547201971ce577126b4b7376e798b86fe767ee5a7f8018eb7fc442fb075d1f5`  
		Last Modified: Tue, 26 Mar 2019 22:44:07 GMT  
		Size: 45.3 MB (45342591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9778d7caa8e9775b67efae982c08aad7b29a9b42a8e21ace94e6b501fdeaac7`  
		Last Modified: Tue, 26 Mar 2019 22:44:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f11d3b66f57fcb1bf12654481b45d64966ab500031c6a0fb614b4d0cadfab371
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44029937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e616810a9a49a4b7b62729750c99a871c7206350082f16d83fc2c4e08a88ac8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:52:49 GMT
ADD file:080269fa5f2ef184c4f01cab54c957d1c975179736226caafad67f74fa1200d5 in / 
# Wed, 27 Mar 2019 08:52:50 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:04d5c38ec1375c077ec8355d4572605717d34558fed9a25b3773eadcf9433bf3`  
		Last Modified: Wed, 27 Mar 2019 08:58:45 GMT  
		Size: 44.0 MB (44029715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074e03a3f909143026c9c9422eb8b39e037df241e40c037da490b7f85c1aa23b`  
		Last Modified: Wed, 27 Mar 2019 08:58:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:2b967e8e111d6bb2a4d40f4164453b44f3d4062bf2be825062d8831def1f2ef6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42075347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3320fa513c4149cf8aea0c2972d7fb8f8ef35cbe97b37b47abfa7e0d9649c8a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:09:35 GMT
ADD file:bfa5476772288e48cfdcdd2f155f04e207ae78911db1658c36dc92dba53af538 in / 
# Tue, 05 Mar 2019 13:09:37 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:09:45 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:85cf2586b97b21d4dd91003d24f80168b6abc1bf61fcc889dba5dba1d2090cd5`  
		Last Modified: Tue, 05 Mar 2019 13:17:48 GMT  
		Size: 42.1 MB (42075122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afbadf5f58ba193a5b81620a720ff94e623e1973e6d29e47faec218b036299e`  
		Last Modified: Tue, 05 Mar 2019 13:17:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:efaf6cb687d68efed1948c68574cb6daa389eaedadd87c9536febb1ac9ee3c5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43132187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689068a41691a378f643430f1c55092dd6e97d16a36170a3c82f137d4c70103c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:46:26 GMT
ADD file:0e56980809cb985120a7b535ae1732de12458d3df2826b0b59f0ebd94d377ade in / 
# Wed, 27 Mar 2019 08:46:27 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:46:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a53b7e9ec552d3e5cd9016ced599a683ae9441ace682878e100c279a46135c79`  
		Last Modified: Wed, 27 Mar 2019 08:51:47 GMT  
		Size: 43.1 MB (43131963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c8e3c48303790602efd9eeab60ffb5736780c6dd293ff81290a88fe17384aa`  
		Last Modified: Wed, 27 Mar 2019 08:51:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:0a39be54d41b58d465afa0190513a0ec6e9abe1f43afabf65db34f0fd797c8fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46064651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dda557d47ba65d347da53a297654cc21f0aa80725ecf3cd2da55d8f1cd7e0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:44:28 GMT
ADD file:f562dd1eb81a4f25cf4336a4c572a55e28e9913bf7bc8909d09d13472246017b in / 
# Tue, 05 Mar 2019 11:44:28 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:44:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3645dafc97e779d62cfaa464cfa96a948e82a47cdb6c934b881a62d17a7934db`  
		Last Modified: Tue, 05 Mar 2019 11:54:11 GMT  
		Size: 46.1 MB (46064427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2291b6b69fd10fddce449bc919816312485d488918cb5d76c8a4ff0f59fd839`  
		Last Modified: Tue, 05 Mar 2019 11:54:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:3a0839cd181e4151080133382a7c74147ad04ae3c662a014720bd652430e8de3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45610748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ffa1a9a0fa0477811af45508d3302e335abe74b08999ca798cc41e11d90c97`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:02 GMT
ADD file:b8187285721ba2a4fb7d6eb8c16093b0f50317f896368a2fc56e9c2dc28e0a4f in / 
# Wed, 27 Mar 2019 08:24:05 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:24:18 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d3a58cf4647175eb4004a1f914285302f9e6d24d31d8abf9789d7a3b45ecadb7`  
		Last Modified: Wed, 27 Mar 2019 08:31:05 GMT  
		Size: 45.6 MB (45610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49006346409c4bcfb255617bc360f79c1e1ba68b3fcc734d98f704ca05fe56b1`  
		Last Modified: Wed, 27 Mar 2019 08:31:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:d3f44e1c57e8fd0b2da39276bc1bd6d351d8a10e436293496478af44d7315ca1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13714d41f189d3e138007c3968f6220804acdaca052dc1f004ff348401ec5e89`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:35 GMT
ADD file:becaf4447097eb6220c65f114105698e313a4b8b8cfebb100ba826166c47e279 in / 
# Tue, 05 Mar 2019 12:42:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:42:40 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9ee6b58caa55795a69beb115b4518de3bcecfb7921297f7f20d33ee67660e893`  
		Last Modified: Tue, 05 Mar 2019 12:45:05 GMT  
		Size: 45.2 MB (45199266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda98bb1f1004f2fab9992dd170d375b0dfdbb7810289b216a7dc7286bd68ea7`  
		Last Modified: Tue, 05 Mar 2019 12:45:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
