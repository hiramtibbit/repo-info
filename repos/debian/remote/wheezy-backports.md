## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:645402f299a1daf8feb68e30ddd197d3e3079670df5238a14cb3e3a35cf9d501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:6c4743e68a4cb0c06a746d0bca1e4cca39907afc38236b09682e7977f7d6bc5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a9c139b35b8c3449bebfd71b3f493af8d2563f9893cac88a2287c28d8f2b3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:26:37 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15a975e6f7158e2fc9eab374389a10ca26a2d702710a21b0317a5236d45b44d`  
		Last Modified: Mon, 15 Oct 2018 23:37:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:393229e0277dae4150d1eb6e2c09d5253178c46a15b84d2ea5e19a6556a7e111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2224080e7dc7d1472f6f9a5f2da58e982354b9fbbc15e5ffb0763befab4bdc9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:57:27 GMT
ADD file:a9547253621c5e98ced338e1642b75814f0a522a1c3c2450209e6ecc86dcf865 in / 
# Tue, 16 Oct 2018 08:57:29 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:57:35 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6a0053223045d511a3aeec9d8c41fee58a3e0832612eaf45036ed25b30ffc51d`  
		Last Modified: Tue, 16 Oct 2018 09:07:09 GMT  
		Size: 38.0 MB (37993627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b976ef52bd138f6593585372c4317a459f681fda92071326f17db3286358499`  
		Last Modified: Tue, 16 Oct 2018 09:07:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:98f26d20ae74d71727c5d264fe7b84b5374ccf015942f471a1e7e37c5b73f431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7423d5ef343b9df93bcacb434580bc53d8342d44a601b8af5eedbf519c724859`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:06:21 GMT
ADD file:0f03b0fad93abdeea4254956f6ebee6e15d3c63c5b64bc6d973a664168700342 in / 
# Wed, 05 Sep 2018 12:06:22 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:33 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:282e383dda957a59e300c3642bf38cce411c9792f7ea952f837854e3effd85b2`  
		Last Modified: Wed, 05 Sep 2018 12:15:34 GMT  
		Size: 36.6 MB (36620285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1ad9c1107a6d7281d6610d4f3aa3b2a0bb740403c67b4b98b5260b543368db`  
		Last Modified: Wed, 05 Sep 2018 12:16:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:809d3efdc78d6c4032493e9fb3dd26b98d1d35796027d09ba317e5cc097be4c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bbb0813de951801fa90fcc1a2a724a7a22146c1551bf7689d1f4c6c14a7791`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:52:08 GMT
ADD file:802fa935f1c519c7f94aaeea65d44725095f32d1f2af893dc2039a760dd79742 in / 
# Tue, 16 Oct 2018 10:52:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:52:22 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bcc2ae1457e5537ae226201c76b3020749f51c0286a8026bfc95b92fa3ee382a`  
		Last Modified: Tue, 16 Oct 2018 11:10:17 GMT  
		Size: 40.5 MB (40532875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac44aa5952140c0041b270652d160f822a76b941cfd89d9662c17320735466`  
		Last Modified: Tue, 16 Oct 2018 11:11:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
