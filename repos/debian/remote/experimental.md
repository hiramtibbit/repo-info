## `debian:experimental`

```console
$ docker pull debian@sha256:d66c85a53c9a4193c71523ec5c0373f4abc78d69a1959e5acc0c2c920cdf0103
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

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:97e4dd688f1825cfd6c816924f1533280c17fa70b0958cc412f4bde1da598d17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47788317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f8bb6e20a73e394cc012740ecf77a2a28b8069e7e0e2900d0dc91df9876a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:57:15 GMT
ADD file:dd005d261446ee86ca6a68dcc9d69e14abf4ac29333d072829053c9b42c27727 in / 
# Wed, 06 Feb 2019 09:57:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:58:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3d0b95750579509a12e11ffc6bcfb6c2c683b0744a6e0d98d118fab3ecb282f1`  
		Last Modified: Wed, 06 Feb 2019 10:04:52 GMT  
		Size: 47.8 MB (47788096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7922497f4e59223b13c61609b2b0d2b25fe89ea64cc3132181919482f86613e`  
		Last Modified: Wed, 06 Feb 2019 10:05:52 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

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

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:02e8f69265c9c23db05a404dfd7d2eb63fac3651ff2771e7d4f73dba5f758ac9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48820912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f114dea478b873a9d282674e49830eabd4b4ca2682bbdca9f4e8618f421feeb1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:10:33 GMT
ADD file:e12ba7776b4aa40f80ae353ccf5987cd6527b2f0eed7718a51775a633d2f3724 in / 
# Wed, 06 Feb 2019 10:10:34 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:11:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:cbd8738a66237a64f81e747501c78f912c041c878765aa7b36e97d96d626a155`  
		Last Modified: Wed, 06 Feb 2019 10:16:13 GMT  
		Size: 48.8 MB (48820689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8bec25e3ef76dd8da638cfb29167b2884ccd550abfc81ebec8aa4beceaaf24`  
		Last Modified: Wed, 06 Feb 2019 10:16:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:dcaaeecd81e5ed52b33b4ebd10954f0cf18e6130509d7529dc16ef637c08d49e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50830217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46eac928f4cdfe85ee9ae197ff094f69d69e2aa98c217d7335986a6a84de2e65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:00 GMT
ADD file:9275cca8a9aecd01ce847ca14bb77e7b006d90de0df5df690a051e851202a889 in / 
# Wed, 06 Feb 2019 12:02:01 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:02:43 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e722f3800525c257417a590a744d57955a1b5ba37bf79409724f8d461a3756a7`  
		Last Modified: Wed, 06 Feb 2019 12:08:52 GMT  
		Size: 50.8 MB (50829997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db27e648c0da45abbd9c897c64acd16d2144aab4221152762fbf87574ab34cf`  
		Last Modified: Wed, 06 Feb 2019 12:09:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

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

### `debian:experimental` - linux; s390x

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
