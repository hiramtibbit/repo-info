## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:4835c1618247e161ef8c8c68bbc5a968dd6182b7245d03f9ef37d32ee7cd8057
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:951e7f1d6b5f7cadb9c8c0887e319e3bfa55b3ca861db67fbf5ca5ad7197386e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66388106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a445af0ed80c96eaed0391d3adc3886dc4eef7b70d8ef15f164d7eeb34e6ea7`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:32:12 GMT
ADD file:0dc58768faa0403918d16823eee1547c7ee299249251e279d3378f8b8522ffac in / 
# Thu, 15 Nov 2018 22:32:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:03:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bac5159b230a9f6ac8aedbb940e99daf2f02c4f92812d766769e555262fbc162`  
		Last Modified: Thu, 15 Nov 2018 00:59:39 GMT  
		Size: 49.2 MB (49205033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dcb6f1e458a3233a57c16febe4a40e3ae5780b74b94a52bafc9e262933ad85`  
		Last Modified: Fri, 16 Nov 2018 11:26:19 GMT  
		Size: 7.4 MB (7402874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38df35355b734c6068bc54bfedc04195e3bb3d4f5236a3bc903343dc72e9fcf`  
		Last Modified: Fri, 16 Nov 2018 11:26:19 GMT  
		Size: 9.8 MB (9780199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:8cb0bc13295d92e81c2addd4de74546cab1ecde8a17e7d5dae9c9c025a096791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63378782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cc004311db054043e170aa94db195d4dcb7a28db0b93f14b9da57311920242`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:49:23 GMT
ADD file:55896315b7ef5586d847e7a4c0d5139b8c9531fe2f8332b78bfb636444f271bc in / 
# Fri, 16 Nov 2018 09:49:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:23:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:23:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c4e8885dbda050e61d87d2967be5d4c4210ef4a7a8ff02b3a3dc5cc8a86aa391`  
		Last Modified: Fri, 16 Nov 2018 10:04:31 GMT  
		Size: 46.9 MB (46931179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f683b85e61bb707af8950a4f7dec4e280cb1d6119ae2bcf46b8fff647e1841`  
		Last Modified: Fri, 16 Nov 2018 18:44:37 GMT  
		Size: 7.0 MB (6965514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291049214a4981bd0be2125b55ee2901b241a302df6289671b61bac4d5db522`  
		Last Modified: Fri, 16 Nov 2018 18:44:37 GMT  
		Size: 9.5 MB (9482089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:645be4b5c253d48efd27e433b9dc490107a7b085796aba7478b655ea4094a876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60625870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab834fcd1770047a6e50203c129a6813961ab933656b7b3128e93cff7bd756f9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:00:55 GMT
ADD file:2976046990378ced866255a67ab36afc20274c7b7af11d96300f357ae570d877 in / 
# Fri, 16 Nov 2018 13:00:57 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:03:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:758d221cc9f1d829545f42705b953283848c2970959d33397947eb388502c740`  
		Last Modified: Fri, 16 Nov 2018 13:14:17 GMT  
		Size: 44.7 MB (44745182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c655f76e646f5b029bea2d42a53f727c7f489243b79e20960371d652c0d86f8`  
		Last Modified: Fri, 16 Nov 2018 18:25:42 GMT  
		Size: 6.7 MB (6732485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74641850b740f2687bcd75eab71f7fd7fc95961f4bd1395bb30a12e302bd9d46`  
		Last Modified: Fri, 16 Nov 2018 18:25:42 GMT  
		Size: 9.1 MB (9148203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0b8b1cc65cb217e431678797c4bf167d657a7537c6fdce3b19fe7579d9540cbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64486313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1708b69cf648d4f4d4cf458f48f414bdf7cea7baf352ca4f21b1228c8738182`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:40:40 GMT
ADD file:4857face4d6b661dcc7389904203bb3aedcdfeb0ceedc8b362dcc3636ac7459b in / 
# Tue, 16 Oct 2018 08:40:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:37:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:38:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1ed8cd8fb3aa00c426f795dd579c1c7f16ed6d507fb199daa1900248272311ed`  
		Last Modified: Tue, 16 Oct 2018 08:46:20 GMT  
		Size: 47.3 MB (47316581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f263d5e42e5eb9d21509fd326000e0575d3b4e46c546450dc9f165412d014a71`  
		Last Modified: Tue, 16 Oct 2018 12:19:04 GMT  
		Size: 6.8 MB (6788429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077bd122c26d8eff28bf2faf8d28334884c010a76ab8cf7071fd89e4ba8bc2f9`  
		Last Modified: Tue, 16 Oct 2018 12:19:06 GMT  
		Size: 10.4 MB (10381303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ec8b9fb55bc28a39988678ba1c0dac41cef728b7c8ad8f39c56a799e58fd32d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67797913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64649685f5c8ce7a7653ec49ca0e4147bc9512917676347fd6f4f58228b08f69`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:39:53 GMT
ADD file:6d95f34a7a35e94aa5299a896bdf872f905e92932bc7c4d42a4069fc89eca53b in / 
# Tue, 16 Oct 2018 10:39:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:18:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:19:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7f8c752f7c0d3f6a123acc3888d30f9321af66fe6e988ab7a317b045e266371c`  
		Last Modified: Tue, 16 Oct 2018 10:54:12 GMT  
		Size: 49.8 MB (49806685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a75c4ad6479c164b84a502482d0ab6ae27f284a4bd2c08d98cf1b06a47803ce`  
		Last Modified: Tue, 16 Oct 2018 21:36:50 GMT  
		Size: 7.2 MB (7234834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2715170fd5ce9d58cd4022b0a01cb6fbb7fb58590bf62d6b4eb7758e3c87d`  
		Last Modified: Tue, 16 Oct 2018 21:36:50 GMT  
		Size: 10.8 MB (10756394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c86ba9d2fcecfa7942fd2510a220f755f2761ba6ff5ee28e7b70c101d2b267aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70679703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8099f63693fe446d44131886a8034a81750ad021ffbd6d0599958b63512ac7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:28:16 GMT
ADD file:4b38735441c9ecfeb498b5f35e2dce32ce6266641582b4aaefaf26838f579582 in / 
# Fri, 16 Nov 2018 09:28:16 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:02:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:03:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4aa2b7aee025832a6b13b63dd84f13be21616514ba164fb085cfb78de7ea6b82`  
		Last Modified: Fri, 16 Nov 2018 09:35:43 GMT  
		Size: 52.3 MB (52323593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0b5eec54f4da9dcd938876eb68273f994772ce7ab0564900fbe0192f843cd`  
		Last Modified: Fri, 16 Nov 2018 19:39:57 GMT  
		Size: 7.8 MB (7832689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd1d81c3f1e0272bd32df2553619029171f52971a00c173fa4fc9d023763c60`  
		Last Modified: Fri, 16 Nov 2018 19:39:57 GMT  
		Size: 10.5 MB (10523421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2b586150bf271e09315843dc17def2f3f36e2d142ad17db0b25cd410a6ba5031
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64753330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d4b3dbe2f00317f65ad9de923cf9d1fad5d8e7f0f169dbfbc61a990c1bfa74`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:41 GMT
ADD file:9daec189760e25c2544e1084dbf7197aa29a620b4091da7c9c55ef572167d5aa in / 
# Tue, 16 Oct 2018 11:41:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:49:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:49:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:47a977b6dc33ea563dc77c6d42fa21af28ece361f1d2464d4763e172f9a199f3`  
		Last Modified: Tue, 16 Oct 2018 11:44:05 GMT  
		Size: 47.7 MB (47705315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29733cd7ba0daa54bc97f680f6543af2c1846e0e6fb6fb044aeb80b22da4e5cf`  
		Last Modified: Tue, 16 Oct 2018 12:56:03 GMT  
		Size: 6.8 MB (6769342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e31c151b6eb0d0e80cdd250f93b447678bc61b17623a7e0aae840634633870`  
		Last Modified: Tue, 16 Oct 2018 12:56:03 GMT  
		Size: 10.3 MB (10278673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
