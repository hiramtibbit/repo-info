<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20180622`](#amazonlinux201803020180622)
-	[`amazonlinux:2018.03.0.20180622-with-sources`](#amazonlinux201803020180622-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20180622.1`](#amazonlinux20201806221)
-	[`amazonlinux:2.0.20180622.1-with-sources`](#amazonlinux20201806221-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:9ee13e494b762db41b9db92a200f6784b78da5ac3b0f974fb1c38feb7f636474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:7f12c425c74940d60c035daa77c34696bb961d8ebc81fd7897f4dedf696656cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61742728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bb3e78db3dc26d1d02b994cb5eefca918b5f4e10d786b56415b89cde4cae3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 25 Apr 2018 18:19:59 GMT
ADD file:6f2423e0c7f8eec427c07eaf632895f73ff9a3d7ead3fe0b02ca95f3deaf18f9 in / 
# Wed, 25 Apr 2018 18:20:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4b92325dc37b1db5a85249c2720897e4137dfd720a009144e01051eff33c8013`  
		Last Modified: Wed, 25 Apr 2018 18:47:25 GMT  
		Size: 61.7 MB (61742728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:f58b85f5d394ffbb1813e803d90903e10ba76025c1154eac73630faa67e98392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2156646f29c21fac1a882a4e91716a357ffaed85f689520a74ccb10ba85989b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352997677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac583af12ac7c54f482f18f528b7a8d5301237dffc6fdbb93ffa24de54df002`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 25 Apr 2018 18:19:59 GMT
ADD file:6f2423e0c7f8eec427c07eaf632895f73ff9a3d7ead3fe0b02ca95f3deaf18f9 in / 
# Wed, 25 Apr 2018 18:20:00 GMT
CMD ["/bin/bash"]
# Wed, 25 Apr 2018 18:20:48 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=D_KCpIT4RgFgTnGVHbv96W6XS_GUjpKK"  && echo "c0d5af8d6639a719469cd564835831a7cebb8683d40c82ce38172fda5fb43acc /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4b92325dc37b1db5a85249c2720897e4137dfd720a009144e01051eff33c8013`  
		Last Modified: Wed, 25 Apr 2018 18:47:25 GMT  
		Size: 61.7 MB (61742728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb437d675a1cf5030aac67b4bf9e1129093cf1e6bee88f066982dda3cf0dd54e`  
		Last Modified: Wed, 25 Apr 2018 18:54:20 GMT  
		Size: 291.3 MB (291254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:df609b745f6a886d7b0724a0be3e0d895e0075da0c6e9102194e5f523e527972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:e87043a2c9bb1feddda53894bebf8c309b0a2865ec016de86a60e899853317b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82825585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7831dfe956a182f9977efa43c0543b7ad4ffa3f8b9cb412665008b88cb6d7e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:9ee13e494b762db41b9db92a200f6784b78da5ac3b0f974fb1c38feb7f636474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:7f12c425c74940d60c035daa77c34696bb961d8ebc81fd7897f4dedf696656cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61742728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bb3e78db3dc26d1d02b994cb5eefca918b5f4e10d786b56415b89cde4cae3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 25 Apr 2018 18:19:59 GMT
ADD file:6f2423e0c7f8eec427c07eaf632895f73ff9a3d7ead3fe0b02ca95f3deaf18f9 in / 
# Wed, 25 Apr 2018 18:20:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4b92325dc37b1db5a85249c2720897e4137dfd720a009144e01051eff33c8013`  
		Last Modified: Wed, 25 Apr 2018 18:47:25 GMT  
		Size: 61.7 MB (61742728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20180622`

**does not exist** (yet?)

## `amazonlinux:2018.03.0.20180622-with-sources`

**does not exist** (yet?)

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:f58b85f5d394ffbb1813e803d90903e10ba76025c1154eac73630faa67e98392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2156646f29c21fac1a882a4e91716a357ffaed85f689520a74ccb10ba85989b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352997677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac583af12ac7c54f482f18f528b7a8d5301237dffc6fdbb93ffa24de54df002`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 25 Apr 2018 18:19:59 GMT
ADD file:6f2423e0c7f8eec427c07eaf632895f73ff9a3d7ead3fe0b02ca95f3deaf18f9 in / 
# Wed, 25 Apr 2018 18:20:00 GMT
CMD ["/bin/bash"]
# Wed, 25 Apr 2018 18:20:48 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=D_KCpIT4RgFgTnGVHbv96W6XS_GUjpKK"  && echo "c0d5af8d6639a719469cd564835831a7cebb8683d40c82ce38172fda5fb43acc /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4b92325dc37b1db5a85249c2720897e4137dfd720a009144e01051eff33c8013`  
		Last Modified: Wed, 25 Apr 2018 18:47:25 GMT  
		Size: 61.7 MB (61742728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb437d675a1cf5030aac67b4bf9e1129093cf1e6bee88f066982dda3cf0dd54e`  
		Last Modified: Wed, 25 Apr 2018 18:54:20 GMT  
		Size: 291.3 MB (291254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20180622.1`

**does not exist** (yet?)

## `amazonlinux:2.0.20180622.1-with-sources`

**does not exist** (yet?)

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:df19de26e67f15c5f9bb7319ba68d1ce10585dd9e22e4c4f551b201f1f09de99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:47cb7300bba287f2324f13e2a69d707de10f33e064303060baaed7dc6f38344d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.6 MB (399614690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24925b3a86315ef51c76db4bea40153b3f2e9d3640a77f1a8f7ab01fa02224fd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 09 Apr 2018 23:38:26 GMT
ADD file:b595655519b98b2a0ff96bb7ef206a077a0f49adaefaed8d0314b7be968d38ec in / 
# Mon, 09 Apr 2018 23:38:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Apr 2018 23:46:18 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=8mjrgeFJaShkkKMhxThnPadPGHh2ayog"  && echo "f133970b2c227b440c92d44de5ff329b6fd4d2454ddbebacba98070ffb224caa /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:fb6e70fcd19dc17c5a852522bb611111a258449fcedd3a6cf9d320557f3ba62c`  
		Last Modified: Tue, 10 Apr 2018 00:20:09 GMT  
		Size: 82.8 MB (82825585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1800e096406c08e1c961e0fa463f8bbe8b99aa3f8bb2c5083f42bef1f75c88`  
		Last Modified: Tue, 10 Apr 2018 00:22:55 GMT  
		Size: 316.8 MB (316789105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:9ee13e494b762db41b9db92a200f6784b78da5ac3b0f974fb1c38feb7f636474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:7f12c425c74940d60c035daa77c34696bb961d8ebc81fd7897f4dedf696656cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61742728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bb3e78db3dc26d1d02b994cb5eefca918b5f4e10d786b56415b89cde4cae3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 25 Apr 2018 18:19:59 GMT
ADD file:6f2423e0c7f8eec427c07eaf632895f73ff9a3d7ead3fe0b02ca95f3deaf18f9 in / 
# Wed, 25 Apr 2018 18:20:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4b92325dc37b1db5a85249c2720897e4137dfd720a009144e01051eff33c8013`  
		Last Modified: Wed, 25 Apr 2018 18:47:25 GMT  
		Size: 61.7 MB (61742728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:f58b85f5d394ffbb1813e803d90903e10ba76025c1154eac73630faa67e98392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2156646f29c21fac1a882a4e91716a357ffaed85f689520a74ccb10ba85989b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352997677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac583af12ac7c54f482f18f528b7a8d5301237dffc6fdbb93ffa24de54df002`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 25 Apr 2018 18:19:59 GMT
ADD file:6f2423e0c7f8eec427c07eaf632895f73ff9a3d7ead3fe0b02ca95f3deaf18f9 in / 
# Wed, 25 Apr 2018 18:20:00 GMT
CMD ["/bin/bash"]
# Wed, 25 Apr 2018 18:20:48 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=D_KCpIT4RgFgTnGVHbv96W6XS_GUjpKK"  && echo "c0d5af8d6639a719469cd564835831a7cebb8683d40c82ce38172fda5fb43acc /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4b92325dc37b1db5a85249c2720897e4137dfd720a009144e01051eff33c8013`  
		Last Modified: Wed, 25 Apr 2018 18:47:25 GMT  
		Size: 61.7 MB (61742728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb437d675a1cf5030aac67b4bf9e1129093cf1e6bee88f066982dda3cf0dd54e`  
		Last Modified: Wed, 25 Apr 2018 18:54:20 GMT  
		Size: 291.3 MB (291254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
