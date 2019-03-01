<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20190212`](#amazonlinux201803020190212)
-	[`amazonlinux:2018.03.0.20190212-with-sources`](#amazonlinux201803020190212-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20190228`](#amazonlinux2020190228)
-	[`amazonlinux:2.0.20190228-with-sources`](#amazonlinux2020190228-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:6f641aaae094efad1df7a9d120cfa69f6e9c8a38b9ab985b34767138aad801d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fed4296092c2eda6712234a67b9550370e57cb828fd49f47ef5c9ae6978246f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62743447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea12407ae7dfef579c48febbeaa2c46e8bc3f37ffafabd2fcbdf91c0170ed3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:ab0cc66c6e01adb4174851c89e2c09bf2ca5f2e0c03dc436cb386fa230d7c8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ecaf80363472b64dfa4fb25de4ec2139a3a493612462dff15b2ca20ca6e892f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.4 MB (387438224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a7aba63297153ec94073da0fd64f4d646d9d49109873f7bc721d3bc8307152`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-edec66042b312e0c355a9edb78ac48b3b0bfa85fb97bc8b115d35cb7e2fe2da2.tar.gz"  && echo "b2e5b6314f271462503fe3c5dd6022bfcd1ef926447a36748612ea6e6eb784b1  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a19d808defb53ab072fda25cef38a9f7c814a75b41e276525df36e0bef57d4`  
		Last Modified: Wed, 13 Feb 2019 01:22:09 GMT  
		Size: 324.7 MB (324694777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:6c23bd08124378b25b0cfe7c804eb8ed7e7474b6feeb0121ebe1d9d7586cf912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ad81d4c1bc902f4c09b802639cb335c2f849b4eba0500ab7ca136fab726f330c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61309745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01da4f8f9748b3ac6cf5d265152fb80b9d7545075be8aa0a3d60770a98db9768`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:6f641aaae094efad1df7a9d120cfa69f6e9c8a38b9ab985b34767138aad801d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fed4296092c2eda6712234a67b9550370e57cb828fd49f47ef5c9ae6978246f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62743447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea12407ae7dfef579c48febbeaa2c46e8bc3f37ffafabd2fcbdf91c0170ed3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190212`

```console
$ docker pull amazonlinux@sha256:6f641aaae094efad1df7a9d120cfa69f6e9c8a38b9ab985b34767138aad801d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190212` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fed4296092c2eda6712234a67b9550370e57cb828fd49f47ef5c9ae6978246f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62743447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea12407ae7dfef579c48febbeaa2c46e8bc3f37ffafabd2fcbdf91c0170ed3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190212-with-sources`

```console
$ docker pull amazonlinux@sha256:ab0cc66c6e01adb4174851c89e2c09bf2ca5f2e0c03dc436cb386fa230d7c8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190212-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ecaf80363472b64dfa4fb25de4ec2139a3a493612462dff15b2ca20ca6e892f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.4 MB (387438224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a7aba63297153ec94073da0fd64f4d646d9d49109873f7bc721d3bc8307152`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-edec66042b312e0c355a9edb78ac48b3b0bfa85fb97bc8b115d35cb7e2fe2da2.tar.gz"  && echo "b2e5b6314f271462503fe3c5dd6022bfcd1ef926447a36748612ea6e6eb784b1  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a19d808defb53ab072fda25cef38a9f7c814a75b41e276525df36e0bef57d4`  
		Last Modified: Wed, 13 Feb 2019 01:22:09 GMT  
		Size: 324.7 MB (324694777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:ab0cc66c6e01adb4174851c89e2c09bf2ca5f2e0c03dc436cb386fa230d7c8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ecaf80363472b64dfa4fb25de4ec2139a3a493612462dff15b2ca20ca6e892f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.4 MB (387438224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a7aba63297153ec94073da0fd64f4d646d9d49109873f7bc721d3bc8307152`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:20:16 GMT
ADD file:b833165fceed32fa5e96b2b7cf752c788ed6cf6ab86606c63b1a4b5c13f8c22f in / 
# Wed, 13 Feb 2019 01:20:17 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-edec66042b312e0c355a9edb78ac48b3b0bfa85fb97bc8b115d35cb7e2fe2da2.tar.gz"  && echo "b2e5b6314f271462503fe3c5dd6022bfcd1ef926447a36748612ea6e6eb784b1  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0b34462a77c60a14196b09800a9815b0d98af341831d034fa2b1d0d01da4fe06`  
		Last Modified: Wed, 13 Feb 2019 01:21:49 GMT  
		Size: 62.7 MB (62743447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a19d808defb53ab072fda25cef38a9f7c814a75b41e276525df36e0bef57d4`  
		Last Modified: Wed, 13 Feb 2019 01:22:09 GMT  
		Size: 324.7 MB (324694777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190228`

```console
$ docker pull amazonlinux@sha256:6c23bd08124378b25b0cfe7c804eb8ed7e7474b6feeb0121ebe1d9d7586cf912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20190228` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ad81d4c1bc902f4c09b802639cb335c2f849b4eba0500ab7ca136fab726f330c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61309745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01da4f8f9748b3ac6cf5d265152fb80b9d7545075be8aa0a3d60770a98db9768`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190228-with-sources`

```console
$ docker pull amazonlinux@sha256:f8ee10fa69ab4425744bcbff69eae6cbc0c39bb167af845d18a1cadd86e84dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20190228-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:1985174c87050f77f040db9201faf6ed15915cf2bfe9366aa276cdd01284e888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410971923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836b41a02f57a171fce29730161d26909f337672888b6065a97a5a3bcc9413d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:20:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-b3740d57b8e0cde51e2a18baa3db230c47383cdfb47dba5ee7ba1f8f955c35b9.tar.gz"  && echo "b86589a8ce7c636f66f92b093c0f85b4e1be98bfd2842ec98050f49b51483eea  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53f31a070c59b887db8e17d982eae47c90c5c4a31188cbe046506296c2428`  
		Last Modified: Fri, 01 Mar 2019 22:21:29 GMT  
		Size: 349.7 MB (349662178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:f8ee10fa69ab4425744bcbff69eae6cbc0c39bb167af845d18a1cadd86e84dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:1985174c87050f77f040db9201faf6ed15915cf2bfe9366aa276cdd01284e888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410971923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836b41a02f57a171fce29730161d26909f337672888b6065a97a5a3bcc9413d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:20:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-b3740d57b8e0cde51e2a18baa3db230c47383cdfb47dba5ee7ba1f8f955c35b9.tar.gz"  && echo "b86589a8ce7c636f66f92b093c0f85b4e1be98bfd2842ec98050f49b51483eea  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53f31a070c59b887db8e17d982eae47c90c5c4a31188cbe046506296c2428`  
		Last Modified: Fri, 01 Mar 2019 22:21:29 GMT  
		Size: 349.7 MB (349662178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:6c23bd08124378b25b0cfe7c804eb8ed7e7474b6feeb0121ebe1d9d7586cf912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:ad81d4c1bc902f4c09b802639cb335c2f849b4eba0500ab7ca136fab726f330c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61309745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01da4f8f9748b3ac6cf5d265152fb80b9d7545075be8aa0a3d60770a98db9768`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:f8ee10fa69ab4425744bcbff69eae6cbc0c39bb167af845d18a1cadd86e84dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:1985174c87050f77f040db9201faf6ed15915cf2bfe9366aa276cdd01284e888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410971923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836b41a02f57a171fce29730161d26909f337672888b6065a97a5a3bcc9413d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:20:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-b3740d57b8e0cde51e2a18baa3db230c47383cdfb47dba5ee7ba1f8f955c35b9.tar.gz"  && echo "b86589a8ce7c636f66f92b093c0f85b4e1be98bfd2842ec98050f49b51483eea  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53f31a070c59b887db8e17d982eae47c90c5c4a31188cbe046506296c2428`  
		Last Modified: Fri, 01 Mar 2019 22:21:29 GMT  
		Size: 349.7 MB (349662178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
