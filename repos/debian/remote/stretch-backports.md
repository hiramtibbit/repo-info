## `debian:stretch-backports`

```console
$ docker pull debian@sha256:a61516d8e45e07b1838cc3014f328628718957eb1a45b7a2f5985511e72d7449
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

### `debian:stretch-backports` - linux; amd64

```console
$ docker pull debian@sha256:02b301fbc327cbb8ea5585db05274c5e86b86e5012d08a9f8719219af5578df4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45310279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7369af358cac4a84dd91e0c7b7d35a97068b2424b1dab1ab55c2d1a2df20098`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:21:28 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f010013929e59e156bf0cfdf129ceb1e9a209a42325cb019febb92883e26b3eb`  
		Last Modified: Tue, 04 Sep 2018 21:25:36 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:4e1aa6b3abe9d7d21150b319550bfc5f34fa4feff69f114b547349d6393b0b65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da07e7eb95f6e2328348a1c7cc6caccd3f299b27c2f39061bd72b9f804b70cf6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:56:02 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dc7fcb4acd574acf76381fd3f04b0e3ebf3bc18ad19200f7e6da109f6d07e6`  
		Last Modified: Tue, 17 Jul 2018 09:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:c90a786ce1e6b56acbb6c763c45613f3952cdae9805329ad9a72b690729fdd60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42061060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e73e7192caa0cf5c68824247317ead0cd3b9960c92af18cfbb6e4710a0e683`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:05:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df14214208f3dd69a6418cd7dcba321709b19c84a20ad0df82b677989e87589c`  
		Last Modified: Tue, 17 Jul 2018 12:18:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:023b2e39bdf5187dabbda7c57175df545a28052e2623c8067e0823de9475fbd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b8a68aad5920fc1a987a9a3d3289d361393a111d3340266c0a90036a32e470`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:47:38 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe4a193c0de30a0af64c20755076c9807e9ce6656e641ca9813b8e7251bd329`  
		Last Modified: Tue, 17 Jul 2018 08:57:07 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:a510931f2bfc4063f80f2600d82f22e647ed8ba419854cfd67686fc45abe2a4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46037744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c391cdcf8f8a2e8b94855e2b635522ec4937a975dea602ed0b7a71c48b930746`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:49:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaf2ad689a35401dc62d0cb84fad190d92f681f338d42f9833631f4e1e7488c`  
		Last Modified: Tue, 17 Jul 2018 11:08:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:ad200d8884634d9d795690e916f67e5b5e201ab6e9d9a7e8bc38c8afd3246121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45594279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8824bd1a82a745c93fa24704b6d66258569d533b27d776f82ca93af1edac5bca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:20:16 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce47d6dce0620e17f7cbe99999f79b691c39da7afd57b23559271a6133c91ba`  
		Last Modified: Tue, 17 Jul 2018 08:26:07 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:1365c4bb0b57b3f944e73e7b10ef1facb8fbd58d98542d3ae0b974c6e919273c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45198596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:487b64b675af47ada1fe76c3569e153adbcf6a788a2136e2a3327cb915349047`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:43:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2684a9bc191418bf0bd9cbfe49315424b7ff0d196d9a82b057da409e822aa598`  
		Last Modified: Tue, 17 Jul 2018 11:46:57 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
