<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20190118`](#amazonlinux201803020190118)
-	[`amazonlinux:2018.03.0.20190118-with-sources`](#amazonlinux201803020190118-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20190115`](#amazonlinux2020190115)
-	[`amazonlinux:2.0.20190115-with-sources`](#amazonlinux2020190115-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:ae58ea6513d8c17b21ef5e0c1f4b28256d8292be8017ee2b6990385df5c6b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2742bb85ea277c4451dc3e09a01327c9323ee72f63f8992a73d35f45c10ba643
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61841670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae668836315dd138ee4ba5b33e1708028401bee1dc7870c93d2a7238c57981fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:23:26 GMT
ADD file:3aed32e11fa3a1bbd76dcba520d58b7be25dddaacec96a3fa40912e7c4446c9b in / 
# Mon, 21 Jan 2019 20:23:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5508a7b28d7374576051108f67b80de44ed810f81769cce96474398315ec7f1f`  
		Last Modified: Mon, 21 Jan 2019 20:25:10 GMT  
		Size: 61.8 MB (61841670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:6a08655cbd32e7c4ce147dd2002f7023c3a75bfc98325f109430e3eab817d568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:d57670e4ae1d088f2b1c474972d737ad719430c753e2e34fb8729db01dc48390
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.1 MB (386102375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a90c75cc0b18d69fb889f321e1c90a2cb1e6dfe60f07cf8e666413644a3f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:23:26 GMT
ADD file:3aed32e11fa3a1bbd76dcba520d58b7be25dddaacec96a3fa40912e7c4446c9b in / 
# Mon, 21 Jan 2019 20:23:26 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:24:03 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-7c80178b5a15821ceaab518bce05b24ee51c41aeef9aaf1f7fd2c58082d79160.tar.gz"  && echo "7c80178b5a15821ceaab518bce05b24ee51c41aeef9aaf1f7fd2c58082d79160  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5508a7b28d7374576051108f67b80de44ed810f81769cce96474398315ec7f1f`  
		Last Modified: Mon, 21 Jan 2019 20:25:10 GMT  
		Size: 61.8 MB (61841670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8d83267c43d7c06e936e5db6dbcf8e40702b08123819acf412b3c659685f06`  
		Last Modified: Mon, 21 Jan 2019 20:25:34 GMT  
		Size: 324.3 MB (324260705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:7fa652b2623b9cdf7bef5ff047faac1a4c2fc3cfa1d03b9c9e31e9b83333fe8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:4f7afbd52d9840919a15f76e97de9174b1658f7069948b35c195ca3e71f538b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61281937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df7d0b6ddeee853755155747b332882d4ed84813748e76ca74d6939d0157deb6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:ae58ea6513d8c17b21ef5e0c1f4b28256d8292be8017ee2b6990385df5c6b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2742bb85ea277c4451dc3e09a01327c9323ee72f63f8992a73d35f45c10ba643
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61841670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae668836315dd138ee4ba5b33e1708028401bee1dc7870c93d2a7238c57981fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:23:26 GMT
ADD file:3aed32e11fa3a1bbd76dcba520d58b7be25dddaacec96a3fa40912e7c4446c9b in / 
# Mon, 21 Jan 2019 20:23:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5508a7b28d7374576051108f67b80de44ed810f81769cce96474398315ec7f1f`  
		Last Modified: Mon, 21 Jan 2019 20:25:10 GMT  
		Size: 61.8 MB (61841670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190118`

```console
$ docker pull amazonlinux@sha256:ae58ea6513d8c17b21ef5e0c1f4b28256d8292be8017ee2b6990385df5c6b2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190118` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2742bb85ea277c4451dc3e09a01327c9323ee72f63f8992a73d35f45c10ba643
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61841670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae668836315dd138ee4ba5b33e1708028401bee1dc7870c93d2a7238c57981fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:23:26 GMT
ADD file:3aed32e11fa3a1bbd76dcba520d58b7be25dddaacec96a3fa40912e7c4446c9b in / 
# Mon, 21 Jan 2019 20:23:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5508a7b28d7374576051108f67b80de44ed810f81769cce96474398315ec7f1f`  
		Last Modified: Mon, 21 Jan 2019 20:25:10 GMT  
		Size: 61.8 MB (61841670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190118-with-sources`

```console
$ docker pull amazonlinux@sha256:6a08655cbd32e7c4ce147dd2002f7023c3a75bfc98325f109430e3eab817d568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190118-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:d57670e4ae1d088f2b1c474972d737ad719430c753e2e34fb8729db01dc48390
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.1 MB (386102375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a90c75cc0b18d69fb889f321e1c90a2cb1e6dfe60f07cf8e666413644a3f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:23:26 GMT
ADD file:3aed32e11fa3a1bbd76dcba520d58b7be25dddaacec96a3fa40912e7c4446c9b in / 
# Mon, 21 Jan 2019 20:23:26 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:24:03 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-7c80178b5a15821ceaab518bce05b24ee51c41aeef9aaf1f7fd2c58082d79160.tar.gz"  && echo "7c80178b5a15821ceaab518bce05b24ee51c41aeef9aaf1f7fd2c58082d79160  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5508a7b28d7374576051108f67b80de44ed810f81769cce96474398315ec7f1f`  
		Last Modified: Mon, 21 Jan 2019 20:25:10 GMT  
		Size: 61.8 MB (61841670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8d83267c43d7c06e936e5db6dbcf8e40702b08123819acf412b3c659685f06`  
		Last Modified: Mon, 21 Jan 2019 20:25:34 GMT  
		Size: 324.3 MB (324260705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:6a08655cbd32e7c4ce147dd2002f7023c3a75bfc98325f109430e3eab817d568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:d57670e4ae1d088f2b1c474972d737ad719430c753e2e34fb8729db01dc48390
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.1 MB (386102375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a90c75cc0b18d69fb889f321e1c90a2cb1e6dfe60f07cf8e666413644a3f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:23:26 GMT
ADD file:3aed32e11fa3a1bbd76dcba520d58b7be25dddaacec96a3fa40912e7c4446c9b in / 
# Mon, 21 Jan 2019 20:23:26 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:24:03 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-7c80178b5a15821ceaab518bce05b24ee51c41aeef9aaf1f7fd2c58082d79160.tar.gz"  && echo "7c80178b5a15821ceaab518bce05b24ee51c41aeef9aaf1f7fd2c58082d79160  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5508a7b28d7374576051108f67b80de44ed810f81769cce96474398315ec7f1f`  
		Last Modified: Mon, 21 Jan 2019 20:25:10 GMT  
		Size: 61.8 MB (61841670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8d83267c43d7c06e936e5db6dbcf8e40702b08123819acf412b3c659685f06`  
		Last Modified: Mon, 21 Jan 2019 20:25:34 GMT  
		Size: 324.3 MB (324260705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190115`

```console
$ docker pull amazonlinux@sha256:7fa652b2623b9cdf7bef5ff047faac1a4c2fc3cfa1d03b9c9e31e9b83333fe8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20190115` - linux; amd64

```console
$ docker pull amazonlinux@sha256:4f7afbd52d9840919a15f76e97de9174b1658f7069948b35c195ca3e71f538b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61281937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df7d0b6ddeee853755155747b332882d4ed84813748e76ca74d6939d0157deb6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190115-with-sources`

```console
$ docker pull amazonlinux@sha256:924e494b898dbc67ba6ffd84f73bb6c32213b6c2cd131f1a5aef22559776cd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20190115-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:9bff3426d4f1b156f9d130378d8faf7cfdd1fb7ab93c9dd922e292a9a158ded3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410743064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8b13cef0221bd61601ff46e36338ffd6fd9fb4cf31ed824a0efdc6b0f6493`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:22:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f.tar.gz"  && echo "1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ab8f1636ee0594785aba989f940e5f874cb5c185418a6da33391617a5ec7`  
		Last Modified: Mon, 21 Jan 2019 20:24:51 GMT  
		Size: 349.5 MB (349461127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:924e494b898dbc67ba6ffd84f73bb6c32213b6c2cd131f1a5aef22559776cd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:9bff3426d4f1b156f9d130378d8faf7cfdd1fb7ab93c9dd922e292a9a158ded3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410743064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8b13cef0221bd61601ff46e36338ffd6fd9fb4cf31ed824a0efdc6b0f6493`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:22:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f.tar.gz"  && echo "1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ab8f1636ee0594785aba989f940e5f874cb5c185418a6da33391617a5ec7`  
		Last Modified: Mon, 21 Jan 2019 20:24:51 GMT  
		Size: 349.5 MB (349461127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:7fa652b2623b9cdf7bef5ff047faac1a4c2fc3cfa1d03b9c9e31e9b83333fe8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:4f7afbd52d9840919a15f76e97de9174b1658f7069948b35c195ca3e71f538b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61281937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df7d0b6ddeee853755155747b332882d4ed84813748e76ca74d6939d0157deb6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:924e494b898dbc67ba6ffd84f73bb6c32213b6c2cd131f1a5aef22559776cd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:9bff3426d4f1b156f9d130378d8faf7cfdd1fb7ab93c9dd922e292a9a158ded3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410743064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8b13cef0221bd61601ff46e36338ffd6fd9fb4cf31ed824a0efdc6b0f6493`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:22:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f.tar.gz"  && echo "1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ab8f1636ee0594785aba989f940e5f874cb5c185418a6da33391617a5ec7`  
		Last Modified: Mon, 21 Jan 2019 20:24:51 GMT  
		Size: 349.5 MB (349461127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
