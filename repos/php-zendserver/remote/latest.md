## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:528ce7d20208afc0467b8fb0fe497198dfd1a0ce4fab910c150daacec472eccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:fbd6a216b83a1adc30e66af0e57946240de00fe83fde714594e3104f3312382e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 MB (407674238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c4498688ebb10c0d05ea4d5b76be543299e4a7bfd0c9e66b80c9efac08e786`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Apr 2018 22:57:01 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623     && echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list     && apt-get update     && apt-get install -y       libmysqlclient20       unzip       git       curl       net-tools       zend-server-php-7.1=9.1.3+b165     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Tue, 17 Apr 2018 22:57:02 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Tue, 17 Apr 2018 22:57:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 17 Apr 2018 22:57:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header      && /usr/sbin/a2enmod headers
# Tue, 17 Apr 2018 22:57:04 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 17 Apr 2018 22:57:04 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 17 Apr 2018 22:57:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 17 Apr 2018 22:57:06 GMT
WORKDIR /usr/local/zs-init
# Tue, 17 Apr 2018 22:57:33 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar update
# Tue, 17 Apr 2018 22:57:34 GMT
COPY dir:9ae9bd79a6b436f5e20998652e3abb5e62adf9c00f26df20e03cef6ddca46367 in /usr/local/bin 
# Tue, 17 Apr 2018 22:57:35 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 17 Apr 2018 22:57:35 GMT
RUN rm /var/www/html/index.html
# Tue, 17 Apr 2018 22:57:36 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 17 Apr 2018 22:57:36 GMT
EXPOSE 80/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
EXPOSE 443/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
EXPOSE 10081/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
EXPOSE 10082/tcp
# Tue, 17 Apr 2018 22:57:37 GMT
WORKDIR /var/www/html
# Tue, 17 Apr 2018 22:57:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5df4ca68fa3a669868a03664a814c27a1a75668971ee27d4d47a24dc42e4a6`  
		Last Modified: Tue, 17 Apr 2018 23:50:15 GMT  
		Size: 349.4 MB (349444249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a002d69f02729c380dbff165f6400b0d755d8ce75827d071b0cebcb7a9ab49cd`  
		Last Modified: Tue, 17 Apr 2018 23:49:06 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76159c10c45776e620e79887f466a5190c230c27701121dc6c64629ee587d8b`  
		Last Modified: Tue, 17 Apr 2018 23:49:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8d90c52458b504252ddbb002191c33be51f831d6d21eb2228a73ed0ff86a5c`  
		Last Modified: Tue, 17 Apr 2018 23:49:06 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2633d0ef0bb94dc7e0a5aff1f7e88c6f64e3395dfdc3bdbaf3283a796e98b7`  
		Last Modified: Tue, 17 Apr 2018 23:49:05 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3158c5af5f36d5c46ab886bf929cbd068ccbe83b52fe29aa901b01cdbdf3a728`  
		Last Modified: Tue, 17 Apr 2018 23:49:08 GMT  
		Size: 15.2 MB (15167098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf4bb65ac5d1c78c51fe950e5aa11ae189fb2f1067157fab1753bf6683a5819`  
		Last Modified: Tue, 17 Apr 2018 23:49:04 GMT  
		Size: 13.8 KB (13789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e4f33b2be688d188ff635115c29c82b61d599167a5e2a8d5e47702533131ef`  
		Last Modified: Tue, 17 Apr 2018 23:49:03 GMT  
		Size: 2.5 KB (2532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21e3883048053d6d93e714ccad07fdeae518647d34714c85a61c0847afdeb37`  
		Last Modified: Tue, 17 Apr 2018 23:49:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3b39ad53b054bfe95ad681c2387c65986c8ae12b8135e18aa04ad419aebf55`  
		Last Modified: Tue, 17 Apr 2018 23:49:03 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
