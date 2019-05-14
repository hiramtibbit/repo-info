## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:ce19a40d57cef00987fb67dfcb610d6ad5b2d67a07b47f14c6df55cc92127acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:0768b6ee7a9bdc4bb99dcf11a9f729b00540a6791ddcb508eb6aef9b850ca3f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.9 MB (346878307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae94e64ae72a417dcaf60172845e2a6652c34c8a1e50ceba8c5fb4f5852408d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 22:39:10 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Apr 2019 22:43:51 GMT
COPY file:cca44afda2515ebc9c5d6c6cc6b28b639ebe16e800b44ffe2c7f21778e16975e in /etc/apt/sources.list.d/zend-server.list 
# Fri, 26 Apr 2019 22:45:24 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.2=2018.0.3+b24     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Apr 2019 22:45:24 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Fri, 26 Apr 2019 22:45:25 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Fri, 26 Apr 2019 22:45:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Apr 2019 22:45:26 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Apr 2019 22:45:26 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 26 Apr 2019 22:45:26 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 26 Apr 2019 22:45:27 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Apr 2019 22:45:27 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Apr 2019 22:45:45 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Fri, 26 Apr 2019 22:45:45 GMT
COPY dir:777fbf2a0474b413623c0acefd43071ad750be1c7c83c7c28212e3114e9b2709 in /usr/local/bin 
# Fri, 26 Apr 2019 22:45:46 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Fri, 26 Apr 2019 22:45:46 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Apr 2019 22:45:46 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Fri, 26 Apr 2019 22:45:47 GMT
EXPOSE 80
# Fri, 26 Apr 2019 22:45:47 GMT
EXPOSE 443
# Fri, 26 Apr 2019 22:45:47 GMT
EXPOSE 10081
# Fri, 26 Apr 2019 22:45:47 GMT
EXPOSE 10082
# Fri, 26 Apr 2019 22:45:47 GMT
WORKDIR /var/www/html
# Fri, 26 Apr 2019 22:45:47 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25106d00a72b58ac70b3552452ff3cf99f32611492de77b40f42e7561c891f5`  
		Last Modified: Fri, 26 Apr 2019 22:46:12 GMT  
		Size: 13.1 KB (13066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d16c89646d3d3262ae6c0326e645ab90e4b69a3c387f77bb6339872d48682a`  
		Last Modified: Fri, 26 Apr 2019 22:48:27 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5f92fbf69d1c523fc458d48fb38a1fb1f3c0806ef8971a7a45abfbc78aa80`  
		Last Modified: Fri, 26 Apr 2019 22:49:12 GMT  
		Size: 287.0 MB (286984889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673cf4eb88d512d8fd701bc8b5d2b4eff3535d79dee502d777a377fa7f7b62a6`  
		Last Modified: Fri, 26 Apr 2019 22:48:27 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810efc53e5ffa556408520d60212033562c950f5f30b08de801112f2b3123c11`  
		Last Modified: Fri, 26 Apr 2019 22:48:26 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8305981989d4615823fafbdf83ea5b8d5356c49008a6f72377303c8067390806`  
		Last Modified: Fri, 26 Apr 2019 22:48:26 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf53345ef42746a753c38f71cbc41948185db9da5f3ad995b8667f25cee62c3`  
		Last Modified: Fri, 26 Apr 2019 22:48:26 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa00234be1224d9469217613ec5e0b87eeb4a96f6eda9a2b09be27c69f9f7f33`  
		Last Modified: Fri, 26 Apr 2019 22:48:27 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60dda6a15cc0a10bad94e7df727669b7ff4244b9248ca8421f10b41e184bfa24`  
		Last Modified: Fri, 26 Apr 2019 22:48:30 GMT  
		Size: 16.1 MB (16087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91784dbd025daac6b767c3886d875b3f0c380c3bb0b159cd83e95871bd56478`  
		Last Modified: Fri, 26 Apr 2019 22:48:25 GMT  
		Size: 14.3 KB (14299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d06a61c2112637d3fe8094e953f5befe48d9db0944afac647ceef0cf90645d`  
		Last Modified: Fri, 26 Apr 2019 22:48:25 GMT  
		Size: 2.5 KB (2531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bc915482c420eadc1f83bf01fb9062300517f6503c846ffec30949db00e6b6`  
		Last Modified: Fri, 26 Apr 2019 22:48:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d151fa28beca4aa1c1c9dbd438cda8f07bd9b9bd805615f49ff1e33ee974bdd`  
		Last Modified: Fri, 26 Apr 2019 22:48:25 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
