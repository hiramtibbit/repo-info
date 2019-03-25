<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.5.3`](#r-base353)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.5.3`

**does not exist** (yet?)

## `r-base:latest`

```console
$ docker pull r-base@sha256:6ed59c0b3dc694127c59c1fe149b0954b26c3c03e6a9b281579e7c1006291826
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
$ docker pull r-base@sha256:972748670f842bbbfcf2a7ca092f266633a73560357a007f554d6a6b09640c46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273071220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b00abf413df1862f42164eb1e4ffa31a1dd9e7fb6d7a9a21365d8c23d7cb1e`
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
# Tue, 05 Mar 2019 12:00:46 GMT
ENV R_BASE_VERSION=3.5.2
# Tue, 05 Mar 2019 12:05:30 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:05:32 GMT
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
	-	`sha256:b5456538635557343773951bbf88d09ff3c022f8ca7babd92077fb086f7019b4`  
		Last Modified: Tue, 05 Mar 2019 12:06:51 GMT  
		Size: 196.0 MB (196049661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
