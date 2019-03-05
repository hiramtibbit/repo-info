## `debian:jessie-backports`

```console
$ docker pull debian@sha256:f7837bb10a30f9baf7c1f0ed21cd509a76cd1236730c9c9aee10a0bcbbc6cf85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:c1d91c8c0da6a98b1ad6e20e504d627432d4955c6f5d60cdff1263521db1a357
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54381883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb308fe1d830ea62e0b6d034c32a7de707d44a791e189641a423a7f5b48928b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:20:21 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba413056904bfefc73584736fc29ad4be882c21ae51c8c92f882c2f9d641a2a`  
		Last Modified: Mon, 04 Mar 2019 23:24:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:fd1cf3389008c0ed49d499a00437348d7e34fd6db5d4ca8901f276c50104e36d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52568509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1299a6984e2a2755bade6a0ac37cbcd4ed333c57398b247a243d6810222a2844`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:50:03 GMT
ADD file:66cba1ce0f57ac1885e087b1deba2b541e37c4eaf6eacf3f6677cb41af388c87 in / 
# Tue, 05 Mar 2019 09:50:05 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:50:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b7c40827a2a74bdfea27defa43e5568bacb59e6f9773735453da8b888b31d953`  
		Last Modified: Tue, 05 Mar 2019 09:59:19 GMT  
		Size: 52.6 MB (52568284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a18fb8345fe54e171395444889d350386f9250c1e927b281c99b8091b86466`  
		Last Modified: Tue, 05 Mar 2019 09:59:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a846128a3d70175e09b36d611da582d05311b4312fd21f57dbb21558457d065b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50291890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa15c43304924c9e14b6d38eb8d0f73b7b29eb6a16f0d5b6023c187c347acc0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:04 GMT
ADD file:e2ec14698f9dbf6f9e69be1417badea55f51ce760c6134600720d78041923242 in / 
# Thu, 07 Feb 2019 12:59:05 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 12:59:11 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9800246268d2ef744bda6da9d267fc24b9e904492c8abae95a2ea4e9a64a93ae`  
		Last Modified: Thu, 07 Feb 2019 01:20:17 GMT  
		Size: 50.3 MB (50291667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05106817e4756bd4c089e458bc1120dce5473c89099696e6083ad652ad05fac0`  
		Last Modified: Thu, 07 Feb 2019 13:07:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; 386

```console
$ docker pull debian@sha256:f3861bb80efc9e63d89779147f970276b06874b7957a0ab6f2b3c98706a42d7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54599818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da531989998c7287dd107747571cec09d615449374b5881efcf57267cb585a8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:36 GMT
ADD file:7ee301fb17cb469725296eb34fd4c88b06658dab08befc626157c94e1b1264ae in / 
# Wed, 06 Feb 2019 11:58:37 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:58:44 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0d2c60a99fbfd5389008365663b1914f58c65ad5174908669d2fd547813d4df9`  
		Last Modified: Wed, 06 Feb 2019 12:04:25 GMT  
		Size: 54.6 MB (54599595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58d56baafdd83f735ba3e046ac008a5f6d93f589bf18b6ced94a19256c406c3`  
		Last Modified: Wed, 06 Feb 2019 12:04:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
