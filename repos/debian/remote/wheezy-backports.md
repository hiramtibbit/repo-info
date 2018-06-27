## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:af05caa7db224c1e7ced01d1ed1a5bc47ee69a57b8a449e18832b686f300c510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:a77055abf6c8bf5078836546ceefe96d5ac7fccaf2e7694af15a158caf9cb7fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452b2b42523eaf92a31c0df362a567bcec8c56acb60f6e35a42d434e31b96ba2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:27:21 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce591d0eb719c9a0e61ec3b5490fb69d1928c3cd6fa4f941b40ecfcb56207c05`  
		Last Modified: Tue, 26 Jun 2018 21:41:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:ae288568473154bf95cea340d9fad06d6d18a63d1b0390fdeb0ea509bc6b8f87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464c4c76846cad1285f598cbdf8be102f00da024903021ddf6ee0cf45817c1f8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:55:52 GMT
ADD file:ed02e823bde1bd9dcf3c03d14f842878217130572ff188cbb2d6db34b70a979e in / 
# Wed, 27 Jun 2018 08:55:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:56:09 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3e2e9eb80c7a243dca0bd760ee64e7490f7c809d350755e29c809283610a49fd`  
		Last Modified: Wed, 27 Jun 2018 09:05:27 GMT  
		Size: 38.0 MB (37993559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e19fffc138b1949c60ece954f7d7b9d5615145dc3c364eba25a847989648e`  
		Last Modified: Wed, 27 Jun 2018 09:05:51 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:843de0c6fe40045a07de570cf68a873b2ca89b726cef3ee788e959c2da579a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5353e05b3cd11b3d075bd0da1e30102ecae3cb1344cc5d0b23fd837b0de59208`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:07:34 GMT
ADD file:5a45a86b5b17c03113098c8a7a1ee7ebc9c02afa3e33bd3d852c28b6e261697a in / 
# Sat, 28 Apr 2018 12:07:34 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:07:54 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:797f0254107c711da2219d2a3c71bb8815ad9b4e665a165c707561344f88a777`  
		Last Modified: Sat, 28 Apr 2018 12:18:06 GMT  
		Size: 36.6 MB (36620143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1d6295559c398e5f996efe5887a331628db2ebc57f3cc21700cc4ac73ba6da`  
		Last Modified: Sat, 28 Apr 2018 12:18:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:cbe29159941e06d8412696df7c7a0164772dc92448c8dd4b30404f04cefd1281
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8da65f1ec8ac77532f6de8024ed7df6f5da0e30610f5d5185e3be1eb8c78355`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:49:38 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cc07951cb9c4dd19e3f4df0d700d3885d00a960c6384ae71f407365b52c50a`  
		Last Modified: Wed, 27 Jun 2018 11:14:32 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
