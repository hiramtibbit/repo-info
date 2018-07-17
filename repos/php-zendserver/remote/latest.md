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
