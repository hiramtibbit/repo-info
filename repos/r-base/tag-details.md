<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.2`](#r-base352)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.2`

```console
$ docker pull r-base@sha256:1b7ea50eb8be13acc73a5f48b7e79849343cbb74f5ff1b1958f2bf076c9cb29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:3.5.2` - linux; amd64

```console
$ docker pull r-base@sha256:573d813e4ac2b14126509d70d1bfdedd0b3ec2ad9cf2e616c0299b2bd9960e10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269521804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4b23140c9dfdc4a3e7376315cb63b6cf63c58e2768ca4615a8662d4bf41584`
-	Default Command: `["R"]`

```dockerfile
# Tue, 22 Jan 2019 19:31:02 GMT
ADD file:d4a07b9b84696c576da9e6b20f6164c4555a35af477eb242b706a5aa38b44ce9 in / 
# Tue, 22 Jan 2019 19:31:02 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:12:10 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 23 Jan 2019 02:12:11 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 23 Jan 2019 02:12:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:12:30 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 23 Jan 2019 02:12:30 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 23 Jan 2019 02:12:30 GMT
ENV LANG=en_US.UTF-8
# Wed, 23 Jan 2019 02:12:31 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 23 Jan 2019 02:12:31 GMT
ENV R_BASE_VERSION=3.5.2
# Wed, 23 Jan 2019 02:13:31 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:13:31 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:61c5f775fd899b0b2128384000d966f49e57cc35f4f49050a95e9ac4ef999896`  
		Last Modified: Tue, 22 Jan 2019 19:37:16 GMT  
		Size: 50.1 MB (50087395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e99d2482d80789295801357a562266391e36f8390012b028d989f7b8c9a438`  
		Last Modified: Wed, 23 Jan 2019 02:13:42 GMT  
		Size: 2.0 KB (1974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f346210eb4737531af312af25985271d52c75d91823d83e8299f4206bded63d8`  
		Last Modified: Wed, 23 Jan 2019 02:13:47 GMT  
		Size: 27.4 MB (27389820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3995c5492a7827cc83880e839b8883548ca79947e4461cd5de27e829946359`  
		Last Modified: Wed, 23 Jan 2019 02:13:43 GMT  
		Size: 862.9 KB (862867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9aaabd0b5484681b38f8c28da18738b8b1f6098ae9a59c7f71517c2e36d6`  
		Last Modified: Wed, 23 Jan 2019 02:13:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9927c30e76e6e28be06a1b3215522f37ecc8ddd40d354c7ce1f912ae0d54afb3`  
		Last Modified: Wed, 23 Jan 2019 02:14:14 GMT  
		Size: 191.2 MB (191179451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:3.5.2` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:450f6fe2d07cd3a8f88f9eaf2694749158d81100bef6218b6be6c7a7bfd7ddca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.1 MB (263136450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca877d4259354b5ba28abf4be7e20f4dfc77855390a4bedf7e8e05a9e1940e3`
-	Default Command: `["R"]`

```dockerfile
# Sat, 29 Dec 2018 10:09:19 GMT
ADD file:4ab930c4d85615617e03ff4ce67a12a00dda14503e9902840d666287353d75b3 in / 
# Sat, 29 Dec 2018 10:09:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:48:56 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Sat, 29 Dec 2018 17:49:06 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Sat, 29 Dec 2018 17:50:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:50:17 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:18 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:19 GMT
ENV LANG=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:23 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Sat, 29 Dec 2018 17:50:24 GMT
ENV R_BASE_VERSION=3.5.2
# Sat, 29 Dec 2018 17:55:55 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:55:56 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:d1a99e2a52d080b74cc6b32ea2983790b0244b912048dacd11dfd106af187d37`  
		Last Modified: Sat, 29 Dec 2018 10:15:32 GMT  
		Size: 48.1 MB (48142300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92a4644d775227216527c3c7df395568167245103953653ee1ea94517c23c7`  
		Last Modified: Sat, 29 Dec 2018 17:56:16 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5054cfc83c1a9f584ea20a0acf8db0b01fde70867bd0c5132b5889cdfb80c222`  
		Last Modified: Sat, 29 Dec 2018 17:56:24 GMT  
		Size: 27.2 MB (27245917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd6672b6091e263e899deedcecfd7213dad77968cdb49f56916869097e6af5c`  
		Last Modified: Sat, 29 Dec 2018 17:56:18 GMT  
		Size: 862.9 KB (862894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f9fbe67b9c6fd0fc6180a455af2a66704ca8f1dea659ece963a237dacef5f`  
		Last Modified: Sat, 29 Dec 2018 17:56:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6523733e9189a8302d941417dcea907e94600824cf62dedd3d8542d916a2ebfa`  
		Last Modified: Sat, 29 Dec 2018 17:57:14 GMT  
		Size: 186.9 MB (186883046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:1b7ea50eb8be13acc73a5f48b7e79849343cbb74f5ff1b1958f2bf076c9cb29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:573d813e4ac2b14126509d70d1bfdedd0b3ec2ad9cf2e616c0299b2bd9960e10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269521804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4b23140c9dfdc4a3e7376315cb63b6cf63c58e2768ca4615a8662d4bf41584`
-	Default Command: `["R"]`

```dockerfile
# Tue, 22 Jan 2019 19:31:02 GMT
ADD file:d4a07b9b84696c576da9e6b20f6164c4555a35af477eb242b706a5aa38b44ce9 in / 
# Tue, 22 Jan 2019 19:31:02 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:12:10 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 23 Jan 2019 02:12:11 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 23 Jan 2019 02:12:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:12:30 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 23 Jan 2019 02:12:30 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 23 Jan 2019 02:12:30 GMT
ENV LANG=en_US.UTF-8
# Wed, 23 Jan 2019 02:12:31 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 23 Jan 2019 02:12:31 GMT
ENV R_BASE_VERSION=3.5.2
# Wed, 23 Jan 2019 02:13:31 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:13:31 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:61c5f775fd899b0b2128384000d966f49e57cc35f4f49050a95e9ac4ef999896`  
		Last Modified: Tue, 22 Jan 2019 19:37:16 GMT  
		Size: 50.1 MB (50087395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e99d2482d80789295801357a562266391e36f8390012b028d989f7b8c9a438`  
		Last Modified: Wed, 23 Jan 2019 02:13:42 GMT  
		Size: 2.0 KB (1974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f346210eb4737531af312af25985271d52c75d91823d83e8299f4206bded63d8`  
		Last Modified: Wed, 23 Jan 2019 02:13:47 GMT  
		Size: 27.4 MB (27389820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3995c5492a7827cc83880e839b8883548ca79947e4461cd5de27e829946359`  
		Last Modified: Wed, 23 Jan 2019 02:13:43 GMT  
		Size: 862.9 KB (862867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9aaabd0b5484681b38f8c28da18738b8b1f6098ae9a59c7f71517c2e36d6`  
		Last Modified: Wed, 23 Jan 2019 02:13:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9927c30e76e6e28be06a1b3215522f37ecc8ddd40d354c7ce1f912ae0d54afb3`  
		Last Modified: Wed, 23 Jan 2019 02:14:14 GMT  
		Size: 191.2 MB (191179451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:450f6fe2d07cd3a8f88f9eaf2694749158d81100bef6218b6be6c7a7bfd7ddca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.1 MB (263136450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca877d4259354b5ba28abf4be7e20f4dfc77855390a4bedf7e8e05a9e1940e3`
-	Default Command: `["R"]`

```dockerfile
# Sat, 29 Dec 2018 10:09:19 GMT
ADD file:4ab930c4d85615617e03ff4ce67a12a00dda14503e9902840d666287353d75b3 in / 
# Sat, 29 Dec 2018 10:09:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:48:56 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Sat, 29 Dec 2018 17:49:06 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Sat, 29 Dec 2018 17:50:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:50:17 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:18 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:19 GMT
ENV LANG=en_US.UTF-8
# Sat, 29 Dec 2018 17:50:23 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Sat, 29 Dec 2018 17:50:24 GMT
ENV R_BASE_VERSION=3.5.2
# Sat, 29 Dec 2018 17:55:55 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:55:56 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:d1a99e2a52d080b74cc6b32ea2983790b0244b912048dacd11dfd106af187d37`  
		Last Modified: Sat, 29 Dec 2018 10:15:32 GMT  
		Size: 48.1 MB (48142300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92a4644d775227216527c3c7df395568167245103953653ee1ea94517c23c7`  
		Last Modified: Sat, 29 Dec 2018 17:56:16 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5054cfc83c1a9f584ea20a0acf8db0b01fde70867bd0c5132b5889cdfb80c222`  
		Last Modified: Sat, 29 Dec 2018 17:56:24 GMT  
		Size: 27.2 MB (27245917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd6672b6091e263e899deedcecfd7213dad77968cdb49f56916869097e6af5c`  
		Last Modified: Sat, 29 Dec 2018 17:56:18 GMT  
		Size: 862.9 KB (862894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f9fbe67b9c6fd0fc6180a455af2a66704ca8f1dea659ece963a237dacef5f`  
		Last Modified: Sat, 29 Dec 2018 17:56:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6523733e9189a8302d941417dcea907e94600824cf62dedd3d8542d916a2ebfa`  
		Last Modified: Sat, 29 Dec 2018 17:57:14 GMT  
		Size: 186.9 MB (186883046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
