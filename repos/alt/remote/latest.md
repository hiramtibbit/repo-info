## `alt:latest`

```console
$ docker pull alt@sha256:06903b9993653846e37e9e90ee95c502366473000a94ec965ce47836f36d0519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `alt:latest` - linux; amd64

```console
$ docker pull alt@sha256:1b54c9465c9222316dc597efdd8bdf085146c67da4e6062583c551984f8b6c1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42170786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699157b06f921d57cbeb846e48e3cae4e3029047d6e8319c58b42805e1844c4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 26 Sep 2018 21:19:34 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 28 May 2019 22:19:41 GMT
ADD file:536def5b450337a176d5bb2449c8763e6721d03d985c790547ab74c3e0c00fff in / 
# Tue, 28 May 2019 22:19:42 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 28 May 2019 22:19:42 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:74dbbda2cd0b08f5883917633ce52955a658c1c1a1acc74fde8aa390f8ccbe8e`  
		Last Modified: Tue, 28 May 2019 22:20:21 GMT  
		Size: 42.2 MB (42170602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190309bf9ee23dae25fe8f23658e4c0ec1750f4bc905ed6dd93c255c4447e6bb`  
		Last Modified: Tue, 28 May 2019 22:20:14 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:latest` - linux; arm64 variant v8

```console
$ docker pull alt@sha256:7f19f8be30bf40b7f67c0a0fd8fe04c5c8f8989a0b0b1ffdbb8bd0506f9bfd1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40914049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb290d4f71e91c2769620298fad207c6ef10b6c7bb9372c763e0a718cf581b08`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 28 May 2019 22:39:34 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 28 May 2019 22:39:38 GMT
ADD file:70bb052bf3e44e4cba35203da7b9ff209efbeb4365ff1c3fef522d1a3d635971 in / 
# Tue, 28 May 2019 22:39:40 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 28 May 2019 22:39:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:02fdb95ee23eb28ebf69e039fbeb6ebb00435ab9f5a0f217fe6839ffb2dcede0`  
		Last Modified: Tue, 28 May 2019 22:40:23 GMT  
		Size: 40.9 MB (40913865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92985f910050b4ebe487f0d0c47842d5a35d8fb9f0e43ffe3cf86250d939da33`  
		Last Modified: Tue, 28 May 2019 22:40:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `alt:latest` - linux; 386

```console
$ docker pull alt@sha256:9b9e8e2ee41b982fe6a012b07b4ea3bd1caad50fa7260acb370c9c9a918e0459
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42305768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78f74fb910433873b7b448da4a3c271179443b2336fa8d33001e3c22cba7ef4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Sep 2018 10:38:37 GMT
MAINTAINER [Alexey Shabalin <shaba@altlinux.org>] [Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>] [Mikhail Gordeev <obirvalger@altlinux.org]
# Tue, 28 May 2019 22:38:36 GMT
ADD file:ab74feca632ea9802dadd5f5a9b7aff07389d107f02334b0a34842b59c99bb97 in / 
# Tue, 28 May 2019 22:38:37 GMT
RUN true > /etc/security/limits.d/50-defaults.conf
# Tue, 28 May 2019 22:38:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6660ca2fec9c032e72b560d19568114bfc37780f614419ef843e948dd76c8ea1`  
		Last Modified: Tue, 28 May 2019 22:39:23 GMT  
		Size: 42.3 MB (42305586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387475edbc9081a21e91b7a3448e38f92f02ae3d82e30f0e4bf25f4b9f3b907a`  
		Last Modified: Tue, 28 May 2019 22:39:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
