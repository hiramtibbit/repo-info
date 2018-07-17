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
$ docker pull php-zendserver@sha256:96340268f8192209375bca1a91ef2d96520f4d5ba97929f94370a2b4e4990def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:2018.0` - linux; amd64

```console
$ docker pull php-zendserver@sha256:ba48411714cdc91456556ef7a97a08985039daa9b6d170c41371b1712fc4ccfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.1 MB (347079249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e93559ac99413a105b971863988b61b4b9dc2f595202ad322775f2764b3faa`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:33:54 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/2018.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.2=2018.0.0+b464     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Jul 2018 10:33:55 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Jul 2018 10:33:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Jul 2018 10:33:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Tue, 17 Jul 2018 10:33:57 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Jul 2018 10:33:57 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Jul 2018 10:33:58 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Jul 2018 10:33:58 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Jul 2018 10:34:30 GMT
RUN /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar self-update && /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar update
# Tue, 17 Jul 2018 10:34:30 GMT
COPY dir:15e41e43c0ea26254e53363ef64d6f20b76b254a017ddeac1bce0422b2cdaa9a in /usr/local/bin 
# Tue, 17 Jul 2018 10:34:31 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Jul 2018 10:34:32 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Jul 2018 10:34:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Jul 2018 10:34:32 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
EXPOSE 443/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
EXPOSE 10081/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
EXPOSE 10082/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 10:34:34 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce4454df66ffdf72bf90a5da4ce9c629b29d6a4e6597b2e345d065e0010fb30`  
		Last Modified: Tue, 17 Jul 2018 10:41:14 GMT  
		Size: 287.6 MB (287580432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f022d0f3408b69bc5f69dec7916e9e80c105674ec5603fa00b6bad5ac5a282`  
		Last Modified: Tue, 17 Jul 2018 10:39:43 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c651d9ee7575c6c36201c192566e48e950dd1d504fd7c55415aaad6d730990e`  
		Last Modified: Tue, 17 Jul 2018 10:39:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d2ca9289ef62fd09cee261ed50593ff6d859204abb9162bc7478923083d04c`  
		Last Modified: Tue, 17 Jul 2018 10:39:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687baac10d05f89628a1e349c6b02a4b8098c74b022bd5c2f47499f2eb18ce20`  
		Last Modified: Tue, 17 Jul 2018 10:39:43 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24010ce726e3c472badcb53ed9c09f494ef3daa843722bfe4fc2048e2d2bea3`  
		Last Modified: Tue, 17 Jul 2018 10:39:46 GMT  
		Size: 16.3 MB (16268329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683b4f09ca03dd1fb286ec3302a4419bf654027dccd98fa435e32d4477c7208b`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd8ae650edb6e74139949a4578a5763db1ded504d81911497ea4caeb9280e95`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07452132fd4babd3baa20d1f5d10d6e72be628d826b905e410569c40cece183d`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4427aaaa94b7fde37a47e6c8ef09953ffd47e0929157227328c30252e31a02eb`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:9d85be3edf24760c054bd8af715feb6973383266cd9fddc22e0e3a0a78ad8180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:6bac7d38cdea9cc47b549facc1ae278d10f34ffe0218c2ea94beb92f594012be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339778443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aec1e183533b76874102a8e1701b868c736186ad6d3128445b26ceb042f775`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:24:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Jul 2018 10:24:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Jul 2018 10:26:53 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Jul 2018 10:26:55 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Jul 2018 10:26:56 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Jul 2018 10:26:57 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Jul 2018 10:26:58 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Jul 2018 10:26:58 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Jul 2018 10:26:58 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Jul 2018 10:26:59 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Jul 2018 10:26:59 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Jul 2018 10:27:03 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Jul 2018 10:28:01 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Jul 2018 10:28:01 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Jul 2018 10:28:01 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Jul 2018 10:28:02 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Jul 2018 10:28:02 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 443/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 10081/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 10082/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 10:28:04 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5466506e8f092a493529389a36a1f85b2c045a95e3f42b28db40b4241737cf26`  
		Last Modified: Tue, 17 Jul 2018 10:35:07 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b948ac0cf733d39cddb9a5aaa13000286105fc31afa6ba7a1087bb0ab92951b5`  
		Last Modified: Tue, 17 Jul 2018 10:35:06 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca05bb8677e32d64f15b395c97cec087407f26483fe92bcb10b9f2b59003221a`  
		Last Modified: Tue, 17 Jul 2018 10:36:11 GMT  
		Size: 256.7 MB (256741383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e2e05af8560dc24becb0f5cb344809809c438b787a4cfc7ab0705f1e26d40e`  
		Last Modified: Tue, 17 Jul 2018 10:35:05 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541b91a287f0fe6d019d47567721fbf58e3c2168decd78a61dfa81ae27ccc03`  
		Last Modified: Tue, 17 Jul 2018 10:35:04 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b336f6cfff4849c1692d0e21d1a9716e21b0b1720a8aa6ca69201b2223a47`  
		Last Modified: Tue, 17 Jul 2018 10:35:03 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b651fcb25a3f41a8108c48511da4a8163c8ad54e595b10f414a7d24580cae48`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c8a4d062bffe77409c49dd917055b79157dbfe996148dc8cafd0e5a5bf7724`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 18.8 KB (18834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb3e953464d7a99a359ff5165aa5b7aa2cd0bcc1d39d951373d94d7e452429`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 478.0 KB (477979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f822580382c4382d6db94b263ca7f698512edd0e23359775643ce8329acab991`  
		Last Modified: Tue, 17 Jul 2018 10:35:05 GMT  
		Size: 15.3 MB (15307416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afbacfff012fc9484c5db98a1b9366da333f3836b670eed55e5133eee0aa1d5`  
		Last Modified: Tue, 17 Jul 2018 10:35:00 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f011806853249f805a198d39946aef7327cae74676ccc8df929fd2b81629646d`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e41452a2a668c02ea2d40ff76e30c681e6f272500c2d6dd17a5f19c18ae710`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec390385bb3d614e45a4d7b745c1c56adf5c7ca0287fe3af0c9c88f5edd3aeb`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:9d85be3edf24760c054bd8af715feb6973383266cd9fddc22e0e3a0a78ad8180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:6bac7d38cdea9cc47b549facc1ae278d10f34ffe0218c2ea94beb92f594012be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339778443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aec1e183533b76874102a8e1701b868c736186ad6d3128445b26ceb042f775`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:24:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Jul 2018 10:24:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Jul 2018 10:26:53 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Jul 2018 10:26:55 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Jul 2018 10:26:56 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Jul 2018 10:26:57 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Jul 2018 10:26:58 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Jul 2018 10:26:58 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Jul 2018 10:26:58 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Jul 2018 10:26:59 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Jul 2018 10:26:59 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Jul 2018 10:27:03 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Jul 2018 10:28:01 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Jul 2018 10:28:01 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Jul 2018 10:28:01 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Jul 2018 10:28:02 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Jul 2018 10:28:02 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 443/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 10081/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 10082/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 10:28:04 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5466506e8f092a493529389a36a1f85b2c045a95e3f42b28db40b4241737cf26`  
		Last Modified: Tue, 17 Jul 2018 10:35:07 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b948ac0cf733d39cddb9a5aaa13000286105fc31afa6ba7a1087bb0ab92951b5`  
		Last Modified: Tue, 17 Jul 2018 10:35:06 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca05bb8677e32d64f15b395c97cec087407f26483fe92bcb10b9f2b59003221a`  
		Last Modified: Tue, 17 Jul 2018 10:36:11 GMT  
		Size: 256.7 MB (256741383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e2e05af8560dc24becb0f5cb344809809c438b787a4cfc7ab0705f1e26d40e`  
		Last Modified: Tue, 17 Jul 2018 10:35:05 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541b91a287f0fe6d019d47567721fbf58e3c2168decd78a61dfa81ae27ccc03`  
		Last Modified: Tue, 17 Jul 2018 10:35:04 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b336f6cfff4849c1692d0e21d1a9716e21b0b1720a8aa6ca69201b2223a47`  
		Last Modified: Tue, 17 Jul 2018 10:35:03 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b651fcb25a3f41a8108c48511da4a8163c8ad54e595b10f414a7d24580cae48`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c8a4d062bffe77409c49dd917055b79157dbfe996148dc8cafd0e5a5bf7724`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 18.8 KB (18834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb3e953464d7a99a359ff5165aa5b7aa2cd0bcc1d39d951373d94d7e452429`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 478.0 KB (477979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f822580382c4382d6db94b263ca7f698512edd0e23359775643ce8329acab991`  
		Last Modified: Tue, 17 Jul 2018 10:35:05 GMT  
		Size: 15.3 MB (15307416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afbacfff012fc9484c5db98a1b9366da333f3836b670eed55e5133eee0aa1d5`  
		Last Modified: Tue, 17 Jul 2018 10:35:00 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f011806853249f805a198d39946aef7327cae74676ccc8df929fd2b81629646d`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e41452a2a668c02ea2d40ff76e30c681e6f272500c2d6dd17a5f19c18ae710`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec390385bb3d614e45a4d7b745c1c56adf5c7ca0287fe3af0c9c88f5edd3aeb`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:9d85be3edf24760c054bd8af715feb6973383266cd9fddc22e0e3a0a78ad8180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:6bac7d38cdea9cc47b549facc1ae278d10f34ffe0218c2ea94beb92f594012be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339778443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aec1e183533b76874102a8e1701b868c736186ad6d3128445b26ceb042f775`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:22 GMT
ADD file:2b307231ea5854129fb2b708dc49d44d30c66023186d861778defb768aa3a8a8 in / 
# Tue, 17 Jul 2018 00:53:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:53:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:53:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:53:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:53:26 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:24:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 17 Jul 2018 10:24:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 17 Jul 2018 10:26:53 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Jul 2018 10:26:55 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Jul 2018 10:26:56 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Jul 2018 10:26:57 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 17 Jul 2018 10:26:58 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 17 Jul 2018 10:26:58 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Jul 2018 10:26:58 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Jul 2018 10:26:59 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Jul 2018 10:26:59 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Jul 2018 10:27:03 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 17 Jul 2018 10:28:01 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 17 Jul 2018 10:28:01 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 17 Jul 2018 10:28:01 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Jul 2018 10:28:02 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Jul 2018 10:28:02 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 443/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 10081/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
EXPOSE 10082/tcp
# Tue, 17 Jul 2018 10:28:03 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 10:28:04 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8284e13a281d55cc734a66ada0b6cabef2447ce16e91ce96317eca132253f734`  
		Last Modified: Tue, 17 Jul 2018 00:58:36 GMT  
		Size: 67.1 MB (67127095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e1916a92974ed667a04ce36771ef2599e58e2e3b118375e19a8af98c6fa3b2`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4102fc66d4abcb83d0739b402e2fd6e9a884d75ad9cbada70bc9286d58d97abf`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf2b01777b2f9a1c015cc2b7c39b9916de816806c3eee2d1b6cd63757868451`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7a2d5e04ed4e9237521229a3e7837dc552b4e1157b79c02c2fecbc14003032`  
		Last Modified: Tue, 17 Jul 2018 00:58:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5466506e8f092a493529389a36a1f85b2c045a95e3f42b28db40b4241737cf26`  
		Last Modified: Tue, 17 Jul 2018 10:35:07 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b948ac0cf733d39cddb9a5aaa13000286105fc31afa6ba7a1087bb0ab92951b5`  
		Last Modified: Tue, 17 Jul 2018 10:35:06 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca05bb8677e32d64f15b395c97cec087407f26483fe92bcb10b9f2b59003221a`  
		Last Modified: Tue, 17 Jul 2018 10:36:11 GMT  
		Size: 256.7 MB (256741383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e2e05af8560dc24becb0f5cb344809809c438b787a4cfc7ab0705f1e26d40e`  
		Last Modified: Tue, 17 Jul 2018 10:35:05 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541b91a287f0fe6d019d47567721fbf58e3c2168decd78a61dfa81ae27ccc03`  
		Last Modified: Tue, 17 Jul 2018 10:35:04 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b336f6cfff4849c1692d0e21d1a9716e21b0b1720a8aa6ca69201b2223a47`  
		Last Modified: Tue, 17 Jul 2018 10:35:03 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b651fcb25a3f41a8108c48511da4a8163c8ad54e595b10f414a7d24580cae48`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c8a4d062bffe77409c49dd917055b79157dbfe996148dc8cafd0e5a5bf7724`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 18.8 KB (18834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb3e953464d7a99a359ff5165aa5b7aa2cd0bcc1d39d951373d94d7e452429`  
		Last Modified: Tue, 17 Jul 2018 10:35:02 GMT  
		Size: 478.0 KB (477979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f822580382c4382d6db94b263ca7f698512edd0e23359775643ce8329acab991`  
		Last Modified: Tue, 17 Jul 2018 10:35:05 GMT  
		Size: 15.3 MB (15307416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afbacfff012fc9484c5db98a1b9366da333f3836b670eed55e5133eee0aa1d5`  
		Last Modified: Tue, 17 Jul 2018 10:35:00 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f011806853249f805a198d39946aef7327cae74676ccc8df929fd2b81629646d`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e41452a2a668c02ea2d40ff76e30c681e6f272500c2d6dd17a5f19c18ae710`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec390385bb3d614e45a4d7b745c1c56adf5c7ca0287fe3af0c9c88f5edd3aeb`  
		Last Modified: Tue, 17 Jul 2018 10:34:59 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:c031917cadda05ffc6ac4484e889305f46e8853c603666725dc89c6afa311579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2c886120387c3c1562111d69a17137c5bda99a08c0aa965c2095fd5485683b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.1 MB (411111115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6026ac1fbdf541d826156500474a77831674fc2cd9624184684f794059fe4ceb`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:30:35 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.1=9.1.4+b170     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Jul 2018 10:30:45 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Jul 2018 10:30:45 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Jul 2018 10:30:46 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Tue, 17 Jul 2018 10:30:46 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Jul 2018 10:30:47 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Jul 2018 10:30:47 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Jul 2018 10:30:48 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Jul 2018 10:31:20 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Tue, 17 Jul 2018 10:31:23 GMT
COPY dir:87b268799bdfc4187e75754e18df8466bf3634663b9193cbf64ee0a291e978ab in /usr/local/bin 
# Tue, 17 Jul 2018 10:31:23 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Jul 2018 10:31:24 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Jul 2018 10:31:25 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Jul 2018 10:31:25 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 10:31:25 GMT
EXPOSE 443/tcp
# Tue, 17 Jul 2018 10:31:25 GMT
EXPOSE 10081/tcp
# Tue, 17 Jul 2018 10:31:26 GMT
EXPOSE 10082/tcp
# Tue, 17 Jul 2018 10:31:26 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 10:31:26 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eff24bf7941484ea7063cb137b606b61f550ec537d43abc7de7e75fb0bf5842`  
		Last Modified: Tue, 17 Jul 2018 10:39:19 GMT  
		Size: 352.1 MB (352096785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400cc60f9cee26b046fecf82cae2d72eb98b72b0bfff0893a77295ac7c6fcc53`  
		Last Modified: Tue, 17 Jul 2018 10:37:30 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976b188e380922a171dabdbddfc4e91ae1fed8bc088b21f92b07eadd141bfc7e`  
		Last Modified: Tue, 17 Jul 2018 10:37:28 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98371b6571ab4daf5730f49de60fac2c4e712a6edebc9db46127be79c667b2d8`  
		Last Modified: Tue, 17 Jul 2018 10:37:27 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9abc9d1d9134d8c7e86ead2ab02a030f22e642469d0279546b574995c0cca5`  
		Last Modified: Tue, 17 Jul 2018 10:37:27 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe756edfd9a406047bdbf3c7221f126ee6a52053625baa51d064ecca1bcff18`  
		Last Modified: Tue, 17 Jul 2018 10:37:35 GMT  
		Size: 15.8 MB (15783789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bff3c21825f43bf337e76aee24a4e99f40c492a97aae3e0965b77b508089bb6`  
		Last Modified: Tue, 17 Jul 2018 10:37:25 GMT  
		Size: 14.3 KB (14303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7377c1c6bf7459180258f2d95f8045384edb5165d5d18e6fc92d22294e6a0bae`  
		Last Modified: Tue, 17 Jul 2018 10:37:25 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d606ffe2fe8f6187542923bb119f12d084d8d5ca0b05a99c0c8416286a1ad3e`  
		Last Modified: Tue, 17 Jul 2018 10:37:25 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c27a2943900afd6f9da0a7ef9fdfbe4340a75c5c3808a3a8cf23bf212d044d8`  
		Last Modified: Tue, 17 Jul 2018 10:37:25 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:96340268f8192209375bca1a91ef2d96520f4d5ba97929f94370a2b4e4990def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:ba48411714cdc91456556ef7a97a08985039daa9b6d170c41371b1712fc4ccfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.1 MB (347079249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e93559ac99413a105b971863988b61b4b9dc2f595202ad322775f2764b3faa`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:33:54 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/2018.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.2=2018.0.0+b464     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Jul 2018 10:33:55 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Jul 2018 10:33:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Jul 2018 10:33:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Tue, 17 Jul 2018 10:33:57 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Jul 2018 10:33:57 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Jul 2018 10:33:58 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Jul 2018 10:33:58 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Jul 2018 10:34:30 GMT
RUN /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar self-update && /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar update
# Tue, 17 Jul 2018 10:34:30 GMT
COPY dir:15e41e43c0ea26254e53363ef64d6f20b76b254a017ddeac1bce0422b2cdaa9a in /usr/local/bin 
# Tue, 17 Jul 2018 10:34:31 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Jul 2018 10:34:32 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Jul 2018 10:34:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Jul 2018 10:34:32 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
EXPOSE 443/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
EXPOSE 10081/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
EXPOSE 10082/tcp
# Tue, 17 Jul 2018 10:34:33 GMT
WORKDIR /var/www/html
# Tue, 17 Jul 2018 10:34:34 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce4454df66ffdf72bf90a5da4ce9c629b29d6a4e6597b2e345d065e0010fb30`  
		Last Modified: Tue, 17 Jul 2018 10:41:14 GMT  
		Size: 287.6 MB (287580432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f022d0f3408b69bc5f69dec7916e9e80c105674ec5603fa00b6bad5ac5a282`  
		Last Modified: Tue, 17 Jul 2018 10:39:43 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c651d9ee7575c6c36201c192566e48e950dd1d504fd7c55415aaad6d730990e`  
		Last Modified: Tue, 17 Jul 2018 10:39:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d2ca9289ef62fd09cee261ed50593ff6d859204abb9162bc7478923083d04c`  
		Last Modified: Tue, 17 Jul 2018 10:39:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687baac10d05f89628a1e349c6b02a4b8098c74b022bd5c2f47499f2eb18ce20`  
		Last Modified: Tue, 17 Jul 2018 10:39:43 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24010ce726e3c472badcb53ed9c09f494ef3daa843722bfe4fc2048e2d2bea3`  
		Last Modified: Tue, 17 Jul 2018 10:39:46 GMT  
		Size: 16.3 MB (16268329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683b4f09ca03dd1fb286ec3302a4419bf654027dccd98fa435e32d4477c7208b`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd8ae650edb6e74139949a4578a5763db1ded504d81911497ea4caeb9280e95`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07452132fd4babd3baa20d1f5d10d6e72be628d826b905e410569c40cece183d`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4427aaaa94b7fde37a47e6c8ef09953ffd47e0929157227328c30252e31a02eb`  
		Last Modified: Tue, 17 Jul 2018 10:39:40 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
