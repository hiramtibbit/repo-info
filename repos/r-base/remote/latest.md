## `r-base:latest`

```console
$ docker pull r-base@sha256:4c9f943854ae70ecee6272d15be4efb09ec04f9823c22162f42ff7f7b3b508ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:85123354e989404f050ef009f8a67fe9c0f1a01a0e679835511fbad880c7451e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287920732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a158184cc53f2c4a873bb027f87400f9fc18a093d850903a92a0f37ed6d92d`
-	Default Command: `["R"]`

```dockerfile
# Mon, 15 Oct 2018 23:25:09 GMT
ADD file:f2b830e0a43d401f6bd8b71879b10173ff51646dcae983030485e206cf59d021 in / 
# Mon, 15 Oct 2018 23:25:09 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:45:46 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 16 Oct 2018 04:45:47 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 16 Oct 2018 04:46:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:46:03 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 16 Oct 2018 04:46:03 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 16 Oct 2018 04:46:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 16 Oct 2018 04:46:04 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 16 Oct 2018 04:46:05 GMT
ENV R_BASE_VERSION=3.5.1
# Tue, 16 Oct 2018 04:47:33 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:47:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5fc5a8c3aca57d7cb1630f3de51caabacfb4db3ecf96f3363b4f0dec3edd7cf7`  
		Last Modified: Mon, 15 Oct 2018 23:35:24 GMT  
		Size: 49.1 MB (49111873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0bc8b1173b8a424254e79e479589602e0d1db264626387eca94d59201f9c22`  
		Last Modified: Tue, 16 Oct 2018 04:47:49 GMT  
		Size: 2.0 KB (1976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca4b634b502cc4caa4571436ae5b1ff3df5887fcda946a2ab42ba4c3f6151ac`  
		Last Modified: Tue, 16 Oct 2018 04:47:52 GMT  
		Size: 26.2 MB (26184837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf75621eeb8a9fcd3005d8e1c1b0bc61e20df3d8f458a611a4e3883be4c6d897`  
		Last Modified: Tue, 16 Oct 2018 04:47:48 GMT  
		Size: 426.6 KB (426572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6c0d1a6765cff573fc59d2d8d2dbd8cb57fe7c99c34b3f81a225ff49d10b63`  
		Last Modified: Tue, 16 Oct 2018 04:47:48 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc1db090481f76367909061af933a0fa1f0959f1a71df9a01520bdaf5ef4bce`  
		Last Modified: Tue, 16 Oct 2018 04:48:23 GMT  
		Size: 212.2 MB (212195179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:6c9fd8dfe8664f5e5db66426c11dfd1cb345f398d4d9b0117cc0f5da3d2fb700
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275318943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd7ef9b62b7131d4ec43b23cb6e7beed14428865b62fffdc1213530fcb79b99`
-	Default Command: `["R"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:18 GMT
ADD file:5edc571de0110ab4ec8f36cc5c6242be0c441301e501e7bed37891f78f4ed01f in / 
# Wed, 05 Sep 2018 08:53:32 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 18:16:34 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Sep 2018 18:16:38 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 05 Sep 2018 18:17:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:17:42 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 05 Sep 2018 18:17:44 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Sep 2018 18:17:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Sep 2018 18:17:48 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 05 Sep 2018 18:17:49 GMT
ENV R_BASE_VERSION=3.5.1
# Wed, 05 Sep 2018 18:24:36 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:25:03 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:185de6e39db81ffc875a6a1b2b023dcaf5c9c7d238a0aa4c721681df80e213af`  
		Last Modified: Wed, 05 Sep 2018 09:11:04 GMT  
		Size: 46.8 MB (46757235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210613cfb1680c1aee2bb75cb9d69f6b8a306749ec1bb58255e83acf7c0b9d7e`  
		Last Modified: Wed, 05 Sep 2018 18:25:54 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a6230f25f7b39bf4c85a3093631572fe42cb8c4cd8d0ca3dcb6a7515880b5d`  
		Last Modified: Wed, 05 Sep 2018 18:26:02 GMT  
		Size: 25.9 MB (25906832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b4d9ba610fe1380e37b2be0c5c2699893f5665c24266b39f2d1be46b4e85ce`  
		Last Modified: Wed, 05 Sep 2018 18:25:54 GMT  
		Size: 426.6 KB (426569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358c255aacbb93c782dae9d514711c533df157f57ac9efe21f636e02f125c274`  
		Last Modified: Wed, 05 Sep 2018 18:25:54 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9511e692f2bff756a65158d98f24464de3bcbf6b92f687355cd8dee59362d69d`  
		Last Modified: Wed, 05 Sep 2018 18:26:55 GMT  
		Size: 202.2 MB (202226025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
