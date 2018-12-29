<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.2`](#r-base352)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.2`

```console
$ docker pull r-base@sha256:f03d903f65aaf9841693ae28e8ad57904f324ce00e95aa1efefdd5c576e5c603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:3.5.2` - linux; amd64

```console
$ docker pull r-base@sha256:b340083dbd552bd3c25e2a16bb6d1758148a131950ae0970fdf22115de586b19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276282928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:578644a0540c359c16b251d5336c60936b88333fa7047a95c05fbf67dee7b8f7`
-	Default Command: `["R"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:31 GMT
ADD file:a724d750a6a6b4db2c85aef0975bfbd47353ffb062cc83bea1315c2b99fcfbae in / 
# Fri, 28 Dec 2018 23:30:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 04:18:48 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Sat, 29 Dec 2018 04:18:49 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Sat, 29 Dec 2018 04:19:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:19:05 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Sat, 29 Dec 2018 04:19:05 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 29 Dec 2018 04:19:06 GMT
ENV LANG=en_US.UTF-8
# Sat, 29 Dec 2018 04:19:06 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Sat, 29 Dec 2018 04:19:07 GMT
ENV R_BASE_VERSION=3.5.2
# Sat, 29 Dec 2018 04:20:20 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:20:20 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:1247b6b6609908f2288b1a2c83c12b16fc03e2f70d9943d2a7fe0376f557b2ab`  
		Last Modified: Fri, 28 Dec 2018 23:36:16 GMT  
		Size: 49.5 MB (49487371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b018b024ba875a26889200d764370d5345f5f8d8ffcea9ff4d991236286a3dc6`  
		Last Modified: Sat, 29 Dec 2018 04:20:37 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204df710caaf3e5fc5f974ee9c395135d273fe87e3b857140aa0cacd740af657`  
		Last Modified: Sat, 29 Dec 2018 04:20:43 GMT  
		Size: 27.4 MB (27382249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b021e744ddb8fbc58f4223855b45ee7b28e5c3c17723d01525ce09e0872c154`  
		Last Modified: Sat, 29 Dec 2018 04:20:37 GMT  
		Size: 862.9 KB (862896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf649f4bec24021cd1c05f74194a7b836fae4c3403792d6a114ffbb57e72e734`  
		Last Modified: Sat, 29 Dec 2018 04:20:36 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa262b4ed425a0dd8c1d4cbca3e88c83a16e25082166ead6f3d0aac6b895534`  
		Last Modified: Sat, 29 Dec 2018 04:21:21 GMT  
		Size: 198.5 MB (198548130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:3.5.2` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:a991e94934eed652d41b06106bf68ff09430d228456ad192a0ea5eb8747eab58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273220438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e54c8679b70faccec1870a2bf52ffb0b3776d9d0e9ae5fa336573bd0157b1e4`
-	Default Command: `["R"]`

```dockerfile
# Fri, 16 Nov 2018 10:15:16 GMT
ADD file:937577421f0867c67ae994eb69f805a1d74501049d75d7b73c1735418451c4e6 in / 
# Fri, 16 Nov 2018 10:15:18 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:09:10 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Sat, 17 Nov 2018 04:09:14 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Sat, 17 Nov 2018 04:09:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:09:58 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Sat, 17 Nov 2018 04:10:00 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 17 Nov 2018 04:10:01 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Nov 2018 04:10:03 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 25 Dec 2018 10:47:24 GMT
ENV R_BASE_VERSION=3.5.2
# Tue, 25 Dec 2018 10:57:40 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 10:57:42 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:366710b6c066ef845c822cfeff3ca7f5eb889595e5e2a8ee91a55c1b5c748eb0`  
		Last Modified: Fri, 16 Nov 2018 10:27:15 GMT  
		Size: 47.6 MB (47624349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60cc6a88f78f2edf4b7335420fd226cceda890b2d4ce23fb816185c436b1402`  
		Last Modified: Sat, 17 Nov 2018 04:15:18 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb573554dc94f088e12a82287b571b29864c913d1537898495323ece0d30e05`  
		Last Modified: Sat, 17 Nov 2018 04:15:29 GMT  
		Size: 26.4 MB (26369270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09df0502f689a3ad65eb55e3d629ecacbbd93b44ce7d23162f56760d1c89f5fa`  
		Last Modified: Sat, 17 Nov 2018 04:15:18 GMT  
		Size: 426.6 KB (426568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75d4e33522e4a01f74f87763b22d25dc845386e2d360787999c07a4f0d0aadc`  
		Last Modified: Sat, 17 Nov 2018 04:15:18 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b0b93a14d0670164a8d220de04f3e6c95e74c82fadf7020aeebb1bf702ed88`  
		Last Modified: Tue, 25 Dec 2018 10:59:06 GMT  
		Size: 198.8 MB (198797963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:e5c1cd83daed2444b49d2ed9c291b8f9180e326585b6b30782708f66f2f59cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:4599e5693bf092d4a86a4118ccbdc5c6aadfa4e4f28c267392180333be84119c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (284995625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6960d5ad9955c68a8210e34c35b17a98e9118faf5dc93be70216614e03f4f54a`
-	Default Command: `["R"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:40 GMT
ADD file:eb3d68d2b0b95b94b9aa643237e4a58b0064adf49c911a4b24c5f3462d5996f1 in / 
# Thu, 15 Nov 2018 22:45:40 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:44:00 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Fri, 16 Nov 2018 16:44:02 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Fri, 16 Nov 2018 16:44:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:44:31 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Fri, 16 Nov 2018 16:44:32 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 16 Nov 2018 16:44:32 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Nov 2018 16:44:34 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Mon, 24 Dec 2018 22:28:04 GMT
ENV R_BASE_VERSION=3.5.2
# Mon, 24 Dec 2018 22:29:19 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 22:29:19 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:a9fbe1ece1ae9e67f6fca42483328c601c0de143b82111aaa00366cfc9b64360`  
		Last Modified: Thu, 15 Nov 2018 23:16:57 GMT  
		Size: 49.2 MB (49205113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d951f0dc37ef5968cbfc54cef21e32971be82cdc852657954c5c2eb7f63f5e74`  
		Last Modified: Fri, 16 Nov 2018 16:46:44 GMT  
		Size: 2.0 KB (1974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55c93dc15920ef27149f148d78c7c3cfda93877d94c956ec17a9f02fc1fcd6d`  
		Last Modified: Fri, 16 Nov 2018 16:46:51 GMT  
		Size: 26.5 MB (26501908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b170e5f28eebc7ea1f557f1b61ef7a9b9e102ba66d09f1bd31b794f32911a9`  
		Last Modified: Fri, 16 Nov 2018 16:46:44 GMT  
		Size: 426.6 KB (426571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37292413392724f87acaf70e3000b01022150cd1e60d31f5827328ccbdd57449`  
		Last Modified: Fri, 16 Nov 2018 16:46:44 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41e912a15b1a40172fa52d48575eda231656a89d7d069ded0e8994ef86e8054`  
		Last Modified: Mon, 24 Dec 2018 22:30:05 GMT  
		Size: 208.9 MB (208859762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:a991e94934eed652d41b06106bf68ff09430d228456ad192a0ea5eb8747eab58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273220438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e54c8679b70faccec1870a2bf52ffb0b3776d9d0e9ae5fa336573bd0157b1e4`
-	Default Command: `["R"]`

```dockerfile
# Fri, 16 Nov 2018 10:15:16 GMT
ADD file:937577421f0867c67ae994eb69f805a1d74501049d75d7b73c1735418451c4e6 in / 
# Fri, 16 Nov 2018 10:15:18 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:09:10 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Sat, 17 Nov 2018 04:09:14 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Sat, 17 Nov 2018 04:09:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:09:58 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Sat, 17 Nov 2018 04:10:00 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 17 Nov 2018 04:10:01 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Nov 2018 04:10:03 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 25 Dec 2018 10:47:24 GMT
ENV R_BASE_VERSION=3.5.2
# Tue, 25 Dec 2018 10:57:40 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 10:57:42 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:366710b6c066ef845c822cfeff3ca7f5eb889595e5e2a8ee91a55c1b5c748eb0`  
		Last Modified: Fri, 16 Nov 2018 10:27:15 GMT  
		Size: 47.6 MB (47624349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60cc6a88f78f2edf4b7335420fd226cceda890b2d4ce23fb816185c436b1402`  
		Last Modified: Sat, 17 Nov 2018 04:15:18 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb573554dc94f088e12a82287b571b29864c913d1537898495323ece0d30e05`  
		Last Modified: Sat, 17 Nov 2018 04:15:29 GMT  
		Size: 26.4 MB (26369270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09df0502f689a3ad65eb55e3d629ecacbbd93b44ce7d23162f56760d1c89f5fa`  
		Last Modified: Sat, 17 Nov 2018 04:15:18 GMT  
		Size: 426.6 KB (426568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75d4e33522e4a01f74f87763b22d25dc845386e2d360787999c07a4f0d0aadc`  
		Last Modified: Sat, 17 Nov 2018 04:15:18 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b0b93a14d0670164a8d220de04f3e6c95e74c82fadf7020aeebb1bf702ed88`  
		Last Modified: Tue, 25 Dec 2018 10:59:06 GMT  
		Size: 198.8 MB (198797963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
