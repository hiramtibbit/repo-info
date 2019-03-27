## `debian:stable-backports`

```console
$ docker pull debian@sha256:7184f8d33dca1a59b5a24c1ea894d76f7866765f34a8cf62e6f34c73ef4456fe
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
$ docker pull debian@sha256:29bd72718ae97643033363dac5db41e2c379a7e7143f628872ed1718c3f27277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42075396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488f1c156c541f50b5b33c2ea4089be52030ae32b7105f7990723c62ac1869e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:06:30 GMT
ADD file:f26ea99b2fa1f10982b46ebd58a44b68afadcfac0bf01474a834b44d638cca74 in / 
# Wed, 27 Mar 2019 12:06:31 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c67b4bcd2f79842e8c6b60d99aa9d66ac6979061f24464bd9b3e128e7d08442c`  
		Last Modified: Wed, 27 Mar 2019 12:12:25 GMT  
		Size: 42.1 MB (42075173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94b7855cb01ec34d9fef2ad9c0f49040a22cdaf91f8d9f8cea144e7e636a830`  
		Last Modified: Wed, 27 Mar 2019 12:12:30 GMT  
		Size: 223.0 B  
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
$ docker pull debian@sha256:2c82cdb1e9a98f750cc671f4801145b307a52ed24baed768eb2d9a7519ab1226
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46064564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34b2de9c786041ea5b21dfa70ca49f47e8b24e8e0bffecd680a8918ced8e856`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:42:37 GMT
ADD file:3ce7eb4106f4c0f3a86a0fd5885a900f1ac4a9039e795459c8c200026c95d56b in / 
# Wed, 27 Mar 2019 10:42:37 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:42:43 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:194aac99fa80d70e6179eac0d5a274afa28840432b761a959b176772e09cf887`  
		Last Modified: Wed, 27 Mar 2019 10:48:30 GMT  
		Size: 46.1 MB (46064341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250a1488f06835bb167d3dda5a0a9a8f368b601e1769b38cc0866b04ff1eb4c1`  
		Last Modified: Wed, 27 Mar 2019 10:48:34 GMT  
		Size: 223.0 B  
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
$ docker pull debian@sha256:ed5600143eff7ea93494b2c5ff5c3cf7c22ef22c908aff76c3f3d3b7fdf3ff81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55395235feb97c617cf078ae187ef0779f1063b59377c79de9577f6dcfeda111`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:00 GMT
ADD file:9d0d01c3fcb6761a8952689c69105da2e90fffbc612afb7bb9839cb097427e6a in / 
# Wed, 27 Mar 2019 11:43:01 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:43:07 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4fa67c2426daaa7bd7d2a340dfe8128a25ff423174a2a25a0ab63f4345e5bb9e`  
		Last Modified: Wed, 27 Mar 2019 11:46:10 GMT  
		Size: 45.2 MB (45199332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9b89db2958e48ca08f36e4365d0da2e7467057a014c7b1e84320df7aff0cc5`  
		Last Modified: Wed, 27 Mar 2019 11:46:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
