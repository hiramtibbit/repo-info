## `debian:rc-buggy`

```console
$ docker pull debian@sha256:c106ee4cd1b5fc971fb872fb3ddc28bc0315a564ee14921e80026aae6c7ea2df
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:568bb4e321c30812e398dea2efc8f6f0f727ca0ec0a806fdacaf0eed94cb6dfe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50340381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0617726409b6efc99375821cfd64d78446bc5936f3248f7d4ceb29ebed5765e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:31:47 GMT
ADD file:fb47fe44d1e6b6b670253c11516570b51b7f0fb8b982c3f5d384146343df5f5b in / 
# Wed, 08 May 2019 00:31:47 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:34:55 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:0e46e397f892870613903a2484edb209778048886e5d00b27f9d4393280c94f8`  
		Last Modified: Wed, 08 May 2019 00:36:58 GMT  
		Size: 50.3 MB (50340155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58848f599164af781dcf211ea07c3a9f58029b5254bce88d3d5c49fe8fee292e`  
		Last Modified: Wed, 08 May 2019 00:38:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:5493e7a1b75e36886ec75e8b9708cbf0e706529689128f3259e6f4f655c1c751
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48050259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e90cfae7c5ff39ac8adb61b6643b611d7803fea677c1c079421f113660bb9cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:51:39 GMT
ADD file:9413922e0450a981af5b854fd02d6462ae98edbc50dd0c86aa6b3a8980832488 in / 
# Wed, 08 May 2019 08:51:40 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:55:27 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:9496df20a2df40133d2e133f1a23a2da3ac7d28df6d3546c7c2c7472da72acb9`  
		Last Modified: Wed, 08 May 2019 08:58:06 GMT  
		Size: 48.1 MB (48050033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c94e7a0f4161b7a25fc720f2f11f636bc99573173a016ea7d190ff608039d0`  
		Last Modified: Wed, 08 May 2019 09:00:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:ce881183fb39a74bd14a1ff52a6f0e0a48f954ee433878b994dc4d3dc8b94790
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45775049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9801f62151fb29ce1a914235f330a0590f281bfbe191a6127d2351a2625954`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:05:39 GMT
ADD file:a03e2558b36105c53a68a3064a22313273ed3d28e338785fc91b482aafc646ce in / 
# Wed, 27 Mar 2019 12:05:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:35 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:10b13a095ef589d26e82bbb83fae57a71c62e84dac2b1fb806528f2b9b7632e0`  
		Last Modified: Wed, 27 Mar 2019 12:11:57 GMT  
		Size: 45.8 MB (45774821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf7fab2bb33ccfb042815ed0151b6e7b9f1233da5a1374efce910d4592393a3`  
		Last Modified: Wed, 27 Mar 2019 12:14:30 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:47329afdfe23fe558c21a4d7b3cf15dc9da9b00594858a83dcf7ff01303157a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49132297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce00545f4d428d34d59b31ed6890c05b4c78293638700c1565b31d5f0deedc9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:46:04 GMT
ADD file:b772d60d99de58b0a77b838a9ea76bd80e74fea967941bf2dce602f95189ef47 in / 
# Wed, 08 May 2019 08:46:05 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:51:30 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:af42c3f242f1fc5a2e7df41c4d9800290f2083187f3b36bce1cb6b2248ff6d7d`  
		Last Modified: Wed, 08 May 2019 08:53:12 GMT  
		Size: 49.1 MB (49132069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc8c99f8225b202008191909db0428ea46625ca7e66df2844f1965b5acd40ae`  
		Last Modified: Wed, 08 May 2019 08:57:15 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:4fcbaf5b42ed0f5e689471290b01d71095a57418fb88da96500ee9d1924b4a7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51036476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550162fbcc705776639a02c1516b7c28d645f7c316599957fa0eed837969fb40`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:41:58 GMT
ADD file:35788f1e7dcbb1ec1f7f2defd3659b41f24da20c68bfeab196967df87fc8e51c in / 
# Wed, 27 Mar 2019 10:41:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:44:57 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4a9b095f08b70612fc43d5a6994ce29ec5bf30a08f4d667c9001e554c1087a6b`  
		Last Modified: Wed, 27 Mar 2019 10:48:02 GMT  
		Size: 51.0 MB (51036251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a57fdccfa652829b705c54a14f7068c72810a98f446c3571ee504fbda3ffe0`  
		Last Modified: Wed, 27 Mar 2019 10:50:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:aa59b8ae9a21c4663b1d45dc46942749ceb6db785c8aa59c22da184a4667a4de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54088373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9db31f1e0f3561943b8d7bee5d5aa31b8ae9e067912e7b5a871204b20beaca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:42:47 GMT
ADD file:c99dbe1b73c7a35a3f4e74bbef02cab9950a1c98285237d8928d02383222cff8 in / 
# Wed, 08 May 2019 08:42:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:21:00 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:63baec0b4ca333a8d154c08de08e8645347b16b8f6a5efb1ba682884b2dba2a3`  
		Last Modified: Wed, 08 May 2019 09:23:27 GMT  
		Size: 54.1 MB (54088145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149b149e54d781e020155bc4d2010696afd25264bf7dc679ec5679755937130f`  
		Last Modified: Wed, 08 May 2019 09:29:21 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:973de1c714d3998ae4764276873c8be526366176c167fcd5ee51837289dac2a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48849661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97653bb5f853b50da4a2e3f82985fd024d0571a52308504eb938831d4319ae6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:38 GMT
ADD file:36dcfde5a08a63c13bc857704c7de28a5770bc391a4ba334cc504fa9b2e753d6 in / 
# Wed, 27 Mar 2019 11:42:39 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:44:49 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c261d71864e6171524f880b50b73807b618879f2c3f338e41e3a336f232a2e71`  
		Last Modified: Wed, 27 Mar 2019 11:45:45 GMT  
		Size: 48.8 MB (48849433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a2f590fc3d4a6a504b770181a27beda10201be6c1883834f099d53a70de38d`  
		Last Modified: Wed, 27 Mar 2019 11:47:50 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
