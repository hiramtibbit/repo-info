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
$ docker pull php-zendserver@sha256:90fd05ae7a838bfa204a66e02416ef757e81fd6bee4a366e508bcbd91d673480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d94f9af619b90d81412806ef5a6d877e8fb46c5d67f220bd51fb41b6b4378e54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338751442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f828d9aa18c6241637bea8b6f6806710c9f94ad6e3937ff12b07cf1504688b`
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
# Fri, 13 Apr 2018 21:21:24 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 13 Apr 2018 21:23:20 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 13 Apr 2018 21:23:21 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 13 Apr 2018 21:23:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 13 Apr 2018 21:23:23 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 13 Apr 2018 21:23:23 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 13 Apr 2018 21:23:24 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 13 Apr 2018 21:23:24 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 13 Apr 2018 21:23:26 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 13 Apr 2018 21:23:26 GMT
WORKDIR /usr/local/zs-init
# Fri, 13 Apr 2018 21:23:29 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 13 Apr 2018 21:23:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 13 Apr 2018 21:23:58 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 13 Apr 2018 21:23:59 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 13 Apr 2018 21:24:00 GMT
RUN rm /var/www/html/index.html
# Fri, 13 Apr 2018 21:24:00 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 13 Apr 2018 21:24:00 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 21:24:01 GMT
EXPOSE 443/tcp
# Fri, 13 Apr 2018 21:24:01 GMT
EXPOSE 10081/tcp
# Fri, 13 Apr 2018 21:24:01 GMT
EXPOSE 10082/tcp
# Fri, 13 Apr 2018 21:24:02 GMT
WORKDIR /var/www/html
# Fri, 13 Apr 2018 21:24:02 GMT
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
	-	`sha256:b6cb6478df73fd1068d2ad7b918f945c586be481646795bb3286c4d8c4347288`  
		Last Modified: Fri, 13 Apr 2018 22:41:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7041b5265d0d81e027044691f4708d93132645447fc11492aad260614671fc`  
		Last Modified: Fri, 13 Apr 2018 22:41:53 GMT  
		Size: 250.5 MB (250455686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd3a4a905b8f1989e79ff389b040cb2ecfa2cfb10b0bd82e9cc8bad9aecaaa8`  
		Last Modified: Fri, 13 Apr 2018 22:41:06 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bbe43841be5c0f244d80008e566ddbaab5e9f63ac0e2b503f4a6d6c95c528f`  
		Last Modified: Fri, 13 Apr 2018 22:41:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fb7eed1d65f469ab9ef30659eeff0981bad676b5b60f85dd0b9735c8959d05`  
		Last Modified: Fri, 13 Apr 2018 22:41:05 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa899e304a4131eabe025d4cf158db25cee6e5ae805b664bae69e7f20d19cb5d`  
		Last Modified: Fri, 13 Apr 2018 22:41:04 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ca9a62e37c78b9c65dd706fe5d43f7f52a23a96887f6085135168923743e6`  
		Last Modified: Fri, 13 Apr 2018 22:41:03 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73d64946a3969d50e83c639650bc75508198fe9e6c8991fdc25df54b4b469`  
		Last Modified: Fri, 13 Apr 2018 22:41:03 GMT  
		Size: 477.9 KB (477880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ec783c15ff0d1b6b1e39213002d66ba2bd7777da3160bad7c44af0960a1fbf`  
		Last Modified: Fri, 13 Apr 2018 22:41:06 GMT  
		Size: 14.6 MB (14628488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb23becb9874ffed0fcc4861da5a415a11096f016d7031541ea6fada927e0411`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c03fea585a9214188d23674412d400dd193e8ef09ea0a1d298b717193a59c8`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a5d0a9e186493b9d96bafa4d9c228dcfa0ca6a8775ef18e6ffcecf9ad9d8a5`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6c45615f4765aa0a7cad83819079c0a0766d6cb1d9d5862e42de3c43dd23b6`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:5b4999e66dce9ef1b2b218355df049daf133e84a02617a97aa35a0fb79660902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:cc8705fcd269d59090da86ca11960bcbb5ceb3e444cc17232ff89024f3a99758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338921781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7257f09e390a5d1441f8630d9f9ee14e77545c842fb3fe589b580a9c9bd0c0d9`
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
# Fri, 13 Apr 2018 21:21:24 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 13 Apr 2018 21:44:34 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 13 Apr 2018 21:44:35 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 13 Apr 2018 21:44:35 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 13 Apr 2018 21:44:37 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 13 Apr 2018 21:44:38 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 13 Apr 2018 21:44:38 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 13 Apr 2018 21:44:38 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 13 Apr 2018 21:44:40 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 13 Apr 2018 21:44:40 GMT
WORKDIR /usr/local/zs-init
# Fri, 13 Apr 2018 21:44:43 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 13 Apr 2018 21:45:12 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 13 Apr 2018 21:45:12 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 13 Apr 2018 21:45:13 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 13 Apr 2018 21:45:14 GMT
RUN rm /var/www/html/index.html
# Fri, 13 Apr 2018 21:45:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 13 Apr 2018 21:45:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 21:45:14 GMT
EXPOSE 443/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
EXPOSE 10081/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
EXPOSE 10082/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
WORKDIR /var/www/html
# Fri, 13 Apr 2018 21:45:16 GMT
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
	-	`sha256:b6cb6478df73fd1068d2ad7b918f945c586be481646795bb3286c4d8c4347288`  
		Last Modified: Fri, 13 Apr 2018 22:41:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a789ce1a06d23cfaa540021bdb4d6fd8cf75b5339a4ccda7862cf9e711a465`  
		Last Modified: Fri, 13 Apr 2018 22:54:24 GMT  
		Size: 250.6 MB (250600843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339961ae1c4c64b8ccad70d57858205c10feb0154394d62193e5e349b0a424fb`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4331cbaceddc0e3922fafe6e7f2dab6e52506800b6dcc77054efbb354a9b43a0`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd3cfdf2d5874a6305e27234dea74f12c24faaa57383d385a055454c05ff8cd`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88086ea4fa3005b125b13e7534647a855148da47a983ded5690b61c3692e668f`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad12958d6bf320a47768e2c25b8b10d6d014906ace3eaf17ca75c9b4e11d0f24`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45787e3c01c20a37a72dafbfac9227d5de86df89eb9802d9bd3bb564d08e41a`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 477.9 KB (477878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721cfb2e40250732814f58a6deaba9dd368da6d2b050efa9eba5c8b614c95cdd`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 14.7 MB (14653674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ef4b729e88a513737de425713ac001106eef4a587747daea21bc959096f24`  
		Last Modified: Fri, 13 Apr 2018 22:53:38 GMT  
		Size: 13.4 KB (13356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28200a7c71730cfca69f9c8f20a7abf0dfa24d8cd5c538481e75c9b0c5a26ac`  
		Last Modified: Fri, 13 Apr 2018 22:53:38 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a10c22d3210af454e95b10b3b0d4aafadfa9f6711e1b61d90235db80219b96`  
		Last Modified: Fri, 13 Apr 2018 22:53:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02119595dd677e9113e0424d84698a4ba40cd8b41a4c70c94ec3c1f0ab406e`  
		Last Modified: Fri, 13 Apr 2018 22:53:39 GMT  
		Size: 1.3 KB (1251 bytes)  
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
$ docker pull php-zendserver@sha256:5b4999e66dce9ef1b2b218355df049daf133e84a02617a97aa35a0fb79660902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:cc8705fcd269d59090da86ca11960bcbb5ceb3e444cc17232ff89024f3a99758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338921781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7257f09e390a5d1441f8630d9f9ee14e77545c842fb3fe589b580a9c9bd0c0d9`
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
# Fri, 13 Apr 2018 21:21:24 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 13 Apr 2018 21:44:34 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 13 Apr 2018 21:44:35 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 13 Apr 2018 21:44:35 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 13 Apr 2018 21:44:37 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 13 Apr 2018 21:44:38 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 13 Apr 2018 21:44:38 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 13 Apr 2018 21:44:38 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 13 Apr 2018 21:44:40 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 13 Apr 2018 21:44:40 GMT
WORKDIR /usr/local/zs-init
# Fri, 13 Apr 2018 21:44:43 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 13 Apr 2018 21:45:12 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 13 Apr 2018 21:45:12 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 13 Apr 2018 21:45:13 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 13 Apr 2018 21:45:14 GMT
RUN rm /var/www/html/index.html
# Fri, 13 Apr 2018 21:45:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 13 Apr 2018 21:45:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 21:45:14 GMT
EXPOSE 443/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
EXPOSE 10081/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
EXPOSE 10082/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
WORKDIR /var/www/html
# Fri, 13 Apr 2018 21:45:16 GMT
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
	-	`sha256:b6cb6478df73fd1068d2ad7b918f945c586be481646795bb3286c4d8c4347288`  
		Last Modified: Fri, 13 Apr 2018 22:41:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a789ce1a06d23cfaa540021bdb4d6fd8cf75b5339a4ccda7862cf9e711a465`  
		Last Modified: Fri, 13 Apr 2018 22:54:24 GMT  
		Size: 250.6 MB (250600843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339961ae1c4c64b8ccad70d57858205c10feb0154394d62193e5e349b0a424fb`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4331cbaceddc0e3922fafe6e7f2dab6e52506800b6dcc77054efbb354a9b43a0`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd3cfdf2d5874a6305e27234dea74f12c24faaa57383d385a055454c05ff8cd`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88086ea4fa3005b125b13e7534647a855148da47a983ded5690b61c3692e668f`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad12958d6bf320a47768e2c25b8b10d6d014906ace3eaf17ca75c9b4e11d0f24`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45787e3c01c20a37a72dafbfac9227d5de86df89eb9802d9bd3bb564d08e41a`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 477.9 KB (477878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721cfb2e40250732814f58a6deaba9dd368da6d2b050efa9eba5c8b614c95cdd`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 14.7 MB (14653674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ef4b729e88a513737de425713ac001106eef4a587747daea21bc959096f24`  
		Last Modified: Fri, 13 Apr 2018 22:53:38 GMT  
		Size: 13.4 KB (13356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28200a7c71730cfca69f9c8f20a7abf0dfa24d8cd5c538481e75c9b0c5a26ac`  
		Last Modified: Fri, 13 Apr 2018 22:53:38 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a10c22d3210af454e95b10b3b0d4aafadfa9f6711e1b61d90235db80219b96`  
		Last Modified: Fri, 13 Apr 2018 22:53:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02119595dd677e9113e0424d84698a4ba40cd8b41a4c70c94ec3c1f0ab406e`  
		Last Modified: Fri, 13 Apr 2018 22:53:39 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:90fd05ae7a838bfa204a66e02416ef757e81fd6bee4a366e508bcbd91d673480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d94f9af619b90d81412806ef5a6d877e8fb46c5d67f220bd51fb41b6b4378e54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338751442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f828d9aa18c6241637bea8b6f6806710c9f94ad6e3937ff12b07cf1504688b`
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
# Fri, 13 Apr 2018 21:21:24 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 13 Apr 2018 21:23:20 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 13 Apr 2018 21:23:21 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 13 Apr 2018 21:23:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 13 Apr 2018 21:23:23 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 13 Apr 2018 21:23:23 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 13 Apr 2018 21:23:24 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 13 Apr 2018 21:23:24 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 13 Apr 2018 21:23:26 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 13 Apr 2018 21:23:26 GMT
WORKDIR /usr/local/zs-init
# Fri, 13 Apr 2018 21:23:29 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 13 Apr 2018 21:23:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 13 Apr 2018 21:23:58 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 13 Apr 2018 21:23:59 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 13 Apr 2018 21:24:00 GMT
RUN rm /var/www/html/index.html
# Fri, 13 Apr 2018 21:24:00 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 13 Apr 2018 21:24:00 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 21:24:01 GMT
EXPOSE 443/tcp
# Fri, 13 Apr 2018 21:24:01 GMT
EXPOSE 10081/tcp
# Fri, 13 Apr 2018 21:24:01 GMT
EXPOSE 10082/tcp
# Fri, 13 Apr 2018 21:24:02 GMT
WORKDIR /var/www/html
# Fri, 13 Apr 2018 21:24:02 GMT
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
	-	`sha256:b6cb6478df73fd1068d2ad7b918f945c586be481646795bb3286c4d8c4347288`  
		Last Modified: Fri, 13 Apr 2018 22:41:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7041b5265d0d81e027044691f4708d93132645447fc11492aad260614671fc`  
		Last Modified: Fri, 13 Apr 2018 22:41:53 GMT  
		Size: 250.5 MB (250455686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd3a4a905b8f1989e79ff389b040cb2ecfa2cfb10b0bd82e9cc8bad9aecaaa8`  
		Last Modified: Fri, 13 Apr 2018 22:41:06 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bbe43841be5c0f244d80008e566ddbaab5e9f63ac0e2b503f4a6d6c95c528f`  
		Last Modified: Fri, 13 Apr 2018 22:41:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fb7eed1d65f469ab9ef30659eeff0981bad676b5b60f85dd0b9735c8959d05`  
		Last Modified: Fri, 13 Apr 2018 22:41:05 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa899e304a4131eabe025d4cf158db25cee6e5ae805b664bae69e7f20d19cb5d`  
		Last Modified: Fri, 13 Apr 2018 22:41:04 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0ca9a62e37c78b9c65dd706fe5d43f7f52a23a96887f6085135168923743e6`  
		Last Modified: Fri, 13 Apr 2018 22:41:03 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c73d64946a3969d50e83c639650bc75508198fe9e6c8991fdc25df54b4b469`  
		Last Modified: Fri, 13 Apr 2018 22:41:03 GMT  
		Size: 477.9 KB (477880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ec783c15ff0d1b6b1e39213002d66ba2bd7777da3160bad7c44af0960a1fbf`  
		Last Modified: Fri, 13 Apr 2018 22:41:06 GMT  
		Size: 14.6 MB (14628488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb23becb9874ffed0fcc4861da5a415a11096f016d7031541ea6fada927e0411`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c03fea585a9214188d23674412d400dd193e8ef09ea0a1d298b717193a59c8`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a5d0a9e186493b9d96bafa4d9c228dcfa0ca6a8775ef18e6ffcecf9ad9d8a5`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6c45615f4765aa0a7cad83819079c0a0766d6cb1d9d5862e42de3c43dd23b6`  
		Last Modified: Fri, 13 Apr 2018 22:41:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:5b4999e66dce9ef1b2b218355df049daf133e84a02617a97aa35a0fb79660902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:cc8705fcd269d59090da86ca11960bcbb5ceb3e444cc17232ff89024f3a99758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338921781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7257f09e390a5d1441f8630d9f9ee14e77545c842fb3fe589b580a9c9bd0c0d9`
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
# Fri, 13 Apr 2018 21:21:24 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 13 Apr 2018 21:44:34 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 13 Apr 2018 21:44:35 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 13 Apr 2018 21:44:35 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 13 Apr 2018 21:44:37 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 13 Apr 2018 21:44:38 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 13 Apr 2018 21:44:38 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 13 Apr 2018 21:44:38 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 13 Apr 2018 21:44:40 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 13 Apr 2018 21:44:40 GMT
WORKDIR /usr/local/zs-init
# Fri, 13 Apr 2018 21:44:43 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 13 Apr 2018 21:45:12 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 13 Apr 2018 21:45:12 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 13 Apr 2018 21:45:13 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 13 Apr 2018 21:45:14 GMT
RUN rm /var/www/html/index.html
# Fri, 13 Apr 2018 21:45:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 13 Apr 2018 21:45:14 GMT
EXPOSE 80/tcp
# Fri, 13 Apr 2018 21:45:14 GMT
EXPOSE 443/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
EXPOSE 10081/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
EXPOSE 10082/tcp
# Fri, 13 Apr 2018 21:45:15 GMT
WORKDIR /var/www/html
# Fri, 13 Apr 2018 21:45:16 GMT
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
	-	`sha256:b6cb6478df73fd1068d2ad7b918f945c586be481646795bb3286c4d8c4347288`  
		Last Modified: Fri, 13 Apr 2018 22:41:07 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a789ce1a06d23cfaa540021bdb4d6fd8cf75b5339a4ccda7862cf9e711a465`  
		Last Modified: Fri, 13 Apr 2018 22:54:24 GMT  
		Size: 250.6 MB (250600843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339961ae1c4c64b8ccad70d57858205c10feb0154394d62193e5e349b0a424fb`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4331cbaceddc0e3922fafe6e7f2dab6e52506800b6dcc77054efbb354a9b43a0`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd3cfdf2d5874a6305e27234dea74f12c24faaa57383d385a055454c05ff8cd`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88086ea4fa3005b125b13e7534647a855148da47a983ded5690b61c3692e668f`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad12958d6bf320a47768e2c25b8b10d6d014906ace3eaf17ca75c9b4e11d0f24`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45787e3c01c20a37a72dafbfac9227d5de86df89eb9802d9bd3bb564d08e41a`  
		Last Modified: Fri, 13 Apr 2018 22:53:41 GMT  
		Size: 477.9 KB (477878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721cfb2e40250732814f58a6deaba9dd368da6d2b050efa9eba5c8b614c95cdd`  
		Last Modified: Fri, 13 Apr 2018 22:53:43 GMT  
		Size: 14.7 MB (14653674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ef4b729e88a513737de425713ac001106eef4a587747daea21bc959096f24`  
		Last Modified: Fri, 13 Apr 2018 22:53:38 GMT  
		Size: 13.4 KB (13356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28200a7c71730cfca69f9c8f20a7abf0dfa24d8cd5c538481e75c9b0c5a26ac`  
		Last Modified: Fri, 13 Apr 2018 22:53:38 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a10c22d3210af454e95b10b3b0d4aafadfa9f6711e1b61d90235db80219b96`  
		Last Modified: Fri, 13 Apr 2018 22:53:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af02119595dd677e9113e0424d84698a4ba40cd8b41a4c70c94ec3c1f0ab406e`  
		Last Modified: Fri, 13 Apr 2018 22:53:39 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:5dc7d49f8b5aba0e5a1430f6ead5468406f37839f2c2ea7e91c8ac8f26092aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

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
