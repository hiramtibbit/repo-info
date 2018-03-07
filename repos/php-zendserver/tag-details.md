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
$ docker pull php-zendserver@sha256:0ee2149da5e3ec513b87c143c8c8d5a50e5278df1374c2979c92bf1fd6a99390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:6b9e31b6fcf014365d63e52a02758ee01889aa0f74b7b6bf901b1155887f0ad0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300180312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ef92267384327f04526a02e6388d7f12b732e76dbf604e5f2362d3cafb1abd`
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
# Tue, 06 Mar 2018 22:58:37 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Tue, 06 Mar 2018 22:58:38 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Tue, 06 Mar 2018 22:58:38 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Tue, 06 Mar 2018 22:58:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 06 Mar 2018 22:58:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 23:00:17 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 23:00:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 23:00:19 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 23:00:20 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
EXPOSE 10060/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
EXPOSE 10061/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
EXPOSE 10062/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 23:00:22 GMT
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
	-	`sha256:83c57ccb9b9c32185b3d28846d1a842c6ba6f8b2647b4387920344d4c508921c`  
		Last Modified: Tue, 06 Mar 2018 23:19:29 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c57978cf543b77d05af6ba131912a7d3cb3ccb84c544d6a5cae3a02c3ecf7d5`  
		Last Modified: Tue, 06 Mar 2018 23:19:29 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f75813e0e0dc276b9f082f4d1006f13d218229319fb5541633f5564a002b8e`  
		Last Modified: Tue, 06 Mar 2018 23:19:30 GMT  
		Size: 938.4 KB (938407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8de29c22faa0d81d508c7642ece8c78706d62e0c1e84236110aac1865ff5aee`  
		Last Modified: Tue, 06 Mar 2018 23:19:29 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5770d57482252b00c90f2feb3d9e5d42f040753587eeecac3391004cf8ab6f`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f635bd6a8af9c09902f7d9a4601d5dadd80967fac41d1326cdb64c01ea7693`  
		Last Modified: Tue, 06 Mar 2018 23:20:18 GMT  
		Size: 226.1 MB (226143660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8d04806eed86cd2c3ea1be835a9035f64eb4858059ec60caedcfaf62df6b35`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f6f07aee478b204a47ff86e39ac9127b664ec333f12c3d87b0936f4c4f6d50`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2577ced4596e333dbdc6972a5f9ee15da5824a699a6ec208d95ff6485afabaef`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:ad1a83ab467d14c7b4f499e4c6d432e3535dd68fabe3ee380c668531e4930ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b56a59919037fdca1d7b183a54a8317b3b86e9efd06b2b7720b6ad156a81021e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341840719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe82ad6b39e7980cba2cf16bf1c33ccf14da24fd5ad69605a95bf19f688e6ac8`
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
# Tue, 06 Mar 2018 22:38:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 22:40:17 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 22:40:19 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 06 Mar 2018 22:40:19 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 22:40:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 22:40:22 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 22:40:22 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 06 Mar 2018 22:40:22 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 06 Mar 2018 22:40:24 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 06 Mar 2018 22:40:24 GMT
WORKDIR /usr/local/zs-init
# Tue, 06 Mar 2018 22:40:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 06 Mar 2018 22:40:57 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 06 Mar 2018 22:40:58 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 06 Mar 2018 22:40:58 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 06 Mar 2018 22:40:59 GMT
RUN rm /var/www/html/index.html
# Tue, 06 Mar 2018 22:41:00 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 06 Mar 2018 22:41:00 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 22:41:00 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 22:41:00 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 22:41:01 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 22:41:01 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 22:41:01 GMT
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
	-	`sha256:fe0c3f769a1e2da2a529a0ff98a385857ef2741d0e803e8bf071cdfc22596cdf`  
		Last Modified: Tue, 06 Mar 2018 23:13:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b3e1e7be650091442012251997283e7e821d5badc5fec6038807876c7410e`  
		Last Modified: Tue, 06 Mar 2018 23:14:01 GMT  
		Size: 254.0 MB (253967054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839e6b356fc1ee5905afae6a0efe496037b93b9a6a2522940060f9c035528025`  
		Last Modified: Tue, 06 Mar 2018 23:13:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e297fdf81b13ec255596bb4e3e04f09b371dca41b4ac73da2e70ecc7b1f04f`  
		Last Modified: Tue, 06 Mar 2018 23:13:11 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dbbb56174f87e3d2c1ecf44c9bde1f5e68efb632f40a6e10cf69166af8fba2`  
		Last Modified: Tue, 06 Mar 2018 23:13:09 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf4fb8d966cc4fe93a23161f417acccd3524542dbabb39accf938b3b5f8f441`  
		Last Modified: Tue, 06 Mar 2018 23:13:08 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ddacbbdbe04c3ce25be823f642acf14c814ba18a24ae7f68c07ada9a6147f`  
		Last Modified: Tue, 06 Mar 2018 23:13:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb39db5b1d0832c92519c9b6da36b475eff6ff608537a1a43958ee36e9a8d81`  
		Last Modified: Tue, 06 Mar 2018 23:13:08 GMT  
		Size: 488.7 KB (488724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78d81a85ea58e3259ce3e09ee9492ae9dfa694c4cd14f142b3811f1881ca9c4`  
		Last Modified: Tue, 06 Mar 2018 23:13:11 GMT  
		Size: 14.3 MB (14263242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4973f79c241b835353f890de6c294f4154f3b9f9cbde84a0c2e18d61cf4dbc28`  
		Last Modified: Tue, 06 Mar 2018 23:13:06 GMT  
		Size: 13.4 KB (13356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464f6ebcd47dda39044d953fe7f5c57bcd5b5835dbcff5466a341bdd3fea7c00`  
		Last Modified: Tue, 06 Mar 2018 23:13:06 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9428004e21a4c7c0b645ce0500cf27cd68c4c12c692a0bcc6a35b27ff949e109`  
		Last Modified: Tue, 06 Mar 2018 23:13:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e74927bebe14d10503acde1602b7f88e60b95617c6b19270e31cf95a47dc707`  
		Last Modified: Tue, 06 Mar 2018 23:13:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:3f42b1c331f56dc41787c1c8adc969b2997ef5a4b7df94428a799b9e99febecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f5f538db9adbd1ee97a42b1bb974535231c146c5bc8d01dcffe40a276a7df706
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338458489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517bddc7bd6af67ebcb42e26733414a78b5a424b2aafd28f87359593c812ce52`
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
# Tue, 06 Mar 2018 22:38:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 22:57:37 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 22:57:38 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 06 Mar 2018 22:57:39 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 22:57:40 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 22:57:40 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 22:57:41 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 06 Mar 2018 22:57:41 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 06 Mar 2018 22:57:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 06 Mar 2018 22:57:42 GMT
WORKDIR /usr/local/zs-init
# Tue, 06 Mar 2018 22:57:45 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 06 Mar 2018 22:58:14 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 06 Mar 2018 22:58:15 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 06 Mar 2018 22:58:15 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 06 Mar 2018 22:58:16 GMT
RUN rm /var/www/html/index.html
# Tue, 06 Mar 2018 22:58:16 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 06 Mar 2018 22:58:16 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 22:58:18 GMT
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
	-	`sha256:fe0c3f769a1e2da2a529a0ff98a385857ef2741d0e803e8bf071cdfc22596cdf`  
		Last Modified: Tue, 06 Mar 2018 23:13:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce789b083e4bb875cce6d1e8a62e50cde5cd81150c54ec933d4a409d0780a1`  
		Last Modified: Tue, 06 Mar 2018 23:18:32 GMT  
		Size: 250.6 MB (250586013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fddef86b80d6596d62e111f09a072730006b90cb53acff88065e9d3fb1d7f22`  
		Last Modified: Tue, 06 Mar 2018 23:17:38 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e8d325a8b3b1a3698fd3ac2011a0804f23c38675e203d3bbf375a05fa2ccce`  
		Last Modified: Tue, 06 Mar 2018 23:17:39 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc0bc21b764d70c700ad5dfa5da6b30d2ab1822d6e152e82f09aed8f9d91e33`  
		Last Modified: Tue, 06 Mar 2018 23:17:37 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923b049a148a2f6bde02b03fa39f70154eb3cce18ea43fe36227dcf4578eef98`  
		Last Modified: Tue, 06 Mar 2018 23:17:37 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f8f56846ee181ba524971ce6616d2c5d41405f04d621bd6815003f39de211`  
		Last Modified: Tue, 06 Mar 2018 23:17:36 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafe8f0a8bc45a8e300b8eab1aa048fb606361fed7dcc02504b38e8cb997b00f`  
		Last Modified: Tue, 06 Mar 2018 23:17:36 GMT  
		Size: 488.7 KB (488726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbd4786e34e48222ee0de29b8ab9200867109bfb00993ac04f5448bf1a943e4`  
		Last Modified: Tue, 06 Mar 2018 23:17:40 GMT  
		Size: 14.3 MB (14262037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2319bf2ffbd7417d3197ff5c457d0d056a733d4de2e8ec7912a049a2c6f16`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b566d5c84ae3f3336d3a3029f7506e51baaf15ab165e996881f412103da29d`  
		Last Modified: Tue, 06 Mar 2018 23:17:35 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793cb79defb074519c4c3e77cdaa2b29484e37e48105e1e6aa4adb03553dd5de`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da6965d40f73ee341c94795ee316b93012abdbd66836921782e0cbf9afbda16`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:0ee2149da5e3ec513b87c143c8c8d5a50e5278df1374c2979c92bf1fd6a99390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:6b9e31b6fcf014365d63e52a02758ee01889aa0f74b7b6bf901b1155887f0ad0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300180312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ef92267384327f04526a02e6388d7f12b732e76dbf604e5f2362d3cafb1abd`
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
# Tue, 06 Mar 2018 22:58:37 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Tue, 06 Mar 2018 22:58:38 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Tue, 06 Mar 2018 22:58:38 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Tue, 06 Mar 2018 22:58:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 06 Mar 2018 22:58:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 23:00:17 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 23:00:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 23:00:19 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 23:00:20 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 23:00:20 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
EXPOSE 10060/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
EXPOSE 10061/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
EXPOSE 10062/tcp
# Tue, 06 Mar 2018 23:00:21 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 23:00:22 GMT
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
	-	`sha256:83c57ccb9b9c32185b3d28846d1a842c6ba6f8b2647b4387920344d4c508921c`  
		Last Modified: Tue, 06 Mar 2018 23:19:29 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c57978cf543b77d05af6ba131912a7d3cb3ccb84c544d6a5cae3a02c3ecf7d5`  
		Last Modified: Tue, 06 Mar 2018 23:19:29 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f75813e0e0dc276b9f082f4d1006f13d218229319fb5541633f5564a002b8e`  
		Last Modified: Tue, 06 Mar 2018 23:19:30 GMT  
		Size: 938.4 KB (938407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8de29c22faa0d81d508c7642ece8c78706d62e0c1e84236110aac1865ff5aee`  
		Last Modified: Tue, 06 Mar 2018 23:19:29 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5770d57482252b00c90f2feb3d9e5d42f040753587eeecac3391004cf8ab6f`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f635bd6a8af9c09902f7d9a4601d5dadd80967fac41d1326cdb64c01ea7693`  
		Last Modified: Tue, 06 Mar 2018 23:20:18 GMT  
		Size: 226.1 MB (226143660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8d04806eed86cd2c3ea1be835a9035f64eb4858059ec60caedcfaf62df6b35`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f6f07aee478b204a47ff86e39ac9127b664ec333f12c3d87b0936f4c4f6d50`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2577ced4596e333dbdc6972a5f9ee15da5824a699a6ec208d95ff6485afabaef`  
		Last Modified: Tue, 06 Mar 2018 23:19:27 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:3f42b1c331f56dc41787c1c8adc969b2997ef5a4b7df94428a799b9e99febecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f5f538db9adbd1ee97a42b1bb974535231c146c5bc8d01dcffe40a276a7df706
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338458489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517bddc7bd6af67ebcb42e26733414a78b5a424b2aafd28f87359593c812ce52`
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
# Tue, 06 Mar 2018 22:38:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 22:57:37 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 22:57:38 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 06 Mar 2018 22:57:39 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 22:57:40 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 22:57:40 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 22:57:41 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 06 Mar 2018 22:57:41 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 06 Mar 2018 22:57:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 06 Mar 2018 22:57:42 GMT
WORKDIR /usr/local/zs-init
# Tue, 06 Mar 2018 22:57:45 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 06 Mar 2018 22:58:14 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 06 Mar 2018 22:58:15 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 06 Mar 2018 22:58:15 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 06 Mar 2018 22:58:16 GMT
RUN rm /var/www/html/index.html
# Tue, 06 Mar 2018 22:58:16 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 06 Mar 2018 22:58:16 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 22:58:18 GMT
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
	-	`sha256:fe0c3f769a1e2da2a529a0ff98a385857ef2741d0e803e8bf071cdfc22596cdf`  
		Last Modified: Tue, 06 Mar 2018 23:13:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce789b083e4bb875cce6d1e8a62e50cde5cd81150c54ec933d4a409d0780a1`  
		Last Modified: Tue, 06 Mar 2018 23:18:32 GMT  
		Size: 250.6 MB (250586013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fddef86b80d6596d62e111f09a072730006b90cb53acff88065e9d3fb1d7f22`  
		Last Modified: Tue, 06 Mar 2018 23:17:38 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e8d325a8b3b1a3698fd3ac2011a0804f23c38675e203d3bbf375a05fa2ccce`  
		Last Modified: Tue, 06 Mar 2018 23:17:39 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc0bc21b764d70c700ad5dfa5da6b30d2ab1822d6e152e82f09aed8f9d91e33`  
		Last Modified: Tue, 06 Mar 2018 23:17:37 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923b049a148a2f6bde02b03fa39f70154eb3cce18ea43fe36227dcf4578eef98`  
		Last Modified: Tue, 06 Mar 2018 23:17:37 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f8f56846ee181ba524971ce6616d2c5d41405f04d621bd6815003f39de211`  
		Last Modified: Tue, 06 Mar 2018 23:17:36 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafe8f0a8bc45a8e300b8eab1aa048fb606361fed7dcc02504b38e8cb997b00f`  
		Last Modified: Tue, 06 Mar 2018 23:17:36 GMT  
		Size: 488.7 KB (488726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbd4786e34e48222ee0de29b8ab9200867109bfb00993ac04f5448bf1a943e4`  
		Last Modified: Tue, 06 Mar 2018 23:17:40 GMT  
		Size: 14.3 MB (14262037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2319bf2ffbd7417d3197ff5c457d0d056a733d4de2e8ec7912a049a2c6f16`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b566d5c84ae3f3336d3a3029f7506e51baaf15ab165e996881f412103da29d`  
		Last Modified: Tue, 06 Mar 2018 23:17:35 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793cb79defb074519c4c3e77cdaa2b29484e37e48105e1e6aa4adb03553dd5de`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da6965d40f73ee341c94795ee316b93012abdbd66836921782e0cbf9afbda16`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:ad1a83ab467d14c7b4f499e4c6d432e3535dd68fabe3ee380c668531e4930ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b56a59919037fdca1d7b183a54a8317b3b86e9efd06b2b7720b6ad156a81021e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341840719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe82ad6b39e7980cba2cf16bf1c33ccf14da24fd5ad69605a95bf19f688e6ac8`
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
# Tue, 06 Mar 2018 22:38:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 22:40:17 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 22:40:19 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 06 Mar 2018 22:40:19 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 22:40:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 22:40:22 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 22:40:22 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 06 Mar 2018 22:40:22 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 06 Mar 2018 22:40:24 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 06 Mar 2018 22:40:24 GMT
WORKDIR /usr/local/zs-init
# Tue, 06 Mar 2018 22:40:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 06 Mar 2018 22:40:57 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 06 Mar 2018 22:40:58 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 06 Mar 2018 22:40:58 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 06 Mar 2018 22:40:59 GMT
RUN rm /var/www/html/index.html
# Tue, 06 Mar 2018 22:41:00 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 06 Mar 2018 22:41:00 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 22:41:00 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 22:41:00 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 22:41:01 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 22:41:01 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 22:41:01 GMT
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
	-	`sha256:fe0c3f769a1e2da2a529a0ff98a385857ef2741d0e803e8bf071cdfc22596cdf`  
		Last Modified: Tue, 06 Mar 2018 23:13:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b3e1e7be650091442012251997283e7e821d5badc5fec6038807876c7410e`  
		Last Modified: Tue, 06 Mar 2018 23:14:01 GMT  
		Size: 254.0 MB (253967054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839e6b356fc1ee5905afae6a0efe496037b93b9a6a2522940060f9c035528025`  
		Last Modified: Tue, 06 Mar 2018 23:13:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e297fdf81b13ec255596bb4e3e04f09b371dca41b4ac73da2e70ecc7b1f04f`  
		Last Modified: Tue, 06 Mar 2018 23:13:11 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dbbb56174f87e3d2c1ecf44c9bde1f5e68efb632f40a6e10cf69166af8fba2`  
		Last Modified: Tue, 06 Mar 2018 23:13:09 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf4fb8d966cc4fe93a23161f417acccd3524542dbabb39accf938b3b5f8f441`  
		Last Modified: Tue, 06 Mar 2018 23:13:08 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ddacbbdbe04c3ce25be823f642acf14c814ba18a24ae7f68c07ada9a6147f`  
		Last Modified: Tue, 06 Mar 2018 23:13:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb39db5b1d0832c92519c9b6da36b475eff6ff608537a1a43958ee36e9a8d81`  
		Last Modified: Tue, 06 Mar 2018 23:13:08 GMT  
		Size: 488.7 KB (488724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78d81a85ea58e3259ce3e09ee9492ae9dfa694c4cd14f142b3811f1881ca9c4`  
		Last Modified: Tue, 06 Mar 2018 23:13:11 GMT  
		Size: 14.3 MB (14263242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4973f79c241b835353f890de6c294f4154f3b9f9cbde84a0c2e18d61cf4dbc28`  
		Last Modified: Tue, 06 Mar 2018 23:13:06 GMT  
		Size: 13.4 KB (13356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464f6ebcd47dda39044d953fe7f5c57bcd5b5835dbcff5466a341bdd3fea7c00`  
		Last Modified: Tue, 06 Mar 2018 23:13:06 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9428004e21a4c7c0b645ce0500cf27cd68c4c12c692a0bcc6a35b27ff949e109`  
		Last Modified: Tue, 06 Mar 2018 23:13:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e74927bebe14d10503acde1602b7f88e60b95617c6b19270e31cf95a47dc707`  
		Last Modified: Tue, 06 Mar 2018 23:13:07 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:3f42b1c331f56dc41787c1c8adc969b2997ef5a4b7df94428a799b9e99febecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f5f538db9adbd1ee97a42b1bb974535231c146c5bc8d01dcffe40a276a7df706
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338458489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517bddc7bd6af67ebcb42e26733414a78b5a424b2aafd28f87359593c812ce52`
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
# Tue, 06 Mar 2018 22:38:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 06 Mar 2018 22:57:37 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 06 Mar 2018 22:57:38 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 06 Mar 2018 22:57:39 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 06 Mar 2018 22:57:40 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 06 Mar 2018 22:57:40 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 06 Mar 2018 22:57:41 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 06 Mar 2018 22:57:41 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 06 Mar 2018 22:57:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 06 Mar 2018 22:57:42 GMT
WORKDIR /usr/local/zs-init
# Tue, 06 Mar 2018 22:57:45 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 06 Mar 2018 22:58:14 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 06 Mar 2018 22:58:15 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 06 Mar 2018 22:58:15 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 06 Mar 2018 22:58:16 GMT
RUN rm /var/www/html/index.html
# Tue, 06 Mar 2018 22:58:16 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 06 Mar 2018 22:58:16 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 443/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 10081/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
EXPOSE 10082/tcp
# Tue, 06 Mar 2018 22:58:17 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 22:58:18 GMT
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
	-	`sha256:fe0c3f769a1e2da2a529a0ff98a385857ef2741d0e803e8bf071cdfc22596cdf`  
		Last Modified: Tue, 06 Mar 2018 23:13:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ce789b083e4bb875cce6d1e8a62e50cde5cd81150c54ec933d4a409d0780a1`  
		Last Modified: Tue, 06 Mar 2018 23:18:32 GMT  
		Size: 250.6 MB (250586013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fddef86b80d6596d62e111f09a072730006b90cb53acff88065e9d3fb1d7f22`  
		Last Modified: Tue, 06 Mar 2018 23:17:38 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e8d325a8b3b1a3698fd3ac2011a0804f23c38675e203d3bbf375a05fa2ccce`  
		Last Modified: Tue, 06 Mar 2018 23:17:39 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc0bc21b764d70c700ad5dfa5da6b30d2ab1822d6e152e82f09aed8f9d91e33`  
		Last Modified: Tue, 06 Mar 2018 23:17:37 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923b049a148a2f6bde02b03fa39f70154eb3cce18ea43fe36227dcf4578eef98`  
		Last Modified: Tue, 06 Mar 2018 23:17:37 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f8f56846ee181ba524971ce6616d2c5d41405f04d621bd6815003f39de211`  
		Last Modified: Tue, 06 Mar 2018 23:17:36 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafe8f0a8bc45a8e300b8eab1aa048fb606361fed7dcc02504b38e8cb997b00f`  
		Last Modified: Tue, 06 Mar 2018 23:17:36 GMT  
		Size: 488.7 KB (488726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbd4786e34e48222ee0de29b8ab9200867109bfb00993ac04f5448bf1a943e4`  
		Last Modified: Tue, 06 Mar 2018 23:17:40 GMT  
		Size: 14.3 MB (14262037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2319bf2ffbd7417d3197ff5c457d0d056a733d4de2e8ec7912a049a2c6f16`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 13.4 KB (13359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b566d5c84ae3f3336d3a3029f7506e51baaf15ab165e996881f412103da29d`  
		Last Modified: Tue, 06 Mar 2018 23:17:35 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793cb79defb074519c4c3e77cdaa2b29484e37e48105e1e6aa4adb03553dd5de`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da6965d40f73ee341c94795ee316b93012abdbd66836921782e0cbf9afbda16`  
		Last Modified: Tue, 06 Mar 2018 23:17:34 GMT  
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
