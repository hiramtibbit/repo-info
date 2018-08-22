## `r-base:latest`

```console
$ docker pull r-base@sha256:f1e38a1335870d57703698eb5637ca3ebff6c0d7537041bea785b0f487cedf32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:7352c6688f36e3e40c5ea097cdc1b6bc2eb1a678c0e836dbdd35939e9587a61a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.3 MB (294347878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ca38345db22292a0ef4f2e99c8fcdbb96069cd4823b338e62a832bcb39b9cf`
-	Default Command: `["R"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:33 GMT
ADD file:5ed15956e4e4643c51e67b82a407b6db82f9d710afad9e3fdfba9ed7f4bd5981 in / 
# Tue, 17 Jul 2018 00:28:33 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:30:57 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 17 Jul 2018 05:30:58 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 17 Jul 2018 05:31:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 05:31:22 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 17 Jul 2018 05:31:23 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 17 Jul 2018 05:31:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 17 Jul 2018 05:31:24 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 17 Jul 2018 05:31:24 GMT
ENV R_BASE_VERSION=3.5.1
# Tue, 17 Jul 2018 05:33:13 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 05:33:14 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5e701cb0339ff564960c1e14a81f4a2bbab1db59d69413490b5c6598098cc6ba`  
		Last Modified: Tue, 17 Jul 2018 00:45:15 GMT  
		Size: 48.9 MB (48859160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd6476adf5dc44f96ea27025916ac4de71c9a5b1cc9390e7a27c71746dfccde`  
		Last Modified: Tue, 17 Jul 2018 05:33:43 GMT  
		Size: 2.0 KB (1972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4bfdf96eb2f9689d3b6b0068b68525b1b3ae72d6973f137a3e500fb53000f6`  
		Last Modified: Tue, 17 Jul 2018 05:33:49 GMT  
		Size: 26.1 MB (26147172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2bbdc439b5ee8e031e2ba4b869e45554186984d14c31e680bcb185c4a7013`  
		Last Modified: Tue, 17 Jul 2018 05:33:43 GMT  
		Size: 426.6 KB (426567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6b872fee47882197d074ab60c75ae67fb1cb4d8de2ca3e2a2158cc81ab24c1`  
		Last Modified: Tue, 17 Jul 2018 05:33:43 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24bec44828469ed19dc04158e2b04dd2cbfe242a6f4bf19d6778022a7959a05`  
		Last Modified: Tue, 17 Jul 2018 05:34:33 GMT  
		Size: 218.9 MB (218912713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:09f19529d2a99b3b3e4de90be6e7dc9a27f6af06a5a3bb25e57f7d8bba08a557
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284914392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e171e3c33c168072bfe81c3c3923c23db8c0c5cd7351e12cc6ce891614b0cb`
-	Default Command: `["R"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:39 GMT
ADD file:833898a70892d754eeb6391a23d00eacd2b51aae139ee23aa68f01e358987e69 in / 
# Tue, 17 Jul 2018 08:48:40 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 09:15:16 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 22 Aug 2018 09:15:20 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 22 Aug 2018 09:16:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 09:16:06 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 22 Aug 2018 09:16:07 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 22 Aug 2018 09:16:07 GMT
ENV LANG=en_US.UTF-8
# Wed, 22 Aug 2018 09:16:09 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 22 Aug 2018 09:16:10 GMT
ENV R_BASE_VERSION=3.5.1
# Wed, 22 Aug 2018 09:24:32 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 09:24:35 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:c27ff77a8917efcde9e1b259b4700c0e9b553da289c81695711397df4b09959a`  
		Last Modified: Tue, 17 Jul 2018 08:58:37 GMT  
		Size: 46.1 MB (46117501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97820956ba6fd01089ed993bfdb3e3e0c160acbf213b38c1aea45f4a59757f2a`  
		Last Modified: Wed, 22 Aug 2018 09:25:04 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e1a1dcea21cea7a5ed9deb9ccedd25159222741f90635eac4178a612eeb2e9`  
		Last Modified: Wed, 22 Aug 2018 09:25:11 GMT  
		Size: 25.9 MB (25897719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41926d0a48994eade464aa52dd325a0228bb32b339d95553ea3d536a513eb68`  
		Last Modified: Wed, 22 Aug 2018 09:25:04 GMT  
		Size: 426.6 KB (426600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393d3ee56324f484cbff69fa0e36951ed7a2cb4acce802fb0681aa2fd9ca4ed8`  
		Last Modified: Wed, 22 Aug 2018 09:25:04 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b3d74b92badc7207bd5358a9f416bc47d8da1ba132251fb7f06c955d81721a`  
		Last Modified: Wed, 22 Aug 2018 09:26:05 GMT  
		Size: 212.5 MB (212470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
