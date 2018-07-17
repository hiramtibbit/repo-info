## `debian:stretch-backports`

```console
$ docker pull debian@sha256:dfd7b0e286c0e9579ff3fcfb9488f798d434a019647b1196683072b599367920
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
$ docker pull debian@sha256:5423757fda90f0b17fb5b8133e0d5ea30824539cd8135f5a45391a2cad13c025
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45310269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d4053cbdad1359e1d666ea4d9567daa542932421230bb3dfdcc10729d5aded`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:27:41 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce6672e4de1a4ee750623ea8200a9d56172d51949f14e6f28ce71400dceb791`  
		Last Modified: Tue, 17 Jul 2018 00:43:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:08901b87a2f5152c4d72c3d8ef0c907172064ce25f1cebb162919741d436b4c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44040354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f9a96fd6baa69c1b032faf98f99ef9a1891c18358b3fafeb73f554b862c56f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:53:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d49daf6bfb1435f8742c0b717f83e2f8297154ebbc76592d2cae2aa880863e`  
		Last Modified: Wed, 27 Jun 2018 09:03:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:c68a7adef1bb02d0cefe0422f02deddf2948613cba7b1d08e92c161a4af9f919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3476a2e77d3070a5de9417cf4eb232c17985700f4d93409124d6438f91b13e6f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:03:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c179a306c37cd45a4a63e26a0b91de6a7d0936e9bf2b1afc2c462db8a34dd913`  
		Last Modified: Wed, 27 Jun 2018 12:13:18 GMT  
		Size: 224.0 B  
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
$ docker pull debian@sha256:0dd46af054620444f7576fa8cc5fc6acbbb8e6f79e1a92e7aab8cc4040b31a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46043632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331365691477012126b232f7fa654cf312ee715aefdfe7fc6a7059e34dfa8863`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:09 GMT
ADD file:e31bdc02d67afd009fa560f976e7806b5b12d66f88db5975faca53ada174954b in / 
# Wed, 27 Jun 2018 10:46:09 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:18 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d31b532b8fdc70bdf15f5dfb4d3a90c16c1ca474815949b52c7e90919e02aacd`  
		Last Modified: Wed, 27 Jun 2018 11:09:57 GMT  
		Size: 46.0 MB (46043410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d29b727e4b52433efa81402629c5166e1c42c80ecb77f68fb258a5c3bf2e4`  
		Last Modified: Wed, 27 Jun 2018 11:10:34 GMT  
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
$ docker pull debian@sha256:045dce8c780d872aa3cea1848fd312b47d22c924891bf6344dad9b37bea88399
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45181647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef00028625345e8c4a2acc48a9f15f3728fb567d532b5838a513db0f1a3372e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:48:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4748d0af0546a9edf96536133a5b5d3a5e1f04dfc5c80f50ed16f470ef36363f`  
		Last Modified: Wed, 27 Jun 2018 11:53:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
