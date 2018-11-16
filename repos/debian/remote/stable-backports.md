## `debian:stable-backports`

```console
$ docker pull debian@sha256:856d520fe7318fe9d92de90d9a44bf13b8b80875cd0fea0c43ebd63c14ca3aed
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
$ docker pull debian@sha256:7bbf3700bece62421fd8ba0a4d61714c9f64b365f16f92c435371b68e73638bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8c8e9acbedbce497a722113b4691fc5f1538326b49dca7f9e638dc1c655efd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:07 GMT
ADD file:0809091f9e3a6ab3c93f51563b6d053987622507feb5ec98ec06d9537004cddf in / 
# Tue, 16 Oct 2018 08:54:11 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:54:19 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a0700146d497b4cd40830f8e1917f54b325b415c363062108e7553fc5a3c391f`  
		Last Modified: Tue, 16 Oct 2018 09:03:07 GMT  
		Size: 44.0 MB (44033084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065106a6a027561289d31f8e640697df44121089e62c5539deabe455fc5b707f`  
		Last Modified: Tue, 16 Oct 2018 09:03:19 GMT  
		Size: 220.0 B  
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
$ docker pull debian@sha256:865acc4b24c94b453475d8f150008ae5330fe3cad9da5ff6efe3809577885301
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249424adab476d4cc220d6d20aebc93b3f04c3612e7adcb3c5aac8bbb2df349b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:42:10 GMT
ADD file:9e5ed8f10611122b584402d6a33adf8135b5ef8609e32cfcb922f54f37c30e17 in / 
# Tue, 16 Oct 2018 08:42:12 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:42:23 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ae9d67f09907eb4cecb3acc391e2b77f188b0b2c6474c4746128e521483ec3cc`  
		Last Modified: Tue, 16 Oct 2018 08:48:34 GMT  
		Size: 43.1 MB (43123647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7062efa2acfb515cdd6d64514070f67009b902afb203d8e454227fd1b5294e`  
		Last Modified: Tue, 16 Oct 2018 08:48:52 GMT  
		Size: 227.0 B  
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
$ docker pull debian@sha256:b7c93ce1509a112321d4395f79e7f54e83b7400c48bb47a9fab61ee2e5ec9f86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45200084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea45fc82ea7ec0b2f2b4cd24146fc144568996edaafbee9fe37cca305e3582b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:15 GMT
ADD file:66fcd6e9b192f6d375265242ba2f1c4f5decd827b56feb30a0e66569bb54a83f in / 
# Tue, 16 Oct 2018 11:42:16 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f4404fc493c522de555a3af372fd69ec609823ef9404b15c20958a170d4b41c5`  
		Last Modified: Tue, 16 Oct 2018 11:45:09 GMT  
		Size: 45.2 MB (45199859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca5d444a95e43cb28febcabca63284e9d9553d14ca44649c8a6aa40a4974fe9`  
		Last Modified: Tue, 16 Oct 2018 11:45:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
