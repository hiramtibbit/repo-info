<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.1`](#r-base351)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.1`

```console
$ docker pull r-base@sha256:4dfcda9d579095e001c2e498606363d61f7a49a0cd2697f4f95cc9cda505dee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:3.5.1` - linux; amd64

```console
$ docker pull r-base@sha256:3746b5d8e2a7231d95129481eea615cae309d3cc65f43785b5e43e41591b3e6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (294047410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6b542e774f94ce939b8907d50164ed8829447455004137a1c11256cdad5ec8`
-	Default Command: `["R"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:48 GMT
ADD file:c65991fed5276f9a071bc2f6852da36e5413988bf4e61df7849542a8b23df84d in / 
# Tue, 26 Jun 2018 21:25:49 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:10:19 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Jun 2018 01:10:20 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Jun 2018 01:10:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:10:45 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Jun 2018 01:10:45 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Jun 2018 01:10:46 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Jun 2018 01:10:46 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Mon, 09 Jul 2018 20:20:43 GMT
ENV R_BASE_VERSION=3.5.1
# Mon, 09 Jul 2018 20:23:17 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Jul 2018 20:23:27 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:28507814f909cf603558f5943650d7ce4517b063dc8e427275d5f1aebf5258e6`  
		Last Modified: Tue, 26 Jun 2018 21:38:31 GMT  
		Size: 48.6 MB (48636926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdf730ffcf7dfd00b2f55985abf4ba8ca4522b96e616c8bc1e4cfd968d76e3f`  
		Last Modified: Wed, 27 Jun 2018 01:13:37 GMT  
		Size: 2.0 KB (1971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f18fc3d95b259481e29adc5aedd47ce10a85e6381f4e9b8bafd3d8b70a5713`  
		Last Modified: Wed, 27 Jun 2018 01:13:40 GMT  
		Size: 26.1 MB (26144283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dc77cd2b8207645232d185e8c640b76c6385c9806e488b4f011691ef00ee0c`  
		Last Modified: Wed, 27 Jun 2018 01:13:37 GMT  
		Size: 426.6 KB (426569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff053bdfbff3a193f819400793024b37a0cb609254d57bd934667732224bc186`  
		Last Modified: Wed, 27 Jun 2018 01:13:36 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deccbaccaab636f83c40851c0486a62db577e4ecea66a5a73e4763a25559152e`  
		Last Modified: Mon, 09 Jul 2018 20:25:03 GMT  
		Size: 218.8 MB (218837367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:2e6e2c7449a080680438f5505029c27e75da8c7ff0649b22e7f89c24ba1be0f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:dcd63aedf688bdfa37cdf23c5daa4d77ebedc21a5447da4ade632666a12b72b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299193871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1906588928271a18d5aecd8759f3399cc3daa1cf91ad5b18983bad6e7210e2a8`
-	Default Command: `["R"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:48 GMT
ADD file:c65991fed5276f9a071bc2f6852da36e5413988bf4e61df7849542a8b23df84d in / 
# Tue, 26 Jun 2018 21:25:49 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:10:19 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Jun 2018 01:10:20 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Jun 2018 01:10:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:10:45 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Jun 2018 01:10:45 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Jun 2018 01:10:46 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Jun 2018 01:10:46 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 27 Jun 2018 01:10:47 GMT
ENV R_BASE_VERSION=3.5.0
# Wed, 27 Jun 2018 01:13:21 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:13:21 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:28507814f909cf603558f5943650d7ce4517b063dc8e427275d5f1aebf5258e6`  
		Last Modified: Tue, 26 Jun 2018 21:38:31 GMT  
		Size: 48.6 MB (48636926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdf730ffcf7dfd00b2f55985abf4ba8ca4522b96e616c8bc1e4cfd968d76e3f`  
		Last Modified: Wed, 27 Jun 2018 01:13:37 GMT  
		Size: 2.0 KB (1971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f18fc3d95b259481e29adc5aedd47ce10a85e6381f4e9b8bafd3d8b70a5713`  
		Last Modified: Wed, 27 Jun 2018 01:13:40 GMT  
		Size: 26.1 MB (26144283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dc77cd2b8207645232d185e8c640b76c6385c9806e488b4f011691ef00ee0c`  
		Last Modified: Wed, 27 Jun 2018 01:13:37 GMT  
		Size: 426.6 KB (426569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff053bdfbff3a193f819400793024b37a0cb609254d57bd934667732224bc186`  
		Last Modified: Wed, 27 Jun 2018 01:13:36 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cce1b4c79ab0efd9e3a68c3e88431f19147a5f76ba7ef665c706be767a8516`  
		Last Modified: Wed, 27 Jun 2018 01:14:47 GMT  
		Size: 224.0 MB (223983828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
