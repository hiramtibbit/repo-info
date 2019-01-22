## `debian:stable-backports`

```console
$ docker pull debian@sha256:63299f03a67e9c8d1f7a5592b2bcfc478e0b95cc7726f4a371f575a99b6bb7bb
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
$ docker pull debian@sha256:4d183b06364c822408a48187dced1ad7ceea3178092746e1f85f686ade8459f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45344934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b736fdee76f0972a6a88cb7ee55d0c9b0103b7d0b9fa3f49205ab73210e174`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:28:55 GMT
ADD file:94919c885751a82104efc734a8c65f09298a9b4777f2bbff207e4241633d0e79 in / 
# Tue, 22 Jan 2019 19:28:56 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:28:59 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b422a2cc25452af2e0070789b778fe7c1547d39689f55793d1bd55d32ae5dfd3`  
		Last Modified: Tue, 22 Jan 2019 19:36:23 GMT  
		Size: 45.3 MB (45344713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18d9b6d02ea8abaa74c02e648cb1b0e850bbeb98793c07c33a9716bb29c081b`  
		Last Modified: Tue, 22 Jan 2019 19:36:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:bcc7b310bc711db82fd7052b377ee195a0e92cfe49933f9bf8472992f840eadc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44029544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bee399b620b70a8e6e73eeaf4251627a4309dffda45ca83fd6c3ce87148441`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:54:07 GMT
ADD file:3e4c53a258b5b57d69f555fbd2448d6b26eb28dcbaf20452d1d432758191ac34 in / 
# Sat, 29 Dec 2018 09:54:09 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:54:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8d9c5de95e0ba12f9bcfce10e3d745db806f932b3a2ee4f293d485945b6400e8`  
		Last Modified: Sat, 29 Dec 2018 10:02:22 GMT  
		Size: 44.0 MB (44029321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5775732f142193f165058ded2a385f132035b8db8223d21d4252325fcc266adf`  
		Last Modified: Sat, 29 Dec 2018 10:02:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ab48332fed46dbb6e51ebe43d3acd01e511566fe5d4ee14e684490c4753e66bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42074805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d2f3f819628f3600cc9bae3d01ab0957685f14149545f324cfcf4e72c1a30`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:03:31 GMT
ADD file:d32d0f39ac10fbdd0c0491cd1410a5c811e9c509f03eaacef33de0303b91119d in / 
# Sat, 29 Dec 2018 13:03:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:03:39 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a086f6e209591b54896aff5e0ce7523f1aa6e99bc2f5b06bf087df5fcfb01a6c`  
		Last Modified: Sat, 29 Dec 2018 13:11:47 GMT  
		Size: 42.1 MB (42074580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c585685d0ca2d83a08b121b9f03e445eb482cfd33f81c017f16ff6ba0fa18bb`  
		Last Modified: Sat, 29 Dec 2018 13:11:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:303fb0e20c71c1785411cc782682f00ec42ad747c40bd57843c7ae6d441bb679
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43116701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f382e621aa9fd20fa26c2232902797e37a51dadd96df92ff3684ed669a937c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:06:59 GMT
ADD file:69f04e716b82b6d386a4ea0a878d832e51852ffe639f46f6e3146e06cb8f98f7 in / 
# Sat, 29 Dec 2018 10:07:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:07:12 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2cb9d82941ae9b0403b05120eac21c3a2ee923875f0cad62a216cedeb3a4d835`  
		Last Modified: Sat, 29 Dec 2018 10:13:54 GMT  
		Size: 43.1 MB (43116476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26988d8c8b469fd9592529c2931020a4cb223b8466b52640acaf54b7beb8fc4d`  
		Last Modified: Sat, 29 Dec 2018 10:14:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:8b179567346bc9851afb150dc29a689659ec662f20f12274d502852f8dacec08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46057507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f39245e5b61e889ce489946cd45642c362c9be8d5128752a8d742ea623fec7d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:51:55 GMT
ADD file:d84c582864c226f1cac5a77657dbd3d0e23d26f090eb8ff6bfd30a3f609f7419 in / 
# Sat, 29 Dec 2018 11:51:56 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:52:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:87c2a6c32d1de47b7b626db6801eb1e1f9125c49f6dcea8a23e0f4cbaf469a2a`  
		Last Modified: Sat, 29 Dec 2018 12:09:32 GMT  
		Size: 46.1 MB (46057285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79413ed6cc78d496012926436682c30548fd8f1f07bc42abe2fe897405a49ec`  
		Last Modified: Sat, 29 Dec 2018 12:09:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:303640c911a7556e54f49714ef24c5026131e814e39ba4d85a22e9dfdb7bc5d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45605894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05cac35d45cb70c3ce87b220f67e2c4ce19ea4746a68002af2cf1677ccdb69e0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:13 GMT
ADD file:74752352f1f09408c5d3900ecd7bac7b05adbecefdaa3ac6a7094cfde5cd88ff in / 
# Sat, 29 Dec 2018 09:21:19 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:21:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:fd9237e4dcd7d7857481c404649a7d3cfd31274729b78fe6181afdf8de0e43e1`  
		Last Modified: Sat, 29 Dec 2018 09:27:11 GMT  
		Size: 45.6 MB (45605669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded29176fb0403d02ced0019cf3bd3f3446c9083a53f076f2eb01e05c4f3a929`  
		Last Modified: Sat, 29 Dec 2018 09:27:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:75c634c310624b6ccb2fe7755e4013f1efb4858dc30632a5dcdea6e9e65017f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45206379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3f4fee151299a97d3ca66e426b660a990c73624ab6de9232a31c7ab2056fdf`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:04 GMT
ADD file:bb38f69c4efdeb01e10ac4e4f8f20e6e0553285f1f8ff5d89df3e5e50c567c0d in / 
# Sat, 29 Dec 2018 12:43:05 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:43:09 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d9bfc15c39bc5dce82d12b6aeb6664238db2c2da5cbd0bca587ee71ec38a9109`  
		Last Modified: Sat, 29 Dec 2018 12:46:14 GMT  
		Size: 45.2 MB (45206157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63252bc7d778c73aea0b508b0ef2af27a2628776eb2e4ff9ec9403d930dc9e6`  
		Last Modified: Sat, 29 Dec 2018 12:46:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
