## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:da19bf4ec566ebc1feff521ceef666c6db4f49301fc30b0a01795bc323339b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:b88552b211640ed84730f8bb68300683dd844c438e99bc5682741bf707f7094b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b460796b100389b0adf77646c6c1bd4305f3e839520679869e4f518654481c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:31 GMT
ADD file:e1a74c541aca2d1c69b3bf6feb417003acca4e423424f9d00045326e8faf427a in / 
# Tue, 04 Sep 2018 21:20:32 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:20:36 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:28d4b97455e66321891643ff178fcaf31d1d3142ba0fe1eec5b83ddc18faf58b`  
		Last Modified: Tue, 04 Sep 2018 21:24:06 GMT  
		Size: 54.3 MB (54252208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330593de329d08e7a7d34fbd06443332e480e1e470545cab4754b1cee23471ee`  
		Last Modified: Tue, 04 Sep 2018 21:24:11 GMT  
		Size: 227.0 B  
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
