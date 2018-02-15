<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.4.3`](#r-base343)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.4.3`

```console
$ docker pull r-base@sha256:375e3d01424ced366a2f0b1c29992fbb1e70104562eb87d40e867e1e5ca1ddda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:3.4.3` - linux; amd64

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

## `r-base:latest`

```console
$ docker pull r-base@sha256:0dfaddbec3afcc9f0fd5cfed6cf7b0a3818c9e6c174ea5b0476d7f5a328ea69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:027e5445519684b30820051a80b29a24fdcc81a4343772a8c588d963d27db654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271749714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524f705b5ed16ab84ff0a91ee8ca6922f45798d4a21b76835197f1c363f867c3`
-	Default Command: `["R"]`

```dockerfile
# Tue, 12 Dec 2017 01:45:00 GMT
ADD file:57949af0e4a09137a99c97ac51fa1757cea1bb115fdc75f60690d5751847127a in / 
# Tue, 12 Dec 2017 01:45:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:07:48 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Tue, 12 Dec 2017 07:07:50 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 12 Dec 2017 07:08:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:08:15 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 12 Dec 2017 07:08:15 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 12 Dec 2017 07:08:15 GMT
ENV LANG=en_US.UTF-8
# Tue, 12 Dec 2017 07:08:16 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 12 Dec 2017 07:08:17 GMT
ENV R_BASE_VERSION=3.4.3
# Tue, 12 Dec 2017 07:09:47 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:09:47 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:4f84e00c7348f149af1ef748d8431d9754bd3245ec4d6ddf73adf2952c4e4be4`  
		Last Modified: Tue, 12 Dec 2017 01:56:11 GMT  
		Size: 48.3 MB (48257846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64805279ffc2b44d4229fc696c9514a14857d307f6a05d9d312226b1fbc7c8ea`  
		Last Modified: Tue, 12 Dec 2017 07:10:27 GMT  
		Size: 2.0 KB (1976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22628238f817c19ee68b341feacc7a3f6e7aa90bdafd49a10f32640b7113397`  
		Last Modified: Tue, 12 Dec 2017 07:10:30 GMT  
		Size: 23.5 MB (23499192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691a4f4a24d963ffbf31f494bda798881da5f6f58a068e5ed8f922cf96d2ab7`  
		Last Modified: Tue, 12 Dec 2017 07:10:26 GMT  
		Size: 425.9 KB (425872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4bc36d3d3decc49c38f63180bbf327fb488fd26d34048e4cb6bef482fa8f04`  
		Last Modified: Tue, 12 Dec 2017 07:10:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac824468ffdeb0785ac8d12aa61f55e4be06d978e6f1b927a8750e439066f092`  
		Last Modified: Tue, 12 Dec 2017 07:10:51 GMT  
		Size: 199.6 MB (199564532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
