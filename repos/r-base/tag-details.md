<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.6.0`](#r-base360)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.6.0`

```console
$ docker pull r-base@sha256:129fcd6f6bb51034963734c8d0e153562b8c2bc635252bec97e9a763a31e788e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:3.6.0` - linux; amd64

```console
$ docker pull r-base@sha256:fc8b1655e370acca289060cf72ef365b76952c2d3c119c675c4684354383b00a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280243171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876f4d7b60e903e652de7de8de04b725bbd1488b58fd38e6fd19a3d5c8c7df2f`
-	Default Command: `["R"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:36 GMT
ADD file:e8f0ea472806ffe09ef30ee0d487e6f4755f55605273b259a06ba774acf69273 in / 
# Mon, 10 Jun 2019 23:24:37 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:18 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 11 Jun 2019 00:11:20 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 11 Jun 2019 00:11:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:11:42 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 11 Jun 2019 00:11:42 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 11 Jun 2019 00:11:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 11 Jun 2019 00:11:44 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 11 Jun 2019 00:11:44 GMT
ENV R_BASE_VERSION=3.6.0
# Tue, 11 Jun 2019 00:13:07 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:13:08 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:15dcef7e6ed1bfaa918ef9140eab39e8404ede74c0aa21c83deda574d746fc57`  
		Last Modified: Mon, 10 Jun 2019 23:28:22 GMT  
		Size: 50.4 MB (50379006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b326f0b7a6659134298937c6381dc56f27313374a82b54aad4475f1e09eef8d0`  
		Last Modified: Tue, 11 Jun 2019 00:13:22 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eeb5882c39d64a8c1abb77f29bd463528f1b979046b150aa8fa87f8cca38c5`  
		Last Modified: Tue, 11 Jun 2019 00:13:28 GMT  
		Size: 27.4 MB (27380140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a6b44abfa951478793ffe41fe9ad60f7ee864d72fd3121feb12d20c61a336f`  
		Last Modified: Tue, 11 Jun 2019 00:13:22 GMT  
		Size: 862.9 KB (862858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c90cbe1cb4f59efa830fd7d7d8d46730223ef27f457f39462e4d292a3751c`  
		Last Modified: Tue, 11 Jun 2019 00:13:22 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8734b6dbd068eed299c0edffc571b2a1911a406ccc8c1693905a62cd9a0a7c2a`  
		Last Modified: Tue, 11 Jun 2019 00:14:04 GMT  
		Size: 201.6 MB (201619025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:3.6.0` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:82c21d32da92b15a308f860933f1d843aa0c03967144004095b43e09c2522c49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269689884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c862282acefe234faf29ec69b233b88f202738c9649d19ca3136c6b5dee1a0`
-	Default Command: `["R"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:55 GMT
ADD file:64accfc0a5f08fcc1a27a0561791a605472955be423065ef9d88d452eccdd69c in / 
# Mon, 10 Jun 2019 23:41:56 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:15:01 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 11 Jun 2019 02:15:03 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 11 Jun 2019 02:15:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:15:28 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 11 Jun 2019 02:15:28 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 11 Jun 2019 02:15:28 GMT
ENV LANG=en_US.UTF-8
# Tue, 11 Jun 2019 02:15:30 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 11 Jun 2019 02:15:30 GMT
ENV R_BASE_VERSION=3.6.0
# Tue, 11 Jun 2019 02:16:54 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:16:59 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:4d0b53c3c681b8ca131725210321a75506c0c48deef4bc4c7307eeecce198e72`  
		Last Modified: Mon, 10 Jun 2019 23:45:37 GMT  
		Size: 49.2 MB (49158737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb71221f12f01d6c5bb3827472d41c56f6b772bd08e06416139be803f575651`  
		Last Modified: Tue, 11 Jun 2019 02:17:20 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48aa4b18b05a9da4fee279e6a7b1fccaed6c302d87ef46de15cf4bab15f5a2d2`  
		Last Modified: Tue, 11 Jun 2019 02:17:28 GMT  
		Size: 27.2 MB (27240440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8afd298e40f39e1ff6b4274e9d5ae854672d152038a955879216c485875c55e`  
		Last Modified: Tue, 11 Jun 2019 02:17:20 GMT  
		Size: 862.9 KB (862867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235bbc879fa6596bacc741e93bb33fd7bc06889b518789457a8adbfdd6d6586c`  
		Last Modified: Tue, 11 Jun 2019 02:17:19 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3c3a5a489151f20db7f806fd312130753c48acb196d5206599fc46fa6cdcd3`  
		Last Modified: Tue, 11 Jun 2019 02:18:16 GMT  
		Size: 192.4 MB (192425664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:129fcd6f6bb51034963734c8d0e153562b8c2bc635252bec97e9a763a31e788e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:fc8b1655e370acca289060cf72ef365b76952c2d3c119c675c4684354383b00a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280243171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876f4d7b60e903e652de7de8de04b725bbd1488b58fd38e6fd19a3d5c8c7df2f`
-	Default Command: `["R"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:36 GMT
ADD file:e8f0ea472806ffe09ef30ee0d487e6f4755f55605273b259a06ba774acf69273 in / 
# Mon, 10 Jun 2019 23:24:37 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:18 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 11 Jun 2019 00:11:20 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 11 Jun 2019 00:11:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:11:42 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 11 Jun 2019 00:11:42 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 11 Jun 2019 00:11:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 11 Jun 2019 00:11:44 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 11 Jun 2019 00:11:44 GMT
ENV R_BASE_VERSION=3.6.0
# Tue, 11 Jun 2019 00:13:07 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:13:08 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:15dcef7e6ed1bfaa918ef9140eab39e8404ede74c0aa21c83deda574d746fc57`  
		Last Modified: Mon, 10 Jun 2019 23:28:22 GMT  
		Size: 50.4 MB (50379006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b326f0b7a6659134298937c6381dc56f27313374a82b54aad4475f1e09eef8d0`  
		Last Modified: Tue, 11 Jun 2019 00:13:22 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eeb5882c39d64a8c1abb77f29bd463528f1b979046b150aa8fa87f8cca38c5`  
		Last Modified: Tue, 11 Jun 2019 00:13:28 GMT  
		Size: 27.4 MB (27380140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a6b44abfa951478793ffe41fe9ad60f7ee864d72fd3121feb12d20c61a336f`  
		Last Modified: Tue, 11 Jun 2019 00:13:22 GMT  
		Size: 862.9 KB (862858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c90cbe1cb4f59efa830fd7d7d8d46730223ef27f457f39462e4d292a3751c`  
		Last Modified: Tue, 11 Jun 2019 00:13:22 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8734b6dbd068eed299c0edffc571b2a1911a406ccc8c1693905a62cd9a0a7c2a`  
		Last Modified: Tue, 11 Jun 2019 00:14:04 GMT  
		Size: 201.6 MB (201619025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:82c21d32da92b15a308f860933f1d843aa0c03967144004095b43e09c2522c49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269689884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c862282acefe234faf29ec69b233b88f202738c9649d19ca3136c6b5dee1a0`
-	Default Command: `["R"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:55 GMT
ADD file:64accfc0a5f08fcc1a27a0561791a605472955be423065ef9d88d452eccdd69c in / 
# Mon, 10 Jun 2019 23:41:56 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:15:01 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 11 Jun 2019 02:15:03 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 11 Jun 2019 02:15:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:15:28 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 11 Jun 2019 02:15:28 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 11 Jun 2019 02:15:28 GMT
ENV LANG=en_US.UTF-8
# Tue, 11 Jun 2019 02:15:30 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 11 Jun 2019 02:15:30 GMT
ENV R_BASE_VERSION=3.6.0
# Tue, 11 Jun 2019 02:16:54 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:16:59 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:4d0b53c3c681b8ca131725210321a75506c0c48deef4bc4c7307eeecce198e72`  
		Last Modified: Mon, 10 Jun 2019 23:45:37 GMT  
		Size: 49.2 MB (49158737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb71221f12f01d6c5bb3827472d41c56f6b772bd08e06416139be803f575651`  
		Last Modified: Tue, 11 Jun 2019 02:17:20 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48aa4b18b05a9da4fee279e6a7b1fccaed6c302d87ef46de15cf4bab15f5a2d2`  
		Last Modified: Tue, 11 Jun 2019 02:17:28 GMT  
		Size: 27.2 MB (27240440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8afd298e40f39e1ff6b4274e9d5ae854672d152038a955879216c485875c55e`  
		Last Modified: Tue, 11 Jun 2019 02:17:20 GMT  
		Size: 862.9 KB (862867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235bbc879fa6596bacc741e93bb33fd7bc06889b518789457a8adbfdd6d6586c`  
		Last Modified: Tue, 11 Jun 2019 02:17:19 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3c3a5a489151f20db7f806fd312130753c48acb196d5206599fc46fa6cdcd3`  
		Last Modified: Tue, 11 Jun 2019 02:18:16 GMT  
		Size: 192.4 MB (192425664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
