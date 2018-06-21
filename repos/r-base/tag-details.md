<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.0`](#r-base350)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.0`

```console
$ docker pull r-base@sha256:02eec7c231b8c1a4f7ddea7fab206071cdbcdf0bbb93e52971971ad1cf15649c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:3.5.0` - linux; amd64

```console
$ docker pull r-base@sha256:eb52fcb98d4cdf7a6c4f36a9cc29afcd22e7bf28d65bf5e9f717fa2a9e8b7c29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300397391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb43e8fe1667070ff697a0a180c971566b53dee504dc20f2b463bed044948f5c`
-	Default Command: `["R"]`

```dockerfile
# Sat, 28 Apr 2018 07:10:46 GMT
ADD file:fd052ab26f32e9fa8fb5eade08dbd03d8509942ed095a261f1ee6837cc440712 in / 
# Sat, 28 Apr 2018 07:10:47 GMT
CMD ["bash"]
# Thu, 21 Jun 2018 19:23:11 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Thu, 21 Jun 2018 19:23:12 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Thu, 21 Jun 2018 19:23:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:23:38 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Thu, 21 Jun 2018 19:23:38 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 21 Jun 2018 19:23:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 21 Jun 2018 19:23:39 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Thu, 21 Jun 2018 19:23:39 GMT
ENV R_BASE_VERSION=3.5.0
# Thu, 21 Jun 2018 19:26:19 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:26:19 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:9e47379da1414bae98878ea944fbdf951e472939a10427afce830beb36e336a9`  
		Last Modified: Sat, 28 Apr 2018 09:32:41 GMT  
		Size: 48.3 MB (48310881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eec4434dd0159f4994a0c55cfc0bf032f712df9c1e522af1aa5d7ee3d73530f`  
		Last Modified: Thu, 21 Jun 2018 19:26:45 GMT  
		Size: 2.0 KB (1976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fea0ae5f03db482db316b07d55b1d7ec2b869108e3a9490045a3d07aa8ae110`  
		Last Modified: Thu, 21 Jun 2018 19:26:52 GMT  
		Size: 24.8 MB (24843086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0d1e8b366697bfca3643e9366414406ee19c005305c861e6d757c4488089e8`  
		Last Modified: Thu, 21 Jun 2018 19:26:46 GMT  
		Size: 426.6 KB (426571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f680afc306dfa66295ebd768ad7fe37c7495756428b03150682a6b39b64dcb81`  
		Last Modified: Thu, 21 Jun 2018 19:26:45 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f75a2f666a19a5ad6f7a7b8b453655f6bd4ecdbb6cde52cf44feaf0f6b22b8`  
		Last Modified: Thu, 21 Jun 2018 19:27:49 GMT  
		Size: 226.8 MB (226814578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:02eec7c231b8c1a4f7ddea7fab206071cdbcdf0bbb93e52971971ad1cf15649c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:eb52fcb98d4cdf7a6c4f36a9cc29afcd22e7bf28d65bf5e9f717fa2a9e8b7c29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300397391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb43e8fe1667070ff697a0a180c971566b53dee504dc20f2b463bed044948f5c`
-	Default Command: `["R"]`

```dockerfile
# Sat, 28 Apr 2018 07:10:46 GMT
ADD file:fd052ab26f32e9fa8fb5eade08dbd03d8509942ed095a261f1ee6837cc440712 in / 
# Sat, 28 Apr 2018 07:10:47 GMT
CMD ["bash"]
# Thu, 21 Jun 2018 19:23:11 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Thu, 21 Jun 2018 19:23:12 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Thu, 21 Jun 2018 19:23:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:23:38 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Thu, 21 Jun 2018 19:23:38 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 21 Jun 2018 19:23:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 21 Jun 2018 19:23:39 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Thu, 21 Jun 2018 19:23:39 GMT
ENV R_BASE_VERSION=3.5.0
# Thu, 21 Jun 2018 19:26:19 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:26:19 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:9e47379da1414bae98878ea944fbdf951e472939a10427afce830beb36e336a9`  
		Last Modified: Sat, 28 Apr 2018 09:32:41 GMT  
		Size: 48.3 MB (48310881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eec4434dd0159f4994a0c55cfc0bf032f712df9c1e522af1aa5d7ee3d73530f`  
		Last Modified: Thu, 21 Jun 2018 19:26:45 GMT  
		Size: 2.0 KB (1976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fea0ae5f03db482db316b07d55b1d7ec2b869108e3a9490045a3d07aa8ae110`  
		Last Modified: Thu, 21 Jun 2018 19:26:52 GMT  
		Size: 24.8 MB (24843086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0d1e8b366697bfca3643e9366414406ee19c005305c861e6d757c4488089e8`  
		Last Modified: Thu, 21 Jun 2018 19:26:46 GMT  
		Size: 426.6 KB (426571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f680afc306dfa66295ebd768ad7fe37c7495756428b03150682a6b39b64dcb81`  
		Last Modified: Thu, 21 Jun 2018 19:26:45 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f75a2f666a19a5ad6f7a7b8b453655f6bd4ecdbb6cde52cf44feaf0f6b22b8`  
		Last Modified: Thu, 21 Jun 2018 19:27:49 GMT  
		Size: 226.8 MB (226814578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
