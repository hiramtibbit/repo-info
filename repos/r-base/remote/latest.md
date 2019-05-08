## `r-base:latest`

```console
$ docker pull r-base@sha256:eacd844db7e6d45efbe271602cf143ba13033acca2536d2146035a9d7e4e5f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:b8b1b250fcba2bb95f63157b7cad9381ea889279f7fcf41c9c9115a52996c82a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280094953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2d644d699f31fd1afebf9600bdc866b996beff9e77584e4546a323d2e699c8`
-	Default Command: `["R"]`

```dockerfile
# Wed, 08 May 2019 00:33:54 GMT
ADD file:c47cf8bcf7737f5ea8bb19e66f04d2a8962addf796b05a0e779772f2d5e44c2f in / 
# Wed, 08 May 2019 00:33:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:01:01 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 08 May 2019 02:01:08 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 08 May 2019 02:01:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:01:25 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 08 May 2019 02:01:25 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 08 May 2019 02:01:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 08 May 2019 02:01:26 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 08 May 2019 02:01:26 GMT
ENV R_BASE_VERSION=3.6.0
# Wed, 08 May 2019 02:02:28 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:02:28 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:0656ed1d7f85d2e4c65f52b5b799300b1c0c3f458d22d9e80589d78077437ccb`  
		Last Modified: Wed, 08 May 2019 00:38:10 GMT  
		Size: 50.3 MB (50281379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753f78c10827cc49515cc1136a5949e460768e18ac18826072cf260df056f76`  
		Last Modified: Wed, 08 May 2019 02:02:48 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7d77a2fb38499689dce04f8b134a5bb2564859c93cac4da20154c2b1a903c6`  
		Last Modified: Wed, 08 May 2019 02:02:52 GMT  
		Size: 27.4 MB (27379439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f759fbe732585d0e7111734270278f16e5e480d0eb6396dc8b4e4e5bdcf1232e`  
		Last Modified: Wed, 08 May 2019 02:02:47 GMT  
		Size: 862.9 KB (862865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbb370e90a34f63714f14fd67980a76ce7803b5eb67d19a9e491e2866c2ab61`  
		Last Modified: Wed, 08 May 2019 02:02:47 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bb82bbd854e7c211e6f7fc5f3e8712529aac6cbf1e3a1e434561f5ef9bca21`  
		Last Modified: Wed, 08 May 2019 02:03:20 GMT  
		Size: 201.6 MB (201569117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:7428154df1be2ffe913392ddc0defd82d3ab36a5b18e2e604d3df49f645a547e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276095958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8693841e27b7c282777a79ee8fe056f3c1e104bd4f43be6095fb9d9b4d9e186`
-	Default Command: `["R"]`

```dockerfile
# Wed, 27 Mar 2019 08:48:11 GMT
ADD file:377c9c732ca063538618b037009af401c3943e31442440e6ecf605a9525a569e in / 
# Wed, 27 Mar 2019 08:48:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:59:19 GMT
LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-base org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>
# Wed, 27 Mar 2019 11:59:21 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 27 Mar 2019 11:59:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:00:02 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:02 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 27 Mar 2019 12:00:05 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 30 Apr 2019 09:11:28 GMT
ENV R_BASE_VERSION=3.6.0
# Tue, 30 Apr 2019 09:18:51 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Apr 2019 09:18:53 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5abab0b005b369428d6316f295b9c5bcab80565b9f64857a6f7f472bc993a162`  
		Last Modified: Wed, 27 Mar 2019 08:53:23 GMT  
		Size: 49.0 MB (49022867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a93da6a6d9df2592982402a3e5fc14d56adc8ae28de90a2d171d4a8ea1da97`  
		Last Modified: Wed, 27 Mar 2019 12:07:16 GMT  
		Size: 1.9 KB (1853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca89d53435e1ea6dba9c16594d2d7dd808101bcf71fe1c68cccd13250608336a`  
		Last Modified: Wed, 27 Mar 2019 12:07:26 GMT  
		Size: 27.2 MB (27233807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ec223f1ca0f1b13f097e4d39557419307fe98c4ca6970efd1ca6858590aeda`  
		Last Modified: Wed, 27 Mar 2019 12:07:17 GMT  
		Size: 862.9 KB (862869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71f72d1a3701f119a39f43722e8219dd533b84df2774362793cb5c0024dfee6`  
		Last Modified: Wed, 27 Mar 2019 12:07:16 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d51687a5be1bbaf9e27618568304c64c6000d2c324bc06766e767136b829e6`  
		Last Modified: Tue, 30 Apr 2019 09:20:47 GMT  
		Size: 199.0 MB (198974266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
