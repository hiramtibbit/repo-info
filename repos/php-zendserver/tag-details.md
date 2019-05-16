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
$ docker pull php-zendserver@sha256:c1e1d3945ade024c508b7c96a98fc065a19fa824f3af572248725e19d0adce2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:2018.0` - linux; amd64

```console
$ docker pull php-zendserver@sha256:0f0fee7860124f1653752cf24904c71d31b4103055c280cfca0ca77fc598b46d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.7 MB (347657237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768753adc053027237a9df65acee6e4b42a8583760a4a3ba78462df72b892c76`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:04:37 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 15 May 2019 22:09:18 GMT
COPY file:cca44afda2515ebc9c5d6c6cc6b28b639ebe16e800b44ffe2c7f21778e16975e in /etc/apt/sources.list.d/zend-server.list 
# Wed, 15 May 2019 22:11:02 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.2=2018.0.3+b24     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 15 May 2019 22:11:02 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Wed, 15 May 2019 22:11:02 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Wed, 15 May 2019 22:11:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 15 May 2019 22:11:04 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 15 May 2019 22:11:04 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 15 May 2019 22:11:04 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 15 May 2019 22:11:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 15 May 2019 22:11:05 GMT
WORKDIR /usr/local/zs-init
# Wed, 15 May 2019 22:11:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 15 May 2019 22:11:26 GMT
COPY dir:777fbf2a0474b413623c0acefd43071ad750be1c7c83c7c28212e3114e9b2709 in /usr/local/bin 
# Wed, 15 May 2019 22:11:26 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Wed, 15 May 2019 22:11:30 GMT
RUN rm /var/www/html/index.html
# Wed, 15 May 2019 22:11:32 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Wed, 15 May 2019 22:11:32 GMT
EXPOSE 80
# Wed, 15 May 2019 22:11:32 GMT
EXPOSE 443
# Wed, 15 May 2019 22:11:32 GMT
EXPOSE 10081
# Wed, 15 May 2019 22:11:33 GMT
EXPOSE 10082
# Wed, 15 May 2019 22:11:33 GMT
WORKDIR /var/www/html
# Wed, 15 May 2019 22:11:33 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2967937309a1a2275ac3c6983069bb01cf3a6b1192ee5b97076137b1059d67`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 13.1 KB (13066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47ef757802f8b8433d2a815a7d76b4392a58c8810fd3b056737fd8999de84de`  
		Last Modified: Wed, 15 May 2019 22:14:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442291fe950bcb0340922dc1add6df773809a064de72e58b4e1ee723fe11a603`  
		Last Modified: Wed, 15 May 2019 22:15:02 GMT  
		Size: 287.5 MB (287533840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc64c05faa4e5074e0061e638c6cb91e709dab29455a060479ac01e2c5145dbc`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef4cd84de55daa5e44fbeb0db76d9921c49911b343a6385f373e3e74ab04c4e`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81bd9e5913adcaf2a3cb6b8ecd29c29c97cbf0287a11fc8dec89cd029761c6c`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22522e21ad1eea73e734c4c356bb2072cca1191ae63eb3878c9d94f7226fe074`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b64760b2efa13435aae5d34c2593f197eda72d531a06ac43abf5d1bbf3f088`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53986e935aef1ff3554432eccdc25900c14fa6b4bd2aa91e20501f3019a58e15`  
		Last Modified: Wed, 15 May 2019 22:14:12 GMT  
		Size: 16.3 MB (16302385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b698312bf24657afe490b46c918e863c8d45492d44c675cb747a271eed94fbd`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 14.3 KB (14300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d960e443823896a6eb4583a6ea34db413958550c708d808d1ddb7e4826e9a1e`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 2.5 KB (2526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e510271581a6e1473ec14073f7bc39495c787a579f92de7005a2b28cbf29b28`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be647a2e50bdc98c0211cc423e1ddda91259bd6540b79ba25334c23715de62d`  
		Last Modified: Wed, 15 May 2019 22:14:08 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:678f1c4f4fd9883144d7ab7d695b978aa8b17b3083a8d2e8ab8651d6050e2841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:798a7386d236b4ac30c49f3115638bfad2ae502f1abfca31e094afe2375cd98c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327094170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c33359e8a48b60cfc9145c0d189b22c7b889280a7a3cb55736c4b8d3656c28`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:04:37 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 15 May 2019 22:04:37 GMT
COPY file:038d38e3dc9bbb41700e57822734550f8f5340dbf2bdde10a1e377eedf66a25e in /etc/apt/sources.list.d/zend-server.list 
# Wed, 15 May 2019 22:06:27 GMT
RUN apt-get update     && apt-get install -y         curl         libmysqlclient20         unzip         git         zend-server-php-5.6=8.5.12+b817     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 15 May 2019 22:06:28 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Wed, 15 May 2019 22:06:28 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Wed, 15 May 2019 22:06:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 15 May 2019 22:06:30 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 15 May 2019 22:06:30 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 15 May 2019 22:06:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 15 May 2019 22:06:31 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 15 May 2019 22:06:32 GMT
WORKDIR /usr/local/zs-init
# Wed, 15 May 2019 22:06:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 15 May 2019 22:06:50 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Wed, 15 May 2019 22:06:50 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Wed, 15 May 2019 22:06:51 GMT
RUN rm /var/www/html/index.html
# Wed, 15 May 2019 22:06:51 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 80
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 443
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 10081
# Wed, 15 May 2019 22:06:52 GMT
EXPOSE 10082
# Wed, 15 May 2019 22:06:52 GMT
WORKDIR /var/www/html
# Wed, 15 May 2019 22:06:52 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2967937309a1a2275ac3c6983069bb01cf3a6b1192ee5b97076137b1059d67`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 13.1 KB (13066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e154c6c1aa185f1d96acec2f99509350c1ce3bc69d48ad8bcee62c247eaf852`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad289a0c7ab2f113a45d6d7bd7085f1e5eb8481ef192fe220f0a49bb1f8e0cfb`  
		Last Modified: Wed, 15 May 2019 22:12:45 GMT  
		Size: 267.0 MB (266973938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4611750cb7fbdd65fd28124dbc5cd7439f28cd1e161a6868113706c73adc0a2`  
		Last Modified: Wed, 15 May 2019 22:11:53 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132ab99b8b3044b50b15c80c1489ce5cfb201b06e08aa77205695988010ad480`  
		Last Modified: Wed, 15 May 2019 22:11:53 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54688e8b0a5511409ff4dba6009afacaea43984b117e0670e07bdf53c385d5a`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cbe27e57a7495289dc1ce90412c0b554221b4836a2f7d3755767fa3dc1fb7b`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb6d9d0cf72908f28cfed950d24f8b5b1c96a1bd47ff221fedaf4e21f15bfd`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fcbbebe5a391019ab6718416e69fac1694977dc4409f78c03dcce13f7cb8db`  
		Last Modified: Wed, 15 May 2019 22:11:56 GMT  
		Size: 16.3 MB (16300161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515156c78d7fdd0566d962cbb68c344077d0a159888b2e832edb4e1f65fb6814`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e129b82e6e82907805e88a50a32cdd670476ae81b6e334cd893cf004e04a81`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed3e1ee266c2466860774f824127f5f40cea42dfadc6f604d8a7efaf783a5f7`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb53cf0e7fb710560c760954a9bef74891c101ea04df1c6dbecb25293964f94`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:678f1c4f4fd9883144d7ab7d695b978aa8b17b3083a8d2e8ab8651d6050e2841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:798a7386d236b4ac30c49f3115638bfad2ae502f1abfca31e094afe2375cd98c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327094170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c33359e8a48b60cfc9145c0d189b22c7b889280a7a3cb55736c4b8d3656c28`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:04:37 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 15 May 2019 22:04:37 GMT
COPY file:038d38e3dc9bbb41700e57822734550f8f5340dbf2bdde10a1e377eedf66a25e in /etc/apt/sources.list.d/zend-server.list 
# Wed, 15 May 2019 22:06:27 GMT
RUN apt-get update     && apt-get install -y         curl         libmysqlclient20         unzip         git         zend-server-php-5.6=8.5.12+b817     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 15 May 2019 22:06:28 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Wed, 15 May 2019 22:06:28 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Wed, 15 May 2019 22:06:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 15 May 2019 22:06:30 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 15 May 2019 22:06:30 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 15 May 2019 22:06:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 15 May 2019 22:06:31 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 15 May 2019 22:06:32 GMT
WORKDIR /usr/local/zs-init
# Wed, 15 May 2019 22:06:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 15 May 2019 22:06:50 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Wed, 15 May 2019 22:06:50 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Wed, 15 May 2019 22:06:51 GMT
RUN rm /var/www/html/index.html
# Wed, 15 May 2019 22:06:51 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 80
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 443
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 10081
# Wed, 15 May 2019 22:06:52 GMT
EXPOSE 10082
# Wed, 15 May 2019 22:06:52 GMT
WORKDIR /var/www/html
# Wed, 15 May 2019 22:06:52 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2967937309a1a2275ac3c6983069bb01cf3a6b1192ee5b97076137b1059d67`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 13.1 KB (13066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e154c6c1aa185f1d96acec2f99509350c1ce3bc69d48ad8bcee62c247eaf852`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad289a0c7ab2f113a45d6d7bd7085f1e5eb8481ef192fe220f0a49bb1f8e0cfb`  
		Last Modified: Wed, 15 May 2019 22:12:45 GMT  
		Size: 267.0 MB (266973938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4611750cb7fbdd65fd28124dbc5cd7439f28cd1e161a6868113706c73adc0a2`  
		Last Modified: Wed, 15 May 2019 22:11:53 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132ab99b8b3044b50b15c80c1489ce5cfb201b06e08aa77205695988010ad480`  
		Last Modified: Wed, 15 May 2019 22:11:53 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54688e8b0a5511409ff4dba6009afacaea43984b117e0670e07bdf53c385d5a`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cbe27e57a7495289dc1ce90412c0b554221b4836a2f7d3755767fa3dc1fb7b`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb6d9d0cf72908f28cfed950d24f8b5b1c96a1bd47ff221fedaf4e21f15bfd`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fcbbebe5a391019ab6718416e69fac1694977dc4409f78c03dcce13f7cb8db`  
		Last Modified: Wed, 15 May 2019 22:11:56 GMT  
		Size: 16.3 MB (16300161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515156c78d7fdd0566d962cbb68c344077d0a159888b2e832edb4e1f65fb6814`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e129b82e6e82907805e88a50a32cdd670476ae81b6e334cd893cf004e04a81`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed3e1ee266c2466860774f824127f5f40cea42dfadc6f604d8a7efaf783a5f7`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb53cf0e7fb710560c760954a9bef74891c101ea04df1c6dbecb25293964f94`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:678f1c4f4fd9883144d7ab7d695b978aa8b17b3083a8d2e8ab8651d6050e2841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:798a7386d236b4ac30c49f3115638bfad2ae502f1abfca31e094afe2375cd98c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327094170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c33359e8a48b60cfc9145c0d189b22c7b889280a7a3cb55736c4b8d3656c28`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:04:37 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 15 May 2019 22:04:37 GMT
COPY file:038d38e3dc9bbb41700e57822734550f8f5340dbf2bdde10a1e377eedf66a25e in /etc/apt/sources.list.d/zend-server.list 
# Wed, 15 May 2019 22:06:27 GMT
RUN apt-get update     && apt-get install -y         curl         libmysqlclient20         unzip         git         zend-server-php-5.6=8.5.12+b817     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 15 May 2019 22:06:28 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Wed, 15 May 2019 22:06:28 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Wed, 15 May 2019 22:06:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 15 May 2019 22:06:30 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 15 May 2019 22:06:30 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 15 May 2019 22:06:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 15 May 2019 22:06:31 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 15 May 2019 22:06:32 GMT
WORKDIR /usr/local/zs-init
# Wed, 15 May 2019 22:06:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 15 May 2019 22:06:50 GMT
COPY dir:d1bde05c6a1731c6fdd67e6483c3367329c1389a7747a6dc480ac6189b8960ad in /usr/local/bin 
# Wed, 15 May 2019 22:06:50 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Wed, 15 May 2019 22:06:51 GMT
RUN rm /var/www/html/index.html
# Wed, 15 May 2019 22:06:51 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 80
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 443
# Wed, 15 May 2019 22:06:51 GMT
EXPOSE 10081
# Wed, 15 May 2019 22:06:52 GMT
EXPOSE 10082
# Wed, 15 May 2019 22:06:52 GMT
WORKDIR /var/www/html
# Wed, 15 May 2019 22:06:52 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2967937309a1a2275ac3c6983069bb01cf3a6b1192ee5b97076137b1059d67`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 13.1 KB (13066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e154c6c1aa185f1d96acec2f99509350c1ce3bc69d48ad8bcee62c247eaf852`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad289a0c7ab2f113a45d6d7bd7085f1e5eb8481ef192fe220f0a49bb1f8e0cfb`  
		Last Modified: Wed, 15 May 2019 22:12:45 GMT  
		Size: 267.0 MB (266973938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4611750cb7fbdd65fd28124dbc5cd7439f28cd1e161a6868113706c73adc0a2`  
		Last Modified: Wed, 15 May 2019 22:11:53 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132ab99b8b3044b50b15c80c1489ce5cfb201b06e08aa77205695988010ad480`  
		Last Modified: Wed, 15 May 2019 22:11:53 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54688e8b0a5511409ff4dba6009afacaea43984b117e0670e07bdf53c385d5a`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cbe27e57a7495289dc1ce90412c0b554221b4836a2f7d3755767fa3dc1fb7b`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb6d9d0cf72908f28cfed950d24f8b5b1c96a1bd47ff221fedaf4e21f15bfd`  
		Last Modified: Wed, 15 May 2019 22:11:52 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fcbbebe5a391019ab6718416e69fac1694977dc4409f78c03dcce13f7cb8db`  
		Last Modified: Wed, 15 May 2019 22:11:56 GMT  
		Size: 16.3 MB (16300161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515156c78d7fdd0566d962cbb68c344077d0a159888b2e832edb4e1f65fb6814`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e129b82e6e82907805e88a50a32cdd670476ae81b6e334cd893cf004e04a81`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed3e1ee266c2466860774f824127f5f40cea42dfadc6f604d8a7efaf783a5f7`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb53cf0e7fb710560c760954a9bef74891c101ea04df1c6dbecb25293964f94`  
		Last Modified: Wed, 15 May 2019 22:11:51 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:11ce7ac57461e446b78634b264a6f44f3742411253880c40c3453b99c586251d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:73d9dbde9ba60cae2c4fbe9cb3ddd25c3207a03b9686d0b3e7cf4429778d58e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.9 MB (403876446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5b1201f2cff8fc982619f4aeaacb0fd85b090ae0c546afd6e5a0d6a9c1388c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:04:37 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 15 May 2019 22:07:05 GMT
COPY file:0d4830b5060fb75cec6a47b30d343d82f9c3d6f95f20c11635618b93dedb5720 in /etc/apt/sources.list.d/zend-server.list 
# Wed, 15 May 2019 22:08:47 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.1=9.1.8+b181     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 15 May 2019 22:08:48 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Wed, 15 May 2019 22:08:48 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Wed, 15 May 2019 22:08:49 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 15 May 2019 22:08:50 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 15 May 2019 22:08:50 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 15 May 2019 22:08:51 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 15 May 2019 22:08:52 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 15 May 2019 22:08:52 GMT
WORKDIR /usr/local/zs-init
# Wed, 15 May 2019 22:09:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 15 May 2019 22:09:11 GMT
COPY dir:2021b288ac71d6ef2a0779a5f16607cfedb410b6f1d78096568db2aab6128b03 in /usr/local/bin 
# Wed, 15 May 2019 22:09:11 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Wed, 15 May 2019 22:09:12 GMT
RUN rm /var/www/html/index.html
# Wed, 15 May 2019 22:09:13 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Wed, 15 May 2019 22:09:13 GMT
EXPOSE 80
# Wed, 15 May 2019 22:09:13 GMT
EXPOSE 443
# Wed, 15 May 2019 22:09:13 GMT
EXPOSE 10081
# Wed, 15 May 2019 22:09:13 GMT
EXPOSE 10082
# Wed, 15 May 2019 22:09:14 GMT
WORKDIR /var/www/html
# Wed, 15 May 2019 22:09:14 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2967937309a1a2275ac3c6983069bb01cf3a6b1192ee5b97076137b1059d67`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 13.1 KB (13066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ca6e273ae181fadba08b50b33b883654fa5533aaebbdaf23135c2911d10cce`  
		Last Modified: Wed, 15 May 2019 22:12:56 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0967a1d6f23ec88d49c83c5f8085aff2c3002361ae899417b467244dff9e46`  
		Last Modified: Wed, 15 May 2019 22:14:03 GMT  
		Size: 343.8 MB (343753040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be91813555b226d1d12f8285531f6844debe34a0bf63de9313d4074c291dadef`  
		Last Modified: Wed, 15 May 2019 22:12:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe952024188747f6aefab8fe4b80f6415f48dabeed11d9a9c66701f6f575d336`  
		Last Modified: Wed, 15 May 2019 22:12:55 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2997a66d4bf44b6d36de2354d6357a05714f88428374b439ab2b4840f9b3234c`  
		Last Modified: Wed, 15 May 2019 22:12:54 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9b809686002cd41ba5a0ab7b51dc872c2b7d52761f69802fc6e0e45927f59f`  
		Last Modified: Wed, 15 May 2019 22:12:54 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3044e074ded4c3e6f486f41aad276ab8967cc706634c7b2434b2bb544316031`  
		Last Modified: Wed, 15 May 2019 22:12:54 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0ce72979eaeac616eeab2dc5f07f4096bd6bdd72ef082feaee152f881acc8b`  
		Last Modified: Wed, 15 May 2019 22:12:58 GMT  
		Size: 16.3 MB (16302382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa558d115128df2ec1f0fddd305ea3fd333fe14573f3b692017533479b729d1`  
		Last Modified: Wed, 15 May 2019 22:12:53 GMT  
		Size: 14.3 KB (14305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98be788334aa9ff1bb195e017929e7a9672d5b302127ad07cc5165dbe8d5ac8`  
		Last Modified: Wed, 15 May 2019 22:12:53 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ebce947069170874022c9fcb0a4ef7bff57defdf0ca8fcdec4bf380fdfd20c`  
		Last Modified: Wed, 15 May 2019 22:12:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247cd5a45338f57b27da81a83506e5ca03c67ab7b9dab01409ef0362cc394830`  
		Last Modified: Wed, 15 May 2019 22:12:53 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:c1e1d3945ade024c508b7c96a98fc065a19fa824f3af572248725e19d0adce2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:0f0fee7860124f1653752cf24904c71d31b4103055c280cfca0ca77fc598b46d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.7 MB (347657237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768753adc053027237a9df65acee6e4b42a8583760a4a3ba78462df72b892c76`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:04:37 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 15 May 2019 22:09:18 GMT
COPY file:cca44afda2515ebc9c5d6c6cc6b28b639ebe16e800b44ffe2c7f21778e16975e in /etc/apt/sources.list.d/zend-server.list 
# Wed, 15 May 2019 22:11:02 GMT
RUN apt-get update     && apt-get install -y       curl       libmysqlclient20       unzip       git       zend-server-php-7.2=2018.0.3+b24     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Wed, 15 May 2019 22:11:02 GMT
COPY file:602131b7a4923e5b498e51f4e46fd8e406a11f604b0be35bee6c8657c251c625 in /etc/zend.lic 
# Wed, 15 May 2019 22:11:02 GMT
COPY file:def46bbc651bcb61f92bcaa2f8d6edec0c22e51e86132fabd2e47542dcbec0bf in /etc/apache2/conf-available 
# Wed, 15 May 2019 22:11:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 15 May 2019 22:11:04 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 15 May 2019 22:11:04 GMT
ENV ZS_INIT_VERSION=0.3
# Wed, 15 May 2019 22:11:04 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Wed, 15 May 2019 22:11:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 15 May 2019 22:11:05 GMT
WORKDIR /usr/local/zs-init
# Wed, 15 May 2019 22:11:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar self-update && /usr/local/zend/bin/php composer.phar update
# Wed, 15 May 2019 22:11:26 GMT
COPY dir:777fbf2a0474b413623c0acefd43071ad750be1c7c83c7c28212e3114e9b2709 in /usr/local/bin 
# Wed, 15 May 2019 22:11:26 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Wed, 15 May 2019 22:11:30 GMT
RUN rm /var/www/html/index.html
# Wed, 15 May 2019 22:11:32 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Wed, 15 May 2019 22:11:32 GMT
EXPOSE 80
# Wed, 15 May 2019 22:11:32 GMT
EXPOSE 443
# Wed, 15 May 2019 22:11:32 GMT
EXPOSE 10081
# Wed, 15 May 2019 22:11:33 GMT
EXPOSE 10082
# Wed, 15 May 2019 22:11:33 GMT
WORKDIR /var/www/html
# Wed, 15 May 2019 22:11:33 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2967937309a1a2275ac3c6983069bb01cf3a6b1192ee5b97076137b1059d67`  
		Last Modified: Wed, 15 May 2019 22:11:54 GMT  
		Size: 13.1 KB (13066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47ef757802f8b8433d2a815a7d76b4392a58c8810fd3b056737fd8999de84de`  
		Last Modified: Wed, 15 May 2019 22:14:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442291fe950bcb0340922dc1add6df773809a064de72e58b4e1ee723fe11a603`  
		Last Modified: Wed, 15 May 2019 22:15:02 GMT  
		Size: 287.5 MB (287533840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc64c05faa4e5074e0061e638c6cb91e709dab29455a060479ac01e2c5145dbc`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef4cd84de55daa5e44fbeb0db76d9921c49911b343a6385f373e3e74ab04c4e`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81bd9e5913adcaf2a3cb6b8ecd29c29c97cbf0287a11fc8dec89cd029761c6c`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22522e21ad1eea73e734c4c356bb2072cca1191ae63eb3878c9d94f7226fe074`  
		Last Modified: Wed, 15 May 2019 22:14:10 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b64760b2efa13435aae5d34c2593f197eda72d531a06ac43abf5d1bbf3f088`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53986e935aef1ff3554432eccdc25900c14fa6b4bd2aa91e20501f3019a58e15`  
		Last Modified: Wed, 15 May 2019 22:14:12 GMT  
		Size: 16.3 MB (16302385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b698312bf24657afe490b46c918e863c8d45492d44c675cb747a271eed94fbd`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 14.3 KB (14300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d960e443823896a6eb4583a6ea34db413958550c708d808d1ddb7e4826e9a1e`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 2.5 KB (2526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e510271581a6e1473ec14073f7bc39495c787a579f92de7005a2b28cbf29b28`  
		Last Modified: Wed, 15 May 2019 22:14:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be647a2e50bdc98c0211cc423e1ddda91259bd6540b79ba25334c23715de62d`  
		Last Modified: Wed, 15 May 2019 22:14:08 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
