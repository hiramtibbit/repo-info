## `buildpack-deps:cosmic`

```console
$ docker pull buildpack-deps@sha256:c9a4cd2edc37ced14886c60d0ded23011b776d50d0a55350038a367626ee46dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:ed3c93d59b96ae75a04615bd5bc0280e3522dadd5a9d5bb1d021191a5bbf8afe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218175071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0d40b4b6287e082d6c8c9d8e0cc3cd9765ba823dca53a224f18e50c0daf165`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:44 GMT
ADD file:11d95b51d3050c68fff27b804b89c2f7bc8455bf9ec49d25b69548782b3fdda4 in / 
# Tue, 17 Jul 2018 00:52:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:48 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 02:59:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:00:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:01:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:03:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cea5b1245e6f208d71834365d62d1fa118e3d9d4a939fa80f35ccdfcb5b0483d`  
		Last Modified: Tue, 17 Jul 2018 00:57:01 GMT  
		Size: 29.0 MB (29013626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe35b2b314e5c1d8e1e57f50bcf3fe3efea423df04bdc33f851e2cdd01119f66`  
		Last Modified: Tue, 17 Jul 2018 00:56:52 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1718d2daa9dc5b87456ff37add13071c96b0580951fa9ce45b6f3043eda9d8`  
		Last Modified: Tue, 17 Jul 2018 00:56:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcfe38c4a3aa79bebc1d921f94e05cad15b5c9e0055731e26d7b746676f495`  
		Last Modified: Tue, 17 Jul 2018 00:56:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a17d47ada50521d241c8ee0ec5e330e3e45c440361f0b9f769dc4a187e31c93`  
		Last Modified: Tue, 17 Jul 2018 03:44:09 GMT  
		Size: 5.8 MB (5832465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05612b1ec97fe45f9e7b67c64e4fc1d53d14ba14fa74d9cec1409db8a4a252eb`  
		Last Modified: Tue, 17 Jul 2018 03:44:07 GMT  
		Size: 3.0 MB (2965175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8f155355823241ec01393f78ae0086711a1910c5c3025d644e6088939af891`  
		Last Modified: Tue, 17 Jul 2018 03:45:13 GMT  
		Size: 48.5 MB (48530482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ad7edfde2da8207976a30c634e77285f69f795f81d1a178f9aa287e0eee01a`  
		Last Modified: Tue, 17 Jul 2018 03:46:46 GMT  
		Size: 131.8 MB (131831454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:81a049f93357522d0fb26ac61c1a444a5a251f2df8aedb2e13282202401a174a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.5 MB (188485834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5ed9aceda5db100a03841884ce0ff9e73947925c0dfea17501ef50a5b79a4c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:22:23 GMT
ADD file:b28a5b370d043cef1340b7852772c720a4d1f4da3bacc2861b78b845f164d83c in / 
# Tue, 17 Jul 2018 13:22:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:22:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:22:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:22:36 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 13:37:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:39:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7df6206d94cc3596241393040e60c0fc9e76d8e5c974e2f59d34423cfc61bcab`  
		Last Modified: Tue, 17 Jul 2018 13:25:33 GMT  
		Size: 24.6 MB (24573626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a524a00a87db38d0bf9557ee75ceb311c47bd5fc246963e35926eac26a6f77b4`  
		Last Modified: Tue, 17 Jul 2018 13:25:26 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc34490d60134886eaf8e07e3ca876cfa38422350c3b6476268b2e133bf6c1a`  
		Last Modified: Tue, 17 Jul 2018 13:25:26 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd5516846bb343c6e5930844476a5c5bcb86f8545ae968f40449d25909a9e8a`  
		Last Modified: Tue, 17 Jul 2018 13:25:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a76c793bea4208c0db600d86563173db7dff6359e58e4506d7c0935d1abef7a`  
		Last Modified: Tue, 17 Jul 2018 14:04:12 GMT  
		Size: 4.9 MB (4929212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc3953c3e4bc35369ed9e91abf753857021c327e714cd799b6206376af56fb8`  
		Last Modified: Tue, 17 Jul 2018 14:04:11 GMT  
		Size: 2.5 MB (2529644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad5326480240ca62c8ce7a89cc2fe97cc507acb503433b9d3f546841f885e1d`  
		Last Modified: Tue, 17 Jul 2018 14:04:45 GMT  
		Size: 43.5 MB (43547143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e60508adee3c29292b1546088da2cd4550d860e4dfdc015da0c514f436a04f`  
		Last Modified: Tue, 17 Jul 2018 14:05:41 GMT  
		Size: 112.9 MB (112904306 bytes)  
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

### `buildpack-deps:cosmic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:fecf240fe3bf3a84a19a26d6e21223a0f908f43eb52bcfad4600db075e0441a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228077146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee1b11e2e98c00b07dfcac0378b32ab0e2cd86a09c844a01720669b3e580eb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 10:48:40 GMT
ADD file:50a73ee4973a0de02efa27ab556d8a092cc44562d04a1eccd459fba51bfe7b95 in / 
# Wed, 06 Jun 2018 10:48:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 10:48:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:48:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 10:48:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 10:48:43 GMT
CMD ["/bin/bash"]
# Wed, 11 Jul 2018 10:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 10:40:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jul 2018 10:42:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 10:46:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd2ca3cccfd99e68b8939d6848cb95fb6d76bbc3a218603e7bedd335386dcdf7`  
		Last Modified: Wed, 06 Jun 2018 10:51:30 GMT  
		Size: 31.8 MB (31837603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57957f423a7bcb2237b63ac6476e9e6f9103171d044fa6563ff883b76586381`  
		Last Modified: Wed, 06 Jun 2018 10:51:16 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b7a51423896486c245c91fba15bd1f503ebcd502a567f6b15750c55b29cc0d`  
		Last Modified: Wed, 06 Jun 2018 10:51:15 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4b55a21427ac12ee7f83d5e4f974453ee75838f96ee8ac3059d49c6c71eb35`  
		Last Modified: Wed, 06 Jun 2018 10:51:15 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9699b87fe9830e1c766cc00c1d08d0705128dbb3f0854770e8f307e307ebb3ea`  
		Last Modified: Wed, 06 Jun 2018 10:51:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6031964dedae44e8da235def6e2a61da10e377938213bae5593886eba537b`  
		Last Modified: Wed, 11 Jul 2018 10:47:03 GMT  
		Size: 6.1 MB (6110435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4a695d7b6aebf633396918e9bd93a8a724f017b76c68aac5a3a74b1c956632`  
		Last Modified: Wed, 11 Jul 2018 10:47:01 GMT  
		Size: 3.5 MB (3453150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2a75f18093d3facf5f3aa7c5f4bc1779a3bd4fa27d28ca9baa3d36bdc0587e`  
		Last Modified: Wed, 11 Jul 2018 10:48:16 GMT  
		Size: 52.4 MB (52375783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198c8f082717be7728cf10afe28eb0cfeb58324e38a7fbe60f58c8811ee8cf8b`  
		Last Modified: Wed, 11 Jul 2018 10:49:55 GMT  
		Size: 134.3 MB (134297908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:36d7a52b669789f6dd10f41215b5edd62516c0c59b2de7918f63fa740990ed81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.8 MB (239773742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fbcbc429dee15fffb01fba52b42495a6d01b5e4b118dcbaa5479fa6c96b58a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:22:20 GMT
ADD file:37c0c48b0f302939d0acfbd9bd05f1b8f5f3754350ddbac01b5f7f6228cd524f in / 
# Tue, 17 Jul 2018 11:22:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:22:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:22:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:22:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:36 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 12:44:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:45:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:53:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:15865920a7de90e2ab21bc983b0fbce3bcd5022bc6087adbc3b0418ee8235273`  
		Last Modified: Tue, 17 Jul 2018 11:27:30 GMT  
		Size: 32.7 MB (32714865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145d279ec60b7680440564372a81250262e8e4773819a9ad63f321023f256b09`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ea0a1bc371343ba0c2a34e55a3d68ba9a508b9aaef16ff387b98aba56b899`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6091389178d590f17408cc7be695b01e12ac3a51f31c8dc836687563d2e905e`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa5afa0930acbd10c696f039d189abb5fe0d71e6b9f6a42131d5cee28ecb16`  
		Last Modified: Tue, 17 Jul 2018 14:10:45 GMT  
		Size: 6.1 MB (6050258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dacd7c80fc8abe737dfc7acd26ec8e771846680c7901fcb65b7f6183a34d127`  
		Last Modified: Tue, 17 Jul 2018 14:10:44 GMT  
		Size: 3.7 MB (3671430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996693630dd0ba8081734a116cabd1a18dd159abacdb72b6ac6afbdc28b5b77c`  
		Last Modified: Tue, 17 Jul 2018 14:11:35 GMT  
		Size: 56.8 MB (56816405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76e662ad2b39cdc6eb621b29488662250a4d8524ca14c9fb7dcf5afefebf8fb`  
		Last Modified: Tue, 17 Jul 2018 14:13:06 GMT  
		Size: 140.5 MB (140518879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:de9a844dd7eb464f69bbfedea67b3de1f38c56ffb4d8254685eb084075aa49fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204036479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4270b125f58a63be3c6982d73b7b76db4b47f7cc4b8e32a216536a4cc31c5a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:07:51 GMT
ADD file:138424b931f46e1ccf61a828946e3addce512e0432512d2c9532120e026d64da in / 
# Tue, 17 Jul 2018 13:07:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:07:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:07:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:07:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:07:59 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 13:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:17:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:17:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:18:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c194ce38b9148dfda8cf34e64c396f7851f8fcda4fd89b670033091de9dd96a2`  
		Last Modified: Tue, 17 Jul 2018 13:09:36 GMT  
		Size: 27.7 MB (27661081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514c5de2e49ff537463e87ec1b79d1052628e81562837216866748d0fdee0af0`  
		Last Modified: Tue, 17 Jul 2018 13:09:31 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717bf353f8c78598f28dd59926e0594b3f4d7ac20a4e1f95a9ae15df6d9438b6`  
		Last Modified: Tue, 17 Jul 2018 13:09:32 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb259aa356204c39d15513364c6831cad0b26b64658488e6a33473d8ee336223`  
		Last Modified: Tue, 17 Jul 2018 13:09:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4813f2e18476072b657d453f436594e700fa20da3db4ea2eb26b33bb5844354`  
		Last Modified: Tue, 17 Jul 2018 13:28:16 GMT  
		Size: 5.5 MB (5518242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f1d68d27da64c8a2a95e450533b411a58333aca667871a3a8dca9c50815043`  
		Last Modified: Tue, 17 Jul 2018 13:28:15 GMT  
		Size: 2.9 MB (2919527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea59cea099764a1890524cf0023ed76ce1b3ded274311c088b4460cdf3d1362`  
		Last Modified: Tue, 17 Jul 2018 13:28:37 GMT  
		Size: 48.1 MB (48051679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43ba8becabc7d7dcd77a5d609395619cc22dabc538722961550642828fd85da`  
		Last Modified: Tue, 17 Jul 2018 13:29:08 GMT  
		Size: 119.9 MB (119884073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
