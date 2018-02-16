## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:f5bd4e5b993a11299db5b09fb1251aa5d10a09ac621825126ad5e9610770b6ae
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:8f58bdcab27c6591d48411e7888cad48495fcbf713cbd0fa46b77f03bf0a77cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52608532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b871c9a6158a0709f41ec6d7f229f435b50c5e3475b331adc29fe09b637a8a6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:52:26 GMT
ADD file:10354e6fb6be6f4edca0f17a87339e58070ec95f1a87c0d37dcc6c84b3000f39 in / 
# Thu, 15 Feb 2018 01:52:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:53:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4e8428ad7a56b442cbf0b19e227f4ee6db57440edeaab190bab7a6355e467adb`  
		Last Modified: Thu, 15 Feb 2018 02:21:29 GMT  
		Size: 52.6 MB (52608307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e028164af05ad09c2942e5caecf3e1719752a3320259e3c3b56ed802da7db5`  
		Last Modified: Thu, 15 Feb 2018 02:22:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:31828adcc4657dc535b8963232ecfa8bf2a9b4bb7684384261f40a6d66f2f77e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50889872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d5976e772f862c52bf9632731142773def59ea7bfb5d099f0b883c94dc88c3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:57:41 GMT
ADD file:117c4dc01a383c3efc82807628e1803c1d9cc8d62f0e5adedcee2896b45d9308 in / 
# Thu, 15 Feb 2018 20:57:42 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:57:52 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e30e2f9d2e2660fbb3a048a728c470ef5d86e6d6d78c43b256882aa35cfd10ad`  
		Last Modified: Thu, 15 Feb 2018 21:07:09 GMT  
		Size: 50.9 MB (50889644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31c50b21c762bd9529f2e74c24515f50c7043b2104041315742484b09f2396d`  
		Last Modified: Thu, 15 Feb 2018 21:07:30 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:76862c1bdc7903962d8c60562c285353cd1c2003626710854961567c3cc5cf44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48701629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7bd5f8854f2af0dfae508068ec22b34f10d8cf7877e8380a3d8d1c38eef641`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:28:18 GMT
ADD file:faa647f715d5c9986dac3f4a1204b66d158d2241156e9321998e0cbaf9fb0920 in / 
# Thu, 15 Feb 2018 13:28:18 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:28:30 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7e8a68282b07fcf9d811107d4e49e25ab92215d7638104c5e6bbb852ccb25661`  
		Last Modified: Thu, 15 Feb 2018 13:38:10 GMT  
		Size: 48.7 MB (48701405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149d96b10bec015b5587f13496e27f7735924a96f2b98aa6b93db59beabee83b`  
		Last Modified: Thu, 15 Feb 2018 13:38:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:96ab9bb128f75a37e70eb1bac87e2b58d1230803ea73089ed3af769276fceea6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49934043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d2572b68a6e6c29e603bdf70021bd1ab6a240004e5632384ff4629f9e79363`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:25:20 GMT
ADD file:29163e68846cc29fa464cd793f4b6d7cef398788f81b39214f068118911021bd in / 
# Thu, 15 Feb 2018 18:25:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:25:36 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c73a95328d3f4d6354070c6d73c6e7ac476574e2ba095e8e9c687895696251a8`  
		Last Modified: Thu, 15 Feb 2018 18:37:48 GMT  
		Size: 49.9 MB (49933817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dde4334fe0be32a9c09677ccca97daa26c414b0b18a80a4e8634e9a32ed05f2`  
		Last Modified: Thu, 15 Feb 2018 18:38:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:a59be8ca877bba03ec3dbbbd91af1dabec5567dd0e5598353136df6a19942fb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52787946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f51901d0d4110bbe46be1a33a731f88107411bb6d0dbab36aa53628bf5475d4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:57:28 GMT
ADD file:13d184c50c8aa3b82af1810d9976b77e6a80b96cf9f74797e6fcf2b29a4d363a in / 
# Thu, 15 Feb 2018 15:57:28 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:05:11 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f6fe53e88218ee030746e8dff3efb89183447f5d4ce541b8c71c7182cf89bab4`  
		Last Modified: Fri, 16 Feb 2018 00:02:19 GMT  
		Size: 52.8 MB (52787722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5238378a3153d1ba47576ff85bba1e14ba18228a9a2aad631ed3a11415746a58`  
		Last Modified: Fri, 16 Feb 2018 00:18:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:99f31db1b1b657921cd937568f14d67acf7dfee0632576b85e17383eea21dede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51817315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4058d6de86cd89e7b868d9c5598491e4766bb4d11a261daf42fd80c23187523e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:37 GMT
ADD file:ce620289a05cd86343c463057ede90e7901ba231975a4297d1621ff6256a5687 in / 
# Thu, 15 Feb 2018 01:34:40 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:34:52 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a6f0a9b3ec0d2ef1cb8ab6aa8264252f10ddb3844b7c830f0bb890462632b0e7`  
		Last Modified: Thu, 15 Feb 2018 01:43:14 GMT  
		Size: 51.8 MB (51817087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7050b27490bec8ae5cfd4064a736af8d8d0c59ac887b68d0ce7bc807c1bdc1c`  
		Last Modified: Thu, 15 Feb 2018 01:43:30 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:c829b52e8f9c52c9835d703db830e5e39052a36458d0207406269956c8c25e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52795088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cd948fba387735885c154ad087eee80bfb22cd43e67cea357c4f809a9dbe07`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:00 GMT
ADD file:1f016ff64d2449ee1411701f2462125481fd795bc030cea59b7c11dc5fe038d8 in / 
# Thu, 15 Feb 2018 06:23:01 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:23:06 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1e801272594ea0ffbbb5c13e3d2b0e9c6cd7e7e0f47f41189a996cfa7c0a26ca`  
		Last Modified: Thu, 15 Feb 2018 06:27:03 GMT  
		Size: 52.8 MB (52794862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caec5a345b87e41c7865e61b1d519e10ec50fb430bae7d9941c7370efc914b1e`  
		Last Modified: Thu, 15 Feb 2018 06:27:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
