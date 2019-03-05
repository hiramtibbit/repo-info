## `debian:jessie-backports`

```console
$ docker pull debian@sha256:9b6f0b100c6548dc56b0ab2e49c43de21e2f3ad3dc7281550f021d2453b5097c
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
$ docker pull debian@sha256:ab2b5c57acf13b23dca556f1ecab91364df1da724a7233f7240cd364c8024540
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52574184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698b7bddaa5567ba692980580ed6a384f1ba190ad8612c0053834ec2fae6550c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:50:17 GMT
ADD file:f7240d0a65ef2d644ee15c5e025f905b560025993e28d43bc039fc0be058217e in / 
# Wed, 06 Feb 2019 09:50:18 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:50:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8c0cf499fb576f37b8316e741bf49d5edf55eaede22b863897521a97f30bc614`  
		Last Modified: Wed, 06 Feb 2019 10:00:22 GMT  
		Size: 52.6 MB (52573962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dc485e48075ec6fb802092a45b0a4a581c44d247a3ae942c608d19b7e2c9d9`  
		Last Modified: Wed, 06 Feb 2019 10:00:29 GMT  
		Size: 222.0 B  
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
