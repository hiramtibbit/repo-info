## `debian:experimental`

```console
$ docker pull debian@sha256:3b783b8c64de751ffcc0aa0c1481613c696d3bd9384592605f88955700b7328e
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

### `debian:experimental` - linux; amd64

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

### `debian:experimental` - linux; arm variant v5

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

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:fb5290a9d2d6a715148cbec5de67aa95ce6ccac9b24a3a76c0669efd69032d2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45832256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08d90f9ceefc1754e5d7b888f533460831a9ed91f3a6ee71e9bd0051262cc25`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:05:21 GMT
ADD file:7169e4d5d207b4acb233f4d83289c050fd6d0eecb7f5704b858b0f2af2fa7989 in / 
# Wed, 08 May 2019 12:05:22 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:05:50 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:44040286af24e2c65edb535584ccf7d02069fc6b866e5f5678f33161284200be`  
		Last Modified: Wed, 08 May 2019 12:10:55 GMT  
		Size: 45.8 MB (45832033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec71f00661e8cf70a1641c9ac3cdb6ed4d658bd4c15560ab556b271600ca352`  
		Last Modified: Wed, 08 May 2019 12:11:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

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

### `debian:experimental` - linux; 386

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

### `debian:experimental` - linux; ppc64le

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

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:015734eded68e3a498e66ee9bc7fc435e806609cabd56c503e60c3b5cb2bbfd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48904316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c2d644caa9fa10bb8d6917fa5a973a2a8a7cf2e69c17f77798abfa531df756`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:48:23 GMT
ADD file:dbedcc24913c8681cae62488a0b7b4cbbd0f5ed77d7660b8078f51ee7faab3e2 in / 
# Wed, 08 May 2019 11:48:23 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:49:06 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a73bfab36d06928b2942b558d41a027fdebd6ca4d36cd2f262e4dd04234790e2`  
		Last Modified: Wed, 08 May 2019 11:53:43 GMT  
		Size: 48.9 MB (48904091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634613dfe6779525c09ef4eec8b0bcdeb47217450bf50d2b4c23e8794ca2a543`  
		Last Modified: Wed, 08 May 2019 11:54:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
