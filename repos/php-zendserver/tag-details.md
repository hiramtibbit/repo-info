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
$ docker pull php-zendserver@sha256:d10651c36dc9ae0d48a7d488f9697295b82b67c22be30edec27354d0ccf36105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b6b3d0038c0cfd3a6b91bf2bfd5c4c30ff8ec7cb1e761cced8b8426c1818d2f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.5 MB (329459451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d26537d6d35db2ab1199d8fb23cffe15656da2fbc95e8149928bd53e6530ee5`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:08:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Mar 2019 01:08:06 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Mar 2019 01:10:12 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Mar 2019 01:10:13 GMT
COPY file:7f453085f9f3e11f67387d005f4134eebda12a359ea5819fedfcfeb9685b34ee in /etc/ 
# Tue, 12 Mar 2019 01:10:13 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Tue, 12 Mar 2019 01:10:14 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Mar 2019 01:10:15 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Mar 2019 01:10:15 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Mar 2019 01:10:15 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Mar 2019 01:10:16 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Mar 2019 01:10:16 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Mar 2019 01:10:18 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Mar 2019 01:10:29 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Mar 2019 01:10:30 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Tue, 12 Mar 2019 01:10:30 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Tue, 12 Mar 2019 01:10:31 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Mar 2019 01:10:31 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Tue, 12 Mar 2019 01:10:31 GMT
EXPOSE 80
# Tue, 12 Mar 2019 01:10:31 GMT
EXPOSE 443
# Tue, 12 Mar 2019 01:10:32 GMT
EXPOSE 10081
# Tue, 12 Mar 2019 01:10:32 GMT
EXPOSE 10082
# Tue, 12 Mar 2019 01:10:32 GMT
WORKDIR /var/www/html
# Tue, 12 Mar 2019 01:10:32 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149fd791deab89dd2cafa17f9693bf633d94da788f454ce7403cb9e4e0654ea4`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36517caa46187d450322771d49cad297d512f30f195e5a5df584a43647142f62`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b3ba72588b2b184e5a1b5bfa449e7e60df2372998195ce0c59f753ef1936c9`  
		Last Modified: Tue, 12 Mar 2019 01:12:00 GMT  
		Size: 246.0 MB (246031064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933376e1c3ff2fc057d642c86563105ea4f545e8b5ceefc0bbeba89551c3e06`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26fe6411bdb8e781c3616ed83b1f06b2dc7b0c9eab7d47e9b561a38a049ac12`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7a47fe367f59b0b6f6ca4a7e3cfd7c4a8f1476e72320621b5b2c89b014580a`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb144e4ea09429d8a334c2312db1909d5f7a27192908443fdd0dd387adccaa6`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40aefbf655f2cdb9bc845987dd340fcf29f1e4cd19e6e361bb2d33de2855d18a`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2558fceb5deb8bc54cc93a218e1ecded5590d3fe1c94433c0a2eca531b7fd4`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 495.0 KB (494964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6c104bbbe84f94553f8f3623bda17c36986fdc7567811dbc9a0a5ae6152d06`  
		Last Modified: Tue, 12 Mar 2019 01:11:29 GMT  
		Size: 15.7 MB (15660863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b9cad3fcfdcdc9ee8ee525050c32bd863c01cb0cdd0b50130f34f4f76414`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7696b2ccc62e94f9fde1625ab0f71f5e56196aaadec5e5f5b6ea11eecb23f81`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48af2db7d38316ffd556dbe3ed67b78ad52441a880ea6d7949ad077956f807e8`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724348abb8cb897a123674160da7a90e724e604ed117063c5730cf9fb900d14f`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:d10651c36dc9ae0d48a7d488f9697295b82b67c22be30edec27354d0ccf36105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b6b3d0038c0cfd3a6b91bf2bfd5c4c30ff8ec7cb1e761cced8b8426c1818d2f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.5 MB (329459451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d26537d6d35db2ab1199d8fb23cffe15656da2fbc95e8149928bd53e6530ee5`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:08:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Mar 2019 01:08:06 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Mar 2019 01:10:12 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Mar 2019 01:10:13 GMT
COPY file:7f453085f9f3e11f67387d005f4134eebda12a359ea5819fedfcfeb9685b34ee in /etc/ 
# Tue, 12 Mar 2019 01:10:13 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Tue, 12 Mar 2019 01:10:14 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Mar 2019 01:10:15 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Mar 2019 01:10:15 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Mar 2019 01:10:15 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Mar 2019 01:10:16 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Mar 2019 01:10:16 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Mar 2019 01:10:18 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Mar 2019 01:10:29 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Mar 2019 01:10:30 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Tue, 12 Mar 2019 01:10:30 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Tue, 12 Mar 2019 01:10:31 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Mar 2019 01:10:31 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Tue, 12 Mar 2019 01:10:31 GMT
EXPOSE 80
# Tue, 12 Mar 2019 01:10:31 GMT
EXPOSE 443
# Tue, 12 Mar 2019 01:10:32 GMT
EXPOSE 10081
# Tue, 12 Mar 2019 01:10:32 GMT
EXPOSE 10082
# Tue, 12 Mar 2019 01:10:32 GMT
WORKDIR /var/www/html
# Tue, 12 Mar 2019 01:10:32 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149fd791deab89dd2cafa17f9693bf633d94da788f454ce7403cb9e4e0654ea4`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36517caa46187d450322771d49cad297d512f30f195e5a5df584a43647142f62`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b3ba72588b2b184e5a1b5bfa449e7e60df2372998195ce0c59f753ef1936c9`  
		Last Modified: Tue, 12 Mar 2019 01:12:00 GMT  
		Size: 246.0 MB (246031064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933376e1c3ff2fc057d642c86563105ea4f545e8b5ceefc0bbeba89551c3e06`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26fe6411bdb8e781c3616ed83b1f06b2dc7b0c9eab7d47e9b561a38a049ac12`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7a47fe367f59b0b6f6ca4a7e3cfd7c4a8f1476e72320621b5b2c89b014580a`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb144e4ea09429d8a334c2312db1909d5f7a27192908443fdd0dd387adccaa6`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40aefbf655f2cdb9bc845987dd340fcf29f1e4cd19e6e361bb2d33de2855d18a`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2558fceb5deb8bc54cc93a218e1ecded5590d3fe1c94433c0a2eca531b7fd4`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 495.0 KB (494964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6c104bbbe84f94553f8f3623bda17c36986fdc7567811dbc9a0a5ae6152d06`  
		Last Modified: Tue, 12 Mar 2019 01:11:29 GMT  
		Size: 15.7 MB (15660863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b9cad3fcfdcdc9ee8ee525050c32bd863c01cb0cdd0b50130f34f4f76414`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7696b2ccc62e94f9fde1625ab0f71f5e56196aaadec5e5f5b6ea11eecb23f81`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48af2db7d38316ffd556dbe3ed67b78ad52441a880ea6d7949ad077956f807e8`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724348abb8cb897a123674160da7a90e724e604ed117063c5730cf9fb900d14f`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:d10651c36dc9ae0d48a7d488f9697295b82b67c22be30edec27354d0ccf36105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b6b3d0038c0cfd3a6b91bf2bfd5c4c30ff8ec7cb1e761cced8b8426c1818d2f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.5 MB (329459451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d26537d6d35db2ab1199d8fb23cffe15656da2fbc95e8149928bd53e6530ee5`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:08:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Mar 2019 01:08:06 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Mar 2019 01:10:12 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Mar 2019 01:10:13 GMT
COPY file:7f453085f9f3e11f67387d005f4134eebda12a359ea5819fedfcfeb9685b34ee in /etc/ 
# Tue, 12 Mar 2019 01:10:13 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Tue, 12 Mar 2019 01:10:14 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Mar 2019 01:10:15 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Mar 2019 01:10:15 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Mar 2019 01:10:15 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Mar 2019 01:10:16 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Mar 2019 01:10:16 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Mar 2019 01:10:18 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Mar 2019 01:10:29 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Mar 2019 01:10:30 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Tue, 12 Mar 2019 01:10:30 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Tue, 12 Mar 2019 01:10:31 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Mar 2019 01:10:31 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Tue, 12 Mar 2019 01:10:31 GMT
EXPOSE 80
# Tue, 12 Mar 2019 01:10:31 GMT
EXPOSE 443
# Tue, 12 Mar 2019 01:10:32 GMT
EXPOSE 10081
# Tue, 12 Mar 2019 01:10:32 GMT
EXPOSE 10082
# Tue, 12 Mar 2019 01:10:32 GMT
WORKDIR /var/www/html
# Tue, 12 Mar 2019 01:10:32 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149fd791deab89dd2cafa17f9693bf633d94da788f454ce7403cb9e4e0654ea4`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36517caa46187d450322771d49cad297d512f30f195e5a5df584a43647142f62`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b3ba72588b2b184e5a1b5bfa449e7e60df2372998195ce0c59f753ef1936c9`  
		Last Modified: Tue, 12 Mar 2019 01:12:00 GMT  
		Size: 246.0 MB (246031064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933376e1c3ff2fc057d642c86563105ea4f545e8b5ceefc0bbeba89551c3e06`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26fe6411bdb8e781c3616ed83b1f06b2dc7b0c9eab7d47e9b561a38a049ac12`  
		Last Modified: Tue, 12 Mar 2019 01:11:28 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7a47fe367f59b0b6f6ca4a7e3cfd7c4a8f1476e72320621b5b2c89b014580a`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb144e4ea09429d8a334c2312db1909d5f7a27192908443fdd0dd387adccaa6`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40aefbf655f2cdb9bc845987dd340fcf29f1e4cd19e6e361bb2d33de2855d18a`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2558fceb5deb8bc54cc93a218e1ecded5590d3fe1c94433c0a2eca531b7fd4`  
		Last Modified: Tue, 12 Mar 2019 01:11:27 GMT  
		Size: 495.0 KB (494964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6c104bbbe84f94553f8f3623bda17c36986fdc7567811dbc9a0a5ae6152d06`  
		Last Modified: Tue, 12 Mar 2019 01:11:29 GMT  
		Size: 15.7 MB (15660863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b9cad3fcfdcdc9ee8ee525050c32bd863c01cb0cdd0b50130f34f4f76414`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7696b2ccc62e94f9fde1625ab0f71f5e56196aaadec5e5f5b6ea11eecb23f81`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48af2db7d38316ffd556dbe3ed67b78ad52441a880ea6d7949ad077956f807e8`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724348abb8cb897a123674160da7a90e724e604ed117063c5730cf9fb900d14f`  
		Last Modified: Tue, 12 Mar 2019 01:11:26 GMT  
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
