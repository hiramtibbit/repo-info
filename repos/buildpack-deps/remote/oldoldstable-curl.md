## `buildpack-deps:oldoldstable-curl`

```console
$ docker pull buildpack-deps@sha256:b4673359a2c017ffefa1a9694f67f8e801f790e9e6b81855195a57af1780ca65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e18a3b7f27d7462b77dee7e08057840fccc33980d50b582ba03366c85bbf5284
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44970894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd6f0b2ce5df9c4d0ee8221c4fff86bf891153437fb7daf67387ea0da6ae6d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:38:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f5430a48dacf1baf70fd8272d6cd83b9d8986c387d84a1669cfda8d230e75`  
		Last Modified: Tue, 05 Mar 2019 02:44:50 GMT  
		Size: 5.6 MB (5631119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:3c1fc964202c1dc720fc0cecb4b9f2d3f3c093967986c02c549db3c3a7da8237
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43467281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6278a6c56ba928b18dd6a864857f9af29928420637a1485ad783d1eb2d64ba`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:36:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:36:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0891945ab1b17c38d24ffb7f1a848cffed83233c1a4598027fafa409eb18e8e`  
		Last Modified: Tue, 05 Mar 2019 10:44:50 GMT  
		Size: 5.5 MB (5475061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:eff57695cc4c14932bebdf68b2d89eb86ff1318d803ffaa96e7a802e699bab32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41942047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3680922380c1cb88e2b7f40b3a905788388bd5dccf2f7097de13d5d79099ef`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:55:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:55:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e997e74caa8f16cff589d68e1ee9f8821593a90e15073f9961ee5888e23f25`  
		Last Modified: Tue, 05 Mar 2019 14:04:43 GMT  
		Size: 5.3 MB (5322096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:81b037333eff0f9f517ea20ea2d0b8347708b45296d3a832a8b7c912aaa89c64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46149951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d48de807c6e6818cd094c86d6653274805fed5a2078c773878301843f17cf57`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:59 GMT
ADD file:4fc0df88c99e9f004b54840d6cf825b24858e081c1d856547b13706c9433a626 in / 
# Tue, 05 Mar 2019 11:47:59 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:12:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:12:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:79bd0df238b04ae4a688a5691a4b088c6a4613287f0b59e96a612e1546c9ecee`  
		Last Modified: Tue, 05 Mar 2019 11:56:55 GMT  
		Size: 40.5 MB (40532914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a58f2af5ba14ad387ea7d8997765ce33ca48a5b0611806224a6d5ac6c343a5`  
		Last Modified: Tue, 05 Mar 2019 21:19:06 GMT  
		Size: 5.6 MB (5617037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
