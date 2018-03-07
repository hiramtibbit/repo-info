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
