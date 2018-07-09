<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:2018.0`](#php-zendserver20180)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:9.1`](#php-zendserver91)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:2018.0`

**does not exist** (yet?)

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:553f8a1f2d268158766e4608d5b7b950c28918dd433664bf094fde17cb88ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:073f9245fab19ce8f71a0604b6140ffb5876107aa0629bcc9d2b195e14942b47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339802715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d9729f60226e3cc3fa210d2d0bdf81d36d654aa08684f38e174f605c734d87`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:06:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 09 Jul 2018 20:26:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 09 Jul 2018 20:28:47 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 09 Jul 2018 20:28:48 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Mon, 09 Jul 2018 20:28:49 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 09 Jul 2018 20:28:50 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 09 Jul 2018 20:28:51 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 09 Jul 2018 20:28:51 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 09 Jul 2018 20:28:51 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 09 Jul 2018 20:28:52 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 09 Jul 2018 20:28:52 GMT
WORKDIR /usr/local/zs-init
# Mon, 09 Jul 2018 20:28:56 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 09 Jul 2018 20:29:39 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 09 Jul 2018 20:29:42 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 09 Jul 2018 20:29:43 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 09 Jul 2018 20:29:43 GMT
RUN rm /var/www/html/index.html
# Mon, 09 Jul 2018 20:29:44 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 443/tcp
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 10081/tcp
# Mon, 09 Jul 2018 20:29:57 GMT
EXPOSE 10082/tcp
# Mon, 09 Jul 2018 20:29:57 GMT
WORKDIR /var/www/html
# Mon, 09 Jul 2018 20:29:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10669d22bc12bbe196b8c9b7a9a7b7f697e1a21b6d27b73e9d44e64c6a5a6e66`  
		Last Modified: Tue, 05 Jun 2018 22:10:41 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687827e016cb1f1244ea9e63c52d7a5e2c97ae8ef03493fe8f3b4c79aa243b03`  
		Last Modified: Mon, 09 Jul 2018 20:37:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5416fe37fe7340d0e188c81e8803e06e16c0ff24cb23653283a6aff2766a24b8`  
		Last Modified: Mon, 09 Jul 2018 20:39:11 GMT  
		Size: 250.8 MB (250795029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a82250987a073278d79d75a1b8312418151b6d3a75f05c1d51abe037d420d`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621f4a2d0004d0b9ff70aefc3c7d302b8b139a7d11a2ad08f5e59e4a6d4460ce`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc4a41eb0c7761f37270fa2ac297627b29d461997e6211d299964f2b07c02a2`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f3526279c5c321f37a8e3cd20c2c439f3d27344a212ca745ab59ff009b39d`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5757eba372d9d6c3e476a5c53aa07b4f413b6980b6a39781fcc28b5c6a93ca4f`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090667c2f2ad94b8244acd0bccb603e8274e0b148782fe3b3449090dc644825a`  
		Last Modified: Mon, 09 Jul 2018 20:37:46 GMT  
		Size: 478.0 KB (477975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b50ad96943c6ddf0dda9872d4b6fde9826bb7eb2cf52b5854b0818d645e956`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 15.2 MB (15242399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d34f0457b8274fd2833b8053f6a629cf17fb8d3585fbc7447c7b46e76a2ae`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d195505da88aa78ef47a399ebdb326ffed0cb9c275248a605eeb74b11d1a91af`  
		Last Modified: Mon, 09 Jul 2018 20:37:43 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7885e625bc11d66d98601fe30f48c23a68a2e26418e33753365ebc5029391a4`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae12e243f13a33842baa1e5d3c5baebc5227ceade7681708673b7c0e2469589`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:553f8a1f2d268158766e4608d5b7b950c28918dd433664bf094fde17cb88ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:073f9245fab19ce8f71a0604b6140ffb5876107aa0629bcc9d2b195e14942b47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339802715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d9729f60226e3cc3fa210d2d0bdf81d36d654aa08684f38e174f605c734d87`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:06:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 09 Jul 2018 20:26:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 09 Jul 2018 20:28:47 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 09 Jul 2018 20:28:48 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Mon, 09 Jul 2018 20:28:49 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 09 Jul 2018 20:28:50 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 09 Jul 2018 20:28:51 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 09 Jul 2018 20:28:51 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 09 Jul 2018 20:28:51 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 09 Jul 2018 20:28:52 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 09 Jul 2018 20:28:52 GMT
WORKDIR /usr/local/zs-init
# Mon, 09 Jul 2018 20:28:56 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 09 Jul 2018 20:29:39 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 09 Jul 2018 20:29:42 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 09 Jul 2018 20:29:43 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 09 Jul 2018 20:29:43 GMT
RUN rm /var/www/html/index.html
# Mon, 09 Jul 2018 20:29:44 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 443/tcp
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 10081/tcp
# Mon, 09 Jul 2018 20:29:57 GMT
EXPOSE 10082/tcp
# Mon, 09 Jul 2018 20:29:57 GMT
WORKDIR /var/www/html
# Mon, 09 Jul 2018 20:29:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10669d22bc12bbe196b8c9b7a9a7b7f697e1a21b6d27b73e9d44e64c6a5a6e66`  
		Last Modified: Tue, 05 Jun 2018 22:10:41 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687827e016cb1f1244ea9e63c52d7a5e2c97ae8ef03493fe8f3b4c79aa243b03`  
		Last Modified: Mon, 09 Jul 2018 20:37:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5416fe37fe7340d0e188c81e8803e06e16c0ff24cb23653283a6aff2766a24b8`  
		Last Modified: Mon, 09 Jul 2018 20:39:11 GMT  
		Size: 250.8 MB (250795029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a82250987a073278d79d75a1b8312418151b6d3a75f05c1d51abe037d420d`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621f4a2d0004d0b9ff70aefc3c7d302b8b139a7d11a2ad08f5e59e4a6d4460ce`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc4a41eb0c7761f37270fa2ac297627b29d461997e6211d299964f2b07c02a2`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f3526279c5c321f37a8e3cd20c2c439f3d27344a212ca745ab59ff009b39d`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5757eba372d9d6c3e476a5c53aa07b4f413b6980b6a39781fcc28b5c6a93ca4f`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090667c2f2ad94b8244acd0bccb603e8274e0b148782fe3b3449090dc644825a`  
		Last Modified: Mon, 09 Jul 2018 20:37:46 GMT  
		Size: 478.0 KB (477975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b50ad96943c6ddf0dda9872d4b6fde9826bb7eb2cf52b5854b0818d645e956`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 15.2 MB (15242399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d34f0457b8274fd2833b8053f6a629cf17fb8d3585fbc7447c7b46e76a2ae`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d195505da88aa78ef47a399ebdb326ffed0cb9c275248a605eeb74b11d1a91af`  
		Last Modified: Mon, 09 Jul 2018 20:37:43 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7885e625bc11d66d98601fe30f48c23a68a2e26418e33753365ebc5029391a4`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae12e243f13a33842baa1e5d3c5baebc5227ceade7681708673b7c0e2469589`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:553f8a1f2d268158766e4608d5b7b950c28918dd433664bf094fde17cb88ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:073f9245fab19ce8f71a0604b6140ffb5876107aa0629bcc9d2b195e14942b47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339802715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d9729f60226e3cc3fa210d2d0bdf81d36d654aa08684f38e174f605c734d87`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:06:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 09 Jul 2018 20:26:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 09 Jul 2018 20:28:47 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 09 Jul 2018 20:28:48 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Mon, 09 Jul 2018 20:28:49 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 09 Jul 2018 20:28:50 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 09 Jul 2018 20:28:51 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 09 Jul 2018 20:28:51 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 09 Jul 2018 20:28:51 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 09 Jul 2018 20:28:52 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 09 Jul 2018 20:28:52 GMT
WORKDIR /usr/local/zs-init
# Mon, 09 Jul 2018 20:28:56 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 09 Jul 2018 20:29:39 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 09 Jul 2018 20:29:42 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 09 Jul 2018 20:29:43 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 09 Jul 2018 20:29:43 GMT
RUN rm /var/www/html/index.html
# Mon, 09 Jul 2018 20:29:44 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 443/tcp
# Mon, 09 Jul 2018 20:29:44 GMT
EXPOSE 10081/tcp
# Mon, 09 Jul 2018 20:29:57 GMT
EXPOSE 10082/tcp
# Mon, 09 Jul 2018 20:29:57 GMT
WORKDIR /var/www/html
# Mon, 09 Jul 2018 20:29:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10669d22bc12bbe196b8c9b7a9a7b7f697e1a21b6d27b73e9d44e64c6a5a6e66`  
		Last Modified: Tue, 05 Jun 2018 22:10:41 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687827e016cb1f1244ea9e63c52d7a5e2c97ae8ef03493fe8f3b4c79aa243b03`  
		Last Modified: Mon, 09 Jul 2018 20:37:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5416fe37fe7340d0e188c81e8803e06e16c0ff24cb23653283a6aff2766a24b8`  
		Last Modified: Mon, 09 Jul 2018 20:39:11 GMT  
		Size: 250.8 MB (250795029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a82250987a073278d79d75a1b8312418151b6d3a75f05c1d51abe037d420d`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621f4a2d0004d0b9ff70aefc3c7d302b8b139a7d11a2ad08f5e59e4a6d4460ce`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc4a41eb0c7761f37270fa2ac297627b29d461997e6211d299964f2b07c02a2`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f3526279c5c321f37a8e3cd20c2c439f3d27344a212ca745ab59ff009b39d`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5757eba372d9d6c3e476a5c53aa07b4f413b6980b6a39781fcc28b5c6a93ca4f`  
		Last Modified: Mon, 09 Jul 2018 20:37:45 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090667c2f2ad94b8244acd0bccb603e8274e0b148782fe3b3449090dc644825a`  
		Last Modified: Mon, 09 Jul 2018 20:37:46 GMT  
		Size: 478.0 KB (477975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b50ad96943c6ddf0dda9872d4b6fde9826bb7eb2cf52b5854b0818d645e956`  
		Last Modified: Mon, 09 Jul 2018 20:37:48 GMT  
		Size: 15.2 MB (15242399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d34f0457b8274fd2833b8053f6a629cf17fb8d3585fbc7447c7b46e76a2ae`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d195505da88aa78ef47a399ebdb326ffed0cb9c275248a605eeb74b11d1a91af`  
		Last Modified: Mon, 09 Jul 2018 20:37:43 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7885e625bc11d66d98601fe30f48c23a68a2e26418e33753365ebc5029391a4`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae12e243f13a33842baa1e5d3c5baebc5227ceade7681708673b7c0e2469589`  
		Last Modified: Mon, 09 Jul 2018 20:37:42 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:21e620ca3a9cba1f4af45207ddf5c8cb009b5ad22d026f6751b7361fa985492c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:c26055a11d3bd262b56cac2c55ea9f436ded5bd5590ea75cd0b6ab96adc5c3f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.4 MB (405425507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405192163a1c445e14284d1bbc57f08c4376e18b70f46994ca49be60bb2e14bd`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Mon, 09 Jul 2018 20:33:26 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.1=9.1.4+b170     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Mon, 09 Jul 2018 20:33:28 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Mon, 09 Jul 2018 20:33:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 09 Jul 2018 20:33:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Mon, 09 Jul 2018 20:33:29 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 09 Jul 2018 20:33:29 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 09 Jul 2018 20:33:30 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 09 Jul 2018 20:33:30 GMT
WORKDIR /usr/local/zs-init
# Mon, 09 Jul 2018 20:34:07 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Mon, 09 Jul 2018 20:34:08 GMT
COPY dir:87b268799bdfc4187e75754e18df8466bf3634663b9193cbf64ee0a291e978ab in /usr/local/bin 
# Mon, 09 Jul 2018 20:34:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 09 Jul 2018 20:34:09 GMT
RUN rm /var/www/html/index.html
# Mon, 09 Jul 2018 20:34:09 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 09 Jul 2018 20:34:09 GMT
EXPOSE 80/tcp
# Mon, 09 Jul 2018 20:34:10 GMT
EXPOSE 443/tcp
# Mon, 09 Jul 2018 20:34:10 GMT
EXPOSE 10081/tcp
# Mon, 09 Jul 2018 20:34:10 GMT
EXPOSE 10082/tcp
# Mon, 09 Jul 2018 20:34:10 GMT
WORKDIR /var/www/html
# Mon, 09 Jul 2018 20:34:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4317a55e2414150e0b9043782400bf8f1a1acb2ed32963280349657d7557a`  
		Last Modified: Mon, 09 Jul 2018 20:41:57 GMT  
		Size: 346.5 MB (346544051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffdb8f21193dc5920091f605af6b76375111da08a40a1ec1b3a9b22561a0149`  
		Last Modified: Mon, 09 Jul 2018 20:40:11 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c1468885ebccf9fcb9e9e30c972a8865264ba545cfa10c26de1759929e4d4`  
		Last Modified: Mon, 09 Jul 2018 20:40:12 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3363b352ac3802638c8b1015edaba1fdea429dc0a8d4c480bf158fb04eace011`  
		Last Modified: Mon, 09 Jul 2018 20:40:10 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ab6a4fa1a672ac2dd0c4f731115460c3b139f551f13e2f47e2e6dbf9ea5a9b`  
		Last Modified: Mon, 09 Jul 2018 20:40:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0547e66505336ec4207f33178aeb20db480d3440f647df2b6c6e9aa0f0cc8ac4`  
		Last Modified: Mon, 09 Jul 2018 20:40:14 GMT  
		Size: 15.7 MB (15718507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380e1763e648a9313c890b8bab4a8e4828c17b4a4d04895a2049ef55fa259fb`  
		Last Modified: Mon, 09 Jul 2018 20:40:08 GMT  
		Size: 14.3 KB (14305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d223577cd6b7dd76431e92b3bf75cdc81a94a6daf0f4f407b08cfc263cac8a48`  
		Last Modified: Mon, 09 Jul 2018 20:40:08 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c4affc444fdba21afca54b39845df27fd0956a456b389630a7fc18a0e88ca9`  
		Last Modified: Mon, 09 Jul 2018 20:40:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b12c04f79cb12855a9b5a5803384a7fb0b404893b1f956182e3c2cf5902c9`  
		Last Modified: Mon, 09 Jul 2018 20:40:07 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:37588a4bf247cf4a05da3aac88d751032ece46d69955fb685e5989eaf371e17f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:0cbf21d7603596dcc11f47471d193a9fb5974900315cb7f11fb22bfe0ad1e8b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.4 MB (402404788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaaa62cd325aea2398ff439f1a7d33cfd4900515033eaa2f246dd3b8497ee96c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 10:26:13 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.1=9.1.3+b165     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Sun, 29 Apr 2018 10:26:14 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Sun, 29 Apr 2018 10:26:14 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sun, 29 Apr 2018 10:26:15 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Sun, 29 Apr 2018 10:26:16 GMT
ENV ZS_INIT_VERSION=0.3
# Sun, 29 Apr 2018 10:26:16 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sun, 29 Apr 2018 10:26:17 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sun, 29 Apr 2018 10:26:17 GMT
WORKDIR /usr/local/zs-init
# Sun, 29 Apr 2018 10:26:45 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar update
# Fri, 04 May 2018 05:38:44 GMT
COPY dir:6a9d88a4bd39329fcd0a852ae98fd0db209066345341f3f7e6aae6a5f133d975 in /usr/local/bin 
# Fri, 04 May 2018 05:38:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 04 May 2018 05:38:50 GMT
RUN rm /var/www/html/index.html
# Fri, 04 May 2018 05:38:51 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 04 May 2018 05:38:55 GMT
EXPOSE 80/tcp
# Fri, 04 May 2018 05:38:57 GMT
EXPOSE 443/tcp
# Fri, 04 May 2018 05:38:57 GMT
EXPOSE 10081/tcp
# Fri, 04 May 2018 05:39:03 GMT
EXPOSE 10082/tcp
# Fri, 04 May 2018 05:39:06 GMT
WORKDIR /var/www/html
# Fri, 04 May 2018 05:39:09 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8279de53a4856e9dea649da649339ea2ef92179c0e08188fc84152dc191dba`  
		Last Modified: Sun, 29 Apr 2018 11:28:02 GMT  
		Size: 344.2 MB (344156098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e295c3dc91200bc77fbb1076f99ea1519b179f341b16fcc3de2b090dc7f68c5`  
		Last Modified: Sun, 29 Apr 2018 11:26:57 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21f7e14349988936313ab9e88fa798c96d4700226bf67afeae16b29d5383872`  
		Last Modified: Sun, 29 Apr 2018 11:26:57 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe025a7ed42f1dea170b4a337058e6676ecdf16b5abfb5fee91979f432c465`  
		Last Modified: Sun, 29 Apr 2018 11:26:57 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fe8e23e034e495f05814c88e1309e2a3787c86ac859f22376c093e24766199`  
		Last Modified: Sun, 29 Apr 2018 11:26:58 GMT  
		Size: 18.8 KB (18834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228ab2d0fd4df28c0d241b5f0150f4a922887b4ee68583cd18b0b7885a93ab05`  
		Last Modified: Sun, 29 Apr 2018 11:26:59 GMT  
		Size: 15.2 MB (15181364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8456cd7e6e59ef66a61fd1a62f24d10e5b2c3fdbedfe82d1c5f7920827730c`  
		Last Modified: Fri, 04 May 2018 05:39:40 GMT  
		Size: 14.3 KB (14303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5f7617a624a425349c76d25dd4a6d21db5c6f625402cba99a5d61329e174fd`  
		Last Modified: Fri, 04 May 2018 05:39:39 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fa1ece508103b8daff898b61daf21c86b92d2c6a300002db9145d3310c49bd`  
		Last Modified: Fri, 04 May 2018 05:39:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fce0eb90240c466d0b8060c769874cfb36993619d658e77a8391f2c8829535`  
		Last Modified: Fri, 04 May 2018 05:39:39 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
