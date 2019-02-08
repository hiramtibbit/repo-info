<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20190207`](#amazonlinux201803020190207)
-	[`amazonlinux:2018.03.0.20190207-with-sources`](#amazonlinux201803020190207-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20190207`](#amazonlinux2020190207)
-	[`amazonlinux:2.0.20190207-with-sources`](#amazonlinux2020190207-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:a3ef7d32797ed199a53ad61cb4231ddf7e950e196fb887ba982c4162daf6a1b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:7fd603a5d7196b6f96d1cafc4a7175825005b0cbf41c365115187be1b2d5fc3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62721277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f001bfb59e56012c33637ba235dc9824871abee98df57fa848235834bc42c2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:20:14 GMT
ADD file:f81623501610d3c091630292c8e88ee9e8ec7d217c819155147aefdaba26b2f1 in / 
# Fri, 08 Feb 2019 00:20:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b4a6000bdae88dcf3cb56efe30b5c4ff15e52b01e4751883914e285abcd43456`  
		Last Modified: Fri, 08 Feb 2019 00:21:37 GMT  
		Size: 62.7 MB (62721277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:a11aa8a7bdef56f9018e9a2ac74482c551ae66c83374cc7ca6b39d071bb4b148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:11ed77b2930f3f45a4149d51afc2b8f1dd60fcb6ffbcd6151a93b78eca3f1280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.1 MB (387106414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d5bd9bf8f490fced9f259751fbe278c9399a410485a96956458b93ffeb105e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:20:14 GMT
ADD file:f81623501610d3c091630292c8e88ee9e8ec7d217c819155147aefdaba26b2f1 in / 
# Fri, 08 Feb 2019 00:20:14 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 00:20:32 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-7c0be1837a432de9806ee4590ab46fdbf13b9715e665de3747b8c1994134b027.tar.gz"  && echo "d6c0cf47d8adb7227fc8893ed8507962355e25ec485f2ecf9eae8bce66c60a37  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:b4a6000bdae88dcf3cb56efe30b5c4ff15e52b01e4751883914e285abcd43456`  
		Last Modified: Fri, 08 Feb 2019 00:21:37 GMT  
		Size: 62.7 MB (62721277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb1713e89d616002ea30b3fe25e91fb5e6d593815b050705a66619837d417a`  
		Last Modified: Fri, 08 Feb 2019 00:21:58 GMT  
		Size: 324.4 MB (324385137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:2f2ffa29e33486df61a9f41e15733cad3ab04d7c8fb842fc5ec66fcb7aab4005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:49dba174c191dce771559e9e380495cedb6f31f31ac3c618fe0caf74f90ef9a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61287959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae18413445a2d6c91900e5cf62514fc176d0068e82b198f21f6f1d587a23f317`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:19:44 GMT
ADD file:b91e6aa2e14a5b94c06cdf05085b4e613ed65daf7da829ce5e46aa31ba76be8f in / 
# Fri, 08 Feb 2019 00:19:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f1087751193a0b6a0cb74ec605641fefe4793bf6273748a13acec288182e2402`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 61.3 MB (61287959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:2df2f2f4e4fd739a3e251c5cc80605609771fcafdff50cab5ec934ed695e7574
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83629782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e37350e8319fbe84f4f45ea6631c6d34587033db7d6b958a749ad20d9a745f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 09:40:24 GMT
ADD file:472c130064cb85df56a1b1ccb16c8bfcf4913ccf37588ee121c7814681f7237b in / 
# Fri, 08 Feb 2019 09:40:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8337939a0aa76124f49a9b23fc873cabe47dbb0d56e7c88736d453ed0aee03e8`  
		Last Modified: Fri, 08 Feb 2019 09:41:51 GMT  
		Size: 83.6 MB (83629782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:a3ef7d32797ed199a53ad61cb4231ddf7e950e196fb887ba982c4162daf6a1b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:7fd603a5d7196b6f96d1cafc4a7175825005b0cbf41c365115187be1b2d5fc3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62721277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f001bfb59e56012c33637ba235dc9824871abee98df57fa848235834bc42c2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:20:14 GMT
ADD file:f81623501610d3c091630292c8e88ee9e8ec7d217c819155147aefdaba26b2f1 in / 
# Fri, 08 Feb 2019 00:20:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b4a6000bdae88dcf3cb56efe30b5c4ff15e52b01e4751883914e285abcd43456`  
		Last Modified: Fri, 08 Feb 2019 00:21:37 GMT  
		Size: 62.7 MB (62721277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190207`

```console
$ docker pull amazonlinux@sha256:a3ef7d32797ed199a53ad61cb4231ddf7e950e196fb887ba982c4162daf6a1b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190207` - linux; amd64

```console
$ docker pull amazonlinux@sha256:7fd603a5d7196b6f96d1cafc4a7175825005b0cbf41c365115187be1b2d5fc3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62721277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f001bfb59e56012c33637ba235dc9824871abee98df57fa848235834bc42c2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:20:14 GMT
ADD file:f81623501610d3c091630292c8e88ee9e8ec7d217c819155147aefdaba26b2f1 in / 
# Fri, 08 Feb 2019 00:20:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b4a6000bdae88dcf3cb56efe30b5c4ff15e52b01e4751883914e285abcd43456`  
		Last Modified: Fri, 08 Feb 2019 00:21:37 GMT  
		Size: 62.7 MB (62721277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190207-with-sources`

```console
$ docker pull amazonlinux@sha256:a11aa8a7bdef56f9018e9a2ac74482c551ae66c83374cc7ca6b39d071bb4b148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190207-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:11ed77b2930f3f45a4149d51afc2b8f1dd60fcb6ffbcd6151a93b78eca3f1280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.1 MB (387106414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d5bd9bf8f490fced9f259751fbe278c9399a410485a96956458b93ffeb105e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:20:14 GMT
ADD file:f81623501610d3c091630292c8e88ee9e8ec7d217c819155147aefdaba26b2f1 in / 
# Fri, 08 Feb 2019 00:20:14 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 00:20:32 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-7c0be1837a432de9806ee4590ab46fdbf13b9715e665de3747b8c1994134b027.tar.gz"  && echo "d6c0cf47d8adb7227fc8893ed8507962355e25ec485f2ecf9eae8bce66c60a37  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:b4a6000bdae88dcf3cb56efe30b5c4ff15e52b01e4751883914e285abcd43456`  
		Last Modified: Fri, 08 Feb 2019 00:21:37 GMT  
		Size: 62.7 MB (62721277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb1713e89d616002ea30b3fe25e91fb5e6d593815b050705a66619837d417a`  
		Last Modified: Fri, 08 Feb 2019 00:21:58 GMT  
		Size: 324.4 MB (324385137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:a11aa8a7bdef56f9018e9a2ac74482c551ae66c83374cc7ca6b39d071bb4b148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:11ed77b2930f3f45a4149d51afc2b8f1dd60fcb6ffbcd6151a93b78eca3f1280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.1 MB (387106414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d5bd9bf8f490fced9f259751fbe278c9399a410485a96956458b93ffeb105e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:20:14 GMT
ADD file:f81623501610d3c091630292c8e88ee9e8ec7d217c819155147aefdaba26b2f1 in / 
# Fri, 08 Feb 2019 00:20:14 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 00:20:32 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-7c0be1837a432de9806ee4590ab46fdbf13b9715e665de3747b8c1994134b027.tar.gz"  && echo "d6c0cf47d8adb7227fc8893ed8507962355e25ec485f2ecf9eae8bce66c60a37  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:b4a6000bdae88dcf3cb56efe30b5c4ff15e52b01e4751883914e285abcd43456`  
		Last Modified: Fri, 08 Feb 2019 00:21:37 GMT  
		Size: 62.7 MB (62721277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb1713e89d616002ea30b3fe25e91fb5e6d593815b050705a66619837d417a`  
		Last Modified: Fri, 08 Feb 2019 00:21:58 GMT  
		Size: 324.4 MB (324385137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190207`

```console
$ docker pull amazonlinux@sha256:2f2ffa29e33486df61a9f41e15733cad3ab04d7c8fb842fc5ec66fcb7aab4005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2.0.20190207` - linux; amd64

```console
$ docker pull amazonlinux@sha256:49dba174c191dce771559e9e380495cedb6f31f31ac3c618fe0caf74f90ef9a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61287959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae18413445a2d6c91900e5cf62514fc176d0068e82b198f21f6f1d587a23f317`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:19:44 GMT
ADD file:b91e6aa2e14a5b94c06cdf05085b4e613ed65daf7da829ce5e46aa31ba76be8f in / 
# Fri, 08 Feb 2019 00:19:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f1087751193a0b6a0cb74ec605641fefe4793bf6273748a13acec288182e2402`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 61.3 MB (61287959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2.0.20190207` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:2df2f2f4e4fd739a3e251c5cc80605609771fcafdff50cab5ec934ed695e7574
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83629782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e37350e8319fbe84f4f45ea6631c6d34587033db7d6b958a749ad20d9a745f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 09:40:24 GMT
ADD file:472c130064cb85df56a1b1ccb16c8bfcf4913ccf37588ee121c7814681f7237b in / 
# Fri, 08 Feb 2019 09:40:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8337939a0aa76124f49a9b23fc873cabe47dbb0d56e7c88736d453ed0aee03e8`  
		Last Modified: Fri, 08 Feb 2019 09:41:51 GMT  
		Size: 83.6 MB (83629782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190207-with-sources`

```console
$ docker pull amazonlinux@sha256:a0194348f8b7302b89fc1563b8530c152c3494d15a45f9ac8a82751f8eece992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2.0.20190207-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3efdce8a1da808c4bfc3189bddc1804c05a5ba9deb2ba466b86ddc779058f970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410750872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae211d83d3609948a140e51b034f9d6e78a272b24436e4523cb5979d946d41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:19:44 GMT
ADD file:b91e6aa2e14a5b94c06cdf05085b4e613ed65daf7da829ce5e46aa31ba76be8f in / 
# Fri, 08 Feb 2019 00:19:44 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 00:20:01 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f1087751193a0b6a0cb74ec605641fefe4793bf6273748a13acec288182e2402`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 61.3 MB (61287959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece32bdfe8cdeb6aed9b5206c3f929bbd5fe8cf7c874706027f1a3f3b30f53b`  
		Last Modified: Fri, 08 Feb 2019 00:21:17 GMT  
		Size: 349.5 MB (349462913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2.0.20190207-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:d87e771dafa72a73d8c25ba4d9f09578ad5507b96edb3fbf3f25d1c69407854d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.1 MB (433092702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d01d4d1a7843b2e9a463c20a510f325c27184e6ac82194a9dc4a18a435db656`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 09:40:24 GMT
ADD file:472c130064cb85df56a1b1ccb16c8bfcf4913ccf37588ee121c7814681f7237b in / 
# Fri, 08 Feb 2019 09:40:26 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 09:41:05 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:8337939a0aa76124f49a9b23fc873cabe47dbb0d56e7c88736d453ed0aee03e8`  
		Last Modified: Fri, 08 Feb 2019 09:41:51 GMT  
		Size: 83.6 MB (83629782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5468cfe033924d5362bb067cc0d3f83097b3f0d25dc349800efb8ac4f61db95f`  
		Last Modified: Fri, 08 Feb 2019 09:42:46 GMT  
		Size: 349.5 MB (349462920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:a0194348f8b7302b89fc1563b8530c152c3494d15a45f9ac8a82751f8eece992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3efdce8a1da808c4bfc3189bddc1804c05a5ba9deb2ba466b86ddc779058f970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410750872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae211d83d3609948a140e51b034f9d6e78a272b24436e4523cb5979d946d41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:19:44 GMT
ADD file:b91e6aa2e14a5b94c06cdf05085b4e613ed65daf7da829ce5e46aa31ba76be8f in / 
# Fri, 08 Feb 2019 00:19:44 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 00:20:01 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f1087751193a0b6a0cb74ec605641fefe4793bf6273748a13acec288182e2402`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 61.3 MB (61287959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece32bdfe8cdeb6aed9b5206c3f929bbd5fe8cf7c874706027f1a3f3b30f53b`  
		Last Modified: Fri, 08 Feb 2019 00:21:17 GMT  
		Size: 349.5 MB (349462913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:d87e771dafa72a73d8c25ba4d9f09578ad5507b96edb3fbf3f25d1c69407854d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.1 MB (433092702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d01d4d1a7843b2e9a463c20a510f325c27184e6ac82194a9dc4a18a435db656`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 09:40:24 GMT
ADD file:472c130064cb85df56a1b1ccb16c8bfcf4913ccf37588ee121c7814681f7237b in / 
# Fri, 08 Feb 2019 09:40:26 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 09:41:05 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:8337939a0aa76124f49a9b23fc873cabe47dbb0d56e7c88736d453ed0aee03e8`  
		Last Modified: Fri, 08 Feb 2019 09:41:51 GMT  
		Size: 83.6 MB (83629782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5468cfe033924d5362bb067cc0d3f83097b3f0d25dc349800efb8ac4f61db95f`  
		Last Modified: Fri, 08 Feb 2019 09:42:46 GMT  
		Size: 349.5 MB (349462920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:2f2ffa29e33486df61a9f41e15733cad3ab04d7c8fb842fc5ec66fcb7aab4005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:49dba174c191dce771559e9e380495cedb6f31f31ac3c618fe0caf74f90ef9a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61287959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae18413445a2d6c91900e5cf62514fc176d0068e82b198f21f6f1d587a23f317`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:19:44 GMT
ADD file:b91e6aa2e14a5b94c06cdf05085b4e613ed65daf7da829ce5e46aa31ba76be8f in / 
# Fri, 08 Feb 2019 00:19:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f1087751193a0b6a0cb74ec605641fefe4793bf6273748a13acec288182e2402`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 61.3 MB (61287959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:latest` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:2df2f2f4e4fd739a3e251c5cc80605609771fcafdff50cab5ec934ed695e7574
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83629782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e37350e8319fbe84f4f45ea6631c6d34587033db7d6b958a749ad20d9a745f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 09:40:24 GMT
ADD file:472c130064cb85df56a1b1ccb16c8bfcf4913ccf37588ee121c7814681f7237b in / 
# Fri, 08 Feb 2019 09:40:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8337939a0aa76124f49a9b23fc873cabe47dbb0d56e7c88736d453ed0aee03e8`  
		Last Modified: Fri, 08 Feb 2019 09:41:51 GMT  
		Size: 83.6 MB (83629782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:a0194348f8b7302b89fc1563b8530c152c3494d15a45f9ac8a82751f8eece992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3efdce8a1da808c4bfc3189bddc1804c05a5ba9deb2ba466b86ddc779058f970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410750872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae211d83d3609948a140e51b034f9d6e78a272b24436e4523cb5979d946d41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 00:19:44 GMT
ADD file:b91e6aa2e14a5b94c06cdf05085b4e613ed65daf7da829ce5e46aa31ba76be8f in / 
# Fri, 08 Feb 2019 00:19:44 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 00:20:01 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f1087751193a0b6a0cb74ec605641fefe4793bf6273748a13acec288182e2402`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 61.3 MB (61287959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bece32bdfe8cdeb6aed9b5206c3f929bbd5fe8cf7c874706027f1a3f3b30f53b`  
		Last Modified: Fri, 08 Feb 2019 00:21:17 GMT  
		Size: 349.5 MB (349462913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:d87e771dafa72a73d8c25ba4d9f09578ad5507b96edb3fbf3f25d1c69407854d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.1 MB (433092702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d01d4d1a7843b2e9a463c20a510f325c27184e6ac82194a9dc4a18a435db656`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 08 Feb 2019 09:40:24 GMT
ADD file:472c130064cb85df56a1b1ccb16c8bfcf4913ccf37588ee121c7814681f7237b in / 
# Fri, 08 Feb 2019 09:40:26 GMT
CMD ["/bin/bash"]
# Fri, 08 Feb 2019 09:41:05 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-706502614691a67a409d283302e1d1b5af9cb5511f58e39e3b66fd16d043ce84.tar.gz"  && echo "a6434df3b1dce89d3e10f273b1e81f11be6735698c6517b90751d35bb4addfb0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:8337939a0aa76124f49a9b23fc873cabe47dbb0d56e7c88736d453ed0aee03e8`  
		Last Modified: Fri, 08 Feb 2019 09:41:51 GMT  
		Size: 83.6 MB (83629782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5468cfe033924d5362bb067cc0d3f83097b3f0d25dc349800efb8ac4f61db95f`  
		Last Modified: Fri, 08 Feb 2019 09:42:46 GMT  
		Size: 349.5 MB (349462920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
