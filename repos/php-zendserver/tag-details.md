<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:2018.0`](#php-zendserver20180)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:9.1`](#php-zendserver91)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:2018.0`

```console
$ docker pull php-zendserver@sha256:9f6981e7aaeff67454ee88dbad90830c6127ae1e2e3323dd528698e18e10c460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:2018.0` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d8ab92a2a10fb3565d8549fd58f18f186ffe64a1e767add64c08c822deb4fcdc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347208951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aecc6a2cad3dfb5c2bb4ff0f902bb113ca22f4551be7a422b6e262a7808ba64`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Apr 2019 00:41:45 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 25 Apr 2019 00:46:11 GMT
COPY file:cca44afda2515ebc9c5d6c6cc6b28b639ebe16e800b44ffe2c7f21778e16975e in /etc/apt/sources.list.d/zend-server.list 
# Thu, 25 Apr 2019 00:47:43 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.2=2018.0.3+b24     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Thu, 25 Apr 2019 00:47:44 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Thu, 25 Apr 2019 00:47:44 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Thu, 25 Apr 2019 00:47:45 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 25 Apr 2019 00:47:45 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 25 Apr 2019 00:47:45 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 25 Apr 2019 00:47:46 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 25 Apr 2019 00:47:46 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 25 Apr 2019 00:47:47 GMT
WORKDIR /usr/local/zs-init
# Thu, 25 Apr 2019 00:48:02 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Thu, 25 Apr 2019 00:48:02 GMT
COPY dir:777fbf2a0474b413623c0acefd43071ad750be1c7c83c7c28212e3114e9b2709 in /usr/local/bin 
# Thu, 25 Apr 2019 00:48:02 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Thu, 25 Apr 2019 00:48:03 GMT
RUN rm /var/www/html/index.html
# Thu, 25 Apr 2019 00:48:03 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Thu, 25 Apr 2019 00:48:03 GMT
EXPOSE 80
# Thu, 25 Apr 2019 00:48:03 GMT
EXPOSE 443
# Thu, 25 Apr 2019 00:48:03 GMT
EXPOSE 10081
# Thu, 25 Apr 2019 00:48:04 GMT
EXPOSE 10082
# Thu, 25 Apr 2019 00:48:04 GMT
WORKDIR /var/www/html
# Thu, 25 Apr 2019 00:48:04 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5224c778d211bb8bf230fc15fae4569f93b88e799d5d778c638f69fe94f0b`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 13.1 KB (13069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e9b24466aeccc0a4469ff9f4c3a62fbbcd8a3eb69d14565f1087c1e6323aa3`  
		Last Modified: Thu, 25 Apr 2019 00:50:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a10f4235b148cc5df713b523ca5466dca0576b92e7c2611077ebe378c983a6f`  
		Last Modified: Thu, 25 Apr 2019 00:51:17 GMT  
		Size: 287.5 MB (287535350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b8f9986e888c4304aab97ec918c7254c69eaa9e6bb55824e50a81a9e264485`  
		Last Modified: Thu, 25 Apr 2019 00:50:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c2852d2e0fa7008ad24fda77cd7a8eb63fd56c97b2c7746f0a7c49b8c2d64c`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028f7e589c1472ad0a9d1cd5edbaefdb63fa3d809217a32be518ca3ef0322af2`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f504ceb0ff3a2019078113a48e63b3dcdff5a8b8f89db2dd53b559042323d022`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14be0e68124d65ba83e33aa7fe7d6bd97825ea436d1960206aa5e3440ae86277`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f615bb6f0b5a93c9c0de6491f94734f26abf00bfa0d032a30386c404864ad4`  
		Last Modified: Thu, 25 Apr 2019 00:50:33 GMT  
		Size: 16.1 MB (16059075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b95e246340750565280b133673c7f4de44bc9fcfd638339b869079bbbd4f16`  
		Last Modified: Thu, 25 Apr 2019 00:50:30 GMT  
		Size: 14.3 KB (14297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836589ce8911a7eb72ed19937f083ca9480db250572d9c52291f56aa57d3af91`  
		Last Modified: Thu, 25 Apr 2019 00:50:31 GMT  
		Size: 2.5 KB (2532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bcd4e8d500a14eab45752ddcf70760a24ba8b8c855afd0c0b9a5356f26ec84`  
		Last Modified: Thu, 25 Apr 2019 00:50:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1374237ffdad47af94f731b238ca80f2c89eb2b25799b8e960b112868cb2757`  
		Last Modified: Thu, 25 Apr 2019 00:50:31 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:9acc6042860aea89fafcc3697b7d8ba7e954a11d773994e9b451fd83d07e4c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:33027159b05a850edd41d8fff0add56909d8532cb691b6ac1de56b0a77ff8eca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323945144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93fd5afcd94ea59d9bb79ba713876620c6087d03f3d3492251b9f3cea1e8c96`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Apr 2019 00:41:45 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 25 Apr 2019 00:41:46 GMT
COPY file:038d38e3dc9bbb41700e57822734550f8f5340dbf2bdde10a1e377eedf66a25e in /etc/apt/sources.list.d/zend-server.list 
# Thu, 25 Apr 2019 00:43:46 GMT
RUN apt-get update     && apt-get install -y         curl         libmysqlclient20         unzip         git         zend-server-php-5.6=8.5.12+b817     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Thu, 25 Apr 2019 00:43:47 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Thu, 25 Apr 2019 00:43:47 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Thu, 25 Apr 2019 00:43:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 25 Apr 2019 00:43:49 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 25 Apr 2019 00:43:49 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 25 Apr 2019 00:43:49 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 25 Apr 2019 00:43:50 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 25 Apr 2019 00:43:50 GMT
WORKDIR /usr/local/zs-init
# Thu, 25 Apr 2019 00:44:03 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Thu, 25 Apr 2019 00:44:03 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Thu, 25 Apr 2019 00:44:04 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Thu, 25 Apr 2019 00:44:04 GMT
RUN rm /var/www/html/index.html
# Thu, 25 Apr 2019 00:44:05 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 80
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 443
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 10081
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 10082
# Thu, 25 Apr 2019 00:44:05 GMT
WORKDIR /var/www/html
# Thu, 25 Apr 2019 00:44:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5224c778d211bb8bf230fc15fae4569f93b88e799d5d778c638f69fe94f0b`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 13.1 KB (13069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0d850dae4e08afaecafcc3e68b40d396f90371531625e8f08fe79d89c5fc5e`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5687c5a5355207c1a6efa1f680135203e92592fde36399f50f13770733762`  
		Last Modified: Thu, 25 Apr 2019 00:49:05 GMT  
		Size: 264.3 MB (264275095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359739be2289843339a3fcfaf0f5957dd65bf05330fb7c7805e503333527b9c`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9eea682bbe389252b264cda7eaac5ec734b2dc66deb3fccc3a79aaf0c47227`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd36796e3c15f1255c22e5bc9a46590a8174c143aaadc71f9ddcc65ae8cfca3d`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd81c2c941e377069ac586aee9841f78b1413d05a79a81793f2b105faff49596`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87fbc7996cd515e04065b239cd4a154fe0418cc213d057030beb07fc2e3bad7`  
		Last Modified: Thu, 25 Apr 2019 00:48:15 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e35493f735b99c11119e15bb8301be29d4196ac8e2276bdf3ebe7225b82004`  
		Last Modified: Thu, 25 Apr 2019 00:48:20 GMT  
		Size: 16.1 MB (16056464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771d017c3b6486cf252c319ab692c4280f06485c64c96df0f9027c98e98095aa`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ece1f980d3c3e35905131722c807716417a8412ca89c2a5f6d29ee0c17e02f8`  
		Last Modified: Thu, 25 Apr 2019 00:48:15 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cc00e9f2f8475a4aa3fde779318b0d5270dca666f5b64fdd4ab40b18cddef6`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17768a97d1b40ea404d3bcf0bf08355f9c1be4030c36277e2b5c310efb2f1259`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:9acc6042860aea89fafcc3697b7d8ba7e954a11d773994e9b451fd83d07e4c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:33027159b05a850edd41d8fff0add56909d8532cb691b6ac1de56b0a77ff8eca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323945144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93fd5afcd94ea59d9bb79ba713876620c6087d03f3d3492251b9f3cea1e8c96`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Apr 2019 00:41:45 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 25 Apr 2019 00:41:46 GMT
COPY file:038d38e3dc9bbb41700e57822734550f8f5340dbf2bdde10a1e377eedf66a25e in /etc/apt/sources.list.d/zend-server.list 
# Thu, 25 Apr 2019 00:43:46 GMT
RUN apt-get update     && apt-get install -y         curl         libmysqlclient20         unzip         git         zend-server-php-5.6=8.5.12+b817     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Thu, 25 Apr 2019 00:43:47 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Thu, 25 Apr 2019 00:43:47 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Thu, 25 Apr 2019 00:43:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 25 Apr 2019 00:43:49 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 25 Apr 2019 00:43:49 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 25 Apr 2019 00:43:49 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 25 Apr 2019 00:43:50 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 25 Apr 2019 00:43:50 GMT
WORKDIR /usr/local/zs-init
# Thu, 25 Apr 2019 00:44:03 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Thu, 25 Apr 2019 00:44:03 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Thu, 25 Apr 2019 00:44:04 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Thu, 25 Apr 2019 00:44:04 GMT
RUN rm /var/www/html/index.html
# Thu, 25 Apr 2019 00:44:05 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 80
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 443
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 10081
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 10082
# Thu, 25 Apr 2019 00:44:05 GMT
WORKDIR /var/www/html
# Thu, 25 Apr 2019 00:44:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5224c778d211bb8bf230fc15fae4569f93b88e799d5d778c638f69fe94f0b`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 13.1 KB (13069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0d850dae4e08afaecafcc3e68b40d396f90371531625e8f08fe79d89c5fc5e`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5687c5a5355207c1a6efa1f680135203e92592fde36399f50f13770733762`  
		Last Modified: Thu, 25 Apr 2019 00:49:05 GMT  
		Size: 264.3 MB (264275095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359739be2289843339a3fcfaf0f5957dd65bf05330fb7c7805e503333527b9c`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9eea682bbe389252b264cda7eaac5ec734b2dc66deb3fccc3a79aaf0c47227`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd36796e3c15f1255c22e5bc9a46590a8174c143aaadc71f9ddcc65ae8cfca3d`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd81c2c941e377069ac586aee9841f78b1413d05a79a81793f2b105faff49596`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87fbc7996cd515e04065b239cd4a154fe0418cc213d057030beb07fc2e3bad7`  
		Last Modified: Thu, 25 Apr 2019 00:48:15 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e35493f735b99c11119e15bb8301be29d4196ac8e2276bdf3ebe7225b82004`  
		Last Modified: Thu, 25 Apr 2019 00:48:20 GMT  
		Size: 16.1 MB (16056464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771d017c3b6486cf252c319ab692c4280f06485c64c96df0f9027c98e98095aa`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ece1f980d3c3e35905131722c807716417a8412ca89c2a5f6d29ee0c17e02f8`  
		Last Modified: Thu, 25 Apr 2019 00:48:15 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cc00e9f2f8475a4aa3fde779318b0d5270dca666f5b64fdd4ab40b18cddef6`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17768a97d1b40ea404d3bcf0bf08355f9c1be4030c36277e2b5c310efb2f1259`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:9acc6042860aea89fafcc3697b7d8ba7e954a11d773994e9b451fd83d07e4c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:33027159b05a850edd41d8fff0add56909d8532cb691b6ac1de56b0a77ff8eca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323945144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93fd5afcd94ea59d9bb79ba713876620c6087d03f3d3492251b9f3cea1e8c96`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Apr 2019 00:41:45 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 25 Apr 2019 00:41:46 GMT
COPY file:038d38e3dc9bbb41700e57822734550f8f5340dbf2bdde10a1e377eedf66a25e in /etc/apt/sources.list.d/zend-server.list 
# Thu, 25 Apr 2019 00:43:46 GMT
RUN apt-get update     && apt-get install -y         curl         libmysqlclient20         unzip         git         zend-server-php-5.6=8.5.12+b817     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Thu, 25 Apr 2019 00:43:47 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Thu, 25 Apr 2019 00:43:47 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Thu, 25 Apr 2019 00:43:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 25 Apr 2019 00:43:49 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 25 Apr 2019 00:43:49 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 25 Apr 2019 00:43:49 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 25 Apr 2019 00:43:50 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 25 Apr 2019 00:43:50 GMT
WORKDIR /usr/local/zs-init
# Thu, 25 Apr 2019 00:44:03 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Thu, 25 Apr 2019 00:44:03 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Thu, 25 Apr 2019 00:44:04 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Thu, 25 Apr 2019 00:44:04 GMT
RUN rm /var/www/html/index.html
# Thu, 25 Apr 2019 00:44:05 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 80
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 443
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 10081
# Thu, 25 Apr 2019 00:44:05 GMT
EXPOSE 10082
# Thu, 25 Apr 2019 00:44:05 GMT
WORKDIR /var/www/html
# Thu, 25 Apr 2019 00:44:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5224c778d211bb8bf230fc15fae4569f93b88e799d5d778c638f69fe94f0b`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 13.1 KB (13069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0d850dae4e08afaecafcc3e68b40d396f90371531625e8f08fe79d89c5fc5e`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5687c5a5355207c1a6efa1f680135203e92592fde36399f50f13770733762`  
		Last Modified: Thu, 25 Apr 2019 00:49:05 GMT  
		Size: 264.3 MB (264275095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359739be2289843339a3fcfaf0f5957dd65bf05330fb7c7805e503333527b9c`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9eea682bbe389252b264cda7eaac5ec734b2dc66deb3fccc3a79aaf0c47227`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd36796e3c15f1255c22e5bc9a46590a8174c143aaadc71f9ddcc65ae8cfca3d`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd81c2c941e377069ac586aee9841f78b1413d05a79a81793f2b105faff49596`  
		Last Modified: Thu, 25 Apr 2019 00:48:16 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87fbc7996cd515e04065b239cd4a154fe0418cc213d057030beb07fc2e3bad7`  
		Last Modified: Thu, 25 Apr 2019 00:48:15 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e35493f735b99c11119e15bb8301be29d4196ac8e2276bdf3ebe7225b82004`  
		Last Modified: Thu, 25 Apr 2019 00:48:20 GMT  
		Size: 16.1 MB (16056464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771d017c3b6486cf252c319ab692c4280f06485c64c96df0f9027c98e98095aa`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ece1f980d3c3e35905131722c807716417a8412ca89c2a5f6d29ee0c17e02f8`  
		Last Modified: Thu, 25 Apr 2019 00:48:15 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cc00e9f2f8475a4aa3fde779318b0d5270dca666f5b64fdd4ab40b18cddef6`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17768a97d1b40ea404d3bcf0bf08355f9c1be4030c36277e2b5c310efb2f1259`  
		Last Modified: Thu, 25 Apr 2019 00:48:14 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:3891530b40ce27fc13feba4eb0691cac8b7ed33a94022c679abc61b41aa0bbad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a724e22345146c8e52be679133295e7d342956774cb86eb09a2d2b581f53d941
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.9 MB (406863476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca04f5de40c986a11bc1ea9177c7b70a956ec77d82574136cf0105a5d015f56`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Apr 2019 00:41:45 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 25 Apr 2019 00:44:12 GMT
COPY file:0d4830b5060fb75cec6a47b30d343d82f9c3d6f95f20c11635618b93dedb5720 in /etc/apt/sources.list.d/zend-server.list 
# Thu, 25 Apr 2019 00:45:40 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.1=9.1.8+b181     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Thu, 25 Apr 2019 00:45:41 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Thu, 25 Apr 2019 00:45:42 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Thu, 25 Apr 2019 00:45:42 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 25 Apr 2019 00:45:43 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 25 Apr 2019 00:45:43 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 25 Apr 2019 00:45:44 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 25 Apr 2019 00:45:44 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 25 Apr 2019 00:45:45 GMT
WORKDIR /usr/local/zs-init
# Thu, 25 Apr 2019 00:45:58 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Thu, 25 Apr 2019 00:45:58 GMT
COPY dir:2021b288ac71d6ef2a0779a5f16607cfedb410b6f1d78096568db2aab6128b03 in /usr/local/bin 
# Thu, 25 Apr 2019 00:45:59 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Thu, 25 Apr 2019 00:45:59 GMT
RUN rm /var/www/html/index.html
# Thu, 25 Apr 2019 00:46:00 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Thu, 25 Apr 2019 00:46:00 GMT
EXPOSE 80
# Thu, 25 Apr 2019 00:46:00 GMT
EXPOSE 443
# Thu, 25 Apr 2019 00:46:00 GMT
EXPOSE 10081
# Thu, 25 Apr 2019 00:46:00 GMT
EXPOSE 10082
# Thu, 25 Apr 2019 00:46:01 GMT
WORKDIR /var/www/html
# Thu, 25 Apr 2019 00:46:01 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5224c778d211bb8bf230fc15fae4569f93b88e799d5d778c638f69fe94f0b`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 13.1 KB (13069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd53bf3a78c51a8f7faba915dd6cb65afb2560fa519b40268ef442eb17b1b520`  
		Last Modified: Thu, 25 Apr 2019 00:49:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1fbb92ddc5359170137287754cbd28f3d1ac854192a65b6b2e9e2db8ae6518`  
		Last Modified: Thu, 25 Apr 2019 00:50:24 GMT  
		Size: 347.2 MB (347189971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294dbf45fdace4f8acc5bd4c9280df771af4eb274cb57592f93e7663efecc487`  
		Last Modified: Thu, 25 Apr 2019 00:49:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409466ada0615e7e4e3d280ea507bd0682ad142c4fe55b22e61dd644953d888e`  
		Last Modified: Thu, 25 Apr 2019 00:49:20 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30520bdfc20cfe760fffe99a3dc911b79cdea089323a960257b8c04323014647`  
		Last Modified: Thu, 25 Apr 2019 00:49:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d331c275a1996277c0e73469f89cf6f96f287b6a068fc321515dcaf734c843`  
		Last Modified: Thu, 25 Apr 2019 00:49:19 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c667aac5c9c16f65ba2b48326882ca57797bf78ee213c1778013de281928ce57`  
		Last Modified: Thu, 25 Apr 2019 00:49:19 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611efb237b8df962a71b736b69942f85041f5e703f40e3075c4eab9f7b441d9c`  
		Last Modified: Thu, 25 Apr 2019 00:49:22 GMT  
		Size: 16.1 MB (16058967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702a57ec0ab1705c4bda104cdc71ab19b5d89be86c59c530e5cec3aecce7b841`  
		Last Modified: Thu, 25 Apr 2019 00:49:18 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f0d77f70f44359b4124bde944e917c70257e1639d9f7d4e3fa8e261bf1b329`  
		Last Modified: Thu, 25 Apr 2019 00:49:18 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c8b8307074cf56560802eb248cfe00569a9baabca97d8dc62f166ae0c0ca6c`  
		Last Modified: Thu, 25 Apr 2019 00:49:18 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea99543e6dbc6b22632a82deaebc465b6e4dfddbc405f3e4423f84848e07041`  
		Last Modified: Thu, 25 Apr 2019 00:49:19 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:9f6981e7aaeff67454ee88dbad90830c6127ae1e2e3323dd528698e18e10c460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d8ab92a2a10fb3565d8549fd58f18f186ffe64a1e767add64c08c822deb4fcdc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347208951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aecc6a2cad3dfb5c2bb4ff0f902bb113ca22f4551be7a422b6e262a7808ba64`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Apr 2019 00:41:45 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 25 Apr 2019 00:46:11 GMT
COPY file:cca44afda2515ebc9c5d6c6cc6b28b639ebe16e800b44ffe2c7f21778e16975e in /etc/apt/sources.list.d/zend-server.list 
# Thu, 25 Apr 2019 00:47:43 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.2=2018.0.3+b24     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Thu, 25 Apr 2019 00:47:44 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Thu, 25 Apr 2019 00:47:44 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Thu, 25 Apr 2019 00:47:45 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 25 Apr 2019 00:47:45 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 25 Apr 2019 00:47:45 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 25 Apr 2019 00:47:46 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 25 Apr 2019 00:47:46 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 25 Apr 2019 00:47:47 GMT
WORKDIR /usr/local/zs-init
# Thu, 25 Apr 2019 00:48:02 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Thu, 25 Apr 2019 00:48:02 GMT
COPY dir:777fbf2a0474b413623c0acefd43071ad750be1c7c83c7c28212e3114e9b2709 in /usr/local/bin 
# Thu, 25 Apr 2019 00:48:02 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Thu, 25 Apr 2019 00:48:03 GMT
RUN rm /var/www/html/index.html
# Thu, 25 Apr 2019 00:48:03 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Thu, 25 Apr 2019 00:48:03 GMT
EXPOSE 80
# Thu, 25 Apr 2019 00:48:03 GMT
EXPOSE 443
# Thu, 25 Apr 2019 00:48:03 GMT
EXPOSE 10081
# Thu, 25 Apr 2019 00:48:04 GMT
EXPOSE 10082
# Thu, 25 Apr 2019 00:48:04 GMT
WORKDIR /var/www/html
# Thu, 25 Apr 2019 00:48:04 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac5224c778d211bb8bf230fc15fae4569f93b88e799d5d778c638f69fe94f0b`  
		Last Modified: Thu, 25 Apr 2019 00:48:17 GMT  
		Size: 13.1 KB (13069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e9b24466aeccc0a4469ff9f4c3a62fbbcd8a3eb69d14565f1087c1e6323aa3`  
		Last Modified: Thu, 25 Apr 2019 00:50:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a10f4235b148cc5df713b523ca5466dca0576b92e7c2611077ebe378c983a6f`  
		Last Modified: Thu, 25 Apr 2019 00:51:17 GMT  
		Size: 287.5 MB (287535350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b8f9986e888c4304aab97ec918c7254c69eaa9e6bb55824e50a81a9e264485`  
		Last Modified: Thu, 25 Apr 2019 00:50:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c2852d2e0fa7008ad24fda77cd7a8eb63fd56c97b2c7746f0a7c49b8c2d64c`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028f7e589c1472ad0a9d1cd5edbaefdb63fa3d809217a32be518ca3ef0322af2`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f504ceb0ff3a2019078113a48e63b3dcdff5a8b8f89db2dd53b559042323d022`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14be0e68124d65ba83e33aa7fe7d6bd97825ea436d1960206aa5e3440ae86277`  
		Last Modified: Thu, 25 Apr 2019 00:50:32 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f615bb6f0b5a93c9c0de6491f94734f26abf00bfa0d032a30386c404864ad4`  
		Last Modified: Thu, 25 Apr 2019 00:50:33 GMT  
		Size: 16.1 MB (16059075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b95e246340750565280b133673c7f4de44bc9fcfd638339b869079bbbd4f16`  
		Last Modified: Thu, 25 Apr 2019 00:50:30 GMT  
		Size: 14.3 KB (14297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836589ce8911a7eb72ed19937f083ca9480db250572d9c52291f56aa57d3af91`  
		Last Modified: Thu, 25 Apr 2019 00:50:31 GMT  
		Size: 2.5 KB (2532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bcd4e8d500a14eab45752ddcf70760a24ba8b8c855afd0c0b9a5356f26ec84`  
		Last Modified: Thu, 25 Apr 2019 00:50:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1374237ffdad47af94f731b238ca80f2c89eb2b25799b8e960b112868cb2757`  
		Last Modified: Thu, 25 Apr 2019 00:50:31 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
