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
$ docker pull php-zendserver@sha256:ea1bf6f5b5b80c8d2a67afd9c42c1ddadbb87cf9ce14baf8f8d8d2f4bf57e46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:2018.0` - linux; amd64

```console
$ docker pull php-zendserver@sha256:682088ca18988c39be6483f3b0645d6b9e49866538cd6579bebfcbd4dcf050d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.2 MB (346161933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34036e8831c9c6c34460fe8b51d00ae5b7beacefe5513417e554c9998303cec9`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:09:48 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/2018.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.2=2018.0.0+b464     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 05 Sep 2018 23:09:48 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 05 Sep 2018 23:09:49 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 05 Sep 2018 23:09:49 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Wed, 05 Sep 2018 23:09:49 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 05 Sep 2018 23:09:50 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 05 Sep 2018 23:09:50 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 05 Sep 2018 23:09:50 GMT
WORKDIR /usr/local/zs-init
# Wed, 05 Sep 2018 23:09:59 GMT
RUN /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar self-update && /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar update
# Wed, 05 Sep 2018 23:09:59 GMT
COPY dir:15e41e43c0ea26254e53363ef64d6f20b76b254a017ddeac1bce0422b2cdaa9a in /usr/local/bin 
# Wed, 05 Sep 2018 23:09:59 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 05 Sep 2018 23:10:00 GMT
RUN rm /var/www/html/index.html
# Wed, 05 Sep 2018 23:10:00 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 05 Sep 2018 23:10:00 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 23:10:00 GMT
EXPOSE 443/tcp
# Wed, 05 Sep 2018 23:10:01 GMT
EXPOSE 10081/tcp
# Wed, 05 Sep 2018 23:10:01 GMT
EXPOSE 10082/tcp
# Wed, 05 Sep 2018 23:10:01 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 23:10:01 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458be1527a6cfe8acfbb1f40cbe941beb5ac6f6241b3a6faa612caae604a74f2`  
		Last Modified: Wed, 05 Sep 2018 23:11:56 GMT  
		Size: 287.0 MB (287044972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecad9070d93c780c5e34ab3f6d0e1cafc5b473b605502594f1a88c88be1351`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d675094d5055a98c6c739fcba0713e7325eaaa4ed8e721c6e54af618af005d`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa46746c16196d4f5b689474b5195595793768b2a549b287cdc453de7de70231`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cc64288798b9babd545f99bfe00725ce67f81a5d0f5f8735c003d8c01ba052`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f446a13f25438717f99d3fdc5146d7f8567b38bfe2f91891519e6cc183172dd`  
		Last Modified: Wed, 05 Sep 2018 23:11:13 GMT  
		Size: 15.8 MB (15824048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528556ea196f2db20fc685d8ed35b9bc77afcde928319ebb3cded6c38da56b74`  
		Last Modified: Wed, 05 Sep 2018 23:11:23 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc57145abc3fc0545655d30a8e883686a11fd954a927b5634ac6c6cff2c74b6`  
		Last Modified: Wed, 05 Sep 2018 23:11:10 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131122e5a70ef1b66ec5a4b754a65f7db3b2c1d76e0c6dd238926315056ca842`  
		Last Modified: Wed, 05 Sep 2018 23:11:10 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580e7e76ba55d51e5f3b003ba1904a2c5721171901653f43458d18a8089be806`  
		Last Modified: Wed, 05 Sep 2018 23:11:10 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:4fa035fece3b0a3826ad2306ddbe2d063c268ef4eb39a0f9879e3c7a3ed6b2e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d2c0980164cd81d3a38b57baf75576f978e63b6700a961042441e5f266cb42ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.3 MB (325253411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fa5de69ee33e86de94a8efab6252ae25371373bcb939b859c9c06f18dffa4e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:45:54 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Nov 2018 22:45:55 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Nov 2018 22:47:19 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Nov 2018 22:47:20 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Mon, 19 Nov 2018 22:47:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Nov 2018 22:47:22 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Nov 2018 22:47:22 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Nov 2018 22:47:23 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 19 Nov 2018 22:47:23 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 19 Nov 2018 22:47:24 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Nov 2018 22:47:24 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Nov 2018 22:47:26 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Nov 2018 22:47:34 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Nov 2018 22:47:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Nov 2018 22:47:35 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Nov 2018 22:47:36 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Nov 2018 22:47:36 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 80/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 443/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 10081/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 10082/tcp
# Mon, 19 Nov 2018 22:47:38 GMT
WORKDIR /var/www/html
# Mon, 19 Nov 2018 22:47:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4edd25efbc175eec72c72bb4d7a28809a1e1d1642a817a93aae9edd440400a`  
		Last Modified: Mon, 19 Nov 2018 22:50:43 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf80dae263a245065fb4006f12ba5fb4aa5a98af94772e9f6045adc4ff62e525`  
		Last Modified: Mon, 19 Nov 2018 22:50:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20b7e862669952305719eb008362009b848a4b95dddb15554df0988d87c53d6`  
		Last Modified: Mon, 19 Nov 2018 22:51:18 GMT  
		Size: 242.7 MB (242722766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406730fe268cb9fe2a7c6580502dad83bca544a7aaded2ae2cce472fd1a21e8a`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a91a6436241368829fb5da2dc15d98045461d3e4602e40d49e07fa37228713b`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541d521a8784f2104e23f7c217c9ee32b93feefa335d8b0bdc5e77ef271a7e76`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f412670bfe9e486e25fd733ba4b64a718cdc092328327c78996ef938cf15a22e`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0ac59d90067a5edf9f2788367694c52c1df193645ed74dc902783dfd1066b8`  
		Last Modified: Mon, 19 Nov 2018 22:50:50 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd4a6a546169a658f3da0762f2fbaf8f2a3c754187243bb48e0faef8a74800`  
		Last Modified: Mon, 19 Nov 2018 22:50:41 GMT  
		Size: 481.1 KB (481077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6c7e6c454b8a87cc94aa97bc3711a231fdd07d28493d4e426dcf78d31afb62`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 14.8 MB (14777796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9554fcfb018cbbfe2f8eb9fd10fa86512c33b0347db3767cdd9d5e6f4d0ad6f6`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6d1aabf081d2089d8877eef5ae17888190563a0fe1b0dd69315556e1ec0ec`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce76f8668130f5bd8c9227968aef1f2c35d14aa1a1e619638a27d83f469c13e`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdd2cc2091b80cb1aaa46566707a54d6122aeb3c8a2accfac9376e2a8d38d33`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:4fa035fece3b0a3826ad2306ddbe2d063c268ef4eb39a0f9879e3c7a3ed6b2e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d2c0980164cd81d3a38b57baf75576f978e63b6700a961042441e5f266cb42ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.3 MB (325253411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fa5de69ee33e86de94a8efab6252ae25371373bcb939b859c9c06f18dffa4e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:45:54 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Nov 2018 22:45:55 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Nov 2018 22:47:19 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Nov 2018 22:47:20 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Mon, 19 Nov 2018 22:47:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Nov 2018 22:47:22 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Nov 2018 22:47:22 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Nov 2018 22:47:23 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 19 Nov 2018 22:47:23 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 19 Nov 2018 22:47:24 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Nov 2018 22:47:24 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Nov 2018 22:47:26 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Nov 2018 22:47:34 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Nov 2018 22:47:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Nov 2018 22:47:35 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Nov 2018 22:47:36 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Nov 2018 22:47:36 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 80/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 443/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 10081/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 10082/tcp
# Mon, 19 Nov 2018 22:47:38 GMT
WORKDIR /var/www/html
# Mon, 19 Nov 2018 22:47:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4edd25efbc175eec72c72bb4d7a28809a1e1d1642a817a93aae9edd440400a`  
		Last Modified: Mon, 19 Nov 2018 22:50:43 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf80dae263a245065fb4006f12ba5fb4aa5a98af94772e9f6045adc4ff62e525`  
		Last Modified: Mon, 19 Nov 2018 22:50:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20b7e862669952305719eb008362009b848a4b95dddb15554df0988d87c53d6`  
		Last Modified: Mon, 19 Nov 2018 22:51:18 GMT  
		Size: 242.7 MB (242722766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406730fe268cb9fe2a7c6580502dad83bca544a7aaded2ae2cce472fd1a21e8a`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a91a6436241368829fb5da2dc15d98045461d3e4602e40d49e07fa37228713b`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541d521a8784f2104e23f7c217c9ee32b93feefa335d8b0bdc5e77ef271a7e76`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f412670bfe9e486e25fd733ba4b64a718cdc092328327c78996ef938cf15a22e`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0ac59d90067a5edf9f2788367694c52c1df193645ed74dc902783dfd1066b8`  
		Last Modified: Mon, 19 Nov 2018 22:50:50 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd4a6a546169a658f3da0762f2fbaf8f2a3c754187243bb48e0faef8a74800`  
		Last Modified: Mon, 19 Nov 2018 22:50:41 GMT  
		Size: 481.1 KB (481077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6c7e6c454b8a87cc94aa97bc3711a231fdd07d28493d4e426dcf78d31afb62`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 14.8 MB (14777796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9554fcfb018cbbfe2f8eb9fd10fa86512c33b0347db3767cdd9d5e6f4d0ad6f6`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6d1aabf081d2089d8877eef5ae17888190563a0fe1b0dd69315556e1ec0ec`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce76f8668130f5bd8c9227968aef1f2c35d14aa1a1e619638a27d83f469c13e`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdd2cc2091b80cb1aaa46566707a54d6122aeb3c8a2accfac9376e2a8d38d33`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:4fa035fece3b0a3826ad2306ddbe2d063c268ef4eb39a0f9879e3c7a3ed6b2e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d2c0980164cd81d3a38b57baf75576f978e63b6700a961042441e5f266cb42ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.3 MB (325253411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fa5de69ee33e86de94a8efab6252ae25371373bcb939b859c9c06f18dffa4e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:45:54 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Nov 2018 22:45:55 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Nov 2018 22:47:19 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Nov 2018 22:47:20 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Mon, 19 Nov 2018 22:47:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Nov 2018 22:47:22 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Nov 2018 22:47:22 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Nov 2018 22:47:23 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 19 Nov 2018 22:47:23 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 19 Nov 2018 22:47:24 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Nov 2018 22:47:24 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Nov 2018 22:47:26 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Nov 2018 22:47:34 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Nov 2018 22:47:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Nov 2018 22:47:35 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Nov 2018 22:47:36 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Nov 2018 22:47:36 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 80/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 443/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 10081/tcp
# Mon, 19 Nov 2018 22:47:37 GMT
EXPOSE 10082/tcp
# Mon, 19 Nov 2018 22:47:38 GMT
WORKDIR /var/www/html
# Mon, 19 Nov 2018 22:47:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4edd25efbc175eec72c72bb4d7a28809a1e1d1642a817a93aae9edd440400a`  
		Last Modified: Mon, 19 Nov 2018 22:50:43 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf80dae263a245065fb4006f12ba5fb4aa5a98af94772e9f6045adc4ff62e525`  
		Last Modified: Mon, 19 Nov 2018 22:50:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20b7e862669952305719eb008362009b848a4b95dddb15554df0988d87c53d6`  
		Last Modified: Mon, 19 Nov 2018 22:51:18 GMT  
		Size: 242.7 MB (242722766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406730fe268cb9fe2a7c6580502dad83bca544a7aaded2ae2cce472fd1a21e8a`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a91a6436241368829fb5da2dc15d98045461d3e4602e40d49e07fa37228713b`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541d521a8784f2104e23f7c217c9ee32b93feefa335d8b0bdc5e77ef271a7e76`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f412670bfe9e486e25fd733ba4b64a718cdc092328327c78996ef938cf15a22e`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0ac59d90067a5edf9f2788367694c52c1df193645ed74dc902783dfd1066b8`  
		Last Modified: Mon, 19 Nov 2018 22:50:50 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd4a6a546169a658f3da0762f2fbaf8f2a3c754187243bb48e0faef8a74800`  
		Last Modified: Mon, 19 Nov 2018 22:50:41 GMT  
		Size: 481.1 KB (481077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6c7e6c454b8a87cc94aa97bc3711a231fdd07d28493d4e426dcf78d31afb62`  
		Last Modified: Mon, 19 Nov 2018 22:50:42 GMT  
		Size: 14.8 MB (14777796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9554fcfb018cbbfe2f8eb9fd10fa86512c33b0347db3767cdd9d5e6f4d0ad6f6`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6d1aabf081d2089d8877eef5ae17888190563a0fe1b0dd69315556e1ec0ec`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce76f8668130f5bd8c9227968aef1f2c35d14aa1a1e619638a27d83f469c13e`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdd2cc2091b80cb1aaa46566707a54d6122aeb3c8a2accfac9376e2a8d38d33`  
		Last Modified: Mon, 19 Nov 2018 22:50:39 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:02cf2b511e4c97ef07e575b4a35a6a5349506ade8061f72934fba873a95e21da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:7721de9c59eec8d38bf4119b2a00f2ce4bb80bac98573dfa3b20ae62713b70cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411512817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5d6f2a81d590bcf2246ab8ba025c3119c4f18275a9890b989e6f8a74f95432`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:28:35 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.1=9.1.4+b170     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 22 Aug 2018 19:28:36 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 22 Aug 2018 19:28:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 22 Aug 2018 19:28:38 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Wed, 22 Aug 2018 19:28:38 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 22 Aug 2018 19:28:39 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 22 Aug 2018 19:28:40 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 22 Aug 2018 19:28:40 GMT
WORKDIR /usr/local/zs-init
# Wed, 22 Aug 2018 19:29:12 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 22 Aug 2018 19:29:13 GMT
COPY dir:87b268799bdfc4187e75754e18df8466bf3634663b9193cbf64ee0a291e978ab in /usr/local/bin 
# Wed, 22 Aug 2018 19:29:13 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 22 Aug 2018 19:29:14 GMT
RUN rm /var/www/html/index.html
# Wed, 22 Aug 2018 19:29:15 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 22 Aug 2018 19:29:15 GMT
EXPOSE 80/tcp
# Wed, 22 Aug 2018 19:29:15 GMT
EXPOSE 443/tcp
# Wed, 22 Aug 2018 19:29:15 GMT
EXPOSE 10081/tcp
# Wed, 22 Aug 2018 19:29:16 GMT
EXPOSE 10082/tcp
# Wed, 22 Aug 2018 19:29:16 GMT
WORKDIR /var/www/html
# Wed, 22 Aug 2018 19:29:16 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4907dea5c043ce8244e0f8a35b2283ec1a0f93b2a8dbe97b36e195f9b3d84d5`  
		Last Modified: Wed, 22 Aug 2018 19:37:40 GMT  
		Size: 352.1 MB (352109256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ac1c52ef4ad2ae8887b802a175a3d61cb1c54d58515422a50675a4d4c66acc`  
		Last Modified: Wed, 22 Aug 2018 19:35:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91dde394e639716e199554181487f2b4825e06cad4930a6e62fd07184c03eb8`  
		Last Modified: Wed, 22 Aug 2018 19:35:51 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793bd271166a4ce55bd33190cc05ffc2e69531d9dbff1fde81fa701fdf884424`  
		Last Modified: Wed, 22 Aug 2018 19:35:52 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84a956a0503bd5ad9ee0cbcc3c606addb9fcaf355d91d444747ec9c59c5f4fa`  
		Last Modified: Wed, 22 Aug 2018 19:35:53 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec3f5a6d57b124b7a5749e3885e01dc5a7dc804707665487cf460314ca208aa`  
		Last Modified: Wed, 22 Aug 2018 19:35:54 GMT  
		Size: 16.1 MB (16110591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a4032ab0b84dbf0a6dcb3aeefc9f42fe4a4ace5aa08c6ae8d777d244e3f234`  
		Last Modified: Wed, 22 Aug 2018 19:35:48 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb6a82decda62cfc362d217d0934e49ad16eb42526649e37256040b04aee4e`  
		Last Modified: Wed, 22 Aug 2018 19:35:48 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254f7e98490d27b26567a362a63aec7259d94fde3d899071392fd61e86b857a7`  
		Last Modified: Wed, 22 Aug 2018 19:35:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad1bdaee2365c950c5190612b57f56208a25e5e77c1f65de3efde3d43ac837c`  
		Last Modified: Wed, 22 Aug 2018 19:35:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:ea1bf6f5b5b80c8d2a67afd9c42c1ddadbb87cf9ce14baf8f8d8d2f4bf57e46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:682088ca18988c39be6483f3b0645d6b9e49866538cd6579bebfcbd4dcf050d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.2 MB (346161933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34036e8831c9c6c34460fe8b51d00ae5b7beacefe5513417e554c9998303cec9`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:09:48 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/2018.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.2=2018.0.0+b464     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 05 Sep 2018 23:09:48 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 05 Sep 2018 23:09:49 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 05 Sep 2018 23:09:49 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Wed, 05 Sep 2018 23:09:49 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 05 Sep 2018 23:09:50 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 05 Sep 2018 23:09:50 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 05 Sep 2018 23:09:50 GMT
WORKDIR /usr/local/zs-init
# Wed, 05 Sep 2018 23:09:59 GMT
RUN /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar self-update && /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar update
# Wed, 05 Sep 2018 23:09:59 GMT
COPY dir:15e41e43c0ea26254e53363ef64d6f20b76b254a017ddeac1bce0422b2cdaa9a in /usr/local/bin 
# Wed, 05 Sep 2018 23:09:59 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 05 Sep 2018 23:10:00 GMT
RUN rm /var/www/html/index.html
# Wed, 05 Sep 2018 23:10:00 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 05 Sep 2018 23:10:00 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 23:10:00 GMT
EXPOSE 443/tcp
# Wed, 05 Sep 2018 23:10:01 GMT
EXPOSE 10081/tcp
# Wed, 05 Sep 2018 23:10:01 GMT
EXPOSE 10082/tcp
# Wed, 05 Sep 2018 23:10:01 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 23:10:01 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458be1527a6cfe8acfbb1f40cbe941beb5ac6f6241b3a6faa612caae604a74f2`  
		Last Modified: Wed, 05 Sep 2018 23:11:56 GMT  
		Size: 287.0 MB (287044972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecad9070d93c780c5e34ab3f6d0e1cafc5b473b605502594f1a88c88be1351`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d675094d5055a98c6c739fcba0713e7325eaaa4ed8e721c6e54af618af005d`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa46746c16196d4f5b689474b5195595793768b2a549b287cdc453de7de70231`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cc64288798b9babd545f99bfe00725ce67f81a5d0f5f8735c003d8c01ba052`  
		Last Modified: Wed, 05 Sep 2018 23:11:11 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f446a13f25438717f99d3fdc5146d7f8567b38bfe2f91891519e6cc183172dd`  
		Last Modified: Wed, 05 Sep 2018 23:11:13 GMT  
		Size: 15.8 MB (15824048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528556ea196f2db20fc685d8ed35b9bc77afcde928319ebb3cded6c38da56b74`  
		Last Modified: Wed, 05 Sep 2018 23:11:23 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc57145abc3fc0545655d30a8e883686a11fd954a927b5634ac6c6cff2c74b6`  
		Last Modified: Wed, 05 Sep 2018 23:11:10 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131122e5a70ef1b66ec5a4b754a65f7db3b2c1d76e0c6dd238926315056ca842`  
		Last Modified: Wed, 05 Sep 2018 23:11:10 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580e7e76ba55d51e5f3b003ba1904a2c5721171901653f43458d18a8089be806`  
		Last Modified: Wed, 05 Sep 2018 23:11:10 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
