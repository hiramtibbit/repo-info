## `debian:stable-backports`

```console
$ docker pull debian@sha256:640ea63849fbe580707e822001bf9397c6067ef4b219eca5959a4a9a6a4057b1
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
$ docker pull debian@sha256:538ba092bdb34753adfd5af8205e9103d3a5875bb81037012a5f2f03895c7626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45318359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c3a38850af9974e995c42fbc594d651a905f2b1de8d477cbf4648a98bbf159`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:03:35 GMT
ADD file:f0868fab3f4afce6d317e3013ea30a46c946dab8882deeab87e979b169872524 in / 
# Sat, 28 Apr 2018 07:03:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 07:04:01 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:240f11b4a6c179680dfcfb9ca16b6b1e533cca5c01d10843765282d0952357d6`  
		Last Modified: Sat, 28 Apr 2018 09:22:08 GMT  
		Size: 45.3 MB (45318137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbea54fcdbb131d665e225b3739b9bab9fd29785afc024e5f995f614156d0ee9`  
		Last Modified: Sat, 28 Apr 2018 09:26:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:e66f215cbd1d89bac1aae7ce973eaad9ac183002689d48bd4d4b01b97429ba89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44038818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46847d4aa9ddecc014f9cfc40390752fc606091707cfd57b50ec1ffcc0597974`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:52:17 GMT
ADD file:dfd7328c3198844a19b1b7ad77e5ebd7e11031993ae1b56b0994de578d974a50 in / 
# Sat, 28 Apr 2018 08:52:18 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:52:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9a800ded6f0df610aa5fd808e72d560e3324b53c0a73023f990b053b0ec673b`  
		Last Modified: Sat, 28 Apr 2018 09:00:38 GMT  
		Size: 44.0 MB (44038593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4c55d13d02ab05e725ceb28a735386fb4579b3dbe7e01df2162a7da44c3038`  
		Last Modified: Sat, 28 Apr 2018 09:00:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:c32b294c8acd057e71db0cf7f20a0ce863975c635c5e4a9a2851dc406c5faa70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41857676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e3747483cfd5104364e70bd874e4b618c363d8fac3e42624290138492bb0df`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:31:21 GMT
ADD file:8bd63141975400462d3661409199997a02a95c5822493e539d6ceef5cd872865 in / 
# Wed, 14 Mar 2018 12:31:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:31:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:dd11ab8973bc7a63a14e0fd46d01c8e3b044bb4ba44cbbc960d5e89cbc1c9ec3`  
		Last Modified: Wed, 14 Mar 2018 12:43:03 GMT  
		Size: 41.9 MB (41857454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d831a31494659906165ea937ea5f8c1f865d6c8eb848989bb0a9b85b82d994`  
		Last Modified: Wed, 14 Mar 2018 12:43:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b16ca6b601f158d81660500791957ff9fae66d69ffd02da894ffe806ff01643a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42908055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c214872322fe1a836daae948fa6302546258704ad446a8e3cd83aedd989ecda6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:29:14 GMT
ADD file:3aa6a621ac55f79e70877d22eb7d04631c64ec34766a9960793a8a9e2aadfa50 in / 
# Wed, 14 Mar 2018 17:29:15 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:29:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c819a04cce37eadab72957a61733f7bd44f789faeec1294d547ccf205fed49fd`  
		Last Modified: Wed, 14 Mar 2018 17:43:45 GMT  
		Size: 42.9 MB (42907829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69f655a72041759920b5d01bcccfa9cd875e7a5729a7517d9e829c4182264f`  
		Last Modified: Wed, 14 Mar 2018 17:44:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:8bd6f9ca5c63a32b241888e0d15856c6e2975759b50b643ee351882b1b713ab4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46045143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1f15910b77798ee8310e481be36a74f2e68edc1b25a9e1e9d3a13d4eff6b57`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:10 GMT
ADD file:87fa2e564ca4ff3677fe57aa99f1058194628fd388e1db3f38013033ebd983a6 in / 
# Sat, 28 Apr 2018 10:41:10 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:41:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a628288d8ce4b9fca815d58196a21bc7317e1ba1d274e9c12f4dd7af1bc392ee`  
		Last Modified: Sat, 28 Apr 2018 10:48:07 GMT  
		Size: 46.0 MB (46044920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4413ea917998b1bdef4673615a685483e13b8cad0f0186e4aae591218130471a`  
		Last Modified: Sat, 28 Apr 2018 10:48:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:1f4a12d24819b7d84de5b1bf1df29598057ef88c6a2a574c19eef514a03e6dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45591083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8088aca4d3ce7d62c7031ae2423359704113421679f53921ef2598f5b613e266`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:49 GMT
ADD file:3465f01a6b79340c587c2964f47fb44f9f0fb130707402a4d11be03853dee058 in / 
# Sat, 28 Apr 2018 08:19:50 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:19:58 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f7be4febd5f2d90f28a8adca0d0b2c2791ce9f951bc729e99e6e5286c9d400f3`  
		Last Modified: Sat, 28 Apr 2018 08:28:40 GMT  
		Size: 45.6 MB (45590857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b772c8a021df134d37f4e6712381dea5bce6549ce8f2031b7a09cf4fd27959`  
		Last Modified: Sat, 28 Apr 2018 08:28:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:c708b7455ed78d3b209329fd967ed52c4683e8364022960abdd4d25e2866b8d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44977396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614f84ea592c9b19ba8781910313c54a9e893220b9387d31e47cf0ecfd54a214`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:21 GMT
ADD file:3308cf3ee3c647f9528a3ac0b4e3b2610f5c2e27e8bb8caca28daa6ac9d000db in / 
# Wed, 14 Mar 2018 05:23:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:23:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9bc85983dcf4b8aa0599ea51e1b37c5300d56f1c5b58dab7e3b2a3e7cf9ac6ee`  
		Last Modified: Wed, 14 Mar 2018 05:28:01 GMT  
		Size: 45.0 MB (44977174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0daf225bee3d5b723b1f07ba490d73b3aa7fc673f8f4883146b81254ddebabef`  
		Last Modified: Wed, 14 Mar 2018 05:28:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
