<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:5.4`](#php-zendserver54)
-	[`php-zendserver:5.5`](#php-zendserver55)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:7.0-php5.4`](#php-zendserver70-php54)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:8.5-php5.5`](#php-zendserver85-php55)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:9.1`](#php-zendserver91)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:4b82c9807cdab2c9bda5dcce13b7453ccea719fafea685eb7b55148bc3310944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a6f75cddd8164eff11a8ba191ac446237b3e3e4562167664c5c8f09fcc5fa62e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302167533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9243fc96e9eecaa1faf34fca93a9534086ace1e392ce768fc0082b308a356e4b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 22:02:19 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Fri, 13 Apr 2018 22:02:19 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 13 Apr 2018 22:02:20 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 13 Apr 2018 22:02:25 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 13 Apr 2018 22:02:26 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 13 Apr 2018 22:04:09 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 13 Apr 2018 22:04:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 13 Apr 2018 22:04:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 13 Apr 2018 22:04:12 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 443/tcp
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 10081/tcp
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 10082/tcp
# Fri, 13 Apr 2018 22:04:14 GMT
EXPOSE 10060/tcp
# Fri, 13 Apr 2018 22:04:14 GMT
EXPOSE 10061/tcp
# Fri, 13 Apr 2018 22:04:14 GMT
EXPOSE 10062/tcp
# Fri, 13 Apr 2018 22:04:15 GMT
WORKDIR /var/www/html
# Fri, 13 Apr 2018 22:04:15 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a381f2a5c5e04432685dc6717729f0835c6b567eb2b2f5e475309acdd370d6b1`  
		Last Modified: Fri, 13 Apr 2018 23:21:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e2253f5282d2358ffc6c8d2ba6a7f1a0fcc555ae78d8247cf4d6280fa8e7a8`  
		Last Modified: Fri, 13 Apr 2018 23:21:37 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d4fb6cef063f41339a32c30ea90fe3cfc4d06d9582f295e657b07780389137`  
		Last Modified: Fri, 13 Apr 2018 23:21:37 GMT  
		Size: 938.4 KB (938412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d72925099c8777f7caecb43826351c48b74766be5207a3221ab3c9534760ed`  
		Last Modified: Fri, 13 Apr 2018 23:21:37 GMT  
		Size: 13.1 KB (13060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a391e32ca49621c93f479a9a47c7e1e73cb35713424f643549604431da02ab9`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e50494a1bb09c493d4a8f55a1ef668c0a52549d10ed1ac5d1003902d366c4a`  
		Last Modified: Fri, 13 Apr 2018 23:22:16 GMT  
		Size: 228.1 MB (228063184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d028d76f701659b644c9ee6745fce806c145baa3eb8faf7bc5bfb7d382299`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afec600ab7e3ea57e791b4123e83b2a50f5d7adc33d313b9dca3daebe57676c1`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55408c9c026febfc0ef8a48356fea8227cc263add7e69137d41049e84f91cc8a`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:b014cae7dcfc97f966b273d356fc59c87843b000d7dd3137c9f5e1c8e2fd16fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2e63d2f4eb3accad39927b6e24f45920e8ff9c0a579e038b1b650ff733f366be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342350085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4330ccad7ce8f559b9b233e055d948ab45f27d028de3a52ba4aa65b4fe95e1e9`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 21:21:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Apr 2018 22:12:40 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Apr 2018 22:14:45 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5=8.5.6+b731 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Apr 2018 22:14:46 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Apr 2018 22:14:47 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Apr 2018 22:14:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Apr 2018 22:14:49 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Apr 2018 22:14:49 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Apr 2018 22:14:50 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Apr 2018 22:14:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Apr 2018 22:14:52 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Apr 2018 22:14:55 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Apr 2018 22:15:24 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Apr 2018 22:15:24 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Apr 2018 22:15:25 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Apr 2018 22:15:25 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Apr 2018 22:15:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Apr 2018 22:15:26 GMT
EXPOSE 80/tcp
# Tue, 17 Apr 2018 22:15:26 GMT
EXPOSE 443/tcp
# Tue, 17 Apr 2018 22:15:27 GMT
EXPOSE 10081/tcp
# Tue, 17 Apr 2018 22:15:27 GMT
EXPOSE 10082/tcp
# Tue, 17 Apr 2018 22:15:27 GMT
WORKDIR /var/www/html
# Tue, 17 Apr 2018 22:15:27 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143a5cfdc5ebc28cd40726ad5099c5b6aa7184bbd971f3cafa0d9cdd6e896130`  
		Last Modified: Fri, 13 Apr 2018 22:41:08 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7944589a2a07e0b81385365507756ce5c85badae691ca5c01b448b1deaa95ea`  
		Last Modified: Tue, 17 Apr 2018 23:17:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e82de0311442be66e65539b4dc3833375fc0860bf120f48da36d749485d0350`  
		Last Modified: Tue, 17 Apr 2018 23:17:48 GMT  
		Size: 254.0 MB (254015215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7003a66984bfcc6ba34685cf9acb904c49d2733a2fd788bdcd782350d97fc58`  
		Last Modified: Tue, 17 Apr 2018 23:17:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cba7fbe83ee27ef8a899d69d7b4c8b2caba336e39695e93ab702fefb87c162`  
		Last Modified: Tue, 17 Apr 2018 23:17:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0012ef7e597df7108044ab2774d3fbe81e70aa6441b48574b74ddb4ee78f04`  
		Last Modified: Tue, 17 Apr 2018 23:17:01 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b904be69fb3fc294527c1df2d1206522204756a52aa9b52700d6885d923d3`  
		Last Modified: Tue, 17 Apr 2018 23:17:01 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42daaf4f49f92a96c582173e6a59a53b4e3785b0ce0e372ecbf8f0a3afa4a113`  
		Last Modified: Tue, 17 Apr 2018 23:17:00 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d818a5d096df6a250c4e8391a9d62c9f17da25205993e9b7a135cf05b567e91d`  
		Last Modified: Tue, 17 Apr 2018 23:17:00 GMT  
		Size: 477.9 KB (477878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a6e22c16a1b0b951b12cee73f4f3cdb59ee7c66ea1551b5cf687fcf9999911`  
		Last Modified: Tue, 17 Apr 2018 23:17:02 GMT  
		Size: 14.7 MB (14667600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44dd212716e15d13197b752992adb059c89662866488af2d33b1678d1aed370`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f291a75f4f2fc9f10ce2a8700df737c38e36d53db2b50a648f816b86c33c8db`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32de1613694e54e6ad1f5a440c7b108ba7a3606a801356a737ab9cd1c1241260`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393d1bde7ca81998dec47e26215982c2b12f2f207031ccf0a8929fc498b530e3`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:87487d59c25cddd8b19c5b16795a1efbeaa7ff77b24737fe979a91fbd5dee4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d97f8f151112227b32dd710cc3d5ea1e7aa15a5cf5b5e1a9852d73560513a934
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.6 MB (342564077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd44a6b1e7f327f7b496581672ae61e371016e9aa26b585aacab30c41bfa563`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 21:21:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Apr 2018 22:12:40 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Apr 2018 22:32:26 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.9+b796 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Apr 2018 22:32:27 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Apr 2018 22:32:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Apr 2018 22:32:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Apr 2018 22:32:29 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Apr 2018 22:32:29 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Apr 2018 22:32:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Apr 2018 22:32:31 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Apr 2018 22:32:31 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Apr 2018 22:32:34 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Apr 2018 22:33:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Apr 2018 22:33:03 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Apr 2018 22:33:03 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Apr 2018 22:33:04 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Apr 2018 22:33:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 80/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 443/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 10081/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 10082/tcp
# Tue, 17 Apr 2018 22:33:06 GMT
WORKDIR /var/www/html
# Tue, 17 Apr 2018 22:33:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143a5cfdc5ebc28cd40726ad5099c5b6aa7184bbd971f3cafa0d9cdd6e896130`  
		Last Modified: Fri, 13 Apr 2018 22:41:08 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7944589a2a07e0b81385365507756ce5c85badae691ca5c01b448b1deaa95ea`  
		Last Modified: Tue, 17 Apr 2018 23:17:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a414230f022c9429059c1a6fe4a48797b1ce2e469ced940dca0865472334efb`  
		Last Modified: Tue, 17 Apr 2018 23:31:24 GMT  
		Size: 254.2 MB (254204136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1002f34466ddd379f6f19fe59ec0ced3abd9596ba74f77af82fde400c29a1423`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71a46e6b26ed075213df4c9268d627bd6b2ad001e79d656400df25d5f1eef3a`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd163f1f0456ecab35041f703f0a808e1c312211bee36230af50a3cc3ff73a3`  
		Last Modified: Tue, 17 Apr 2018 23:30:35 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894fb1aafdf4e14c3e1a90d393bbeb97207f42b1175f04e89c90efb38526e3a4`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb0fe7f90acbbd95d37bc5da67bb92dd9d3f9942c46b5d9d96156ee3ddc3749`  
		Last Modified: Tue, 17 Apr 2018 23:30:34 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a5f28126873e02964b90011b8e609dcca9888c1d1fa562bd6d486743d101c5`  
		Last Modified: Tue, 17 Apr 2018 23:30:35 GMT  
		Size: 477.9 KB (477880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7bb80b1e74cb64cf517c029b77a659a8cb0fae79086d51a40d92bd0967ecef`  
		Last Modified: Tue, 17 Apr 2018 23:30:38 GMT  
		Size: 14.7 MB (14692656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24999029c2218ef2ed9e46cfe6ae4fe84dce29ffdd3f5f5cf0a82dca2f0e1715`  
		Last Modified: Tue, 17 Apr 2018 23:30:33 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca71643d146d05a88d1c3b85b501dc39893439c3507ee1a7edc2591eed983378`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e646c289a67ddecea13ee35bbd3e54be9095518e33cf5a3d354db8bd439b8992`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443317ad4990a5d6b26c64122d49013a5e7594dadc0eef9a577c17b8a6de956d`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:4b82c9807cdab2c9bda5dcce13b7453ccea719fafea685eb7b55148bc3310944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a6f75cddd8164eff11a8ba191ac446237b3e3e4562167664c5c8f09fcc5fa62e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302167533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9243fc96e9eecaa1faf34fca93a9534086ace1e392ce768fc0082b308a356e4b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 22:02:19 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Fri, 13 Apr 2018 22:02:19 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 13 Apr 2018 22:02:20 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 13 Apr 2018 22:02:25 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 13 Apr 2018 22:02:26 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 13 Apr 2018 22:04:09 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 13 Apr 2018 22:04:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 13 Apr 2018 22:04:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 13 Apr 2018 22:04:12 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 443/tcp
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 10081/tcp
# Fri, 13 Apr 2018 22:04:13 GMT
EXPOSE 10082/tcp
# Fri, 13 Apr 2018 22:04:14 GMT
EXPOSE 10060/tcp
# Fri, 13 Apr 2018 22:04:14 GMT
EXPOSE 10061/tcp
# Fri, 13 Apr 2018 22:04:14 GMT
EXPOSE 10062/tcp
# Fri, 13 Apr 2018 22:04:15 GMT
WORKDIR /var/www/html
# Fri, 13 Apr 2018 22:04:15 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a381f2a5c5e04432685dc6717729f0835c6b567eb2b2f5e475309acdd370d6b1`  
		Last Modified: Fri, 13 Apr 2018 23:21:38 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e2253f5282d2358ffc6c8d2ba6a7f1a0fcc555ae78d8247cf4d6280fa8e7a8`  
		Last Modified: Fri, 13 Apr 2018 23:21:37 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d4fb6cef063f41339a32c30ea90fe3cfc4d06d9582f295e657b07780389137`  
		Last Modified: Fri, 13 Apr 2018 23:21:37 GMT  
		Size: 938.4 KB (938412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d72925099c8777f7caecb43826351c48b74766be5207a3221ab3c9534760ed`  
		Last Modified: Fri, 13 Apr 2018 23:21:37 GMT  
		Size: 13.1 KB (13060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a391e32ca49621c93f479a9a47c7e1e73cb35713424f643549604431da02ab9`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e50494a1bb09c493d4a8f55a1ef668c0a52549d10ed1ac5d1003902d366c4a`  
		Last Modified: Fri, 13 Apr 2018 23:22:16 GMT  
		Size: 228.1 MB (228063184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d028d76f701659b644c9ee6745fce806c145baa3eb8faf7bc5bfb7d382299`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afec600ab7e3ea57e791b4123e83b2a50f5d7adc33d313b9dca3daebe57676c1`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55408c9c026febfc0ef8a48356fea8227cc263add7e69137d41049e84f91cc8a`  
		Last Modified: Fri, 13 Apr 2018 23:21:35 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:87487d59c25cddd8b19c5b16795a1efbeaa7ff77b24737fe979a91fbd5dee4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d97f8f151112227b32dd710cc3d5ea1e7aa15a5cf5b5e1a9852d73560513a934
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.6 MB (342564077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd44a6b1e7f327f7b496581672ae61e371016e9aa26b585aacab30c41bfa563`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 21:21:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Apr 2018 22:12:40 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Apr 2018 22:32:26 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.9+b796 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Apr 2018 22:32:27 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Apr 2018 22:32:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Apr 2018 22:32:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Apr 2018 22:32:29 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Apr 2018 22:32:29 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Apr 2018 22:32:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Apr 2018 22:32:31 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Apr 2018 22:32:31 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Apr 2018 22:32:34 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Apr 2018 22:33:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Apr 2018 22:33:03 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Apr 2018 22:33:03 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Apr 2018 22:33:04 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Apr 2018 22:33:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 80/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 443/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 10081/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 10082/tcp
# Tue, 17 Apr 2018 22:33:06 GMT
WORKDIR /var/www/html
# Tue, 17 Apr 2018 22:33:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143a5cfdc5ebc28cd40726ad5099c5b6aa7184bbd971f3cafa0d9cdd6e896130`  
		Last Modified: Fri, 13 Apr 2018 22:41:08 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7944589a2a07e0b81385365507756ce5c85badae691ca5c01b448b1deaa95ea`  
		Last Modified: Tue, 17 Apr 2018 23:17:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a414230f022c9429059c1a6fe4a48797b1ce2e469ced940dca0865472334efb`  
		Last Modified: Tue, 17 Apr 2018 23:31:24 GMT  
		Size: 254.2 MB (254204136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1002f34466ddd379f6f19fe59ec0ced3abd9596ba74f77af82fde400c29a1423`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71a46e6b26ed075213df4c9268d627bd6b2ad001e79d656400df25d5f1eef3a`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd163f1f0456ecab35041f703f0a808e1c312211bee36230af50a3cc3ff73a3`  
		Last Modified: Tue, 17 Apr 2018 23:30:35 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894fb1aafdf4e14c3e1a90d393bbeb97207f42b1175f04e89c90efb38526e3a4`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb0fe7f90acbbd95d37bc5da67bb92dd9d3f9942c46b5d9d96156ee3ddc3749`  
		Last Modified: Tue, 17 Apr 2018 23:30:34 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a5f28126873e02964b90011b8e609dcca9888c1d1fa562bd6d486743d101c5`  
		Last Modified: Tue, 17 Apr 2018 23:30:35 GMT  
		Size: 477.9 KB (477880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7bb80b1e74cb64cf517c029b77a659a8cb0fae79086d51a40d92bd0967ecef`  
		Last Modified: Tue, 17 Apr 2018 23:30:38 GMT  
		Size: 14.7 MB (14692656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24999029c2218ef2ed9e46cfe6ae4fe84dce29ffdd3f5f5cf0a82dca2f0e1715`  
		Last Modified: Tue, 17 Apr 2018 23:30:33 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca71643d146d05a88d1c3b85b501dc39893439c3507ee1a7edc2591eed983378`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e646c289a67ddecea13ee35bbd3e54be9095518e33cf5a3d354db8bd439b8992`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443317ad4990a5d6b26c64122d49013a5e7594dadc0eef9a577c17b8a6de956d`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:b014cae7dcfc97f966b273d356fc59c87843b000d7dd3137c9f5e1c8e2fd16fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2e63d2f4eb3accad39927b6e24f45920e8ff9c0a579e038b1b650ff733f366be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342350085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4330ccad7ce8f559b9b233e055d948ab45f27d028de3a52ba4aa65b4fe95e1e9`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 21:21:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Apr 2018 22:12:40 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Apr 2018 22:14:45 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5=8.5.6+b731 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Apr 2018 22:14:46 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Apr 2018 22:14:47 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Apr 2018 22:14:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Apr 2018 22:14:49 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Apr 2018 22:14:49 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Apr 2018 22:14:50 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Apr 2018 22:14:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Apr 2018 22:14:52 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Apr 2018 22:14:55 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Apr 2018 22:15:24 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Apr 2018 22:15:24 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Apr 2018 22:15:25 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Apr 2018 22:15:25 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Apr 2018 22:15:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Apr 2018 22:15:26 GMT
EXPOSE 80/tcp
# Tue, 17 Apr 2018 22:15:26 GMT
EXPOSE 443/tcp
# Tue, 17 Apr 2018 22:15:27 GMT
EXPOSE 10081/tcp
# Tue, 17 Apr 2018 22:15:27 GMT
EXPOSE 10082/tcp
# Tue, 17 Apr 2018 22:15:27 GMT
WORKDIR /var/www/html
# Tue, 17 Apr 2018 22:15:27 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143a5cfdc5ebc28cd40726ad5099c5b6aa7184bbd971f3cafa0d9cdd6e896130`  
		Last Modified: Fri, 13 Apr 2018 22:41:08 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7944589a2a07e0b81385365507756ce5c85badae691ca5c01b448b1deaa95ea`  
		Last Modified: Tue, 17 Apr 2018 23:17:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e82de0311442be66e65539b4dc3833375fc0860bf120f48da36d749485d0350`  
		Last Modified: Tue, 17 Apr 2018 23:17:48 GMT  
		Size: 254.0 MB (254015215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7003a66984bfcc6ba34685cf9acb904c49d2733a2fd788bdcd782350d97fc58`  
		Last Modified: Tue, 17 Apr 2018 23:17:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cba7fbe83ee27ef8a899d69d7b4c8b2caba336e39695e93ab702fefb87c162`  
		Last Modified: Tue, 17 Apr 2018 23:17:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0012ef7e597df7108044ab2774d3fbe81e70aa6441b48574b74ddb4ee78f04`  
		Last Modified: Tue, 17 Apr 2018 23:17:01 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b904be69fb3fc294527c1df2d1206522204756a52aa9b52700d6885d923d3`  
		Last Modified: Tue, 17 Apr 2018 23:17:01 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42daaf4f49f92a96c582173e6a59a53b4e3785b0ce0e372ecbf8f0a3afa4a113`  
		Last Modified: Tue, 17 Apr 2018 23:17:00 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d818a5d096df6a250c4e8391a9d62c9f17da25205993e9b7a135cf05b567e91d`  
		Last Modified: Tue, 17 Apr 2018 23:17:00 GMT  
		Size: 477.9 KB (477878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a6e22c16a1b0b951b12cee73f4f3cdb59ee7c66ea1551b5cf687fcf9999911`  
		Last Modified: Tue, 17 Apr 2018 23:17:02 GMT  
		Size: 14.7 MB (14667600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44dd212716e15d13197b752992adb059c89662866488af2d33b1678d1aed370`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f291a75f4f2fc9f10ce2a8700df737c38e36d53db2b50a648f816b86c33c8db`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32de1613694e54e6ad1f5a440c7b108ba7a3606a801356a737ab9cd1c1241260`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393d1bde7ca81998dec47e26215982c2b12f2f207031ccf0a8929fc498b530e3`  
		Last Modified: Tue, 17 Apr 2018 23:16:57 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:87487d59c25cddd8b19c5b16795a1efbeaa7ff77b24737fe979a91fbd5dee4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d97f8f151112227b32dd710cc3d5ea1e7aa15a5cf5b5e1a9852d73560513a934
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.6 MB (342564077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd44a6b1e7f327f7b496581672ae61e371016e9aa26b585aacab30c41bfa563`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 21:21:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Apr 2018 22:12:40 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Apr 2018 22:32:26 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.9+b796 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Apr 2018 22:32:27 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Apr 2018 22:32:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Apr 2018 22:32:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Apr 2018 22:32:29 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Apr 2018 22:32:29 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Apr 2018 22:32:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Apr 2018 22:32:31 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Apr 2018 22:32:31 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Apr 2018 22:32:34 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Apr 2018 22:33:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Apr 2018 22:33:03 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Apr 2018 22:33:03 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Apr 2018 22:33:04 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Apr 2018 22:33:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 80/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 443/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 10081/tcp
# Tue, 17 Apr 2018 22:33:05 GMT
EXPOSE 10082/tcp
# Tue, 17 Apr 2018 22:33:06 GMT
WORKDIR /var/www/html
# Tue, 17 Apr 2018 22:33:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143a5cfdc5ebc28cd40726ad5099c5b6aa7184bbd971f3cafa0d9cdd6e896130`  
		Last Modified: Fri, 13 Apr 2018 22:41:08 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7944589a2a07e0b81385365507756ce5c85badae691ca5c01b448b1deaa95ea`  
		Last Modified: Tue, 17 Apr 2018 23:17:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a414230f022c9429059c1a6fe4a48797b1ce2e469ced940dca0865472334efb`  
		Last Modified: Tue, 17 Apr 2018 23:31:24 GMT  
		Size: 254.2 MB (254204136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1002f34466ddd379f6f19fe59ec0ced3abd9596ba74f77af82fde400c29a1423`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71a46e6b26ed075213df4c9268d627bd6b2ad001e79d656400df25d5f1eef3a`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd163f1f0456ecab35041f703f0a808e1c312211bee36230af50a3cc3ff73a3`  
		Last Modified: Tue, 17 Apr 2018 23:30:35 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894fb1aafdf4e14c3e1a90d393bbeb97207f42b1175f04e89c90efb38526e3a4`  
		Last Modified: Tue, 17 Apr 2018 23:30:37 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb0fe7f90acbbd95d37bc5da67bb92dd9d3f9942c46b5d9d96156ee3ddc3749`  
		Last Modified: Tue, 17 Apr 2018 23:30:34 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a5f28126873e02964b90011b8e609dcca9888c1d1fa562bd6d486743d101c5`  
		Last Modified: Tue, 17 Apr 2018 23:30:35 GMT  
		Size: 477.9 KB (477880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7bb80b1e74cb64cf517c029b77a659a8cb0fae79086d51a40d92bd0967ecef`  
		Last Modified: Tue, 17 Apr 2018 23:30:38 GMT  
		Size: 14.7 MB (14692656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24999029c2218ef2ed9e46cfe6ae4fe84dce29ffdd3f5f5cf0a82dca2f0e1715`  
		Last Modified: Tue, 17 Apr 2018 23:30:33 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca71643d146d05a88d1c3b85b501dc39893439c3507ee1a7edc2591eed983378`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e646c289a67ddecea13ee35bbd3e54be9095518e33cf5a3d354db8bd439b8992`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443317ad4990a5d6b26c64122d49013a5e7594dadc0eef9a577c17b8a6de956d`  
		Last Modified: Tue, 17 Apr 2018 23:30:32 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:528ce7d20208afc0467b8fb0fe497198dfd1a0ce4fab910c150daacec472eccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:fbd6a216b83a1adc30e66af0e57946240de00fe83fde714594e3104f3312382e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 MB (407674238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c4498688ebb10c0d05ea4d5b76be543299e4a7bfd0c9e66b80c9efac08e786`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Apr 2018 22:57:01 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.1=9.1.3+b165     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Apr 2018 22:57:02 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Apr 2018 22:57:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Apr 2018 22:57:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Tue, 17 Apr 2018 22:57:04 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Apr 2018 22:57:04 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Apr 2018 22:57:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Apr 2018 22:57:06 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Apr 2018 22:57:33 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar update
# Tue, 17 Apr 2018 22:57:34 GMT
COPY dir:9ae9bd79a6b436f5e20998652e3abb5e62adf9c00f26df20e03cef6ddca46367 in /usr/local/bin 
# Tue, 17 Apr 2018 22:57:35 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Apr 2018 22:57:35 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Apr 2018 22:57:36 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Apr 2018 22:57:36 GMT
EXPOSE 80/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
EXPOSE 443/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
EXPOSE 10081/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
EXPOSE 10082/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
WORKDIR /var/www/html
# Tue, 17 Apr 2018 22:57:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5df4ca68fa3a669868a03664a814c27a1a75668971ee27d4d47a24dc42e4a6`  
		Last Modified: Tue, 17 Apr 2018 23:50:15 GMT  
		Size: 349.4 MB (349444249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a002d69f02729c380dbff165f6400b0d755d8ce75827d071b0cebcb7a9ab49cd`  
		Last Modified: Tue, 17 Apr 2018 23:49:06 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76159c10c45776e620e79887f466a5190c230c27701121dc6c64629ee587d8b`  
		Last Modified: Tue, 17 Apr 2018 23:49:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8d90c52458b504252ddbb002191c33be51f831d6d21eb2228a73ed0ff86a5c`  
		Last Modified: Tue, 17 Apr 2018 23:49:06 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2633d0ef0bb94dc7e0a5aff1f7e88c6f64e3395dfdc3bdbaf3283a796e98b7`  
		Last Modified: Tue, 17 Apr 2018 23:49:05 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3158c5af5f36d5c46ab886bf929cbd068ccbe83b52fe29aa901b01cdbdf3a728`  
		Last Modified: Tue, 17 Apr 2018 23:49:08 GMT  
		Size: 15.2 MB (15167098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf4bb65ac5d1c78c51fe950e5aa11ae189fb2f1067157fab1753bf6683a5819`  
		Last Modified: Tue, 17 Apr 2018 23:49:04 GMT  
		Size: 13.8 KB (13789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e4f33b2be688d188ff635115c29c82b61d599167a5e2a8d5e47702533131ef`  
		Last Modified: Tue, 17 Apr 2018 23:49:03 GMT  
		Size: 2.5 KB (2532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21e3883048053d6d93e714ccad07fdeae518647d34714c85a61c0847afdeb37`  
		Last Modified: Tue, 17 Apr 2018 23:49:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3b39ad53b054bfe95ad681c2387c65986c8ae12b8135e18aa04ad419aebf55`  
		Last Modified: Tue, 17 Apr 2018 23:49:03 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:5dc7d49f8b5aba0e5a1430f6ead5468406f37839f2c2ea7e91c8ac8f26092aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:c8d39060c1200df9fdf735666dd5660454e129814f4d5b37cf307cea1c7a20fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.9 MB (424873601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540a4643dbbff05c234eef871acdda5217f4533d032cfd6919a434e734d3fa47`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 22:38:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 06 Mar 2018 23:10:10 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 23:11:58 GMT
RUN apt-get update &&     apt-get install -y     curl libmysqlclient18 unzip git zend-server-php-7.1=9.1.2+b144 &&     apt-get clean &&     /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 23:11:59 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 06 Mar 2018 23:12:00 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 23:12:00 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 23:12:02 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 23:12:02 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 06 Mar 2018 23:12:02 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 06 Mar 2018 23:12:03 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 06 Mar 2018 23:12:04 GMT
WORKDIR /usr/local/zs-init
# Tue, 06 Mar 2018 23:12:06 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 06 Mar 2018 23:12:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 06 Mar 2018 23:12:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 06 Mar 2018 23:12:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 06 Mar 2018 23:12:30 GMT
RUN rm /var/www/html/index.html
# Tue, 06 Mar 2018 23:12:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 06 Mar 2018 23:12:30 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 23:12:31 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 23:12:31 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 23:12:31 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 23:12:31 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 23:12:32 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72df0e27728ae4c93803133564ac535efc59b793bdc0310d6828fd2ee029a597`  
		Last Modified: Tue, 06 Mar 2018 23:13:14 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59940ed9f06a5f26ea4eb43a0e8ce095d644abeb2f48b382515c0a064a7063a3`  
		Last Modified: Tue, 06 Mar 2018 23:21:00 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a06b856bb6da0086093c27a479bca6ffbeeb81629252b3b9365b3f06995c8b`  
		Last Modified: Tue, 06 Mar 2018 23:22:34 GMT  
		Size: 337.0 MB (336997115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022298c915814dacae1449d6e40c8235d8b7d8a67f3ffcf9e2f3d5e2c64fd99b`  
		Last Modified: Tue, 06 Mar 2018 23:20:59 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f9c64ecaa20ec9617c52dd1aa723dc43182470615e236597267706e9c559c3`  
		Last Modified: Tue, 06 Mar 2018 23:20:59 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3385250953d5e1a645e8e79494fc2e0fc87a3ae704647f5a21c83bbe55eca6f9`  
		Last Modified: Tue, 06 Mar 2018 23:20:57 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0861bf6da6292d707c43c4c83939baf7739b2b5b651f86351204ad56ddb8bfa7`  
		Last Modified: Tue, 06 Mar 2018 23:20:57 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37f17ec038e532035256a2e1ba16e42b075bdc412f322fa189ff0f6616f427c`  
		Last Modified: Tue, 06 Mar 2018 23:20:57 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f49dd7c0909d82d07665515b676e005b95baf98b4458c30f1c2a967377f67b`  
		Last Modified: Tue, 06 Mar 2018 23:20:58 GMT  
		Size: 490.4 KB (490361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04619ad112cf6c47888f9ac4bec595c9065b7f6db83585513cd9f05decdb9aab`  
		Last Modified: Tue, 06 Mar 2018 23:20:59 GMT  
		Size: 14.3 MB (14264412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6eeafa9256447c01023d4dd6d6704e097e51b112606b442d28943ae7dc02f35`  
		Last Modified: Tue, 06 Mar 2018 23:20:55 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ccbf89da04b2bde81038cd656f98f335d735f2581c92c26e44a2df4a2baee3`  
		Last Modified: Tue, 06 Mar 2018 23:20:55 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756651134c596f7a1328c3b5ceb3c06fd6c0a16cb90295bbf0a48c11be1411e5`  
		Last Modified: Tue, 06 Mar 2018 23:20:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbefab41c893092dadefb793ac7b342e5857e1fb03386b04b5439fd3b604215`  
		Last Modified: Tue, 06 Mar 2018 23:20:55 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
