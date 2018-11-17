<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.1`](#r-base351)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.1`

```console
$ docker pull r-base@sha256:8727aa71bf493ff52b74b414d7381854bb4268aca447adf1e3246137dca5fea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:3.5.1` - linux; amd64

```console
$ docker pull r-base@sha256:2074d630cb770b0295fbaa60fa838e97dcb872641b13e9216941e669baf6232f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300531511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9edc1a85ed563397fc2960ea1ff5c374fb0150a1d8188efbda3eaa09ee1cbb`
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
# Fri, 16 Nov 2018 16:44:34 GMT
ENV R_BASE_VERSION=3.5.1
# Fri, 16 Nov 2018 16:46:11 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:46:12 GMT
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
	-	`sha256:1a6744787bbd2235ee2caa5b5f8892c46720dd72c07a74823f638f70b191ed5e`  
		Last Modified: Fri, 16 Nov 2018 16:47:41 GMT  
		Size: 224.4 MB (224395648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:3.5.1` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:4447ca116e165e373610fdbfedfd4b859b7522b6807b35240b1ec1c9e9efbdbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287508877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed374c1c436f1ab44ae1545b07991da9bbdc231d1d63c900e9a1102879ac46f5`
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
# Sat, 17 Nov 2018 04:10:04 GMT
ENV R_BASE_VERSION=3.5.1
# Sat, 17 Nov 2018 04:14:51 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:14:53 GMT
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
	-	`sha256:4ae5f9f1f1bc1e59703004cfdb0cb3e4ae0dd04f9f51876f3ae8a9df57741f73`  
		Last Modified: Sat, 17 Nov 2018 04:16:31 GMT  
		Size: 213.1 MB (213086402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:4c539345f7053c850e927456e4f02424d229c579881384efcc49f5be59ed2e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:2074d630cb770b0295fbaa60fa838e97dcb872641b13e9216941e669baf6232f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300531511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9edc1a85ed563397fc2960ea1ff5c374fb0150a1d8188efbda3eaa09ee1cbb`
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
# Fri, 16 Nov 2018 16:44:34 GMT
ENV R_BASE_VERSION=3.5.1
# Fri, 16 Nov 2018 16:46:11 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:46:12 GMT
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
	-	`sha256:1a6744787bbd2235ee2caa5b5f8892c46720dd72c07a74823f638f70b191ed5e`  
		Last Modified: Fri, 16 Nov 2018 16:47:41 GMT  
		Size: 224.4 MB (224395648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:f8fe4bfc8307504e38f6490c18dcc789e8beb3cd2bfce2316511030266bf8f95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274676769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce35fb4fca397f3f03082d72bfc494b92a59b7aa4195fc8bd7a5abfe39a4e273`
-	Default Command: `["R"]`

```dockerfile
# Tue, 16 Oct 2018 08:44:09 GMT
ADD file:94b9000d137524781c58073f645266a02beb26d4b362e9f6aa31725654bc1b7a in / 
# Tue, 16 Oct 2018 08:44:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 19:35:16 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 16 Oct 2018 19:35:19 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 16 Oct 2018 19:35:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:35:57 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 16 Oct 2018 19:35:58 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 16 Oct 2018 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Tue, 16 Oct 2018 19:36:00 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 16 Oct 2018 19:36:01 GMT
ENV R_BASE_VERSION=3.5.1
# Tue, 16 Oct 2018 19:41:27 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:41:31 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:52de734f5e457f338afa8243fe41175a6214a2c9d619322fa5f92cf2913ba730`  
		Last Modified: Tue, 16 Oct 2018 08:51:44 GMT  
		Size: 47.3 MB (47316694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f866ac956768e20356ef682c0cd93d9728efd6bc69c5e43fa90b52a847f2966a`  
		Last Modified: Tue, 16 Oct 2018 19:41:46 GMT  
		Size: 2.0 KB (1986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966ed444b056604b416315897e4f97fa5ed37da2e09c43ffe70d219fc581306f`  
		Last Modified: Tue, 16 Oct 2018 19:41:53 GMT  
		Size: 25.9 MB (25908412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58286c8032cee1d10f0e2d979b49f26cb02435cac85afeecdb1cc4f0e9de9d1a`  
		Last Modified: Tue, 16 Oct 2018 19:41:46 GMT  
		Size: 426.6 KB (426571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba43e759bfb63d92e0bf25d2660fcb6cb375887f47a99f7f9449be4c45f5613`  
		Last Modified: Tue, 16 Oct 2018 19:41:46 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c283e2bef781da29dc7dd70cb2c27f507ac01d5bb8ec325ba1fb405992c6eb12`  
		Last Modified: Tue, 16 Oct 2018 19:42:44 GMT  
		Size: 201.0 MB (201022808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
