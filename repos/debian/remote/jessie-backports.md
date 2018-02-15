## `debian:jessie-backports`

```console
$ docker pull debian@sha256:71de21e9354f3e36eb9d591b44db36bf18ec4437503f65d36e465769d6de7e2e
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

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:8ff2906ef3afc14a25ec508500434ef8706dc604ceb7056200af74e3b84f40f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52608508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a49addf5c5a27d9761a20d6ad1a9a6675e95078dda2dbd7b913c3efc2580b51`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:45:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c01cf91b98aa4afe9254382e33b55e6780c8f9ff8cd29cc3c9d55cc06707f7`  
		Last Modified: Thu, 15 Feb 2018 02:18:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:0ad4b4df4cf68482d29914f38e705c27568b41fc54973fd2a4dd3cd642db7a0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50889847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475eb5b242d9cca8ce7138a2261ed738c951ba0a72689192d5f9f25f3266f924`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:56:11 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2771f5920a462760905b0a0ddc9be1e27f215feb13663882583df5da4c48a`  
		Last Modified: Thu, 15 Feb 2018 21:05:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:e5383862bedcad0ebe01fc0b2724e754e52ba60e7bc9c95f09c2f8424c706e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48701623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f538342af4e6b309d70164ffb8dde357b5e756b5cb487498a2e098adb0b3f1`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:26:42 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f068c15af17e834a05996ad54b1a92d196bc9ebb70653fb7a889f6dbb982c9`  
		Last Modified: Thu, 15 Feb 2018 13:36:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:27386f48ea8a1965141bd42f55237b01c0396653cf40cd1c922a96402e138468
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49934071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9675b32e572e0a5aad8741e423920425d16d47874371bf6e10748ab43471d2d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ff6ddd04a967e34b5d20af665b5a8675e674ebf6efc6f4324baac7a29ea5e`  
		Last Modified: Thu, 15 Feb 2018 18:36:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; 386

```console
$ docker pull debian@sha256:3da8469255f05cbd573447f810cd46423ca9be181bd51d24cc576dbd3b5cc1a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52777590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fdba8c20cc9a415b1deeeb1019f03e6e4647cb6c2ca65cbc5899fc799e39baa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:20:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80707d1c786b227963e7ecfeb000ec0c256d2395f5b96975c7160983f8ded7d2`  
		Last Modified: Tue, 12 Dec 2017 14:49:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:2f17d0c08ade5a460269ba4ca506a4a7bc73fa075dd1623f913614a8ed9c77fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51817298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac4c33f3d8f7876fc32b75df06de33291baa279ea67c22b773fb6c8404d65b2`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:34:00 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968c46665ba61ef86ff8e4271fa44d4745a585f6ce2888a000f1ae0e7cc61a5`  
		Last Modified: Thu, 15 Feb 2018 01:42:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; s390x

```console
$ docker pull debian@sha256:1e989bb55e07ab498b83ecd88d696b2afbaef996c658204cd1cc6f94814050c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52795055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7853b7fa864465f6830a08e201600ac2c7aecbf6913897aa51852b151ad42b5`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:22:42 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647ddc28c068e28881b8b838cb8807d10bf1aaec84648417df302d172b1140ef`  
		Last Modified: Thu, 15 Feb 2018 06:26:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
