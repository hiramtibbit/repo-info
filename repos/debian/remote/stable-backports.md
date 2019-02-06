## `debian:stable-backports`

```console
$ docker pull debian@sha256:ce223313f0b3f218f7a702e3a502f15588d171e21fb9fc9ba306c54bed4e4435
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
$ docker pull debian@sha256:75ab8c69173443a0f8de8d29b087a8b71a0187c76501a49be119482d88c61128
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45344473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373db650ddcf74ad9af076a28db52e95f80ef08857cf57cbfbde6465fbf4e1d7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:29:27 GMT
ADD file:5418774c69c156bc9cb0a70e7c467d8ff17ec13869abf7cdcfb9bc28b13a270e in / 
# Wed, 06 Feb 2019 03:29:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:29:32 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4211ccc529e4414b5c428938021537a3b0f16f3cc4b67cccc4cba96b6fce40a7`  
		Last Modified: Wed, 06 Feb 2019 03:35:16 GMT  
		Size: 45.3 MB (45344250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5e87a7a0a5983d9fb2deb93f06ca39b380b8d7a3730d0426dba69d17dbee4f`  
		Last Modified: Wed, 06 Feb 2019 03:35:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:9ebbce1c0c77ec3af367f461613ed3e9b5b127359e069e83153ffa7a40ce54a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44050992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fbb640e25f465a4b889b267e1995418d9314e3641f40d55b8177889cad502f6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:54:22 GMT
ADD file:3b681f004afbe5bb80f7cc01753c446ea7e274671ef628d96fc4ce23af9a03d1 in / 
# Wed, 06 Feb 2019 09:54:23 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:54:30 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a312eaaee07e9d8903a55948022697e8edf0e8cbcb0194e681c7fdef89d14c5b`  
		Last Modified: Wed, 06 Feb 2019 10:02:55 GMT  
		Size: 44.1 MB (44050767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8993326e2da18145ed2c792aa3fff51440f6815b8e2a4ffce3f9a33ef8c2be`  
		Last Modified: Wed, 06 Feb 2019 10:03:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:3555df11435259926a58593ae57d862b5b2c054f86d35a43cc2505a5b3a20833
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42087905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0c62e212686d11823014f0fabd1b5c83a89b4de1cd01cf1e46a34e852c65fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:03:31 GMT
ADD file:640878a068b6efeab40ff913c1eb8cae4d8aa2816c26107834ece8d48b5af8c9 in / 
# Wed, 23 Jan 2019 13:03:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:03:39 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:60d9fa6a98aeaa705b523384f8b51b2516863efcfa0a88c0e658f6da8574f0f7`  
		Last Modified: Wed, 23 Jan 2019 13:11:36 GMT  
		Size: 42.1 MB (42087680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a838ff7c69f6bc2c5b70c7e00d8cacd1314334b8e1be01989532fb0d715e03`  
		Last Modified: Wed, 23 Jan 2019 13:11:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:edb23e6aecacaddaa24234da609ddb520e488973c7de6cf55cf2abe7fa726137
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43125230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f2769b67b4150c7cca71676c65f420d05991f17b5a8f80c6ae846dc27d1ec4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:01 GMT
ADD file:caf2373af821f5faaa9cb00b949c251b8a26c5e5a7dddb4bcd87e683fc2a4dce in / 
# Wed, 06 Feb 2019 10:08:03 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:08:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:85e102c119ea03c6ba5b8bbb0982348a2024fd455bda03cd9f258eb28487b0d7`  
		Last Modified: Wed, 06 Feb 2019 10:13:44 GMT  
		Size: 43.1 MB (43125006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aa05def6ae2afbf1de84dd0c65a44a610b2b221dc7c1879b054711660e4fe1`  
		Last Modified: Wed, 06 Feb 2019 10:13:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:ff03cd9cb9b7781434241017e94d234f0bf2b3c3e7d2efb7dd86e6d50ed8b31b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46069740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d27467428f7526b2966b47f9dffc74e08b9627be34e4eeae5832fa951a8b9e1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:50:41 GMT
ADD file:7a106c407322c99bf1cda299079c8ce2cefc0320d7eb53cfb46e8ea24c77209e in / 
# Wed, 23 Jan 2019 11:50:41 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:50:51 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bb14efb162bd1b51c7b293831aa8d904d46d45cb111a703997b7a188e4d4a61a`  
		Last Modified: Wed, 23 Jan 2019 12:01:47 GMT  
		Size: 46.1 MB (46069518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6027b086f0e4730abb876f8d80fb715759f9d296f15913907349515240cb7f`  
		Last Modified: Wed, 23 Jan 2019 12:01:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:12db920a5b9987c2dacbc5a5c345b713c47ab1d56fe0ce434e25020b4dd351f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45617170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75cfd6c275c7f48cd75d431b9b1845c95191e1d266e520fd9a4933c7383d21c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:25:54 GMT
ADD file:762cc8642000d1d4216db1e8bd139386a3e13550a16a84128f9e12da924a3b80 in / 
# Wed, 06 Feb 2019 09:25:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:26:08 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:38ee9022de2f84c4aa4cfd73b9b0c47c0d8f43e6d6ccdec9279a83dadc197aeb`  
		Last Modified: Wed, 06 Feb 2019 09:30:12 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da4c04b61c032764354055134f6cb667af12e9df4b11c15e946bbbd6747ca29`  
		Last Modified: Wed, 06 Feb 2019 09:30:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:3f9ad76e029dd48584577ad2a76237d0c310d3f833a6f07f6750783fee05633c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45215010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c087fd6a0ed914d133d8ff9857c628c71c80a40f5ad0bb2564bbdfc0cd4d3ca1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:43:13 GMT
ADD file:fabcf582fb3859c118d77710bfa8ad964a947f02ccae946c335321b3fe2cdf4d in / 
# Wed, 23 Jan 2019 12:43:14 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:43:25 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6cf9fd7aa362657ca8a37e9ea76bd618ea7384c7647c43320eaa773d74e8435c`  
		Last Modified: Wed, 23 Jan 2019 12:48:09 GMT  
		Size: 45.2 MB (45214787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8286096306e3f38ee661ae90a70f8098662f4c7e90dfc80137711330648bd983`  
		Last Modified: Wed, 23 Jan 2019 12:48:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
