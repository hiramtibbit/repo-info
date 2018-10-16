## `debian:experimental-20181011`

```console
$ docker pull debian@sha256:a27e3da1a11e2ed79828784cc11f66eb5dbdf4fc11f5d83c8aa6af1184a42511
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

### `debian:experimental-20181011` - linux; amd64

```console
$ docker pull debian@sha256:35c45f9831e366336c76d4cb542e32fc749e6c28d38a864159fcc19f6deb623e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49108110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be11c5f9dd356f32d97f122ed83a6849473b14f8da4a0866f77f67c10bf7456c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:25:48 GMT
ADD file:65e69e2aeccbe5227584336241565b944f1cdcb3ea6b0a7cda4dd730324a6b61 in / 
# Mon, 15 Oct 2018 23:25:49 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:27:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8bcabf193e3c9361ea2ddb9d0b9350bd3c496549db4376b79d57c8a22743ffb5`  
		Last Modified: Mon, 15 Oct 2018 23:36:18 GMT  
		Size: 49.1 MB (49107888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f478cfbe88bcb0a11c4ae68d01813ea5ea4694a13ac096a8296e20792673520`  
		Last Modified: Mon, 15 Oct 2018 23:38:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181011` - linux; arm variant v5

```console
$ docker pull debian@sha256:b9aca1931b2f1875130cd522f36546ab736f3f0bd897e5c09b40f27d705d8dd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46860831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1faef2797c894dc996ad4ad3893df633ddef4181f4a461a7f54c0d3024853c26`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:56:42 GMT
ADD file:d2fbf4485384353a561e90fea0d2ff852649a55c8882e331dadad6c683501994 in / 
# Tue, 16 Oct 2018 08:56:43 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:57:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:504f9c112f82ee8ad3d1c18e9811776063fcf1d146d6cc98e9db861df4214280`  
		Last Modified: Tue, 16 Oct 2018 09:06:24 GMT  
		Size: 46.9 MB (46860606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3fcef8ce57eb5423c2199f667e2e3a4c85ae9fdbb0c75f3ea3ac1f41fa9e2f`  
		Last Modified: Tue, 16 Oct 2018 09:08:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181011` - linux; arm variant v7

```console
$ docker pull debian@sha256:13dfa4b54dff926e9b1c1fe63f26ba85ddee498b8b2aa22bcbd774836279e54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44660725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5068b43923c3bd09c4fc69a825910ba7b6133160e98c5825143687965b3cd059`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:05:41 GMT
ADD file:da73e99c3cafcb2308b8342ca1efa632803c1d286ffdfabf39bde297dad77fb4 in / 
# Wed, 05 Sep 2018 12:05:41 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:07:00 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:bd948b436409072b360e9015b42556fc8ced65ec552581068542f9f6f99d918a`  
		Last Modified: Wed, 05 Sep 2018 12:14:55 GMT  
		Size: 44.7 MB (44660506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a579f2fac9905c406d54c796f55fff50b8b7e7eaf2c289f478a8817da000b0`  
		Last Modified: Wed, 05 Sep 2018 12:16:34 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181011` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:59579ac19b3127f91a3fd087d982a2b0f9420e9dc70259b5c38a8f323804b4b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47450666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6763087c9caa237eb38b6f4177e38715aee7175994fbaf43c01a8f13c38d91`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:44:53 GMT
ADD file:0131ae9423d7e0142e05c8ca0b7c466767c34906c43e6a221da411dae480309c in / 
# Tue, 16 Oct 2018 08:44:54 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:45:26 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:dcf9a70bb586ccc26691056d945a5e0da2e782a84b73549401d262fe60f58d72`  
		Last Modified: Tue, 16 Oct 2018 08:52:48 GMT  
		Size: 47.5 MB (47450442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20712a2496762aca5017bf905205e63bb14b2efd0b07d1209e91589f801f8e7e`  
		Last Modified: Tue, 16 Oct 2018 08:53:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181011` - linux; 386

```console
$ docker pull debian@sha256:bd184d5e17a2e5d1d5d87a8aca2a85b13f945c0f977d85272fd43847f8d182f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49800632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660588eb6d50caa14df963d1b8c8673d8753d0c697c785ce15cb2cf5259f242e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:50:59 GMT
ADD file:cc354deb02fcd778063f7e7bc826f1797702d9165d73fb4322bf59d103eb2642 in / 
# Tue, 16 Oct 2018 10:50:59 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:53:07 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e8922b8810a4ef00927958f01181443cf894b6a5852f63330a0cce7f2f5dbefb`  
		Last Modified: Tue, 16 Oct 2018 11:08:53 GMT  
		Size: 49.8 MB (49800407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4874c5a0a1e2d13c7dae10854c7513f8395c158aebbfad6e2a44c4fddbdcc82`  
		Last Modified: Tue, 16 Oct 2018 11:12:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181011` - linux; ppc64le

```console
$ docker pull debian@sha256:f068921782f321d586c25d43767b6c228e3d0381e2e557523b97a2de41d7a24d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52120912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba02afe4374c4bf2ecbfcb584764949e62cca3ebcee56aa3a9e6268acd2ca14d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:23:26 GMT
ADD file:7b3d3b46fe9fd7d3f2b7fe7ed5881c2c55e3d115538325734be443dfcc71051f in / 
# Tue, 16 Oct 2018 08:23:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:24:02 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:841fe9b085561e7fc6b81b12659ef2de30e40b62436c5a8a8983a19e85ed6d79`  
		Last Modified: Tue, 16 Oct 2018 08:34:16 GMT  
		Size: 52.1 MB (52120689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4776bd8fba865927bcadc8bfeafa4c0150b254ac5a9e151efa3549047b049d6a`  
		Last Modified: Tue, 16 Oct 2018 08:35:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20181011` - linux; s390x

```console
$ docker pull debian@sha256:79cc870ae243f4e1a09f44be13508a52314fe1c0032a8178dc276269bd9ebb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47670621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1694d89407c23168f5d4040202ab25554f4e85f7f8d3f94c5838cde53e24bca9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:45:37 GMT
ADD file:626186cb6b99408ee7019b36323b87afcd580f8bc88da5d2c216055ec53b2fd2 in / 
# Wed, 05 Sep 2018 11:45:37 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:46:07 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1a57d7c93a84307fdca02a9382202d1bb1a6bb0f83fa590292dcbb3cb9ba1d6a`  
		Last Modified: Wed, 05 Sep 2018 11:50:23 GMT  
		Size: 47.7 MB (47670400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c48e503730520755835d59a931f0e57e3feb5946ac217c733c6df2ba37d193`  
		Last Modified: Wed, 05 Sep 2018 11:50:50 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
