<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.6.0`](#r-base360)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.6.0`

```console
$ docker pull r-base@sha256:b62cba5e8f9cea708aaf453af9dc4c23d4c3cfcaf5bcc4e31a6b9388453823ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:3.6.0` - linux; amd64

```console
$ docker pull r-base@sha256:39b6e5e903f44ff2c89c0fd0b3d99cec94f0524e5aa7015b478cc9996212904c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.6 MB (287563642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dfc0dec6d664d358be510646afe06ed103a99c121620be57de6b46b0ec5e0b0`
-	Default Command: `["R"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:38 GMT
ADD file:a56b25f0a020f7cf7162c19acae9c3ec45a4c98587995bded3448960c8c704f7 in / 
# Tue, 26 Mar 2019 22:41:39 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:17:12 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Mar 2019 00:17:13 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Mar 2019 00:17:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:17:32 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:32 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:34 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Mon, 29 Apr 2019 17:35:44 GMT
ENV R_BASE_VERSION=3.6.0
# Mon, 29 Apr 2019 17:36:49 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Mon, 29 Apr 2019 17:36:49 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:2666d10a4f80f49cccd17b0595e4ae921fdb549aca89a64a3ef58279ccd98906`  
		Last Modified: Tue, 26 Mar 2019 22:44:48 GMT  
		Size: 50.2 MB (50229695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c9265f8973c09b34edaa8779f15d60b28847b70845f903c028559f8210804`  
		Last Modified: Wed, 27 Mar 2019 00:18:43 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87d56509ae865be0e7721fac6652fa02e190f3afebeedbe302693b6be58f27`  
		Last Modified: Wed, 27 Mar 2019 00:18:48 GMT  
		Size: 27.4 MB (27372747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a959851a73860c90ad9732251f1034f2b9386554bc3900fb43589640a12a7a6c`  
		Last Modified: Wed, 27 Mar 2019 00:18:44 GMT  
		Size: 862.9 KB (862856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b996468f4c35527395aada6b10cf948fad265c7c406ec1f547d821f248adb4cf`  
		Last Modified: Wed, 27 Mar 2019 00:18:43 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627c007cb1679e1c70f382d2c60108d03034ea11b27b22d5182db8d0aca7ae6`  
		Last Modified: Mon, 29 Apr 2019 17:37:30 GMT  
		Size: 209.1 MB (209096202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:3.6.0` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:7428154df1be2ffe913392ddc0defd82d3ab36a5b18e2e604d3df49f645a547e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276095958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8693841e27b7c282777a79ee8fe056f3c1e104bd4f43be6095fb9d9b4d9e186`
-	Default Command: `["R"]`

```dockerfile
# Wed, 27 Mar 2019 08:48:11 GMT
ADD file:377c9c732ca063538618b037009af401c3943e31442440e6ecf605a9525a569e in / 
# Wed, 27 Mar 2019 08:48:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:59:19 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Mar 2019 11:59:21 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Mar 2019 11:59:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:00:02 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:02 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:05 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 30 Apr 2019 09:11:28 GMT
ENV R_BASE_VERSION=3.6.0
# Tue, 30 Apr 2019 09:18:51 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Apr 2019 09:18:53 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5abab0b005b369428d6316f295b9c5bcab80565b9f64857a6f7f472bc993a162`  
		Last Modified: Wed, 27 Mar 2019 08:53:23 GMT  
		Size: 49.0 MB (49022867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a93da6a6d9df2592982402a3e5fc14d56adc8ae28de90a2d171d4a8ea1da97`  
		Last Modified: Wed, 27 Mar 2019 12:07:16 GMT  
		Size: 1.9 KB (1853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89d53435e1ea6dba9c16594d2d7dd808101bcf71fe1c68cccd13250608336a`  
		Last Modified: Wed, 27 Mar 2019 12:07:26 GMT  
		Size: 27.2 MB (27233807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ec223f1ca0f1b13f097e4d39557419307fe98c4ca6970efd1ca6858590aeda`  
		Last Modified: Wed, 27 Mar 2019 12:07:17 GMT  
		Size: 862.9 KB (862869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71f72d1a3701f119a39f43722e8219dd533b84df2774362793cb5c0024dfee6`  
		Last Modified: Wed, 27 Mar 2019 12:07:16 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d51687a5be1bbaf9e27618568304c64c6000d2c324bc06766e767136b829e6`  
		Last Modified: Tue, 30 Apr 2019 09:20:47 GMT  
		Size: 199.0 MB (198974266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:b62cba5e8f9cea708aaf453af9dc4c23d4c3cfcaf5bcc4e31a6b9388453823ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:39b6e5e903f44ff2c89c0fd0b3d99cec94f0524e5aa7015b478cc9996212904c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.6 MB (287563642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dfc0dec6d664d358be510646afe06ed103a99c121620be57de6b46b0ec5e0b0`
-	Default Command: `["R"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:38 GMT
ADD file:a56b25f0a020f7cf7162c19acae9c3ec45a4c98587995bded3448960c8c704f7 in / 
# Tue, 26 Mar 2019 22:41:39 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:17:12 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Mar 2019 00:17:13 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Mar 2019 00:17:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:17:32 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:32 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:34 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Mon, 29 Apr 2019 17:35:44 GMT
ENV R_BASE_VERSION=3.6.0
# Mon, 29 Apr 2019 17:36:49 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Mon, 29 Apr 2019 17:36:49 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:2666d10a4f80f49cccd17b0595e4ae921fdb549aca89a64a3ef58279ccd98906`  
		Last Modified: Tue, 26 Mar 2019 22:44:48 GMT  
		Size: 50.2 MB (50229695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c9265f8973c09b34edaa8779f15d60b28847b70845f903c028559f8210804`  
		Last Modified: Wed, 27 Mar 2019 00:18:43 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87d56509ae865be0e7721fac6652fa02e190f3afebeedbe302693b6be58f27`  
		Last Modified: Wed, 27 Mar 2019 00:18:48 GMT  
		Size: 27.4 MB (27372747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a959851a73860c90ad9732251f1034f2b9386554bc3900fb43589640a12a7a6c`  
		Last Modified: Wed, 27 Mar 2019 00:18:44 GMT  
		Size: 862.9 KB (862856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b996468f4c35527395aada6b10cf948fad265c7c406ec1f547d821f248adb4cf`  
		Last Modified: Wed, 27 Mar 2019 00:18:43 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627c007cb1679e1c70f382d2c60108d03034ea11b27b22d5182db8d0aca7ae6`  
		Last Modified: Mon, 29 Apr 2019 17:37:30 GMT  
		Size: 209.1 MB (209096202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:7428154df1be2ffe913392ddc0defd82d3ab36a5b18e2e604d3df49f645a547e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276095958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8693841e27b7c282777a79ee8fe056f3c1e104bd4f43be6095fb9d9b4d9e186`
-	Default Command: `["R"]`

```dockerfile
# Wed, 27 Mar 2019 08:48:11 GMT
ADD file:377c9c732ca063538618b037009af401c3943e31442440e6ecf605a9525a569e in / 
# Wed, 27 Mar 2019 08:48:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:59:19 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Mar 2019 11:59:21 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Mar 2019 11:59:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:00:02 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:02 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:05 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 30 Apr 2019 09:11:28 GMT
ENV R_BASE_VERSION=3.6.0
# Tue, 30 Apr 2019 09:18:51 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Apr 2019 09:18:53 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5abab0b005b369428d6316f295b9c5bcab80565b9f64857a6f7f472bc993a162`  
		Last Modified: Wed, 27 Mar 2019 08:53:23 GMT  
		Size: 49.0 MB (49022867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a93da6a6d9df2592982402a3e5fc14d56adc8ae28de90a2d171d4a8ea1da97`  
		Last Modified: Wed, 27 Mar 2019 12:07:16 GMT  
		Size: 1.9 KB (1853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89d53435e1ea6dba9c16594d2d7dd808101bcf71fe1c68cccd13250608336a`  
		Last Modified: Wed, 27 Mar 2019 12:07:26 GMT  
		Size: 27.2 MB (27233807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ec223f1ca0f1b13f097e4d39557419307fe98c4ca6970efd1ca6858590aeda`  
		Last Modified: Wed, 27 Mar 2019 12:07:17 GMT  
		Size: 862.9 KB (862869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71f72d1a3701f119a39f43722e8219dd533b84df2774362793cb5c0024dfee6`  
		Last Modified: Wed, 27 Mar 2019 12:07:16 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d51687a5be1bbaf9e27618568304c64c6000d2c324bc06766e767136b829e6`  
		Last Modified: Tue, 30 Apr 2019 09:20:47 GMT  
		Size: 199.0 MB (198974266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
