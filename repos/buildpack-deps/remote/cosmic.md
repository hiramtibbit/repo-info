## `buildpack-deps:cosmic`

```console
$ docker pull buildpack-deps@sha256:fde3fcb9ae8f9cdf346963cb449d1bbcab256696e9bb5829c923d5c3a8907f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `buildpack-deps:cosmic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2d1192676863cca48b420d8da84d0b9a90304a6bd6fc95ff5d6cef7ab090a32b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223616725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e5221c2e6c4ac957583d55e45fb5878f047f2fb8a54ba9b16e5a60044f4571`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:10 GMT
ADD file:ece2c9fa61cd3461f10cd8ec579bca502b3627fda44cbef3384397d9ee954dc1 in / 
# Tue, 05 Jun 2018 21:21:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 11 Jul 2018 00:20:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 00:20:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jul 2018 00:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 00:26:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c0ca458ff045375fcdf9c3b2a3a21a6ab9296ef210aec29ad5be2db9bcdd670`  
		Last Modified: Tue, 05 Jun 2018 20:24:33 GMT  
		Size: 31.4 MB (31406074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0de52c1a5aa543db4621dff125262d0794871f0cad9da0c6343f423185cf5f9`  
		Last Modified: Tue, 05 Jun 2018 21:23:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e1b2c9c16291d919092aafc17911b0543113a8fc23019296c55225b03185b7`  
		Last Modified: Tue, 05 Jun 2018 21:23:30 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8dbe84d4909f2962932055ae971ba8c09de36e170009b27b99d757e2a688f`  
		Last Modified: Tue, 05 Jun 2018 21:23:31 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d57ca5baa5ac106fc2f9dbbcdfccc58e36156336b775326d69aabfa4c0d5d`  
		Last Modified: Tue, 05 Jun 2018 21:23:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6edcee0f108af2b7fcb3ecda08a7b89f5bee178ab5d51a5df2c310eaacfdebb`  
		Last Modified: Wed, 11 Jul 2018 00:27:26 GMT  
		Size: 5.8 MB (5833437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfaf6c2931b17298faa06154a92f73a627d865751dc69dfc1e8851203d1e8c76`  
		Last Modified: Wed, 11 Jul 2018 00:27:24 GMT  
		Size: 3.2 MB (3195192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de77a5237f1716cb45e2eb729461a20c60c90a3e37c0e0588de7e12310e1db9`  
		Last Modified: Wed, 11 Jul 2018 00:28:17 GMT  
		Size: 50.7 MB (50708339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4593c5639e301c2360a6f4658b73b266373d6c59855016680039c511e7ea06ee`  
		Last Modified: Wed, 11 Jul 2018 00:29:41 GMT  
		Size: 132.5 MB (132471411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:86f3293ec7f48e8279c1afc9d26027a3c2ef83ef399f687734664a99bd4f231e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.5 MB (207480362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ecad83710d017fd98ce9d40f56773ede26f7c7ebcb3c71e609241a26f666418`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:48 GMT
ADD file:5c5ae9859989b2106dc10823f3419d642755619e7eaa244c84c89a9678779971 in / 
# Wed, 06 Jun 2018 09:36:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:58 GMT
CMD ["/bin/bash"]
# Wed, 11 Jul 2018 08:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 08:41:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jul 2018 08:43:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 08:52:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f48f4e125f7a97a6953ad4b266081f5e4c5acaf8d7fdc63a98e9a5f32384345`  
		Last Modified: Wed, 06 Jun 2018 09:41:15 GMT  
		Size: 28.3 MB (28300974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ca4873890ac0a34725a3b48a2137e0fbc87756dae93365230db43342894e7`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f8636160dd4576a5d2dd4b6806266cb97ff23597890ff00aba9f68aea406ee`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e26b0e6b3fe2008653142140e945e0225ea879acf1dde8459a84885d8c4ee`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ce0a40644cd0b897fc84184da0aa559416260983c291245750e8149bc08b67`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28334ac0fa36aed07617176b1c919e8be7ebe6994de779220c6f9ed3cecad15`  
		Last Modified: Wed, 11 Jul 2018 08:54:11 GMT  
		Size: 5.3 MB (5298529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44da7f4bbf602f690b0c50b365d86ffc34c44c9ba6e4eb79cf63df0c72d8e2f`  
		Last Modified: Wed, 11 Jul 2018 08:54:10 GMT  
		Size: 2.9 MB (2936084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb581b79a37bc49a9309306d53ebf1a40dc1de6731b8033ac52e7e2914d19325`  
		Last Modified: Wed, 11 Jul 2018 08:55:10 GMT  
		Size: 48.4 MB (48402267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c16b93b973475b4175a9de4ccb61a5184136cc7ee3c4ef984d7c003077e856`  
		Last Modified: Wed, 11 Jul 2018 08:56:39 GMT  
		Size: 122.5 MB (122540245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:33cab546bed5627929b868e8443b182d440329bd7e7c87783c784178bdf4edd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245480968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3f3f0641c3c4dd64f0c57e0ac647024645c9c53d7baed1cbcd976b8c7ba660`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:04:09 GMT
ADD file:138ddc37989046fde5333917d43eeb91832677d0aa7e1b0da5429cb2535cbd0f in / 
# Wed, 06 Jun 2018 09:04:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:04:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:05:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:05:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:05:49 GMT
CMD ["/bin/bash"]
# Wed, 11 Jul 2018 08:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 08:25:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jul 2018 08:27:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 08:39:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b6dc1b5f6bee1a19ad52f65522b00db78e8803876125fe69660a3358d965554`  
		Last Modified: Wed, 06 Jun 2018 09:09:21 GMT  
		Size: 35.1 MB (35111382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e30a53e6751fd7c669aa90c5fd40012c2624c06800772602203f5a4958f01b`  
		Last Modified: Wed, 06 Jun 2018 09:09:11 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d08951a6f22d8a76e6e679c022faa5dd73cc11a9edbf30ec942f1cbf0a8709`  
		Last Modified: Wed, 06 Jun 2018 09:09:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616df9d91dc7edc318a8446af565aa6a5863b7bca4821a1f6aa46d2f72fd021b`  
		Last Modified: Wed, 06 Jun 2018 09:09:11 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2bedc19d562cb9f9e3cac1b3226551fdf2307f737bc971422fb8e069062e11`  
		Last Modified: Wed, 06 Jun 2018 09:09:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c2f07a21f627164d59bfb8ca1393933af425d6dc4bcc6b7c8472b5a62215b9`  
		Last Modified: Wed, 11 Jul 2018 08:42:16 GMT  
		Size: 6.1 MB (6051652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9196d6c478d19f2fe85c8b0757ea60fa89fb0231562b7ebc3a4e1a566cc4dc4`  
		Last Modified: Wed, 11 Jul 2018 08:42:15 GMT  
		Size: 4.0 MB (3971876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbe130f3ed7a22afe007ca6b1c9cd62eca048131de0d5f728fbd8f2d177e32b`  
		Last Modified: Wed, 11 Jul 2018 08:43:02 GMT  
		Size: 59.1 MB (59105257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d280d3ac0937a37cd7dcc3cd2ea2c8151beb42d99d3ddabef2ffae4380ab681e`  
		Last Modified: Wed, 11 Jul 2018 08:44:10 GMT  
		Size: 141.2 MB (141238509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
