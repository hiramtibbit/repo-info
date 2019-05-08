## `debian:experimental-20190506`

```console
$ docker pull debian@sha256:fe4620951ddb5201151b583fb3b6ed1504873af7b26ef62e0002eb4c263e4b4a
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

### `debian:experimental-20190506` - linux; amd64

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

### `debian:experimental-20190506` - linux; arm variant v5

```console
$ docker pull debian@sha256:2684725f08ae379df4d461e6d303b58dae8babe69f31ff00ba6c7d7dc01d6396
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48050257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded69c516a1e99acaeb79c92d7f9411be1e0f645388e00bca5bfc09e69869a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:54:57 GMT
ADD file:4fd426a931c55d17be1378388187b99a6d0f0fa5bbea6a88dfd53039f4e9e996 in / 
# Wed, 08 May 2019 08:54:59 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:55:22 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1e837f758dbdc449daa6ee07fccb3ade9ef73bc9cb87662f3b984a7017fbf81e`  
		Last Modified: Wed, 08 May 2019 09:00:32 GMT  
		Size: 48.1 MB (48050036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465837995cb857ef842cee0b6aeb7210e87a5432d3a7c6cd3af318d56f17ec2f`  
		Last Modified: Wed, 08 May 2019 09:00:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190506` - linux; arm variant v7

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

### `debian:experimental-20190506` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:83a94b53034b535e20d3ed9848bc7f0c5c95f6ac5e671ccc7b2226e48a692ae4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49132289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acd5515127211daad23fadd454baa6f36ac9bf0ae40ae58880101294bfb3150`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:50:49 GMT
ADD file:c2c1712b433812db563387f4d21bf35bba550d51d1009d32783eb2786f663c5a in / 
# Wed, 08 May 2019 08:50:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:51:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8323085655344475340407d8c66e848315f3c8d82ed9b634fdd84344aaf32e87`  
		Last Modified: Wed, 08 May 2019 08:56:33 GMT  
		Size: 49.1 MB (49132064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5e2951e49fa8a273b97d8e847fbcaf8439b8c014ef1b90824c330b3647617e`  
		Last Modified: Wed, 08 May 2019 08:57:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190506` - linux; 386

```console
$ docker pull debian@sha256:b7f78066742276355dfbcc6d30ba09c6aff63e3e230ce925b0ef378d6469e646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51098501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6119dc219f13078106fb95ecb2c56cb781d25fbaee12c5b1f8b9a283f24800`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:51:33 GMT
ADD file:c437d0bae879a84335d7b07db03944c0f1d4bdd6159d5b2c15a58b3343a72512 in / 
# Wed, 08 May 2019 10:51:34 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:52:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:34e97e46fd6a1073eb70a125d3041093bd80dc8819b90ec50e8b7753caae7afa`  
		Last Modified: Wed, 08 May 2019 10:58:57 GMT  
		Size: 51.1 MB (51098278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42b6f5400bf1f4a3f2628256f86d2bbd9a8e683b35102ff55cf117e8b116275`  
		Last Modified: Wed, 08 May 2019 10:59:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190506` - linux; ppc64le

```console
$ docker pull debian@sha256:55706bac0bc01d52ead4817952ec314c10eee69e3de6a6b1c2e16c5a93b42503
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54088404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee35c2f09d8b11233e6d120f2eabe178ff82df0446102f220dcdfeb3bbc6ffc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:18:52 GMT
ADD file:b13b795388aa824c303f4abd3fa7cb681a1e11cff315273dd739d77997b63a44 in / 
# Wed, 08 May 2019 09:18:57 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:20:53 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5dead70beca20556cf347beb395db139b3270efd7947e4ebac032f182e8134ef`  
		Last Modified: Wed, 08 May 2019 09:28:20 GMT  
		Size: 54.1 MB (54088183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bc5554c9a47633a339b0d88926cfb584f4478dc91f65e22db72c449096787f`  
		Last Modified: Wed, 08 May 2019 09:29:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190506` - linux; s390x

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
