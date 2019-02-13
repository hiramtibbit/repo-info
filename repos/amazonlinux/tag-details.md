<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20190212`](#amazonlinux201803020190212)
-	[`amazonlinux:2018.03.0.20190212-with-sources`](#amazonlinux201803020190212-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20190212`](#amazonlinux2020190212)
-	[`amazonlinux:2.0.20190212-with-sources`](#amazonlinux2020190212-with-sources)
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
$ docker pull amazonlinux@sha256:5edf7809e602f23524e88f71e87d69419b8e104fa8270d875fc85aa3044c75d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:edcffafebbbf2c226ff5628aeb39898a3c79130eed572d99269d236fe15e6bec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61282504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82972259699f45967b8caf2129dab643de34f77f653d761cf5655fdefe7fb8a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:19:46 GMT
ADD file:226e4884709da9340bdae211b7224f84b5d4cc3fbedd1245c9e573666bfaec4c in / 
# Wed, 13 Feb 2019 01:19:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d5b38b9f36c57da7af767a1846009f116954669131216124740d8c726c0bf04a`  
		Last Modified: Wed, 13 Feb 2019 01:21:01 GMT  
		Size: 61.3 MB (61282504 bytes)  
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

## `amazonlinux:2.0.20190212`

```console
$ docker pull amazonlinux@sha256:5edf7809e602f23524e88f71e87d69419b8e104fa8270d875fc85aa3044c75d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20190212` - linux; amd64

```console
$ docker pull amazonlinux@sha256:edcffafebbbf2c226ff5628aeb39898a3c79130eed572d99269d236fe15e6bec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61282504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82972259699f45967b8caf2129dab643de34f77f653d761cf5655fdefe7fb8a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:19:46 GMT
ADD file:226e4884709da9340bdae211b7224f84b5d4cc3fbedd1245c9e573666bfaec4c in / 
# Wed, 13 Feb 2019 01:19:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d5b38b9f36c57da7af767a1846009f116954669131216124740d8c726c0bf04a`  
		Last Modified: Wed, 13 Feb 2019 01:21:01 GMT  
		Size: 61.3 MB (61282504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190212-with-sources`

```console
$ docker pull amazonlinux@sha256:8994fc45f73698e70953e73565143ae7faa2e25cbefcd49ddc12611d1b3aaaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20190212-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:acef38e8cd68b0af016a361cad9511e2723a5cdf7976258840d35ab337d7d158
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410744081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c30d72e091cb9ac3c092b0e1c566e7ded77e875e163ad318543de58db0ec9e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:19:46 GMT
ADD file:226e4884709da9340bdae211b7224f84b5d4cc3fbedd1245c9e573666bfaec4c in / 
# Wed, 13 Feb 2019 01:19:47 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:04 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-4d250d41ccf2d02ae836f22dad85dc0a8530ca1ec1276c036488d72361d7f10e.tar.gz"  && echo "af8f62636d237cedc0bd3fbc937a198d403cb75f32f8049bee5d1eb7f13ae507  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:d5b38b9f36c57da7af767a1846009f116954669131216124740d8c726c0bf04a`  
		Last Modified: Wed, 13 Feb 2019 01:21:01 GMT  
		Size: 61.3 MB (61282504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a24804216fe7965cdc6e6f5b0ead4e18dec2dd847ef688230d6cbf78bc73e19`  
		Last Modified: Wed, 13 Feb 2019 01:21:29 GMT  
		Size: 349.5 MB (349461577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:8994fc45f73698e70953e73565143ae7faa2e25cbefcd49ddc12611d1b3aaaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:acef38e8cd68b0af016a361cad9511e2723a5cdf7976258840d35ab337d7d158
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410744081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c30d72e091cb9ac3c092b0e1c566e7ded77e875e163ad318543de58db0ec9e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:19:46 GMT
ADD file:226e4884709da9340bdae211b7224f84b5d4cc3fbedd1245c9e573666bfaec4c in / 
# Wed, 13 Feb 2019 01:19:47 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:04 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-4d250d41ccf2d02ae836f22dad85dc0a8530ca1ec1276c036488d72361d7f10e.tar.gz"  && echo "af8f62636d237cedc0bd3fbc937a198d403cb75f32f8049bee5d1eb7f13ae507  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:d5b38b9f36c57da7af767a1846009f116954669131216124740d8c726c0bf04a`  
		Last Modified: Wed, 13 Feb 2019 01:21:01 GMT  
		Size: 61.3 MB (61282504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a24804216fe7965cdc6e6f5b0ead4e18dec2dd847ef688230d6cbf78bc73e19`  
		Last Modified: Wed, 13 Feb 2019 01:21:29 GMT  
		Size: 349.5 MB (349461577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:5edf7809e602f23524e88f71e87d69419b8e104fa8270d875fc85aa3044c75d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:edcffafebbbf2c226ff5628aeb39898a3c79130eed572d99269d236fe15e6bec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61282504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82972259699f45967b8caf2129dab643de34f77f653d761cf5655fdefe7fb8a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:19:46 GMT
ADD file:226e4884709da9340bdae211b7224f84b5d4cc3fbedd1245c9e573666bfaec4c in / 
# Wed, 13 Feb 2019 01:19:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d5b38b9f36c57da7af767a1846009f116954669131216124740d8c726c0bf04a`  
		Last Modified: Wed, 13 Feb 2019 01:21:01 GMT  
		Size: 61.3 MB (61282504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:8994fc45f73698e70953e73565143ae7faa2e25cbefcd49ddc12611d1b3aaaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:acef38e8cd68b0af016a361cad9511e2723a5cdf7976258840d35ab337d7d158
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410744081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c30d72e091cb9ac3c092b0e1c566e7ded77e875e163ad318543de58db0ec9e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:19:46 GMT
ADD file:226e4884709da9340bdae211b7224f84b5d4cc3fbedd1245c9e573666bfaec4c in / 
# Wed, 13 Feb 2019 01:19:47 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:04 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-4d250d41ccf2d02ae836f22dad85dc0a8530ca1ec1276c036488d72361d7f10e.tar.gz"  && echo "af8f62636d237cedc0bd3fbc937a198d403cb75f32f8049bee5d1eb7f13ae507  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:d5b38b9f36c57da7af767a1846009f116954669131216124740d8c726c0bf04a`  
		Last Modified: Wed, 13 Feb 2019 01:21:01 GMT  
		Size: 61.3 MB (61282504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a24804216fe7965cdc6e6f5b0ead4e18dec2dd847ef688230d6cbf78bc73e19`  
		Last Modified: Wed, 13 Feb 2019 01:21:29 GMT  
		Size: 349.5 MB (349461577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
