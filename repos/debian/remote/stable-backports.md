## `debian:stable-backports`

```console
$ docker pull debian@sha256:028309916feeeb0e7d916a66162a50550a2e49ab02d9862f0400afb9651d72f9
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
$ docker pull debian@sha256:4d183b06364c822408a48187dced1ad7ceea3178092746e1f85f686ade8459f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45344934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b736fdee76f0972a6a88cb7ee55d0c9b0103b7d0b9fa3f49205ab73210e174`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:28:55 GMT
ADD file:94919c885751a82104efc734a8c65f09298a9b4777f2bbff207e4241633d0e79 in / 
# Tue, 22 Jan 2019 19:28:56 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:28:59 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b422a2cc25452af2e0070789b778fe7c1547d39689f55793d1bd55d32ae5dfd3`  
		Last Modified: Tue, 22 Jan 2019 19:36:23 GMT  
		Size: 45.3 MB (45344713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18d9b6d02ea8abaa74c02e648cb1b0e850bbeb98793c07c33a9716bb29c081b`  
		Last Modified: Tue, 22 Jan 2019 19:36:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:b9c549ee705d14c75e670ea662ce0c8039a6d759f54224f4436a21bc608b6d5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44053725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c40c55e994ed5d5be3a683c1a29cf96a07f7e9cdb83cdadd66fac07f97e4deb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:53:37 GMT
ADD file:a338ecbbee923405787d52997d6a31f57d70c1ec00882dbfd5946e7288957521 in / 
# Wed, 23 Jan 2019 09:53:38 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:53:43 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6a2d5cd31da9669ca7636bb731f98b8c60506101d041baa0fd0dce01b5116b8d`  
		Last Modified: Wed, 23 Jan 2019 10:01:29 GMT  
		Size: 44.1 MB (44053503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c5fd8c7a5e0e2686afd142e2d542311f9c3ddc01a184690c0baeb4aed312`  
		Last Modified: Wed, 23 Jan 2019 10:01:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ab48332fed46dbb6e51ebe43d3acd01e511566fe5d4ee14e684490c4753e66bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42074805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d2f3f819628f3600cc9bae3d01ab0957685f14149545f324cfcf4e72c1a30`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:03:31 GMT
ADD file:d32d0f39ac10fbdd0c0491cd1410a5c811e9c509f03eaacef33de0303b91119d in / 
# Sat, 29 Dec 2018 13:03:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:03:39 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a086f6e209591b54896aff5e0ce7523f1aa6e99bc2f5b06bf087df5fcfb01a6c`  
		Last Modified: Sat, 29 Dec 2018 13:11:47 GMT  
		Size: 42.1 MB (42074580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c585685d0ca2d83a08b121b9f03e445eb482cfd33f81c017f16ff6ba0fa18bb`  
		Last Modified: Sat, 29 Dec 2018 13:11:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:aed8ae05ece5be16eaeb8b6b34b77efd5d39aed02808ae85e770cd21af2722ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43125831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ce8bad570d8cd5cbddd9a41d78a3dc51a2dcb41db084963a86d6439d4a1e76`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:02:24 GMT
ADD file:c5cb8b480dcfbe935ae18d9e4ae55df1a6bec6e5a07f4b235b64ae939336fb95 in / 
# Wed, 23 Jan 2019 10:02:25 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:02:38 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3baabdd6b107e7dc71c949e655ed8b1919a28f49f1283fb67430f9b5d8a3e4f4`  
		Last Modified: Wed, 23 Jan 2019 10:10:21 GMT  
		Size: 43.1 MB (43125606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1dedb4b0daa9f8a7541b3122587bf903edd88cc7711edbd5b98c9a61c5e9218`  
		Last Modified: Wed, 23 Jan 2019 10:10:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:ff03cd9cb9b7781434241017e94d234f0bf2b3c3e7d2efb7dd86e6d50ed8b31b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46069740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d27467428f7526b2966b47f9dffc74e08b9627be34e4eeae5832fa951a8b9e1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:50:41 GMT
ADD file:7a106c407322c99bf1cda299079c8ce2cefc0320d7eb53cfb46e8ea24c77209e in / 
# Wed, 23 Jan 2019 11:50:41 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:50:51 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bb14efb162bd1b51c7b293831aa8d904d46d45cb111a703997b7a188e4d4a61a`  
		Last Modified: Wed, 23 Jan 2019 12:01:47 GMT  
		Size: 46.1 MB (46069518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6027b086f0e4730abb876f8d80fb715759f9d296f15913907349515240cb7f`  
		Last Modified: Wed, 23 Jan 2019 12:01:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:eca54e91d498551514f4d1ae38d05808aaacd8acbbc4ba1910c7fffc0936b823
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45617093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedef52ae74cfa490841da29d752435a5c22069a1652f2070259c96c4966af95`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:05 GMT
ADD file:9b77522053ee7d5a67abe9cd1d45d2f9b07a0e288a39538ca7b75be5e0319a81 in / 
# Wed, 23 Jan 2019 09:26:08 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:26:19 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:08dfdff13a4c3aa682404207f59b2939739ffcfa5c32846c5c9c361cb3183730`  
		Last Modified: Wed, 23 Jan 2019 09:31:52 GMT  
		Size: 45.6 MB (45616867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f347bac6a5d58a68ce2a68ded891b569e71f941f37c2b4918ec0a1b779b77a`  
		Last Modified: Wed, 23 Jan 2019 09:32:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:3f9ad76e029dd48584577ad2a76237d0c310d3f833a6f07f6750783fee05633c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45215010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c087fd6a0ed914d133d8ff9857c628c71c80a40f5ad0bb2564bbdfc0cd4d3ca1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:43:13 GMT
ADD file:fabcf582fb3859c118d77710bfa8ad964a947f02ccae946c335321b3fe2cdf4d in / 
# Wed, 23 Jan 2019 12:43:14 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:43:25 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6cf9fd7aa362657ca8a37e9ea76bd618ea7384c7647c43320eaa773d74e8435c`  
		Last Modified: Wed, 23 Jan 2019 12:48:09 GMT  
		Size: 45.2 MB (45214787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8286096306e3f38ee661ae90a70f8098662f4c7e90dfc80137711330648bd983`  
		Last Modified: Wed, 23 Jan 2019 12:48:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
