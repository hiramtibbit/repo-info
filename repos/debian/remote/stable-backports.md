## `debian:stable-backports`

```console
$ docker pull debian@sha256:c8c344664af27fe7ceabc005abaa27683ee53a03d269005b0d401be6c2e1eec0
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
$ docker pull debian@sha256:a7bff52893d7ba408594fb597ced943e5bd5ff2f18feab75e28663b5c9180e6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45320443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70fa0ce487504c9cde0ecad2255e5c828b2dd6ec4c710fd47019df7b1fd5028a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:41:45 GMT
ADD file:308bd6a55b052f212f1259ebcc844a5ede95c27c7f61528e11513cc9bfb74e6d in / 
# Thu, 15 Nov 2018 22:41:54 GMT
CMD ["bash"]
# Thu, 15 Nov 2018 22:42:31 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:24ba68623a54a2c0287421531065e7ed6c56ee3c7e1369e5569e68325da51934`  
		Last Modified: Thu, 15 Nov 2018 23:06:04 GMT  
		Size: 45.3 MB (45320222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e2b90f82e0529d1bb9cbdc151649cb402e8eab7631a99b45bef44319296b91`  
		Last Modified: Thu, 15 Nov 2018 23:07:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:82d2eb85da99290034ebd72f8a06c77502a120399dffa8e9b35182b7e5869cc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44031591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb6ec5c0e785e8940c7e037d2d2bdfe54c84ab8841952c3f166bda624c1ef6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:56:18 GMT
ADD file:b0676a52b19216731571c1a50b7ead49fd4ea85f9674cfbd1da5a0e07198c1c3 in / 
# Fri, 16 Nov 2018 09:56:19 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:56:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c9f04f003522349736926059ab58f7663769304f113db730c293c310dc0216e9`  
		Last Modified: Fri, 16 Nov 2018 10:11:01 GMT  
		Size: 44.0 MB (44031366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12108ca1fa5f577dd3efeaf692d4237e01c780a515353d69a14ab24a51760c0d`  
		Last Modified: Fri, 16 Nov 2018 10:11:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:9bbe359dba5288807d1ef82b02649aae66a779a8a5f63d204743f4a4a0b5e197
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42076391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a9950416deec0a53615e829254d3352cb2c6fadcae87cd6361d7cfc65684a0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:07:23 GMT
ADD file:19acf42c1a71f61bb2d1a9345f068a0a499dac80967a00a1833f90e28ac127c5 in / 
# Fri, 16 Nov 2018 13:07:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:07:39 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c45f571056c31fa9a2fd590d2a2c963781ee31b61e703ca7c4b5b1ef9c0b3df0`  
		Last Modified: Fri, 16 Nov 2018 13:20:00 GMT  
		Size: 42.1 MB (42076169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91e18cd6399ae8cc245605b27ef3ad2799dcd339d030843a98181f800f5411c`  
		Last Modified: Fri, 16 Nov 2018 13:20:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:4a450c1983b61d5aa009f641bc3eeb08f4f7469e7e8c7052223ba6ab052f58b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43116849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d689423e73fa549f211b89df3258205952d01c46616d7c45baa07ad860f76e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:11:42 GMT
ADD file:dc869081e3a6a7db175bfb09d179faef249b6300f1f5b7b6364e0a652bd69359 in / 
# Fri, 16 Nov 2018 10:11:43 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:12:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b662fae25834f3afb4f2ad909ed84aa1815fca46bf48983e2f1dbaa6ea4d7a89`  
		Last Modified: Fri, 16 Nov 2018 10:22:08 GMT  
		Size: 43.1 MB (43116625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157c0a04921997cd3b1670058e812281b25314046a1f6ebaa6dce41d911bab33`  
		Last Modified: Fri, 16 Nov 2018 10:22:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:e80e9798d2b6c43160f3b3a729a837ca5149f1517cfe3732c82a7a1dc35999dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46055501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4151e6f6b00230b6e76ae1f59212468278c53bea495c3ff23e08b4dca521436`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:33:51 GMT
ADD file:e6f7ae0db455d2c32851770810e281375a8ad24fdebed378620646e81e270a29 in / 
# Fri, 16 Nov 2018 12:33:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5aba52cd12cb6f2b8cf731752b12fbe5310db60017e35e2c0e64faa4cbffbf29`  
		Last Modified: Fri, 16 Nov 2018 12:55:57 GMT  
		Size: 46.1 MB (46055276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff32499c3e6b7e262fdb9373b8edfd28d3345ae5609f0612109836e7883f4142`  
		Last Modified: Fri, 16 Nov 2018 12:56:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:99b754ac2c5cd5837c06f99d80a31d661295acde179ae1cd19a05b2bdc995929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45606323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c97b3225f0005492486556ee4c85d569afe896e3363a39db36afb378a4e6e60`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:30:21 GMT
ADD file:bb154d4d18f5e4792ccd7913abad4224c9c945a25a0cbf12d90cbea2e7f427e7 in / 
# Fri, 16 Nov 2018 09:30:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:30:40 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:fbb7714847bd8425b97aacc64bc7a109568b7b10816053880a3d4698472f0a75`  
		Last Modified: Fri, 16 Nov 2018 09:39:04 GMT  
		Size: 45.6 MB (45606099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144369a91b58ebd5875a5be7aa1dc20a418e08ea133a4e518791d7b0ade9c1ad`  
		Last Modified: Fri, 16 Nov 2018 09:39:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:18e259e59ca2251a228e9e238781b0a3c2c7d34a13665e754f7ca50df65d79cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45205101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98555e666756e9dfd76fd5642e10d6467cac2e6b5835aa086254e54259171d1e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:09 GMT
ADD file:da93ffab87aefef14c65579b3a0284bc13dc476f76e682cda86626bb4b566daa in / 
# Fri, 16 Nov 2018 12:43:10 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:43:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e84b56a4550d031fff64d20d36a106411775f946470e9c72f87b594c6d05ab10`  
		Last Modified: Fri, 16 Nov 2018 12:47:43 GMT  
		Size: 45.2 MB (45204876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35739450f716b67f56a9aead6b2ef8ee78e2a0e4bbfe44769b398ffa141aebd0`  
		Last Modified: Fri, 16 Nov 2018 12:47:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
