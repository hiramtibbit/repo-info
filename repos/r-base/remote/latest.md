## `r-base:latest`

```console
$ docker pull r-base@sha256:0223cbd663e4fdd86f4cb6e43a45d35b4eb473f53d6ee7924260cfea4c301594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:e32c63fa18840d6fc46d6c9e0c648285849eec3cc2f82617245884cc4ced5e08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289999472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d8318728bf56aaef5ac4dd103689adbb56843bdb427153db4e0196235cffa9`
-	Default Command: `["R"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:42 GMT
ADD file:39949bc512df81bb112deccd2b9d55a193e4921451f17776eff96e5c20699054 in / 
# Tue, 04 Sep 2018 21:21:43 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:26:32 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Sep 2018 05:26:33 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 05 Sep 2018 05:26:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:26:59 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 05 Sep 2018 05:26:59 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Sep 2018 05:26:59 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Sep 2018 05:27:00 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 05 Sep 2018 05:27:00 GMT
ENV R_BASE_VERSION=3.5.1
# Wed, 05 Sep 2018 05:28:27 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler                 r-cran-stringr 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-*         && echo 'options(repos = c(CRAN = "https://cloud.r-project.org/"))' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:28:28 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:8f9234435f64947bcad1104e14346b296e1b87f45a1afe2f95e3bf1cb0864926`  
		Last Modified: Tue, 04 Sep 2018 21:25:58 GMT  
		Size: 49.0 MB (48982630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4768ed7b65fb84476d16e30ced8a0318191752cdf6488299dad3db72c1500cce`  
		Last Modified: Wed, 05 Sep 2018 05:28:38 GMT  
		Size: 2.0 KB (1973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315aef06947a63106f1b991c5aaf93985a3cb03c55da613fd72dac13dc85fd40`  
		Last Modified: Wed, 05 Sep 2018 05:28:43 GMT  
		Size: 26.2 MB (26181588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646915aa41c68863854026530acca13cabd24e5a85f992f3532101bf70471306`  
		Last Modified: Wed, 05 Sep 2018 05:28:40 GMT  
		Size: 426.6 KB (426570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430db1c15e9318ed42284202243e072dd74e0249b333bcbc74ca908ddb168a9c`  
		Last Modified: Wed, 05 Sep 2018 05:28:38 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402b231c832395be460ac7c9a55a825933cfc55ba49f3a4fd1104061f22736a1`  
		Last Modified: Wed, 05 Sep 2018 05:29:25 GMT  
		Size: 214.4 MB (214406417 bytes)  
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
