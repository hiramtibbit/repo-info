## `debian:stable-backports`

```console
$ docker pull debian@sha256:07793cece750c76a7f32783e51a5a8c207839d98da7994473e6c4b3db3f5f54d
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
$ docker pull debian@sha256:32e5fab53b50fe71b0f012c96327ebbce7f79d03ae028ab75e222109dde36808
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45310170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae1d0551bd217bab6907f78c8aa0c45408eeb1e33829097af30cf9546b11368`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:23:32 GMT
ADD file:7085adbfd5f9c04b79fa8968b5d80db6edd2c2983b0b73b41f7c7e8a9fffb76b in / 
# Mon, 15 Oct 2018 23:23:32 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:23:42 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:70f1e5d4c68e0ff64c60c067f554250917cd3f7fd56490d468db16e1277dd075`  
		Last Modified: Mon, 15 Oct 2018 23:32:48 GMT  
		Size: 45.3 MB (45309946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b6735b4ec30d797c6140415e1a25cac26546e7a2799633bb18df60aee0d928`  
		Last Modified: Mon, 15 Oct 2018 23:33:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:7bbf3700bece62421fd8ba0a4d61714c9f64b365f16f92c435371b68e73638bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8c8e9acbedbce497a722113b4691fc5f1538326b49dca7f9e638dc1c655efd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:07 GMT
ADD file:0809091f9e3a6ab3c93f51563b6d053987622507feb5ec98ec06d9537004cddf in / 
# Tue, 16 Oct 2018 08:54:11 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:54:19 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a0700146d497b4cd40830f8e1917f54b325b415c363062108e7553fc5a3c391f`  
		Last Modified: Tue, 16 Oct 2018 09:03:07 GMT  
		Size: 44.0 MB (44033084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065106a6a027561289d31f8e640697df44121089e62c5539deabe455fc5b707f`  
		Last Modified: Tue, 16 Oct 2018 09:03:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:074d1e4bcd7e64386ec45f51f9890ada33b966dcd410299cfffef527a68b1003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f5927681eb859915cff84ed50b8a29e142cea8aa421f643d7bdb02072dd869`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:03:05 GMT
ADD file:ef4c7c43270fbea7c04a0f1c2ea6eb5b90351c6ccbc2719d52eeeeb89c429f21 in / 
# Wed, 05 Sep 2018 12:03:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:03:22 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:766cc14f8a116f7325c5d6be33b2f9c244e6c2d5dd5d170ec14c0158acc35df8`  
		Last Modified: Wed, 05 Sep 2018 12:12:04 GMT  
		Size: 42.1 MB (42062658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d05bda36a7df5b9eb2a70842884e896e4afcc6d4b2a15f18bd6f6de9842c08`  
		Last Modified: Wed, 05 Sep 2018 12:12:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:865acc4b24c94b453475d8f150008ae5330fe3cad9da5ff6efe3809577885301
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249424adab476d4cc220d6d20aebc93b3f04c3612e7adcb3c5aac8bbb2df349b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:42:10 GMT
ADD file:9e5ed8f10611122b584402d6a33adf8135b5ef8609e32cfcb922f54f37c30e17 in / 
# Tue, 16 Oct 2018 08:42:12 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:42:23 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ae9d67f09907eb4cecb3acc391e2b77f188b0b2c6474c4746128e521483ec3cc`  
		Last Modified: Tue, 16 Oct 2018 08:48:34 GMT  
		Size: 43.1 MB (43123647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7062efa2acfb515cdd6d64514070f67009b902afb203d8e454227fd1b5294e`  
		Last Modified: Tue, 16 Oct 2018 08:48:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:73f755a2c37d7cf296d684ea6f248b6178aba34fe457ff7454435faff157bf59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46039428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e649dca6de4172e0e1934b12ea60e163aed874938aee38ae11692b8fe21e3f51`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:46:50 GMT
ADD file:2480704e6776d669880048c049a37d99ad9ded4c2d7ada23687aa15e4ae00b52 in / 
# Tue, 16 Oct 2018 10:46:50 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:47:06 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f731ea8d7f5f7176facf26799769e8d903ac8b21607d607c9d5c6799daa202c5`  
		Last Modified: Tue, 16 Oct 2018 11:03:15 GMT  
		Size: 46.0 MB (46039202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbec0b40230c9e93c85eeada7fcf13502088785e83aa53561fe731f81e466649`  
		Last Modified: Tue, 16 Oct 2018 11:03:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:c4720a7693f785e4066c7afbcc1704b110c2221a79283980c8a05222d94773d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45595741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a8023b18637e079813cfb298f671bc5dbfd2d7397b092dcd02e71cf3ce291a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:40 GMT
ADD file:95ab5df3ec85723a07496dcf91adc6de249f7305d238b092f5c92fc7808e18b6 in / 
# Tue, 16 Oct 2018 08:21:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:21:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d756134abe797ac0293cd3d4f045e3096c8170a7d6c9297914537946ce571386`  
		Last Modified: Tue, 16 Oct 2018 08:28:43 GMT  
		Size: 45.6 MB (45595515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3aa5aa8847a6a485063e43cca032bc604aadaca1d89ec19ccf6b534124a9ed`  
		Last Modified: Tue, 16 Oct 2018 08:29:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:18903ba77005b9af0dff385aeea9532d0048fd43463b8ed255032bdbda5db876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a16198e840a6b06931738551877263a9278c52915177b892f427ffa66be812c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:07 GMT
ADD file:d94fb12c03952df95bb5ce1638ed3160d6d9df5e37c12b8878b5d0d36d488e97 in / 
# Wed, 05 Sep 2018 11:43:07 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:43:23 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e1b92bfa5f119982e1f0e600f5712b213ab851afe7a5d2bb52e89c129be4a71d`  
		Last Modified: Wed, 05 Sep 2018 11:47:54 GMT  
		Size: 45.2 MB (45199599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc088a47dd1de955a1f0fdef609890c8a7c3bd8bb7061a86be9367f3dbc90ca`  
		Last Modified: Wed, 05 Sep 2018 11:48:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
