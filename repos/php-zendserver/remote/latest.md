## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:db8e9efc7e3dbedd34c7fca80c5d6c33709e38862d8c35c28a69cdef47765f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:de317c249a6ba72caa9812b8d8ca64e02e80651cb700a1bca7e714650bdcca8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348033347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24192ce884571234bc61f8362cab501b64be6cc924302c814abda634e55890de`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:47:43 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 19 Jun 2019 02:51:55 GMT
COPY file:cca44afda2515ebc9c5d6c6cc6b28b639ebe16e800b44ffe2c7f21778e16975e in /etc/apt/sources.list.d/zend-server.list 
# Wed, 19 Jun 2019 02:53:29 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.2=2018.0.3+b24     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 19 Jun 2019 02:53:30 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Wed, 19 Jun 2019 02:53:30 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Wed, 19 Jun 2019 02:53:32 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 19 Jun 2019 02:53:33 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 19 Jun 2019 02:53:33 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 19 Jun 2019 02:53:33 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 19 Jun 2019 02:53:34 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 19 Jun 2019 02:53:34 GMT
WORKDIR /usr/local/zs-init
# Wed, 19 Jun 2019 02:53:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 19 Jun 2019 02:53:48 GMT
COPY dir:777fbf2a0474b413623c0acefd43071ad750be1c7c83c7c28212e3114e9b2709 in /usr/local/bin 
# Wed, 19 Jun 2019 02:53:49 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Wed, 19 Jun 2019 02:53:50 GMT
RUN rm /var/www/html/index.html
# Wed, 19 Jun 2019 02:53:50 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Wed, 19 Jun 2019 02:53:50 GMT
EXPOSE 80
# Wed, 19 Jun 2019 02:53:50 GMT
EXPOSE 443
# Wed, 19 Jun 2019 02:53:50 GMT
EXPOSE 10081
# Wed, 19 Jun 2019 02:53:51 GMT
EXPOSE 10082
# Wed, 19 Jun 2019 02:53:51 GMT
WORKDIR /var/www/html
# Wed, 19 Jun 2019 02:53:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8481a6601f7207174947bd7d0800e697044cd19459df5bfc372a8f4f79cb0`  
		Last Modified: Wed, 19 Jun 2019 02:54:18 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578c7d5a2cbda2a7d1811e38f3e16fc7bd4e177473c36dda64d0204b714eea19`  
		Last Modified: Wed, 19 Jun 2019 02:56:46 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d19d8850eaefd3e04dfb4f4fca086e0f115d086a9eecb302a00c33b615c85b`  
		Last Modified: Wed, 19 Jun 2019 02:57:37 GMT  
		Size: 287.5 MB (287537289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680535dd4e976571212c31f18127b8d8b96fcb1f31fd0c05c6096c959619329f`  
		Last Modified: Wed, 19 Jun 2019 02:56:46 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcc1da75beb3db61c5722623082696765f62d7b3ffe7f2137446ede64358a65`  
		Last Modified: Wed, 19 Jun 2019 02:56:45 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dbc3b8316777d93a4b8fccab1af048d311436bd66fb93df7990cb066c69fb3`  
		Last Modified: Wed, 19 Jun 2019 02:56:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a407b65bf96a9d60a2c1ea8e45f33fe466e1bc5cb76c7d18819da6f45452b351`  
		Last Modified: Wed, 19 Jun 2019 02:56:45 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdc2bca5be49dcdf163810ff4907ef3fbe87c3cf10c6d64e96ef33e5c7d4e78`  
		Last Modified: Wed, 19 Jun 2019 02:56:44 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5dd679ab6fc36631ef9a3e1e5fbee9ef27ccbcd16f021de7789ec4d325956f`  
		Last Modified: Wed, 19 Jun 2019 02:56:47 GMT  
		Size: 16.6 MB (16605258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902ed847c00b97d3a85350e840ed907ac4f7914049ab5639a4aa940570984185`  
		Last Modified: Wed, 19 Jun 2019 02:56:44 GMT  
		Size: 14.3 KB (14302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6efae3c880aa84ffe9f73f2e3771f4346fd2a001902189943cce0be1a53a92`  
		Last Modified: Wed, 19 Jun 2019 02:56:43 GMT  
		Size: 2.5 KB (2533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aef9733027175c71f1987440c19baa89e37ccf36d4a29dd8908fa3963f061e`  
		Last Modified: Wed, 19 Jun 2019 02:56:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637ecae547efb4d43ac42a8d83711c0c1575a777f12515efb256180f9102eae1`  
		Last Modified: Wed, 19 Jun 2019 02:56:43 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
