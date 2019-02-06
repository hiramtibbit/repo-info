<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.2`](#r-base352)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.2`

```console
$ docker pull r-base@sha256:446fb6287326c0dc25263166f245f50f486af1244fc220e27aa3e29a151ef9b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:3.5.2` - linux; amd64

```console
$ docker pull r-base@sha256:7cb8697e5d5afcab6b8c93ff4b07859350bd6b8d644ccc697895bcd45693fd8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 MB (286489408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2499dcde176dfe3a2186472d01c7b083ea1e58e0c36d0f7f6cf75d5bcc8b4c`
-	Default Command: `["R"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:34 GMT
ADD file:ed6590090a41d0f301e66282c7de03c78c98f2a0195ab81c7e2aa38b8d6fc530 in / 
# Wed, 06 Feb 2019 03:30:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:00:29 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 06 Feb 2019 07:00:30 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 06 Feb 2019 07:00:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:00:45 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 06 Feb 2019 07:00:46 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 06 Feb 2019 07:00:46 GMT
ENV LANG=en_US.UTF-8
# Wed, 06 Feb 2019 07:00:46 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 06 Feb 2019 07:00:47 GMT
ENV R_BASE_VERSION=3.5.2
# Wed, 06 Feb 2019 07:01:52 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:01:53 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5b7f953ac8b560839bc63628ac85266ce0750b42578011f07ef22b4f9b907303`  
		Last Modified: Wed, 06 Feb 2019 03:36:08 GMT  
		Size: 50.1 MB (50149449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0b9354a06790323c6b3a95be8c0c45ac618ec35025a6e2c8a463bc77b0aa51`  
		Last Modified: Wed, 06 Feb 2019 07:02:01 GMT  
		Size: 2.0 KB (1974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb2474138a629058bfeb8e9a11331735a8179d05c1a2b3e34b9c0474b742cf2`  
		Last Modified: Wed, 06 Feb 2019 07:02:05 GMT  
		Size: 27.3 MB (27343978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9aba1ef15a06c5587f5860cd518cd9119bc3ae47c453343d6e64ef9400b98`  
		Last Modified: Wed, 06 Feb 2019 07:02:01 GMT  
		Size: 862.9 KB (862865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359022ccf0e837c30195cfbb9803bf1aa660aa92aa18a40830e1aa4c65b61499`  
		Last Modified: Wed, 06 Feb 2019 07:02:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c04b806d032bd9ff7b84fe06ba87ae02441518db8cfab4f165448ed31ba7f`  
		Last Modified: Wed, 06 Feb 2019 07:02:33 GMT  
		Size: 208.1 MB (208130848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:3.5.2` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:76256c29cf98ef5955fa36a008eaf1b5b7f0331b9eaf658b4709417312491588
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275268737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b8ab229328ce48b16efe3c7797639f7ff6d29e1994ba7febc4f5590e0c9fc6`
-	Default Command: `["R"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:49 GMT
ADD file:094b49485cd51c0796d84f052f336c0b042ccd67311228fc5d53a6af8271e3e8 in / 
# Wed, 06 Feb 2019 10:09:50 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:32:51 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 06 Feb 2019 22:32:55 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 06 Feb 2019 22:33:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:33:55 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 06 Feb 2019 22:33:56 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 06 Feb 2019 22:33:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 06 Feb 2019 22:34:00 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 06 Feb 2019 22:34:01 GMT
ENV R_BASE_VERSION=3.5.2
# Wed, 06 Feb 2019 22:39:17 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:39:19 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:8f539063c6f8a16c84447821ea1bba245fa7559e6bccc7c64166c2c476956878`  
		Last Modified: Wed, 06 Feb 2019 10:15:26 GMT  
		Size: 48.9 MB (48894664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ba33efc491c45ecf1d352d9ef1647eb25760f0d69a53f943540958bcc875e9`  
		Last Modified: Wed, 06 Feb 2019 22:39:44 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79d85df63be2590dc19ec9f1c5a0de45a433d4d7defc8410a545d4ce03c2a66`  
		Last Modified: Wed, 06 Feb 2019 22:39:52 GMT  
		Size: 27.2 MB (27205222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244991b2d3e9ff99139cec9cc56cb4f3d0d8f7a4f37e40c708d946def277cb4`  
		Last Modified: Wed, 06 Feb 2019 22:39:47 GMT  
		Size: 862.9 KB (862863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda4466b6d7c3a72d527afd53908971be0a81b1d9bb3019bd4dc56ee8ee2aa4e`  
		Last Modified: Wed, 06 Feb 2019 22:39:44 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7465c0af6c740181966df045df1e66ffa8e2574e0c004e9346e51c5c3eb08942`  
		Last Modified: Wed, 06 Feb 2019 22:40:49 GMT  
		Size: 198.3 MB (198303704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:446fb6287326c0dc25263166f245f50f486af1244fc220e27aa3e29a151ef9b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:7cb8697e5d5afcab6b8c93ff4b07859350bd6b8d644ccc697895bcd45693fd8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 MB (286489408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2499dcde176dfe3a2186472d01c7b083ea1e58e0c36d0f7f6cf75d5bcc8b4c`
-	Default Command: `["R"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:34 GMT
ADD file:ed6590090a41d0f301e66282c7de03c78c98f2a0195ab81c7e2aa38b8d6fc530 in / 
# Wed, 06 Feb 2019 03:30:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:00:29 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 06 Feb 2019 07:00:30 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 06 Feb 2019 07:00:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:00:45 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 06 Feb 2019 07:00:46 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 06 Feb 2019 07:00:46 GMT
ENV LANG=en_US.UTF-8
# Wed, 06 Feb 2019 07:00:46 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 06 Feb 2019 07:00:47 GMT
ENV R_BASE_VERSION=3.5.2
# Wed, 06 Feb 2019 07:01:52 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:01:53 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5b7f953ac8b560839bc63628ac85266ce0750b42578011f07ef22b4f9b907303`  
		Last Modified: Wed, 06 Feb 2019 03:36:08 GMT  
		Size: 50.1 MB (50149449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0b9354a06790323c6b3a95be8c0c45ac618ec35025a6e2c8a463bc77b0aa51`  
		Last Modified: Wed, 06 Feb 2019 07:02:01 GMT  
		Size: 2.0 KB (1974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb2474138a629058bfeb8e9a11331735a8179d05c1a2b3e34b9c0474b742cf2`  
		Last Modified: Wed, 06 Feb 2019 07:02:05 GMT  
		Size: 27.3 MB (27343978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9aba1ef15a06c5587f5860cd518cd9119bc3ae47c453343d6e64ef9400b98`  
		Last Modified: Wed, 06 Feb 2019 07:02:01 GMT  
		Size: 862.9 KB (862865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359022ccf0e837c30195cfbb9803bf1aa660aa92aa18a40830e1aa4c65b61499`  
		Last Modified: Wed, 06 Feb 2019 07:02:01 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c04b806d032bd9ff7b84fe06ba87ae02441518db8cfab4f165448ed31ba7f`  
		Last Modified: Wed, 06 Feb 2019 07:02:33 GMT  
		Size: 208.1 MB (208130848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:76256c29cf98ef5955fa36a008eaf1b5b7f0331b9eaf658b4709417312491588
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275268737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b8ab229328ce48b16efe3c7797639f7ff6d29e1994ba7febc4f5590e0c9fc6`
-	Default Command: `["R"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:49 GMT
ADD file:094b49485cd51c0796d84f052f336c0b042ccd67311228fc5d53a6af8271e3e8 in / 
# Wed, 06 Feb 2019 10:09:50 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:32:51 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 06 Feb 2019 22:32:55 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 06 Feb 2019 22:33:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:33:55 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 06 Feb 2019 22:33:56 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 06 Feb 2019 22:33:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 06 Feb 2019 22:34:00 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 06 Feb 2019 22:34:01 GMT
ENV R_BASE_VERSION=3.5.2
# Wed, 06 Feb 2019 22:39:17 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:39:19 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:8f539063c6f8a16c84447821ea1bba245fa7559e6bccc7c64166c2c476956878`  
		Last Modified: Wed, 06 Feb 2019 10:15:26 GMT  
		Size: 48.9 MB (48894664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ba33efc491c45ecf1d352d9ef1647eb25760f0d69a53f943540958bcc875e9`  
		Last Modified: Wed, 06 Feb 2019 22:39:44 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79d85df63be2590dc19ec9f1c5a0de45a433d4d7defc8410a545d4ce03c2a66`  
		Last Modified: Wed, 06 Feb 2019 22:39:52 GMT  
		Size: 27.2 MB (27205222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244991b2d3e9ff99139cec9cc56cb4f3d0d8f7a4f37e40c708d946def277cb4`  
		Last Modified: Wed, 06 Feb 2019 22:39:47 GMT  
		Size: 862.9 KB (862863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda4466b6d7c3a72d527afd53908971be0a81b1d9bb3019bd4dc56ee8ee2aa4e`  
		Last Modified: Wed, 06 Feb 2019 22:39:44 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7465c0af6c740181966df045df1e66ffa8e2574e0c004e9346e51c5c3eb08942`  
		Last Modified: Wed, 06 Feb 2019 22:40:49 GMT  
		Size: 198.3 MB (198303704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
