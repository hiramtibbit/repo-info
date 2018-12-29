<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.2`](#r-base352)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.2`

```console
$ docker pull r-base@sha256:123608690e799de92bca8556ef3e50df42878e1ec323d2a26530d39b4ab90da2
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
$ docker pull r-base@sha256:450f6fe2d07cd3a8f88f9eaf2694749158d81100bef6218b6be6c7a7bfd7ddca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.1 MB (263136450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca877d4259354b5ba28abf4be7e20f4dfc77855390a4bedf7e8e05a9e1940e3`
-	Default Command: `["R"]`

```dockerfile
# Sat, 29 Dec 2018 10:09:19 GMT
ADD file:4ab930c4d85615617e03ff4ce67a12a00dda14503e9902840d666287353d75b3 in / 
# Sat, 29 Dec 2018 10:09:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:48:56 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Sat, 29 Dec 2018 17:49:06 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Sat, 29 Dec 2018 17:50:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:50:17 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:18 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:19 GMT
ENV LANG=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:23 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Sat, 29 Dec 2018 17:50:24 GMT
ENV R_BASE_VERSION=3.5.2
# Sat, 29 Dec 2018 17:55:55 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:55:56 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:d1a99e2a52d080b74cc6b32ea2983790b0244b912048dacd11dfd106af187d37`  
		Last Modified: Sat, 29 Dec 2018 10:15:32 GMT  
		Size: 48.1 MB (48142300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92a4644d775227216527c3c7df395568167245103953653ee1ea94517c23c7`  
		Last Modified: Sat, 29 Dec 2018 17:56:16 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5054cfc83c1a9f584ea20a0acf8db0b01fde70867bd0c5132b5889cdfb80c222`  
		Last Modified: Sat, 29 Dec 2018 17:56:24 GMT  
		Size: 27.2 MB (27245917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd6672b6091e263e899deedcecfd7213dad77968cdb49f56916869097e6af5c`  
		Last Modified: Sat, 29 Dec 2018 17:56:18 GMT  
		Size: 862.9 KB (862894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f9fbe67b9c6fd0fc6180a455af2a66704ca8f1dea659ece963a237dacef5f`  
		Last Modified: Sat, 29 Dec 2018 17:56:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6523733e9189a8302d941417dcea907e94600824cf62dedd3d8542d916a2ebfa`  
		Last Modified: Sat, 29 Dec 2018 17:57:14 GMT  
		Size: 186.9 MB (186883046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:f03d903f65aaf9841693ae28e8ad57904f324ce00e95aa1efefdd5c576e5c603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

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
