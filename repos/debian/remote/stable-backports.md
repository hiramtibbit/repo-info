## `debian:stable-backports`

```console
$ docker pull debian@sha256:4e9a1b19ccdf0715dd4e3519de52be02b1d0d376a6a3c2c38c654402a6293f36
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
$ docker pull debian@sha256:2596a2891c8ca28b984fcccb4f61f05044a017114cf6321c93900ae5a738585a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69d3337565bfd975c12108635b4bfbe6f3ed8122032711e348419cb6602130f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:04:17 GMT
ADD file:5854ac0734acd67c40b02d23f3353897d0dc98d081b02ffb7203c31ae41e1e00 in / 
# Tue, 16 Oct 2018 12:04:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:04:31 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:894ecac1a20993b6a3ff5bd57a5adf8241896f52c7095c8be9a9a7deb98baed6`  
		Last Modified: Tue, 16 Oct 2018 12:15:13 GMT  
		Size: 42.1 MB (42063028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f975aa38ae635f681d5fcca1057d7e83098cc2f01950a425a4ce18ec911379b`  
		Last Modified: Tue, 16 Oct 2018 12:15:25 GMT  
		Size: 225.0 B  
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
$ docker pull debian@sha256:73f755a2c37d7cf296d684ea6f248b6178aba34fe457ff7454435faff157bf59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46039428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e649dca6de4172e0e1934b12ea60e163aed874938aee38ae11692b8fe21e3f51`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:46:50 GMT
ADD file:2480704e6776d669880048c049a37d99ad9ded4c2d7ada23687aa15e4ae00b52 in / 
# Tue, 16 Oct 2018 10:46:50 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:47:06 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f731ea8d7f5f7176facf26799769e8d903ac8b21607d607c9d5c6799daa202c5`  
		Last Modified: Tue, 16 Oct 2018 11:03:15 GMT  
		Size: 46.0 MB (46039202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbec0b40230c9e93c85eeada7fcf13502088785e83aa53561fe731f81e466649`  
		Last Modified: Tue, 16 Oct 2018 11:03:43 GMT  
		Size: 226.0 B  
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
