<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.1`](#r-base351)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.1`

```console
$ docker pull r-base@sha256:4c539345f7053c850e927456e4f02424d229c579881384efcc49f5be59ed2e60
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

## `r-base:latest`

```console
$ docker pull r-base@sha256:5f6cc040e5174a4ee9294b1afd0e4563d97bea033a01db6543555a5d7c92faa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:85123354e989404f050ef009f8a67fe9c0f1a01a0e679835511fbad880c7451e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287920732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a158184cc53f2c4a873bb027f87400f9fc18a093d850903a92a0f37ed6d92d`
-	Default Command: `["R"]`

```dockerfile
# Mon, 15 Oct 2018 23:25:09 GMT
ADD file:f2b830e0a43d401f6bd8b71879b10173ff51646dcae983030485e206cf59d021 in / 
# Mon, 15 Oct 2018 23:25:09 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:45:46 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 16 Oct 2018 04:45:47 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 16 Oct 2018 04:46:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:46:03 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 16 Oct 2018 04:46:03 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 16 Oct 2018 04:46:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 16 Oct 2018 04:46:04 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 16 Oct 2018 04:46:05 GMT
ENV R_BASE_VERSION=3.5.1
# Tue, 16 Oct 2018 04:47:33 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:47:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5fc5a8c3aca57d7cb1630f3de51caabacfb4db3ecf96f3363b4f0dec3edd7cf7`  
		Last Modified: Mon, 15 Oct 2018 23:35:24 GMT  
		Size: 49.1 MB (49111873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0bc8b1173b8a424254e79e479589602e0d1db264626387eca94d59201f9c22`  
		Last Modified: Tue, 16 Oct 2018 04:47:49 GMT  
		Size: 2.0 KB (1976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca4b634b502cc4caa4571436ae5b1ff3df5887fcda946a2ab42ba4c3f6151ac`  
		Last Modified: Tue, 16 Oct 2018 04:47:52 GMT  
		Size: 26.2 MB (26184837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf75621eeb8a9fcd3005d8e1c1b0bc61e20df3d8f458a611a4e3883be4c6d897`  
		Last Modified: Tue, 16 Oct 2018 04:47:48 GMT  
		Size: 426.6 KB (426572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6c0d1a6765cff573fc59d2d8d2dbd8cb57fe7c99c34b3f81a225ff49d10b63`  
		Last Modified: Tue, 16 Oct 2018 04:47:48 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc1db090481f76367909061af933a0fa1f0959f1a71df9a01520bdaf5ef4bce`  
		Last Modified: Tue, 16 Oct 2018 04:48:23 GMT  
		Size: 212.2 MB (212195179 bytes)  
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
