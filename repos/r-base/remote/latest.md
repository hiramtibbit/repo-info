## `r-base:latest`

```console
$ docker pull r-base@sha256:575d5450e2275a478f2c696c37f60b7073db8626a023d6eaf61195d94138c49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:c1b21be51e587a5c6d0aa49201b6c45a6a70a1b8426b236d34438c4ff235a747
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.6 MB (281584599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c848eeb175a2c4a06128cc6164266012975a2f8e6e1aedc3e739d7e8e15706`
-	Default Command: `["R"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:38 GMT
ADD file:a56b25f0a020f7cf7162c19acae9c3ec45a4c98587995bded3448960c8c704f7 in / 
# Tue, 26 Mar 2019 22:41:39 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:17:12 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Mar 2019 00:17:13 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Mar 2019 00:17:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:17:32 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:32 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Mar 2019 00:17:34 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 27 Mar 2019 00:17:35 GMT
ENV R_BASE_VERSION=3.5.3
# Wed, 27 Mar 2019 00:18:35 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:18:35 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:2666d10a4f80f49cccd17b0595e4ae921fdb549aca89a64a3ef58279ccd98906`  
		Last Modified: Tue, 26 Mar 2019 22:44:48 GMT  
		Size: 50.2 MB (50229695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c9265f8973c09b34edaa8779f15d60b28847b70845f903c028559f8210804`  
		Last Modified: Wed, 27 Mar 2019 00:18:43 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87d56509ae865be0e7721fac6652fa02e190f3afebeedbe302693b6be58f27`  
		Last Modified: Wed, 27 Mar 2019 00:18:48 GMT  
		Size: 27.4 MB (27372747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a959851a73860c90ad9732251f1034f2b9386554bc3900fb43589640a12a7a6c`  
		Last Modified: Wed, 27 Mar 2019 00:18:44 GMT  
		Size: 862.9 KB (862856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b996468f4c35527395aada6b10cf948fad265c7c406ec1f547d821f248adb4cf`  
		Last Modified: Wed, 27 Mar 2019 00:18:43 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7534b13feebb18b1a101bdedbe12564127618306febfea8fd271d57f5c4af5c1`  
		Last Modified: Wed, 27 Mar 2019 00:19:20 GMT  
		Size: 203.1 MB (203117159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:bdcd2796bbe1b7cdd8681865796b8033662d51cf2a73cf911dae8ec5743ef990
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275793631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9ff8668f8cca504eeb7a65e936dd2afa5cf5f3db67c63840a041a6989400213`
-	Default Command: `["R"]`

```dockerfile
# Tue, 05 Mar 2019 10:01:27 GMT
ADD file:82f1040d6c57cc93140e7832345bef7eee9e7a5bf39d94f19037aab6474a8d5e in / 
# Tue, 05 Mar 2019 10:01:28 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:58:27 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 05 Mar 2019 11:58:41 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 05 Mar 2019 12:00:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:00:28 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 05 Mar 2019 12:00:31 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 05 Mar 2019 12:00:34 GMT
ENV LANG=en_US.UTF-8
# Tue, 05 Mar 2019 12:00:41 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 26 Mar 2019 09:05:24 GMT
ENV R_BASE_VERSION=3.5.3
# Tue, 26 Mar 2019 09:13:23 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 09:13:25 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:4b8b7e238d6daaaf9553c2fe4a257e506beb930fd21ed68c294d18b809e48e1f`  
		Last Modified: Tue, 05 Mar 2019 10:06:59 GMT  
		Size: 48.9 MB (48921340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce32a91696906686598baf71ecd1f75dde29b0c9783e286941305dfc7d43ac2`  
		Last Modified: Tue, 05 Mar 2019 12:05:55 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c034efa237ce74daa1054389383a4cf4e28f2a5e77e780bc008151495d157cd3`  
		Last Modified: Tue, 05 Mar 2019 12:06:04 GMT  
		Size: 27.2 MB (27235180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81791fe7b19fbdcd5f76f1e1def3663d5555064c5a21c21143899e4d21d5cadd`  
		Last Modified: Tue, 05 Mar 2019 12:05:56 GMT  
		Size: 862.9 KB (862876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ded5ed3f5b9db4b5ce6cdc7dc4e8f1f6c008277052fecfe40c76cf67b09b17`  
		Last Modified: Tue, 05 Mar 2019 12:05:55 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc5dc83894613d7440c9757a6683f293d682823d60ab35df0954dfa7abf781`  
		Last Modified: Tue, 26 Mar 2019 09:14:37 GMT  
		Size: 198.8 MB (198772072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
