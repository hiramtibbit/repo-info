## `r-base:latest`

```console
$ docker pull r-base@sha256:95f2dc979543849855093aaf8121006e941e6d1370da3da5c6b7d66ddcedbf83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:5b9a746231b33aac13ee2843c921559103d572db0af37fd17620dcfc21db2107
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284623425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880eb7da671bcf69e0e7711df22b8cefc11031bb8faee295b7823b9c3b1285a0`
-	Default Command: `["R"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:32 GMT
ADD file:15330d9ebf65ad4359821edd2919911005ca538c46e9c389ee62fc7549f2c50a in / 
# Mon, 04 Mar 2019 23:22:33 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:18:19 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Tue, 05 Mar 2019 02:18:20 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 05 Mar 2019 02:18:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:18:37 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 05 Mar 2019 02:18:37 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 05 Mar 2019 02:18:37 GMT
ENV LANG=en_US.UTF-8
# Tue, 05 Mar 2019 02:18:38 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 05 Mar 2019 02:18:38 GMT
ENV R_BASE_VERSION=3.5.2
# Tue, 05 Mar 2019 02:19:39 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:19:40 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:71c170c5dae2fb430e70a395ee48d0853a88d456aebb9903c8de0c3be962ab78`  
		Last Modified: Mon, 04 Mar 2019 23:26:40 GMT  
		Size: 50.2 MB (50155039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4a4227983779319ffd5254ca97dcbd657b4e388f7a457143c5a7d1c1bd6c79`  
		Last Modified: Tue, 05 Mar 2019 02:19:51 GMT  
		Size: 1.8 KB (1847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a323234352c4d46be050cffb5d8982de27961df8dd3a3d3c92caab6b9ba476f`  
		Last Modified: Tue, 05 Mar 2019 02:19:56 GMT  
		Size: 27.4 MB (27367003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a48cb4c9af614e251f025958e6a678e0adab44db9205100eff5f9a62c1d212`  
		Last Modified: Tue, 05 Mar 2019 02:19:51 GMT  
		Size: 862.9 KB (862866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e665c2acb33f76b17050a22a8dbb66fc2124406e9504da5034114e169077a64`  
		Last Modified: Tue, 05 Mar 2019 02:19:51 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a4d8afa49b5286de71ede9672af4b667ab354010ef66464db98f665db3868e`  
		Last Modified: Tue, 05 Mar 2019 02:20:22 GMT  
		Size: 206.2 MB (206236376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:76256c29cf98ef5955fa36a008eaf1b5b7f0331b9eaf658b4709417312491588
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275268737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b8ab229328ce48b16efe3c7797639f7ff6d29e1994ba7febc4f5590e0c9fc6`
-	Default Command: `["R"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:49 GMT
ADD file:094b49485cd51c0796d84f052f336c0b042ccd67311228fc5d53a6af8271e3e8 in / 
# Wed, 06 Feb 2019 10:09:50 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:32:51 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 06 Feb 2019 22:32:55 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 06 Feb 2019 22:33:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:33:55 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 06 Feb 2019 22:33:56 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 06 Feb 2019 22:33:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 06 Feb 2019 22:34:00 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 06 Feb 2019 22:34:01 GMT
ENV R_BASE_VERSION=3.5.2
# Wed, 06 Feb 2019 22:39:17 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:39:19 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:8f539063c6f8a16c84447821ea1bba245fa7559e6bccc7c64166c2c476956878`  
		Last Modified: Wed, 06 Feb 2019 10:15:26 GMT  
		Size: 48.9 MB (48894664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ba33efc491c45ecf1d352d9ef1647eb25760f0d69a53f943540958bcc875e9`  
		Last Modified: Wed, 06 Feb 2019 22:39:44 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79d85df63be2590dc19ec9f1c5a0de45a433d4d7defc8410a545d4ce03c2a66`  
		Last Modified: Wed, 06 Feb 2019 22:39:52 GMT  
		Size: 27.2 MB (27205222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244991b2d3e9ff99139cec9cc56cb4f3d0d8f7a4f37e40c708d946def277cb4`  
		Last Modified: Wed, 06 Feb 2019 22:39:47 GMT  
		Size: 862.9 KB (862863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda4466b6d7c3a72d527afd53908971be0a81b1d9bb3019bd4dc56ee8ee2aa4e`  
		Last Modified: Wed, 06 Feb 2019 22:39:44 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7465c0af6c740181966df045df1e66ffa8e2574e0c004e9346e51c5c3eb08942`  
		Last Modified: Wed, 06 Feb 2019 22:40:49 GMT  
		Size: 198.3 MB (198303704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
