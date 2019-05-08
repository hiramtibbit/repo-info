## `debian:experimental`

```console
$ docker pull debian@sha256:3a1b90b63b3833b02f09a0189f8bef0bb6c5fad1d562a2e8c5e0d3ff1227ce5c
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:31f549fa53265c73db94a0778bc9aa4923fa56845d94f30c1c2444234e80154b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50340298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba7a6f1db6d31854f84d42a2911c39838e3fe5c9795a03cda5ed29be4663d18`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:34:30 GMT
ADD file:53b7c4d30a6ca96d8ea43de4fb491d6df3a17e0c42329e03cea59351d121188d in / 
# Wed, 08 May 2019 00:34:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:34:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f661dfa5eb7d8d783f8ced856a17d3bebf3e7efec52f4e2d24d7b14c63c6183a`  
		Last Modified: Wed, 08 May 2019 00:38:31 GMT  
		Size: 50.3 MB (50340074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48436163f1279c9eac184df199798e42695638b9e830a12324309485e4395d9`  
		Last Modified: Wed, 08 May 2019 00:38:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:27dd4443917d416c6a80b072d76e84e411dee4c6206fdbd41bbfdc91a4c92080
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48001882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5c433e4f00cf13f5da47192f60506cbd845422880ae1ecbe783045e8b64fe6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:55:03 GMT
ADD file:eb2fc87a701c345a9fe2c7d96326b12f62bc5fcad69664a8944fcdc836a7463a in / 
# Wed, 27 Mar 2019 08:55:04 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:55:26 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:49c74efa5d94561bd01a2280292ee896c97728e7d910e82d4b2755f60d0ab8dc`  
		Last Modified: Wed, 27 Mar 2019 09:00:31 GMT  
		Size: 48.0 MB (48001661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2bb1c74bab0902410a89b1c75c7e52c16c8fdd43ad57676fc82df35212481b`  
		Last Modified: Wed, 27 Mar 2019 09:00:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:431aa0d51ecaa2efc1443157a2438eb5b30fdef8d9dbed0eccc0b8fc0a37b157
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45774980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c408138ad1351eeb26f244b2abb43058be8215b9a4ddece2053720618aa808f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:09:02 GMT
ADD file:48d7e298747a6b86e64168561521ac6fa9baa8b8741d94ffa8af94f5fa104b6f in / 
# Wed, 27 Mar 2019 12:09:03 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:09:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f20c912a8e527edb5fb1aea79e38d2c148e436d4f0378c162536c5ac3cbe6a04`  
		Last Modified: Wed, 27 Mar 2019 12:14:09 GMT  
		Size: 45.8 MB (45774757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbe14e042d0de42c70b2b7f1b5fc049922879b2329418fd689795f15130b532`  
		Last Modified: Wed, 27 Mar 2019 12:14:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:50cfdf15299ae072be42b8b0527e6827be309a4e25a02c928f943c093bc04faa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49075927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09199539bdd091e552587c091d8da34ec302b3c495cffdb403964eb04c3975e5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:48:56 GMT
ADD file:d89a5139b8027ff64c45d9499beaab3061966ec0e939c69c079215191ebb2767 in / 
# Wed, 27 Mar 2019 08:48:57 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:49:28 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e58ae526e6c0bc01f3eded05a3d50167d04d5339e8f03c6ca7c7cfee7446302e`  
		Last Modified: Wed, 27 Mar 2019 08:54:03 GMT  
		Size: 49.1 MB (49075705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57ab5256f280bf402c6e888ce8b8762038e59a0245ca1808cefe1aafda4f0cd`  
		Last Modified: Wed, 27 Mar 2019 08:54:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:9c7ab8aed5e236e5bf2da9ea26637020ea1d18b5410fa0653d35ad9dc2c0184f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51036510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2611781a1acfde9ad7058c5d2fac1c8fe799b18973af544888e2783f24e0ec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:44:29 GMT
ADD file:555e0f3110cbbedb20d91ff8037a698276c44a123e10a429533c24eb7b2a7969 in / 
# Wed, 27 Mar 2019 10:44:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:44:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:83fe35c15556fda7c586e6d8f4c6c3d0d0effffb6a479b594bd2f341a6e3e79a`  
		Last Modified: Wed, 27 Mar 2019 10:50:21 GMT  
		Size: 51.0 MB (51036291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51985212e2fc1244788103deefbfabcaae311e2831b76d2cfa0009ddc6c96888`  
		Last Modified: Wed, 27 Mar 2019 10:50:37 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:7b005b2fc2b6571580909540f6880dd99b85bb09c6cf6360c48c10d0fabb28a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54028095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e598adf8496d448bf405ff5b84e9a80b7c8ea8440753aca647249981933d9c4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:26:19 GMT
ADD file:ab0e490de5e9d79abd44faa515a770a2eba9c0a16e41d4f337f1c7706b8e5ba1 in / 
# Wed, 27 Mar 2019 08:26:25 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:26:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:31c65563083166122e5a8d0fe715ed564ddb846ba9b95c04e40dd7fa5baf6e68`  
		Last Modified: Wed, 27 Mar 2019 08:34:09 GMT  
		Size: 54.0 MB (54027871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8047125c2de691dd0b8e60051436c67b31776b2a7bfe69d08f74b280ab2126d0`  
		Last Modified: Wed, 27 Mar 2019 08:34:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:31c817c4b64c8a09155bdfbd05309e859ed03ad1697531e1a1067783788caf24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48849665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2e7aa8f4b88467eb2dbce9b2618118020a773f4563d68785d08937e8e204a5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:44:25 GMT
ADD file:621c1e21c8aee917baa5f9a6b64e0420b6cbf7f1155032460afe02976bb94422 in / 
# Wed, 27 Mar 2019 11:44:28 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:44:44 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f3e19e56f019ce8fc7e3b43938087895e41e2fa053ccfac4d071d583159d6dbe`  
		Last Modified: Wed, 27 Mar 2019 11:47:30 GMT  
		Size: 48.8 MB (48849443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f2e41224f70a86a779e399594c75d395b401f9b12c9f3c6587738e3dbf8332`  
		Last Modified: Wed, 27 Mar 2019 11:47:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
