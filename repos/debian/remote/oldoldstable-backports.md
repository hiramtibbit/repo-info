## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:2a5648b161d752ed89fe77106f684ec066d2868f25088783a8400225683df84c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:a33f79069f2a5a01861974e326a63c525096f0eb132ff3932c5688e555f714cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38110016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f0c3f87b3d383dc5ac3967673252814a8b3bfc4a2eb23b63ec35ee0f2744fd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:48 GMT
ADD file:a9f97fc1a98c00af9659393e310df5fd28ae04b0dde7d70c4424bcee9172ff28 in / 
# Thu, 15 Feb 2018 01:46:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:51:08 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1e909feefe4bedaec5615f1db3bb7d49ace41f2bfd0a6bd602d3df62d5486f56`  
		Last Modified: Thu, 15 Feb 2018 02:19:54 GMT  
		Size: 38.1 MB (38109790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556f9d78b2db822855929c905a1548bf03c05bf2b47859baf5aafb84eb85e214`  
		Last Modified: Thu, 15 Feb 2018 02:20:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f506253f59eafc949cef5c4b5a72a90333d14ce1f406b79311f41627c179a8a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36948767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cc70083ea3753f5bafcf46a52551c6f367982d73c3c5433a18d54e77c0a818`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:52 GMT
ADD file:9028c067965c29e9dd7cc282af1300667c6e4849a16c33c55c679183e347670d in / 
# Thu, 15 Feb 2018 20:56:52 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:57:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4d4461cd56776d12f3f09517c8ddf3a3d5b73ceab72801598611434283f8c973`  
		Last Modified: Thu, 15 Feb 2018 21:06:03 GMT  
		Size: 36.9 MB (36948539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be9656d8c8696df27cf61689eb92877bedb8e576c3eb353cb4d7f759635f270`  
		Last Modified: Thu, 15 Feb 2018 21:06:21 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6d153ee6324fc94e1c584cc1d3e5387c3ad56551fb457c85104004559a6ddc1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35662073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbba8c8ee1effe3484289ab7805a1d7f8d6d83d2a3a8d5b83889117ac8e9cf5`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:25 GMT
ADD file:ab4b79c1f755aa62c22c8b9d863d0be4ab5d2f3afc72525edd41647f7abc0d2f in / 
# Thu, 15 Feb 2018 13:27:25 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:27:35 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:31919fb769d7bf0c8735b9e3885d1c1cae5081235a05106ee08248fb91f7527c`  
		Last Modified: Thu, 15 Feb 2018 13:37:07 GMT  
		Size: 35.7 MB (35661843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725f963306d1d6aef9152d910f6000858482758118df493d2f6d666b02ffd394`  
		Last Modified: Thu, 15 Feb 2018 13:37:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:1fffc7337703a78e3b80ebe21f36919f8982ac3a842be74943a6a595ac2c1fd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37439543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c56603936c5f9ede5c2e7020bb3bfc373233db53c85ac90c9f8fca916cbb818`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:30 GMT
ADD file:69c866b1832ee07bdf5ef10057c25e8adcf44ef8309c9b5449db59893b4d107e in / 
# Tue, 12 Dec 2017 14:21:30 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:78dd03bd86acbd5985b15655e65c8e39173aa21b84c49feb789ca909579fdbec`  
		Last Modified: Tue, 12 Dec 2017 14:51:57 GMT  
		Size: 37.4 MB (37439315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cfd0abfa94196341955d2d4ee56ec77ab12849c040baf6e5c88a0204ba61bf`  
		Last Modified: Tue, 12 Dec 2017 14:54:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
