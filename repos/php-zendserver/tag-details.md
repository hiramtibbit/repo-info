<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:9.1`](#php-zendserver91)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:424f83f14a90456a1983c325836ca45dd842cc2e0250b938a9acd9936e0dcce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:77aefb177e774f215e2d42246db994b7e87e02fcb6f10d668f701e631c16868c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (339043169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ce664aa8b24136e03246aa2017056e2c6d255c2dbed0bccb09b9a2b9856834`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 09:23:33 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sun, 29 Apr 2018 09:23:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sun, 29 Apr 2018 09:50:40 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.9+b796 && /usr/local/zend/bin/zendctl.sh stop
# Sun, 29 Apr 2018 09:50:41 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Sun, 29 Apr 2018 09:50:41 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sun, 29 Apr 2018 09:50:42 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sun, 29 Apr 2018 09:50:43 GMT
RUN /usr/sbin/a2enmod headers
# Sun, 29 Apr 2018 09:50:43 GMT
ENV ZS_INIT_VERSION=0.3
# Sun, 29 Apr 2018 09:50:43 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sun, 29 Apr 2018 09:50:44 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sun, 29 Apr 2018 09:50:44 GMT
WORKDIR /usr/local/zs-init
# Sun, 29 Apr 2018 09:50:47 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sun, 29 Apr 2018 09:51:20 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sun, 29 Apr 2018 09:51:20 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sun, 29 Apr 2018 09:51:21 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sun, 29 Apr 2018 09:51:21 GMT
RUN rm /var/www/html/index.html
# Sun, 29 Apr 2018 09:51:22 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 80/tcp
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 443/tcp
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 10081/tcp
# Sun, 29 Apr 2018 09:51:23 GMT
EXPOSE 10082/tcp
# Sun, 29 Apr 2018 09:51:23 GMT
WORKDIR /var/www/html
# Sun, 29 Apr 2018 09:51:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9073a28820853ea6e4ac73bdb87b58635947df144d5d8712469dd5446f55d90`  
		Last Modified: Sun, 29 Apr 2018 10:49:00 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91acec4402ad633515bee7ca88d643c64ebc828359c605a5286fc84846e5991`  
		Last Modified: Sun, 29 Apr 2018 10:48:58 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8bf8eeeb3fda7ed3d6cb125ee403f04ef30416cb6b7f8d9dd084afc9449b0`  
		Last Modified: Sun, 29 Apr 2018 10:54:05 GMT  
		Size: 250.7 MB (250653225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6679cff1610d906b905cd99597bf5104d76363c38bb584178112d4d00b778643`  
		Last Modified: Sun, 29 Apr 2018 10:53:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c26f4d296fce165840c5a720b6e41e80f3d9817db97dee8c89a413e1330d0`  
		Last Modified: Sun, 29 Apr 2018 10:53:17 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb744e19bbfe64a6260bbc2718b7cc82656a936395878ea0099875a169232e84`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c4aa6fc600f71dcbf4fd76f1781e7dfdafbb8d9bf931f54f38e1939cc76d2b`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0184d7647c52fd5ad99dc3594f1e943c4df5d088d9c7862ceee3a375d12271c`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38ce32219df14f59a6f33ba4f1ebf346604f40b7668f16a3cf9e2410b75d52`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 477.9 KB (477875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ec8ac82960a01284eaf7cbf6d329f0a25deafb1ccc8785085364033207adf`  
		Last Modified: Sun, 29 Apr 2018 10:53:18 GMT  
		Size: 14.7 MB (14705399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933d7a3c6478dffa696155617f9c9c8790cf48da77062db55ac01b761626bf15`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b1911c3f0372deaa72b111e14e494f14707b86eb02b577f2b2387c29398d3e`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346d7b4ad9be5ff470cbf6f00227a2c19c2239cd1099f3c4839dd73adb51d494`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b4869c85eafdbffc24dbf76f681c824f2ea64ff34913c79c635a6a2a6f4116`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:424f83f14a90456a1983c325836ca45dd842cc2e0250b938a9acd9936e0dcce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:77aefb177e774f215e2d42246db994b7e87e02fcb6f10d668f701e631c16868c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (339043169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ce664aa8b24136e03246aa2017056e2c6d255c2dbed0bccb09b9a2b9856834`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 09:23:33 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sun, 29 Apr 2018 09:23:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sun, 29 Apr 2018 09:50:40 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.9+b796 && /usr/local/zend/bin/zendctl.sh stop
# Sun, 29 Apr 2018 09:50:41 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Sun, 29 Apr 2018 09:50:41 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sun, 29 Apr 2018 09:50:42 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sun, 29 Apr 2018 09:50:43 GMT
RUN /usr/sbin/a2enmod headers
# Sun, 29 Apr 2018 09:50:43 GMT
ENV ZS_INIT_VERSION=0.3
# Sun, 29 Apr 2018 09:50:43 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sun, 29 Apr 2018 09:50:44 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sun, 29 Apr 2018 09:50:44 GMT
WORKDIR /usr/local/zs-init
# Sun, 29 Apr 2018 09:50:47 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sun, 29 Apr 2018 09:51:20 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sun, 29 Apr 2018 09:51:20 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sun, 29 Apr 2018 09:51:21 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sun, 29 Apr 2018 09:51:21 GMT
RUN rm /var/www/html/index.html
# Sun, 29 Apr 2018 09:51:22 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 80/tcp
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 443/tcp
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 10081/tcp
# Sun, 29 Apr 2018 09:51:23 GMT
EXPOSE 10082/tcp
# Sun, 29 Apr 2018 09:51:23 GMT
WORKDIR /var/www/html
# Sun, 29 Apr 2018 09:51:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9073a28820853ea6e4ac73bdb87b58635947df144d5d8712469dd5446f55d90`  
		Last Modified: Sun, 29 Apr 2018 10:49:00 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91acec4402ad633515bee7ca88d643c64ebc828359c605a5286fc84846e5991`  
		Last Modified: Sun, 29 Apr 2018 10:48:58 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8bf8eeeb3fda7ed3d6cb125ee403f04ef30416cb6b7f8d9dd084afc9449b0`  
		Last Modified: Sun, 29 Apr 2018 10:54:05 GMT  
		Size: 250.7 MB (250653225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6679cff1610d906b905cd99597bf5104d76363c38bb584178112d4d00b778643`  
		Last Modified: Sun, 29 Apr 2018 10:53:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c26f4d296fce165840c5a720b6e41e80f3d9817db97dee8c89a413e1330d0`  
		Last Modified: Sun, 29 Apr 2018 10:53:17 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb744e19bbfe64a6260bbc2718b7cc82656a936395878ea0099875a169232e84`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c4aa6fc600f71dcbf4fd76f1781e7dfdafbb8d9bf931f54f38e1939cc76d2b`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0184d7647c52fd5ad99dc3594f1e943c4df5d088d9c7862ceee3a375d12271c`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38ce32219df14f59a6f33ba4f1ebf346604f40b7668f16a3cf9e2410b75d52`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 477.9 KB (477875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ec8ac82960a01284eaf7cbf6d329f0a25deafb1ccc8785085364033207adf`  
		Last Modified: Sun, 29 Apr 2018 10:53:18 GMT  
		Size: 14.7 MB (14705399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933d7a3c6478dffa696155617f9c9c8790cf48da77062db55ac01b761626bf15`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b1911c3f0372deaa72b111e14e494f14707b86eb02b577f2b2387c29398d3e`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346d7b4ad9be5ff470cbf6f00227a2c19c2239cd1099f3c4839dd73adb51d494`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b4869c85eafdbffc24dbf76f681c824f2ea64ff34913c79c635a6a2a6f4116`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:424f83f14a90456a1983c325836ca45dd842cc2e0250b938a9acd9936e0dcce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:77aefb177e774f215e2d42246db994b7e87e02fcb6f10d668f701e631c16868c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (339043169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ce664aa8b24136e03246aa2017056e2c6d255c2dbed0bccb09b9a2b9856834`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 09:23:33 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sun, 29 Apr 2018 09:23:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.9/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sun, 29 Apr 2018 09:50:40 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6=8.5.9+b796 && /usr/local/zend/bin/zendctl.sh stop
# Sun, 29 Apr 2018 09:50:41 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Sun, 29 Apr 2018 09:50:41 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sun, 29 Apr 2018 09:50:42 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sun, 29 Apr 2018 09:50:43 GMT
RUN /usr/sbin/a2enmod headers
# Sun, 29 Apr 2018 09:50:43 GMT
ENV ZS_INIT_VERSION=0.3
# Sun, 29 Apr 2018 09:50:43 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sun, 29 Apr 2018 09:50:44 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sun, 29 Apr 2018 09:50:44 GMT
WORKDIR /usr/local/zs-init
# Sun, 29 Apr 2018 09:50:47 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sun, 29 Apr 2018 09:51:20 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sun, 29 Apr 2018 09:51:20 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sun, 29 Apr 2018 09:51:21 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sun, 29 Apr 2018 09:51:21 GMT
RUN rm /var/www/html/index.html
# Sun, 29 Apr 2018 09:51:22 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 80/tcp
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 443/tcp
# Sun, 29 Apr 2018 09:51:22 GMT
EXPOSE 10081/tcp
# Sun, 29 Apr 2018 09:51:23 GMT
EXPOSE 10082/tcp
# Sun, 29 Apr 2018 09:51:23 GMT
WORKDIR /var/www/html
# Sun, 29 Apr 2018 09:51:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9073a28820853ea6e4ac73bdb87b58635947df144d5d8712469dd5446f55d90`  
		Last Modified: Sun, 29 Apr 2018 10:49:00 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91acec4402ad633515bee7ca88d643c64ebc828359c605a5286fc84846e5991`  
		Last Modified: Sun, 29 Apr 2018 10:48:58 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8bf8eeeb3fda7ed3d6cb125ee403f04ef30416cb6b7f8d9dd084afc9449b0`  
		Last Modified: Sun, 29 Apr 2018 10:54:05 GMT  
		Size: 250.7 MB (250653225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6679cff1610d906b905cd99597bf5104d76363c38bb584178112d4d00b778643`  
		Last Modified: Sun, 29 Apr 2018 10:53:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c26f4d296fce165840c5a720b6e41e80f3d9817db97dee8c89a413e1330d0`  
		Last Modified: Sun, 29 Apr 2018 10:53:17 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb744e19bbfe64a6260bbc2718b7cc82656a936395878ea0099875a169232e84`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c4aa6fc600f71dcbf4fd76f1781e7dfdafbb8d9bf931f54f38e1939cc76d2b`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0184d7647c52fd5ad99dc3594f1e943c4df5d088d9c7862ceee3a375d12271c`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38ce32219df14f59a6f33ba4f1ebf346604f40b7668f16a3cf9e2410b75d52`  
		Last Modified: Sun, 29 Apr 2018 10:53:15 GMT  
		Size: 477.9 KB (477875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ec8ac82960a01284eaf7cbf6d329f0a25deafb1ccc8785085364033207adf`  
		Last Modified: Sun, 29 Apr 2018 10:53:18 GMT  
		Size: 14.7 MB (14705399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933d7a3c6478dffa696155617f9c9c8790cf48da77062db55ac01b761626bf15`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b1911c3f0372deaa72b111e14e494f14707b86eb02b577f2b2387c29398d3e`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346d7b4ad9be5ff470cbf6f00227a2c19c2239cd1099f3c4839dd73adb51d494`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b4869c85eafdbffc24dbf76f681c824f2ea64ff34913c79c635a6a2a6f4116`  
		Last Modified: Sun, 29 Apr 2018 10:53:13 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:37588a4bf247cf4a05da3aac88d751032ece46d69955fb685e5989eaf371e17f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

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

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:a17392569a06d85d65e6a3741e3fab2cc098b5d18df3fd2a0b453220d621a830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:7cade6b0377aab8d42aa041a7c8873338b49d32f404607b8e50f034e417abe50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.4 MB (402404269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da0aad55a19dfb7b996067f4c415eef74ef19386f9f7abeb3b20c968ead8a4`
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
# Sun, 29 Apr 2018 10:26:45 GMT
COPY dir:9ae9bd79a6b436f5e20998652e3abb5e62adf9c00f26df20e03cef6ddca46367 in /usr/local/bin 
# Sun, 29 Apr 2018 10:26:46 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sun, 29 Apr 2018 10:26:47 GMT
RUN rm /var/www/html/index.html
# Sun, 29 Apr 2018 10:26:47 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sun, 29 Apr 2018 10:26:47 GMT
EXPOSE 80/tcp
# Sun, 29 Apr 2018 10:26:48 GMT
EXPOSE 443/tcp
# Sun, 29 Apr 2018 10:26:48 GMT
EXPOSE 10081/tcp
# Sun, 29 Apr 2018 10:26:48 GMT
EXPOSE 10082/tcp
# Sun, 29 Apr 2018 10:26:48 GMT
WORKDIR /var/www/html
# Sun, 29 Apr 2018 10:26:49 GMT
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
	-	`sha256:95d7b1187da3c0af591b112697bb1a992f1d02115343b6f2ef4f7070247d74db`  
		Last Modified: Sun, 29 Apr 2018 11:26:55 GMT  
		Size: 13.8 KB (13791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8cda63380bef3e04d9d42b378bbb9c10ee6e60b16675a26ff5fb72588e98b`  
		Last Modified: Sun, 29 Apr 2018 11:26:55 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340f70dc821f688e25ac014a1ce0e88e7eadf3fefa1441bfa46b65331a990b53`  
		Last Modified: Sun, 29 Apr 2018 11:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ac6cbcdf60fce4bc773b03efdfeac31995d4257c05699a592dca71bd82a6c`  
		Last Modified: Sun, 29 Apr 2018 11:26:55 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
