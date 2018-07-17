## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:b90182a569e68faa79eecf9e575242eb233b13a10d225fd45677bfe6211abb38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:6966952fe3d9edf694ad21d2018de28d02edfb495feddc45b7fffc4da034ed22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1eb6745839a923bcdb5629dfb9a678169dd344f17759a3296f54a07f39df8a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:23:27 GMT
ADD file:85a75f7e7d0ec2cf59f1ef95d2de9cd4a0843c7da4fe42a8afc485459e6ab4fd in / 
# Tue, 17 Jul 2018 00:23:28 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:23:41 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a0d3ff3dcf70e966dd299717aab7e922a88307385cc8d4d7cdd5227b5c800e83`  
		Last Modified: Tue, 17 Jul 2018 00:38:08 GMT  
		Size: 54.3 MB (54252123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed223d1c1d11feff5fa20ee44ea39915d815c219581bae755dce56997920cb5a`  
		Last Modified: Tue, 17 Jul 2018 00:38:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:141593dd12b22b9e862080ec23f1b837ea112cecd9473ff55292ef8d5ef87e4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52448073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6077d277f06d8594b28c4c2a254716c1cee3deb75fba280fb93e86d2661771cd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:52:42 GMT
ADD file:5de60de98823f0c997e4b6848a58da0b5491d44bb1c3c5a7a119f80c9ac8ecfd in / 
# Tue, 17 Jul 2018 08:52:43 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:53:01 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:17900e174f2be8d515bc3365b9ce4b9eb8ac539a4f4ce2f3197167fa8b66a8c4`  
		Last Modified: Tue, 17 Jul 2018 09:05:04 GMT  
		Size: 52.4 MB (52447848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b3aaab6eefe416a5e71ffe6e23e33b7f4b8434fc055957378bd2126a4d584`  
		Last Modified: Tue, 17 Jul 2018 09:05:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:df9dc7e860514e107c643921593e2ae9193c10230be3e17f57df434878367253
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50188053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe76aca7d1a4be459931616f7d9fe5760aa9009fbc7d3537b520944de06ae632`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:02:17 GMT
ADD file:7f704747423f49359b73edea2b9bdbd278d0a9cb5a134e910c8a0fd5e0911e95 in / 
# Tue, 17 Jul 2018 12:02:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:02:32 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1bd495261f6f93b550f9e6f87f26f11cee86c8de2812716b2a0e87c4f73494b9`  
		Last Modified: Tue, 17 Jul 2018 12:14:19 GMT  
		Size: 50.2 MB (50187829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097072db40bb9cb0460d230058318eb5a55e2fd5c7a734d87e700ddc8b38f71e`  
		Last Modified: Tue, 17 Jul 2018 12:14:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:9cc4dd74ec676487d1140a7a3a9c58ff9ee3f34899077c55c4292dd573892bf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54483470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d0f471459d826ddb1e96f98ad0fc75a1dfa71264ac59678b6b91d9d6457b1b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:45:18 GMT
ADD file:eacbdcac01d59f80892d4440254eb5e5f4f41702549f8f98c8519e88f9122155 in / 
# Tue, 17 Jul 2018 10:45:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:45:34 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8515e61e9021245079c698ef1b6949b0a09cf9813e82465a300a3a61601577e4`  
		Last Modified: Tue, 17 Jul 2018 11:01:40 GMT  
		Size: 54.5 MB (54483245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7bc030d6cdea9ea86987d3ce9f1b3371a82ca0a3980b4b169bb94dcaada60e`  
		Last Modified: Tue, 17 Jul 2018 11:02:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
