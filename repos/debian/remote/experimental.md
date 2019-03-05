## `debian:experimental`

```console
$ docker pull debian@sha256:8d4ff29a28626437cf64c7072d9af6037ca9e541d72c49988eddd95bd7ebf73b
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

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:bde59018f0a553ced0909e7719a2f1120adb9cc6a3e67df449700ec279c55a30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45702445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338440dd0274a9e3c4e00c883e5fd1988c35cb43512b74a89f3097fa2efa442f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:12:27 GMT
ADD file:7b9720179a8ec8d84440d32634feaa32418132b21c6b617eabfceed4b8cd85dd in / 
# Tue, 05 Mar 2019 13:12:29 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:13:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1b62d14f03408d74c2e84f03e2cbc20e07cff425f8a442a9484c91dc144fc684`  
		Last Modified: Tue, 05 Mar 2019 13:19:30 GMT  
		Size: 45.7 MB (45702224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be90845e59bf2f4ef50db634d35b6f5340fd647962e761402aa9b815a78071ba`  
		Last Modified: Tue, 05 Mar 2019 13:20:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

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

### `debian:experimental` - linux; 386

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
$ docker pull debian@sha256:b784714bb50fcd622ab127e62cedc7c0068599f0429fce245a742695bd8bf685
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48790249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7579333d4ecbcae8bab43be1546851d4ea8ca922799aa3e574ec4de69b13a77b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:38 GMT
ADD file:5eec8d65f9e3c4ac15072cd898edaa36658c626a50d4bd2a1b71d2e01cb77541 in / 
# Tue, 05 Mar 2019 12:43:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:43:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5a954fadc1726aa54af37ef342a0c96dca0e31b7c709f565ae3489b549085120`  
		Last Modified: Tue, 05 Mar 2019 12:46:20 GMT  
		Size: 48.8 MB (48790027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df026e8303744af2b9c129d148512e7bc0808a9cabbf1af69ce8b8182b40cd0d`  
		Last Modified: Tue, 05 Mar 2019 12:46:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
