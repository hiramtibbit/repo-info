## `debian:experimental-20190204`

```console
$ docker pull debian@sha256:49dd4705d41b32cbcd2c89893f830210f4c32a4f98cd3055c04fdfcc4c2ba1f7
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

### `debian:experimental-20190204` - linux; amd64

```console
$ docker pull debian@sha256:1481a642e9820f47d0e705638a5549ebfc54bd46247fb7f3b90918fe1752e436
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50076598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30520994085b53fe65bab5f6312c993e9f687c8cab12623a4995d3bf4a59e091`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:03 GMT
ADD file:cee9a07d45cab8236a3043f71d7c106d514d2f411d2e0bd55432c2b8deca8f04 in / 
# Wed, 06 Feb 2019 03:31:03 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:31:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:481ef8f95dd737480940543ca91bd4a86ddedb139cf60d98ce79a7b9ef0a103d`  
		Last Modified: Wed, 06 Feb 2019 03:36:32 GMT  
		Size: 50.1 MB (50076378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc142ba85f12272d05a294f7e9b3be930b3321c18b799eb14b4986c4a99565b`  
		Last Modified: Wed, 06 Feb 2019 03:37:13 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190204` - linux; arm variant v5

```console
$ docker pull debian@sha256:d782c87a995c290632fca3cd3193ab9b63b3562d9b6eade6672a5cffc758456a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47834763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b497f76c97ff517876c54832c663781fc0ad5da103a18733e3af5df912be827e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:56:16 GMT
ADD file:f8bc56cfe69a1eb31a7cfd529f8591cbe7c5ae3ad59d1828004584ce60525451 in / 
# Wed, 23 Jan 2019 09:56:17 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:57:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fbe0df9f5734442fa7fe4a08b13914db4e4f567acda53a711ab797c6c72a27a0`  
		Last Modified: Wed, 23 Jan 2019 10:03:13 GMT  
		Size: 47.8 MB (47834540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836fb890d3bde30fa8b61f75e2ff52aa3d0dc9c0f4ff5477909f8055e63cdc7a`  
		Last Modified: Wed, 23 Jan 2019 10:04:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190204` - linux; arm variant v7

```console
$ docker pull debian@sha256:d9ae836895befb185f023645b027a5e3f7ad63ab2d29e374a9d68a1f1fe774d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45626301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e200e109a387d6ab3cedf6702846d6fd182c702401046d3028911f457e621ef2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:06:21 GMT
ADD file:5f205f83d91bf7e376c0169944d03e204e722520901d54a3b9a1cb50017efc55 in / 
# Wed, 23 Jan 2019 13:06:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6e87a1cdd0a410b9816083fa12a0306f750db48f4ffa82df212bcd23526c0581`  
		Last Modified: Wed, 23 Jan 2019 13:13:16 GMT  
		Size: 45.6 MB (45626080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6086a2e6901626ff91aad7912c1a0eeb6470b49e781c761f9c4a4392df0cf26b`  
		Last Modified: Wed, 23 Jan 2019 13:14:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190204` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b410feca9a83f4d19ffc6914afefe93f021bb04c431c13a749fd2e4fe6573ac5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48871010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d40d2742ddb26cc52a8a0c027fbe84bba0934d67260882fb4fccc0c934a45e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:06:43 GMT
ADD file:8062114aee7a9a994d53688528ff10b65ced67fac49a8327b0d487b140b03358 in / 
# Wed, 23 Jan 2019 10:06:44 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:07:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f20406ce61d7ba562066331410aed95fff544bb2464af397db3c7072477aa474`  
		Last Modified: Wed, 23 Jan 2019 10:12:46 GMT  
		Size: 48.9 MB (48870787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f92b02ef0cc02c61e18f44f12e2957da25cb68d50c95bedec99f836be1148c8`  
		Last Modified: Wed, 23 Jan 2019 10:13:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190204` - linux; 386

```console
$ docker pull debian@sha256:14e06c8c1f57309b216874ca0801412134463377641d19d6d3a1e1f537904566
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50870864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8284e5846d7296699bffa8464e8bec0131d409a512044a89d5c73eebc9b23fca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:55:26 GMT
ADD file:0add9f9062795a5fd940e8d7812441b44c63e25d815ba5e359262ff52b7900c2 in / 
# Wed, 23 Jan 2019 11:55:26 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:57:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5be52283bbd55505d56c6a7a85b772906015cf5e7e56cfd361634504f4cce7b2`  
		Last Modified: Wed, 23 Jan 2019 12:03:42 GMT  
		Size: 50.9 MB (50870642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2358fd534ed731b557d0d30f6da603a90df34d248c92179d4066b0735a275a9a`  
		Last Modified: Wed, 23 Jan 2019 12:04:48 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190204` - linux; ppc64le

```console
$ docker pull debian@sha256:fd26b6b295a3b3cb1c13c3a2e9828c85bb9d9f8427efd44e16215ba7c2b3da95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53810021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec960cd94a82dfbb6db7b6c6e42758844b169c37233fb02c2b28df726d1569a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:36 GMT
ADD file:ab3ec8b533f191b05fbdb29b4e024f6a0f2b7ecf46a96a73a9d12af864a7be0f in / 
# Wed, 23 Jan 2019 09:28:40 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:29:04 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:aec0f556938850c632c227ebc570c2504ee87d591fb5f4bdd9ac1e393cff3715`  
		Last Modified: Wed, 23 Jan 2019 09:35:37 GMT  
		Size: 53.8 MB (53809799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad01e7a3f0ff3a41c6e70eef040ef254722254f9ef91a0da87bb455bdbb55`  
		Last Modified: Wed, 23 Jan 2019 09:36:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190204` - linux; s390x

```console
$ docker pull debian@sha256:590ecff8960a533c851aae9dae837628a37aaf36bd5de3f4e0b3f6b614070cdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48689573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a247c7c8174d258b621012f68a32842ed217afeedfc21924553bfb3442c6eb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:45:37 GMT
ADD file:4f5e1a918a5384be7880759496a45d6fb5ca7fdc02965cb11a90e8627c0c4bc4 in / 
# Wed, 23 Jan 2019 12:45:38 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:46:04 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1e92c6c080df4088f7ff6eb3a15ccaacb6cf027656ece8e45724e930c92f5e96`  
		Last Modified: Wed, 23 Jan 2019 12:49:43 GMT  
		Size: 48.7 MB (48689351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bced95872086c5641f14b9bd31ff45f986d6bc4fd943987619a87c9c9cd6bce0`  
		Last Modified: Wed, 23 Jan 2019 12:50:00 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
