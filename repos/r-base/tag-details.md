<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.2`](#r-base352)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.2`

```console
$ docker pull r-base@sha256:29761e13591e11bde10caae9281e6abc289f1a1414b4209d53d82d81d0622bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:3.5.2` - linux; amd64

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

## `r-base:latest`

```console
$ docker pull r-base@sha256:29761e13591e11bde10caae9281e6abc289f1a1414b4209d53d82d81d0622bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
