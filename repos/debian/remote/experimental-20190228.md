## `debian:experimental-20190228`

```console
$ docker pull debian@sha256:188e3322cb22f50b68625e1d7df0b890fa1a0b32bcbe1d67c8e5fcc7ed47f638
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

### `debian:experimental-20190228` - linux; amd64

```console
$ docker pull debian@sha256:c5925b0e5a0a7bc75eed7ec931f10085158e77370d94e8b583b3cf1431a11c27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50217277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98133bdc9c68cbfa5bcd6dab9db1701762fd57d47b9535137c8ba113df3afd50`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:54 GMT
ADD file:21afa96c882fed547c5bc145b4419e96649bb47967b47a052484b58cb8a01164 in / 
# Mon, 04 Mar 2019 23:22:54 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:23:30 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c612a7d2260bd0feeec6f4e5b55cf915c19a032dddaa2b145a11092d04ff6755`  
		Last Modified: Mon, 04 Mar 2019 23:27:00 GMT  
		Size: 50.2 MB (50217057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1470cad86add0bed05954c501bafe02e68bcdc2692593b3c73126d6fc837ed63`  
		Last Modified: Mon, 04 Mar 2019 23:27:46 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190228` - linux; arm variant v5

```console
$ docker pull debian@sha256:8faaa043a647f6b97099b559c70f9518ef7a3d7fae6bb4ebf55a095b775229ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47927278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068123f06db72d8cfd0b8c60f0264154bac82d69e6f6e51cc949ce611528e4dc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:56:29 GMT
ADD file:917d137cd208a7486691f4e4930c9f5e0a001b69b4ab8297b37d71e6c65705b0 in / 
# Tue, 05 Mar 2019 09:56:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:57:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:95cd4aacf961f2df0bc658e632265ede67186cfb722378d3646f8d2abdede976`  
		Last Modified: Tue, 05 Mar 2019 10:03:38 GMT  
		Size: 47.9 MB (47927055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3058d4574dee6ddf454ccf6c06a1e0d688bfa460ca7c84b9bdc2f65c076b5d9`  
		Last Modified: Tue, 05 Mar 2019 10:04:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190228` - linux; arm variant v7

```console
$ docker pull debian@sha256:42ae863380fabb4532cdbd0a78680f70a496b936fab3791fb19912ebd1ec4546
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45567867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cf6df072b700b2ca2917b06d379f9c434f1370795e81cbcc3f47e8928fc13b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:04:44 GMT
ADD file:81c42218b01781bb60f37d99ca3d2e3b77694cf91eb13b8cda481583c1645602 in / 
# Thu, 07 Feb 2019 13:04:45 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:05:53 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6e534664d9a6530b86244c73d8bc20f25903beb8e839fc730c126e869c14f02e`  
		Last Modified: Thu, 07 Feb 2019 13:11:36 GMT  
		Size: 45.6 MB (45567643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b36a3d5da244e3ede30cd92855aa35776c864567792f4be4074ddc47ddd7740`  
		Last Modified: Thu, 07 Feb 2019 13:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190228` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:9e971000fd463c616b198d129e4c53549f2e0ff34a250242441470394c3871e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49013701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c61be8640a4eeeccb18cbbade31034ac3cc7ea36cb8f6bc396034af2ef4c0e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:02:21 GMT
ADD file:3d466d5442d950a7791289d9719f294e4c1bb1096bd7a24743f6510e85cbbf3f in / 
# Tue, 05 Mar 2019 10:02:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:03:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e5239c1afa76707df6e2fbd73964015e4ef98ee562f869ff39a5c2bc4f776f9e`  
		Last Modified: Tue, 05 Mar 2019 10:07:40 GMT  
		Size: 49.0 MB (49013477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c7b8ec444633c867ab034e2d1d8ae397275408522f435361cc85b84ba190e0`  
		Last Modified: Tue, 05 Mar 2019 10:08:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190228` - linux; 386

```console
$ docker pull debian@sha256:d8c2fbed0e0686c7e197f312b4ac617f7e9396e8f063c7bfedb1c43cc4782c0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50983654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d2d822bbbf849c238a6ed44ca287c12064204d136ede091b2ad8bc91ae8b33`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:05 GMT
ADD file:efa3d80e8c1ff9a779fe739354b40cde7044b4b8409deb2afc5e2bd16bba21cc in / 
# Tue, 05 Mar 2019 11:47:06 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:48:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:29696965512ede425bbb7a388292e0648ef87e66030057242259b5bf6331d61b`  
		Last Modified: Tue, 05 Mar 2019 11:56:18 GMT  
		Size: 51.0 MB (50983432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de10b90e157e179da028cae3b7ae130739dc616c97b1046396af1ebaecc0a5`  
		Last Modified: Tue, 05 Mar 2019 11:57:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190228` - linux; ppc64le

```console
$ docker pull debian@sha256:24f485a17861850321ccf0a18613435c2c8baaf7c481c7a3b8a892287fe3232d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53964249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02525b63c64224e6f350f55702685a21f77117cf5388ec31c2a30e13d1180faf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:26:50 GMT
ADD file:ab3832cf50e8418c9e72d7eb4394ee76db3312519ecf2fe132833344a4e1c700 in / 
# Tue, 05 Mar 2019 09:26:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:27:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fab350121f511b1b2ab90e7149e8133b690a95b3823f300cf934eb1fab84b8dd`  
		Last Modified: Tue, 05 Mar 2019 09:33:33 GMT  
		Size: 54.0 MB (53964026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92913def67c5dda9c24d2483563ccb7d3c246593af8b3eb662658aaa4a2d438`  
		Last Modified: Tue, 05 Mar 2019 09:34:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20190228` - linux; s390x

```console
$ docker pull debian@sha256:36a98602ad5138273757b388bfbf0099db44c32320d2be60b0492a5bba409033
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48643766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92560f9383b117bd91fcf8d5d6a82291a6ea6a82a56a7c103fd82acd9604828`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:44:00 GMT
ADD file:27e95e777806994d38a0eeef0b53afb4ee89f27cd53c3d29a2a55f0762052369 in / 
# Wed, 06 Feb 2019 12:44:00 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:44:14 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:737007ec629b6486dff59f6c8d967a4d8eccae4116ec33565d0a489c645cf38b`  
		Last Modified: Wed, 06 Feb 2019 12:47:34 GMT  
		Size: 48.6 MB (48643546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4603fbcf2014cec04415a6d18ef69d522fec63c7cea1e2e5ea6f56ff79f197a`  
		Last Modified: Wed, 06 Feb 2019 12:47:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
