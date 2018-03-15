<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.4.3`](#r-base343)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.4.3`

```console
$ docker pull r-base@sha256:70f2a5571dfdb64a9fffd45f48638217dd1856671901f87acd68367cb0cf8ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:3.4.3` - linux; amd64

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

## `r-base:latest`

```console
$ docker pull r-base@sha256:375e3d01424ced366a2f0b1c29992fbb1e70104562eb87d40e867e1e5ca1ddda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:09ff348050fa3a694b15a2a14e1a9b6cd414a55d35ab2ab04ac6616502665daf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280920020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7a4308dacdd43977195b71ff7db5e0cfc4e7ab2eebb4b9ebb0cd40eaf7023`
-	Default Command: `["R"]`

```dockerfile
# Thu, 15 Feb 2018 02:02:26 GMT
ADD file:d609eff87f66fdeaef5375f946f2181bc485b8d2145aa292987baa0c66b841c5 in / 
# Thu, 15 Feb 2018 02:02:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:29:16 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Thu, 15 Feb 2018 07:29:18 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Thu, 15 Feb 2018 07:29:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:29:48 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Thu, 15 Feb 2018 07:29:48 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 15 Feb 2018 07:29:49 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Feb 2018 07:29:49 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Thu, 15 Feb 2018 07:29:50 GMT
ENV R_BASE_VERSION=3.4.3
# Thu, 15 Feb 2018 07:31:54 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:34:43 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:1de16852c1eb37fbeae6e3af60e4cd14747b6b34cc8054452c6498d7e6936ad5`  
		Last Modified: Thu, 15 Feb 2018 02:28:42 GMT  
		Size: 47.8 MB (47761028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f34596105c88e3813b1224ab7a6aea8abd1cc0990c1de07bb68d089276b6d93`  
		Last Modified: Thu, 15 Feb 2018 07:48:03 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e80c16de2b680df427cbd6f06ad224567f161560e825ba94921caef28f8eb42`  
		Last Modified: Thu, 15 Feb 2018 07:48:10 GMT  
		Size: 23.7 MB (23665815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e1e9662e44021bfa43c8df4c25b93ee355505def9c0c37a77e8083fe1a5ee1`  
		Last Modified: Thu, 15 Feb 2018 07:48:03 GMT  
		Size: 426.3 KB (426251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23847c64299908453c9dec547ed4378da93e8ed2457436da313562534ff2a85b`  
		Last Modified: Thu, 15 Feb 2018 07:48:03 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5daa2430d56843ddca24b9882acc195dfb4af6c94c689e832a69252928b4cae`  
		Last Modified: Thu, 15 Feb 2018 07:48:45 GMT  
		Size: 209.1 MB (209064643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
