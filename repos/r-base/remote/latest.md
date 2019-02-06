## `r-base:latest`

```console
$ docker pull r-base@sha256:64b910fcb3451fd782404b34d8bc12f41a60dae454f79189e24fb35e48949ed6
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
$ docker pull r-base@sha256:8d411784a7d6c959d283bc52045350ea8b217559fbfa9c2c99c52a2f5d41de9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257393073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ec262f12bb196844461fd42be6dcf5f271229c59ccb197724c1ebd7ce19e28`
-	Default Command: `["R"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:23 GMT
ADD file:4b6a056c4fa8dc1377981c42854a82cea39bd55236d6387f3536a3a17d1514a0 in / 
# Wed, 23 Jan 2019 10:05:24 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 04:51:56 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Fri, 25 Jan 2019 04:52:04 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Fri, 25 Jan 2019 04:52:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 04:52:57 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Fri, 25 Jan 2019 04:52:58 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 25 Jan 2019 04:52:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Jan 2019 04:53:00 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Fri, 25 Jan 2019 04:53:01 GMT
ENV R_BASE_VERSION=3.5.2
# Fri, 25 Jan 2019 04:56:45 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 04:56:47 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:8c5c90894051547aa725cdf9333fc25f27dac8d1e13d755fa4aa44cf34982c69`  
		Last Modified: Wed, 23 Jan 2019 10:12:05 GMT  
		Size: 48.8 MB (48847274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8d68eba0df574125c73e1e470c3b7c7350bb266bab14280a39429d8b5bfd10`  
		Last Modified: Fri, 25 Jan 2019 04:57:01 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5393b121c61d75b57238168c00be5a9635c19b3bf65dd9508d4f9d1b395875d9`  
		Last Modified: Fri, 25 Jan 2019 04:57:11 GMT  
		Size: 27.3 MB (27253700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bff1664a054a89444cf546a89dd5acf45a51d231d3d74f79cb65d608d8a759`  
		Last Modified: Fri, 25 Jan 2019 04:57:01 GMT  
		Size: 862.9 KB (862863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7466c29f7ed9fcc8c866e1fe06b11d4d5954e04854c8173f2091d4c46ce0562a`  
		Last Modified: Fri, 25 Jan 2019 04:57:01 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd69d58ca3054a8019a80776534b6464761e79897a5eba11310160986c4c807`  
		Last Modified: Fri, 25 Jan 2019 04:57:58 GMT  
		Size: 180.4 MB (180426942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
