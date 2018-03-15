## `r-base:latest`

```console
$ docker pull r-base@sha256:70f2a5571dfdb64a9fffd45f48638217dd1856671901f87acd68367cb0cf8ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:12de3102306f79563b15ffb7e9fd2692db362a5e82d95260d6636a2021588677
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280220111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e1c25485af52c7784dc5aaea544af4c353bb678db3ec9db95d77837deea077`
-	Default Command: `["R"]`

```dockerfile
# Tue, 13 Mar 2018 22:28:13 GMT
ADD file:5aa593e2f8304856cd2c5f492dd9ba80b81727196c21333d7e2b0868a5b5f703 in / 
# Tue, 13 Mar 2018 22:28:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 23:59:03 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Wed, 14 Mar 2018 23:59:05 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 14 Mar 2018 23:59:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 23:59:19 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 14 Mar 2018 23:59:20 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 14 Mar 2018 23:59:20 GMT
ENV LANG=en_US.UTF-8
# Wed, 14 Mar 2018 23:59:21 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 14 Mar 2018 23:59:21 GMT
ENV R_BASE_VERSION=3.4.3
# Thu, 15 Mar 2018 00:01:23 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:01:24 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:9db4255ff25dd53d8bd03c1de9e687ffb79393572ee97bb24af1999acacdd48f`  
		Last Modified: Tue, 13 Mar 2018 22:55:35 GMT  
		Size: 48.2 MB (48158969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29576d9c0bac5ceeabf740b55709786c3a41ee8739e2d2cde24ba53d0482b83f`  
		Last Modified: Thu, 15 Mar 2018 00:13:55 GMT  
		Size: 2.0 KB (1981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8480e32504df564f45ce9b235e234a058994807719bbaa430253685c63bd18`  
		Last Modified: Thu, 15 Mar 2018 00:14:00 GMT  
		Size: 24.4 MB (24393426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e048bf4dc23fc2390b5942e5ee9b0e0aaaab3ac077a84618ce51cc1e0710824`  
		Last Modified: Thu, 15 Mar 2018 00:13:56 GMT  
		Size: 426.6 KB (426569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dea5f493884c66b4e72b63c556300e24ede664c1e41c79fc8d1a70e95931081`  
		Last Modified: Thu, 15 Mar 2018 00:13:55 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23cbde34b18b46d407a5682c5bce1e299481c17b3d147e187a6adba834772de3`  
		Last Modified: Thu, 15 Mar 2018 00:14:22 GMT  
		Size: 207.2 MB (207238871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
