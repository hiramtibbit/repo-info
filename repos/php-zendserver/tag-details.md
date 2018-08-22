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
$ docker pull php-zendserver@sha256:168b564acfb54f332780676ef39e01ff84c6e7be19d80eff2fa3737824a90a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:2018.0` - linux; amd64

```console
$ docker pull php-zendserver@sha256:78ebe7cbe9e1249e1531579e4d6938cd7f1495842c8af33dc4cf13124ed00f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.9 MB (346929598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3066afa1e76038f9e0e2a454ab48beec00c1e35b01b0bc9dfe2313405be73257`
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
# Wed, 22 Aug 2018 19:32:07 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/2018.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.2=2018.0.0+b464     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 22 Aug 2018 19:32:08 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 22 Aug 2018 19:32:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 22 Aug 2018 19:32:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Wed, 22 Aug 2018 19:32:11 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 22 Aug 2018 19:32:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 22 Aug 2018 19:32:13 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 22 Aug 2018 19:32:13 GMT
WORKDIR /usr/local/zs-init
# Wed, 22 Aug 2018 19:32:44 GMT
RUN /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar self-update && /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar update
# Wed, 22 Aug 2018 19:32:44 GMT
COPY dir:15e41e43c0ea26254e53363ef64d6f20b76b254a017ddeac1bce0422b2cdaa9a in /usr/local/bin 
# Wed, 22 Aug 2018 19:32:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 22 Aug 2018 19:32:46 GMT
RUN rm /var/www/html/index.html
# Wed, 22 Aug 2018 19:32:46 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 22 Aug 2018 19:32:46 GMT
EXPOSE 80/tcp
# Wed, 22 Aug 2018 19:32:47 GMT
EXPOSE 443/tcp
# Wed, 22 Aug 2018 19:32:47 GMT
EXPOSE 10081/tcp
# Wed, 22 Aug 2018 19:32:47 GMT
EXPOSE 10082/tcp
# Wed, 22 Aug 2018 19:32:48 GMT
WORKDIR /var/www/html
# Wed, 22 Aug 2018 19:32:48 GMT
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
	-	`sha256:0407a6d900a25be94ebfb854a386effe1b0cebf0d1c527e92940be8d869c2761`  
		Last Modified: Wed, 22 Aug 2018 19:39:46 GMT  
		Size: 287.0 MB (287043525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1205cca3c217cb4383606a1022a1af456bef34f0aa70f45878215f1b09c56a`  
		Last Modified: Wed, 22 Aug 2018 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c006892a4a54278172827152e62ae9ff761702409dce6b2c5dc38519273f04`  
		Last Modified: Wed, 22 Aug 2018 19:38:12 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0cf52bf297ddf9db157c5a8205051cad64751f859a247d3f349f676094e453`  
		Last Modified: Wed, 22 Aug 2018 19:38:11 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726079112f599da8e1df52560bb26b05940be9c397e85049523577e5ad510f1a`  
		Last Modified: Wed, 22 Aug 2018 19:38:11 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5381909ffb711123d5679308f894f1a114e2cacbcafd6002eff0b06b822d1024`  
		Last Modified: Wed, 22 Aug 2018 19:38:16 GMT  
		Size: 16.6 MB (16593157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3399e559b4a2b46b47a28b9c659f1d44b9166d4e751ecefe0a50abbe63058d8f`  
		Last Modified: Wed, 22 Aug 2018 19:38:09 GMT  
		Size: 14.2 KB (14250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a560f649b5024aec8f69a5a1db118a6a83ce56d4349cc138b4be6b3e801f9091`  
		Last Modified: Wed, 22 Aug 2018 19:38:08 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcadb19a4d0e8b272a36c26e4412e5e53c2be91a091ca0c8f4c147647adc170`  
		Last Modified: Wed, 22 Aug 2018 19:38:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf263ba6e7142c881fd8ff972cd04cc351f13e94416b62ac5aa4ac004eb2c92`  
		Last Modified: Wed, 22 Aug 2018 19:38:08 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:eb900ec4d300e6a2ccad54672eff2ad64eb6817968ab315cef0329837e621a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:827eace99d46632a2c7c127822df153167961ffa19c9791d9804bb261a6e12b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337743031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3c1f86c603f8aaa7ec3aa3a0d9edd5b1033c815c1da2bd8907511f5ab10e39`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:22:35 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 22 Aug 2018 19:22:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 22 Aug 2018 19:24:50 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 22 Aug 2018 19:24:52 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 22 Aug 2018 19:24:52 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 22 Aug 2018 19:24:53 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 22 Aug 2018 19:24:54 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 22 Aug 2018 19:24:55 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 22 Aug 2018 19:24:55 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 22 Aug 2018 19:24:56 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 22 Aug 2018 19:24:57 GMT
WORKDIR /usr/local/zs-init
# Wed, 22 Aug 2018 19:25:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 22 Aug 2018 19:25:36 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 22 Aug 2018 19:25:53 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 22 Aug 2018 19:25:54 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 22 Aug 2018 19:25:55 GMT
RUN rm /var/www/html/index.html
# Wed, 22 Aug 2018 19:25:55 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 80/tcp
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 443/tcp
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 10081/tcp
# Wed, 22 Aug 2018 19:25:57 GMT
EXPOSE 10082/tcp
# Wed, 22 Aug 2018 19:25:57 GMT
WORKDIR /var/www/html
# Wed, 22 Aug 2018 19:25:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de42723b294892c843b6f5376f9436b8de86892fad0ac71ce77251eb1aa5142a`  
		Last Modified: Wed, 22 Aug 2018 19:33:32 GMT  
		Size: 13.1 KB (13060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd9dcc1f480f135418b88bf0b0b0778d6b93042ee39596bba12fff645523a2`  
		Last Modified: Wed, 22 Aug 2018 19:33:32 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203985f8fa73f3f469adca4485a3a007184929614d786622950fec088d7d1628`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 254.4 MB (254378759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b4fcdc57008d5f3b0368fcc939b5086078701e51b11c6fb58e1c1bd4f21849`  
		Last Modified: Wed, 22 Aug 2018 19:33:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603b58a3a498ba5850cf9a030405e8d308cd9fa136441a0799a716e283513513`  
		Last Modified: Wed, 22 Aug 2018 19:33:30 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e5ecac8aeecd9a627216c35298b97c208d6669d854f1c998897594cfbb0364`  
		Last Modified: Wed, 22 Aug 2018 19:33:29 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80bad9b9d6525580195bfb53b2abc6a8744cd1677dfcf427e1dba627459f77e`  
		Last Modified: Wed, 22 Aug 2018 19:33:27 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f98813902ed958f1100e57a229cbc49baae676518e92bc52628073612bf96`  
		Last Modified: Wed, 22 Aug 2018 19:33:26 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef9e91c6ddad825c835a22d71ab7422d1f9f31a50cad11f8386c8501549bd9b`  
		Last Modified: Wed, 22 Aug 2018 19:33:26 GMT  
		Size: 482.7 KB (482705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9191c40e17dfcf324464a6bf0445f105f1c8b9a6fd6c0b43af0dc0d644ca405a`  
		Last Modified: Wed, 22 Aug 2018 19:33:31 GMT  
		Size: 15.6 MB (15630233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f25a459899bc9f167016124c44c44abcf1a72fd5cefb5b7597cf08bb37fe6e`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2160fac7082b648be0abc51b4c94a6c4bc32c3c5a6f4fe26d821ed38408d497`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51019ea43cbbe820593f93aeeae491443a4a88c5407ba0db4e2c5af4ffdbc5b`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f581f5bef7530460ab5615cc9bc794ec9dc31e2afc9694c260fe6d53321a6e`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:eb900ec4d300e6a2ccad54672eff2ad64eb6817968ab315cef0329837e621a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:827eace99d46632a2c7c127822df153167961ffa19c9791d9804bb261a6e12b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337743031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3c1f86c603f8aaa7ec3aa3a0d9edd5b1033c815c1da2bd8907511f5ab10e39`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:22:35 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 22 Aug 2018 19:22:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 22 Aug 2018 19:24:50 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 22 Aug 2018 19:24:52 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 22 Aug 2018 19:24:52 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 22 Aug 2018 19:24:53 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 22 Aug 2018 19:24:54 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 22 Aug 2018 19:24:55 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 22 Aug 2018 19:24:55 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 22 Aug 2018 19:24:56 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 22 Aug 2018 19:24:57 GMT
WORKDIR /usr/local/zs-init
# Wed, 22 Aug 2018 19:25:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 22 Aug 2018 19:25:36 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 22 Aug 2018 19:25:53 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 22 Aug 2018 19:25:54 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 22 Aug 2018 19:25:55 GMT
RUN rm /var/www/html/index.html
# Wed, 22 Aug 2018 19:25:55 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 80/tcp
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 443/tcp
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 10081/tcp
# Wed, 22 Aug 2018 19:25:57 GMT
EXPOSE 10082/tcp
# Wed, 22 Aug 2018 19:25:57 GMT
WORKDIR /var/www/html
# Wed, 22 Aug 2018 19:25:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de42723b294892c843b6f5376f9436b8de86892fad0ac71ce77251eb1aa5142a`  
		Last Modified: Wed, 22 Aug 2018 19:33:32 GMT  
		Size: 13.1 KB (13060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd9dcc1f480f135418b88bf0b0b0778d6b93042ee39596bba12fff645523a2`  
		Last Modified: Wed, 22 Aug 2018 19:33:32 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203985f8fa73f3f469adca4485a3a007184929614d786622950fec088d7d1628`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 254.4 MB (254378759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b4fcdc57008d5f3b0368fcc939b5086078701e51b11c6fb58e1c1bd4f21849`  
		Last Modified: Wed, 22 Aug 2018 19:33:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603b58a3a498ba5850cf9a030405e8d308cd9fa136441a0799a716e283513513`  
		Last Modified: Wed, 22 Aug 2018 19:33:30 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e5ecac8aeecd9a627216c35298b97c208d6669d854f1c998897594cfbb0364`  
		Last Modified: Wed, 22 Aug 2018 19:33:29 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80bad9b9d6525580195bfb53b2abc6a8744cd1677dfcf427e1dba627459f77e`  
		Last Modified: Wed, 22 Aug 2018 19:33:27 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f98813902ed958f1100e57a229cbc49baae676518e92bc52628073612bf96`  
		Last Modified: Wed, 22 Aug 2018 19:33:26 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef9e91c6ddad825c835a22d71ab7422d1f9f31a50cad11f8386c8501549bd9b`  
		Last Modified: Wed, 22 Aug 2018 19:33:26 GMT  
		Size: 482.7 KB (482705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9191c40e17dfcf324464a6bf0445f105f1c8b9a6fd6c0b43af0dc0d644ca405a`  
		Last Modified: Wed, 22 Aug 2018 19:33:31 GMT  
		Size: 15.6 MB (15630233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f25a459899bc9f167016124c44c44abcf1a72fd5cefb5b7597cf08bb37fe6e`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2160fac7082b648be0abc51b4c94a6c4bc32c3c5a6f4fe26d821ed38408d497`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51019ea43cbbe820593f93aeeae491443a4a88c5407ba0db4e2c5af4ffdbc5b`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f581f5bef7530460ab5615cc9bc794ec9dc31e2afc9694c260fe6d53321a6e`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:eb900ec4d300e6a2ccad54672eff2ad64eb6817968ab315cef0329837e621a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:827eace99d46632a2c7c127822df153167961ffa19c9791d9804bb261a6e12b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337743031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3c1f86c603f8aaa7ec3aa3a0d9edd5b1033c815c1da2bd8907511f5ab10e39`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:22:35 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 22 Aug 2018 19:22:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.10/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 22 Aug 2018 19:24:50 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.10+b798 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 22 Aug 2018 19:24:52 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 22 Aug 2018 19:24:52 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 22 Aug 2018 19:24:53 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 22 Aug 2018 19:24:54 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 22 Aug 2018 19:24:55 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 22 Aug 2018 19:24:55 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 22 Aug 2018 19:24:56 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 22 Aug 2018 19:24:57 GMT
WORKDIR /usr/local/zs-init
# Wed, 22 Aug 2018 19:25:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 22 Aug 2018 19:25:36 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 22 Aug 2018 19:25:53 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 22 Aug 2018 19:25:54 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 22 Aug 2018 19:25:55 GMT
RUN rm /var/www/html/index.html
# Wed, 22 Aug 2018 19:25:55 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 80/tcp
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 443/tcp
# Wed, 22 Aug 2018 19:25:56 GMT
EXPOSE 10081/tcp
# Wed, 22 Aug 2018 19:25:57 GMT
EXPOSE 10082/tcp
# Wed, 22 Aug 2018 19:25:57 GMT
WORKDIR /var/www/html
# Wed, 22 Aug 2018 19:25:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de42723b294892c843b6f5376f9436b8de86892fad0ac71ce77251eb1aa5142a`  
		Last Modified: Wed, 22 Aug 2018 19:33:32 GMT  
		Size: 13.1 KB (13060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd9dcc1f480f135418b88bf0b0b0778d6b93042ee39596bba12fff645523a2`  
		Last Modified: Wed, 22 Aug 2018 19:33:32 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203985f8fa73f3f469adca4485a3a007184929614d786622950fec088d7d1628`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 254.4 MB (254378759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b4fcdc57008d5f3b0368fcc939b5086078701e51b11c6fb58e1c1bd4f21849`  
		Last Modified: Wed, 22 Aug 2018 19:33:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603b58a3a498ba5850cf9a030405e8d308cd9fa136441a0799a716e283513513`  
		Last Modified: Wed, 22 Aug 2018 19:33:30 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e5ecac8aeecd9a627216c35298b97c208d6669d854f1c998897594cfbb0364`  
		Last Modified: Wed, 22 Aug 2018 19:33:29 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80bad9b9d6525580195bfb53b2abc6a8744cd1677dfcf427e1dba627459f77e`  
		Last Modified: Wed, 22 Aug 2018 19:33:27 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f98813902ed958f1100e57a229cbc49baae676518e92bc52628073612bf96`  
		Last Modified: Wed, 22 Aug 2018 19:33:26 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef9e91c6ddad825c835a22d71ab7422d1f9f31a50cad11f8386c8501549bd9b`  
		Last Modified: Wed, 22 Aug 2018 19:33:26 GMT  
		Size: 482.7 KB (482705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9191c40e17dfcf324464a6bf0445f105f1c8b9a6fd6c0b43af0dc0d644ca405a`  
		Last Modified: Wed, 22 Aug 2018 19:33:31 GMT  
		Size: 15.6 MB (15630233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f25a459899bc9f167016124c44c44abcf1a72fd5cefb5b7597cf08bb37fe6e`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2160fac7082b648be0abc51b4c94a6c4bc32c3c5a6f4fe26d821ed38408d497`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51019ea43cbbe820593f93aeeae491443a4a88c5407ba0db4e2c5af4ffdbc5b`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f581f5bef7530460ab5615cc9bc794ec9dc31e2afc9694c260fe6d53321a6e`  
		Last Modified: Wed, 22 Aug 2018 19:33:23 GMT  
		Size: 1.3 KB (1251 bytes)  
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
$ docker pull php-zendserver@sha256:168b564acfb54f332780676ef39e01ff84c6e7be19d80eff2fa3737824a90a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:78ebe7cbe9e1249e1531579e4d6938cd7f1495842c8af33dc4cf13124ed00f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.9 MB (346929598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3066afa1e76038f9e0e2a454ab48beec00c1e35b01b0bc9dfe2313405be73257`
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
# Wed, 22 Aug 2018 19:32:07 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/2018.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.2=2018.0.0+b464     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 22 Aug 2018 19:32:08 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Wed, 22 Aug 2018 19:32:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 22 Aug 2018 19:32:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Wed, 22 Aug 2018 19:32:11 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 22 Aug 2018 19:32:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 22 Aug 2018 19:32:13 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 22 Aug 2018 19:32:13 GMT
WORKDIR /usr/local/zs-init
# Wed, 22 Aug 2018 19:32:44 GMT
RUN /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar self-update && /usr/local/zend/bin/php /usr/local/zend/bin/composer.phar update
# Wed, 22 Aug 2018 19:32:44 GMT
COPY dir:15e41e43c0ea26254e53363ef64d6f20b76b254a017ddeac1bce0422b2cdaa9a in /usr/local/bin 
# Wed, 22 Aug 2018 19:32:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 22 Aug 2018 19:32:46 GMT
RUN rm /var/www/html/index.html
# Wed, 22 Aug 2018 19:32:46 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 22 Aug 2018 19:32:46 GMT
EXPOSE 80/tcp
# Wed, 22 Aug 2018 19:32:47 GMT
EXPOSE 443/tcp
# Wed, 22 Aug 2018 19:32:47 GMT
EXPOSE 10081/tcp
# Wed, 22 Aug 2018 19:32:47 GMT
EXPOSE 10082/tcp
# Wed, 22 Aug 2018 19:32:48 GMT
WORKDIR /var/www/html
# Wed, 22 Aug 2018 19:32:48 GMT
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
	-	`sha256:0407a6d900a25be94ebfb854a386effe1b0cebf0d1c527e92940be8d869c2761`  
		Last Modified: Wed, 22 Aug 2018 19:39:46 GMT  
		Size: 287.0 MB (287043525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1205cca3c217cb4383606a1022a1af456bef34f0aa70f45878215f1b09c56a`  
		Last Modified: Wed, 22 Aug 2018 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c006892a4a54278172827152e62ae9ff761702409dce6b2c5dc38519273f04`  
		Last Modified: Wed, 22 Aug 2018 19:38:12 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0cf52bf297ddf9db157c5a8205051cad64751f859a247d3f349f676094e453`  
		Last Modified: Wed, 22 Aug 2018 19:38:11 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726079112f599da8e1df52560bb26b05940be9c397e85049523577e5ad510f1a`  
		Last Modified: Wed, 22 Aug 2018 19:38:11 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5381909ffb711123d5679308f894f1a114e2cacbcafd6002eff0b06b822d1024`  
		Last Modified: Wed, 22 Aug 2018 19:38:16 GMT  
		Size: 16.6 MB (16593157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3399e559b4a2b46b47a28b9c659f1d44b9166d4e751ecefe0a50abbe63058d8f`  
		Last Modified: Wed, 22 Aug 2018 19:38:09 GMT  
		Size: 14.2 KB (14250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a560f649b5024aec8f69a5a1db118a6a83ce56d4349cc138b4be6b3e801f9091`  
		Last Modified: Wed, 22 Aug 2018 19:38:08 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcadb19a4d0e8b272a36c26e4412e5e53c2be91a091ca0c8f4c147647adc170`  
		Last Modified: Wed, 22 Aug 2018 19:38:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf263ba6e7142c881fd8ff972cd04cc351f13e94416b62ac5aa4ac004eb2c92`  
		Last Modified: Wed, 22 Aug 2018 19:38:08 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
