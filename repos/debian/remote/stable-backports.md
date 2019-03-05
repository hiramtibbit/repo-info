## `debian:stable-backports`

```console
$ docker pull debian@sha256:c78d201a93538183fd37db2e5346c9083b530fc227ba84099c3e8957bb054f4d
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:e6d1f9597a57924d6b6aac00ccb188ffc2e73b0d8174dc9eddb1675994bdbe29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45342774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d6b0600c60138d49ea1ea81e156c7c126c4f70e72e3149dc95e174001769f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:47 GMT
ADD file:f368d8508c6a941eb852687bd0835004e711b64d10d755117d16b5cccbcc4aae in / 
# Mon, 04 Mar 2019 23:21:47 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:21:50 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:aac617f8dc583a7a96948daf1003f9442355ca335206ccea3d1bc37b17c39fdd`  
		Last Modified: Mon, 04 Mar 2019 23:25:58 GMT  
		Size: 45.3 MB (45342551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ab6c71d68fa7542bd4ebd5daef80d884d57aa6f75d1dfd0dff91e49181508`  
		Last Modified: Mon, 04 Mar 2019 23:26:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:6e102e20f31a2ef26ddeb3c9db3dbc58442ed9b029471bcd3a2eddc4573ca27c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44030001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfebffe44e6ba2ba6485d49e5f72a88ca49bbc6cfcb8141db3e30cd6bbd2e608`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:53:48 GMT
ADD file:fb58dab16e1ab9da56506494d7f0adc744816daa7b210d80df7ac4673e64b212 in / 
# Tue, 05 Mar 2019 09:53:49 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:53:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6193ab9c89019e38f437ef1834d624e2a3423293eecf1ab1d559bee258a06e0b`  
		Last Modified: Tue, 05 Mar 2019 10:01:53 GMT  
		Size: 44.0 MB (44029779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f56c70bec73dfaee07abdabaa1b2c36c97e4bac233a0848ab09dc8456e1571`  
		Last Modified: Tue, 05 Mar 2019 10:01:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:799325861c117ca46edb3d5ebf729472a67f1d75b08fb953b24c19c2d8e43fa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42087106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22da8d431a0dbef02cb3947fbbaf85a6dd08865729e8e0d1bf7fcc05c39fa5c7`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:02:22 GMT
ADD file:9504a4028d7cb61fa74dab135e9990e5e8c6a816a22482cf26f9593fe9511be8 in / 
# Thu, 07 Feb 2019 13:02:23 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:02:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:31e378f373a79e030a1544a9dcf81f55779feff036f1c0d3ee29b6d7893b2187`  
		Last Modified: Thu, 07 Feb 2019 13:09:48 GMT  
		Size: 42.1 MB (42086880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7855dc93313cd4a4dfee0b26549fc030df39f579aa0d53294183aa06f6a6b3e1`  
		Last Modified: Thu, 07 Feb 2019 13:09:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:24401af3d6593e165a053c54ca1f4c1b66c68381408a534cb93c88e614be0894
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43132095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b7b9755cc0c7b0ed75485a4b9428fce1d3dde1b7ecb24fe5b80f3b760ad684`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:59:18 GMT
ADD file:7b5703bc14521bea04327acf3890bd2a7ac200630eb6ef2a7f906e0d84174252 in / 
# Tue, 05 Mar 2019 09:59:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:59:33 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1661b82991c46820c2f1014ba2c7a6a33202cda8f5f8cac6bf205fe94c19dcaf`  
		Last Modified: Tue, 05 Mar 2019 10:05:22 GMT  
		Size: 43.1 MB (43131869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c9187d9d46ca4e9ac8279efa1d11caaa7543baa515f402cce634737f3fd13`  
		Last Modified: Tue, 05 Mar 2019 10:05:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:0a39be54d41b58d465afa0190513a0ec6e9abe1f43afabf65db34f0fd797c8fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46064651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dda557d47ba65d347da53a297654cc21f0aa80725ecf3cd2da55d8f1cd7e0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:44:28 GMT
ADD file:f562dd1eb81a4f25cf4336a4c572a55e28e9913bf7bc8909d09d13472246017b in / 
# Tue, 05 Mar 2019 11:44:28 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:44:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3645dafc97e779d62cfaa464cfa96a948e82a47cdb6c934b881a62d17a7934db`  
		Last Modified: Tue, 05 Mar 2019 11:54:11 GMT  
		Size: 46.1 MB (46064427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2291b6b69fd10fddce449bc919816312485d488918cb5d76c8a4ff0f59fd839`  
		Last Modified: Tue, 05 Mar 2019 11:54:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:97f15719fdabd0d97ad56a594933fb7cc1fb7675401687fb6da14ae0e7d42f97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45610662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5186fd1cdc7c7afecb0e046ae801e430bebcd88ceda429e05a871bf747dc515b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:24:37 GMT
ADD file:2837eb19b808f560c1b5aa7d7accfdecc848966fc3c2e5b9bb7200a279229960 in / 
# Tue, 05 Mar 2019 09:24:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:24:48 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9bb1da8b470114d701a8135f74b2f0f19805f84a733a5a4d1b134d1845f4358e`  
		Last Modified: Tue, 05 Mar 2019 09:30:32 GMT  
		Size: 45.6 MB (45610437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b62af724945163b4e1b55f994026bea8bb002361c745d79796ef443b4136ee2`  
		Last Modified: Tue, 05 Mar 2019 09:30:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:2b8e8b516bbe4284fa2de9dbdd988f7cf5b38427ab4b189dc6ada71fb3e1b061
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45215105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cd72b67f30ca677c24d50d8e60226607eefb2d34b8c6d9cc837d8ec7753839`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:42:42 GMT
ADD file:c324fb0be75d7f595363dda418455883bd9616a1fa239555d979102657d307b9 in / 
# Wed, 06 Feb 2019 12:42:42 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:42:46 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:dc7944c01074c151848ff6df7ca2bdfd790c548efcf9ab0f57a63bf23b8d1519`  
		Last Modified: Wed, 06 Feb 2019 12:46:17 GMT  
		Size: 45.2 MB (45214883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d923f5b872011f0c5d791daa6f2fd531c1f78de7c71136a7fda50bb09ee4863`  
		Last Modified: Wed, 06 Feb 2019 12:46:25 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
