<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.0`](#r-base350)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.0`

**does not exist** (yet?)

## `r-base:latest`

```console
$ docker pull r-base@sha256:88be60ad0b383630da076fd14e9f0c04adb1170a16f0f19ededb6a665783869c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:edcb347c0077a6fa9bc931fb0f40689555e1dc4dabb04896f1d7d6d2f765f379
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277386202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1325eaa28adcfb30eb32154e34a64377c2087041003ece9576b8e50ad2e52bf`
-	Default Command: `["R"]`

```dockerfile
# Sat, 28 Apr 2018 07:10:46 GMT
ADD file:fd052ab26f32e9fa8fb5eade08dbd03d8509942ed095a261f1ee6837cc440712 in / 
# Sat, 28 Apr 2018 07:10:47 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:38:19 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Tue, 01 May 2018 08:38:21 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 01 May 2018 08:38:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:38:41 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 01 May 2018 08:38:41 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 01 May 2018 08:38:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 01 May 2018 08:38:42 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 01 May 2018 08:38:42 GMT
ENV R_BASE_VERSION=3.4.4
# Tue, 01 May 2018 08:40:41 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:40:42 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:9e47379da1414bae98878ea944fbdf951e472939a10427afce830beb36e336a9`  
		Last Modified: Sat, 28 Apr 2018 09:32:41 GMT  
		Size: 48.3 MB (48310881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4803a0147b922083db3086ed3bb3a6afc940e6b728105e30349708abfe687e`  
		Last Modified: Tue, 01 May 2018 08:59:52 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2030fe9ea51eafec7227106b36ddc04616c8f13043535b49a0efb8fa0dd295b0`  
		Last Modified: Tue, 01 May 2018 08:59:55 GMT  
		Size: 24.4 MB (24447816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60b3ca1e0915165088a29c85991874ea2ab92f54fd24cfc00921810b04896dd`  
		Last Modified: Tue, 01 May 2018 08:59:52 GMT  
		Size: 426.6 KB (426569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bc9c5c4c5249140362915ffe9173b61318f23c31ed480a883a88b636895bbf`  
		Last Modified: Tue, 01 May 2018 08:59:52 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da07ce3c278899f46fa49b0ed038fe384fc91bf672cc69f2acd82716af76bff`  
		Last Modified: Tue, 01 May 2018 09:01:42 GMT  
		Size: 204.2 MB (204198651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
