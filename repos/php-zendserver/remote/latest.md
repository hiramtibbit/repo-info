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
