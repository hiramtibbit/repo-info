## `buildpack-deps:disco`

```console
$ docker pull buildpack-deps@sha256:9d69cd9047b433a9dc42199a67348ccc36e6363207ed56c1c7e5577625a81a0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:disco` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:22081b40b1f66849afb9e7a50994b5e03b6fdc54da73a63a1483aa85ff01dbc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234481287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374f031302030014ab4da97f654b33573119c2acf01b0147945c92a09dde4765`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:46 GMT
ADD file:b82101f178f1bebe33d5ac8f661a31ef8671c27500cba74a448dcb6544a6fd57 in / 
# Wed, 15 May 2019 21:20:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:49 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:47:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 21:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:50:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4417cd7c3ebb45585a393a0c01ef74414c31104c874b4252d7034cd416796faa`  
		Last Modified: Wed, 15 May 2019 21:22:03 GMT  
		Size: 29.7 MB (29729754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b01c082df6617a4ec1bf6043f0e270e774c843f7e974e2243090b86d5f929`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08458b88081614d856d6db8cbe030d86b31ac276e3d439b280e633cb0a9c8d6b`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1cec66520eed8f480efa1fc4d7dba9a8dab510d4b994f230fe8ad6f080ee7a`  
		Last Modified: Wed, 15 May 2019 21:58:10 GMT  
		Size: 6.7 MB (6666711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcbdb3677b640a498e2e74f6549ea3ad1dfd89fb769f67f5dc697c645aa3c84`  
		Last Modified: Wed, 15 May 2019 21:58:09 GMT  
		Size: 3.5 MB (3511163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25947863bc172a05141a2fcb74e6b69d333dfeb1eb7c66c80448f9c9c1ea9598`  
		Last Modified: Wed, 15 May 2019 21:58:24 GMT  
		Size: 49.0 MB (48980095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6554998ccb39ecd1ec29703d034810c5a358aff0464f8f44c562d46fdaf8`  
		Last Modified: Wed, 15 May 2019 21:58:57 GMT  
		Size: 145.6 MB (145592543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4c5e300be26ce3101ca26aaaf68615ce8213a1a06d8632f1d6ee5048c945fd67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201512283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8617f89d575d59dccfa25b94fe843e49641bfb594f57b1b67356b1299472e143`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:59:20 GMT
ADD file:18440645fc8d6ddead3b9e20d0b152b067f21350c29b401edd0ec631ca614f31 in / 
# Wed, 15 May 2019 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:59:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:59:27 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:30:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:32:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:34:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d3dbd787eab8450a8e2ee3aecaab64565010cd3d6491c44f9e7e6d9a9532677b`  
		Last Modified: Wed, 15 May 2019 22:02:29 GMT  
		Size: 25.2 MB (25223555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590fad1d4649fd3e05d64881659447506fa7efa161575e8f6d5db9dd77b2b1e4`  
		Last Modified: Wed, 15 May 2019 22:02:22 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97678b3103439d1e8a17cb5947209afdb2282978eca6e82e5a932118cb98dd9c`  
		Last Modified: Wed, 15 May 2019 22:02:22 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b0e49308b487399d2ee68e8682221de98f16493ddccb88c2882e01f9e75d5e`  
		Last Modified: Wed, 15 May 2019 22:46:37 GMT  
		Size: 5.6 MB (5640205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45c12b1b6b18be22d89fccbb062ee703b5ca0ebe2573654d0922b73cbd3cb87`  
		Last Modified: Wed, 15 May 2019 22:46:36 GMT  
		Size: 3.0 MB (2975427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bfd68f33cd7f2af01365829ccfdb912f8b89cada61e4988ef66845065c2c35`  
		Last Modified: Wed, 15 May 2019 22:46:58 GMT  
		Size: 44.5 MB (44500224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5620c8f0bc483894f7bda381895c290fbf5e6f765f135f8baa7dbdde407708`  
		Last Modified: Wed, 15 May 2019 22:47:40 GMT  
		Size: 123.2 MB (123171825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f6be3089775eff9173d5c9a68193c46fa8c4752e5c6463845a4097f685502703
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.9 MB (225879281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6abb57bd7f2dbc6cad020c07d504418a729b55d66bba72f747bd31265aa5be40`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:54 GMT
ADD file:46d0c7536c7b2b2f997639dceb16911ce53a4c1443fe8cb284761b357e060370 in / 
# Sat, 27 Apr 2019 09:36:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:37:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:37:03 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:10:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:11:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 12:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:20:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6f4ef9b288b3aff27ce5cfc89c07fa63622e5f9745260281096961d866c6f88`  
		Last Modified: Sat, 27 Apr 2019 09:40:26 GMT  
		Size: 28.5 MB (28523391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305214ff3f3f45f33e3dafa1a62b682ceef5757eedbc71a63f6519fbe74dfaea`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafc8e4e87f1adaf5e5c1dd74d0d48172ee80fc4fd5613d7e8bf2baec1c342fd`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61986756c9f477d13733af507c3a31953f49008e9343f25a5448c0bb144283b1`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b341901d19b70236c352c87bc12b5c6574f17dae143d30dc5669d9e7ce14f45`  
		Last Modified: Sat, 27 Apr 2019 12:48:40 GMT  
		Size: 6.5 MB (6538232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000769d7ab4b3daf8a73a0937d6338757af43e483465b9f85b20d4dbef5234f2`  
		Last Modified: Sat, 27 Apr 2019 12:48:39 GMT  
		Size: 3.5 MB (3505355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0363aea04046bf67f167456474af0d0baa87a0bba49a21a8b88fe60c8517ac3`  
		Last Modified: Sat, 27 Apr 2019 12:49:09 GMT  
		Size: 49.2 MB (49245759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3becaac7aacad9d65246a202997a048625f7b3c329e30905766af8ecd1f521ac`  
		Last Modified: Sat, 27 Apr 2019 12:50:06 GMT  
		Size: 138.1 MB (138065329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d5a12686c60125225d48e089e907f2c2c054873284ec8731ad2c7bef5a6b796d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238771259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f2373be199eea44473ec426bc991ebb8430e7a95775eba79392ba9638da969`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:43 GMT
ADD file:09ed0f944187a7b29d6dc700b86113b61fc64a9d691d547a404769bdf866c507 in / 
# Wed, 15 May 2019 21:39:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:47 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:06:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:09:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83b2f827047542b904878696f3dff892c94b5980f50a214b0e41f3fe132da74f`  
		Last Modified: Wed, 15 May 2019 21:41:40 GMT  
		Size: 30.4 MB (30389145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbdc11d90da438d954fdb311a52256a205b0ef2b219e98292f89e47aa832cb0`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4800b2d794cc89645815cef5131c291f8297cbdfc622589a6a6651e080bbee`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a61a29e8ac10cab76bb8d623d35e4c6ad101e45b30807ba3a62a9e0d7c3d12`  
		Last Modified: Wed, 15 May 2019 22:19:40 GMT  
		Size: 7.0 MB (6978986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13360a3b6b77908c816775ed4755460a67517b916982423fdaf73534705942f4`  
		Last Modified: Wed, 15 May 2019 22:19:37 GMT  
		Size: 3.8 MB (3804146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e4b73e2db9556a7f83b91532111d000ed99173e5cf378194ab8e86b00d73c5`  
		Last Modified: Wed, 15 May 2019 22:20:02 GMT  
		Size: 50.5 MB (50514427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888983a707afc0f109a696298a99bcfc613758e5b7227c421d4a7c8904551b72`  
		Last Modified: Wed, 15 May 2019 22:20:51 GMT  
		Size: 147.1 MB (147083529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b19faddde14cd9e163338ca375c95a6cd36c8ff2745db5225994b923eb30fc25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265773228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db6875b685513fac84ef92fbd97b3d9f990a08fd4cb6243ed1c9be06d9df1de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 22:24:08 GMT
ADD file:7251db64bf16163a8f8801c45ea32171190655546fa46cb20e37172c43fcfe50 in / 
# Wed, 15 May 2019 22:24:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:24:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:24:33 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:35:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:35:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 23:37:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:42:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:47d856ee38522608ddbbec64fcc635e92624c734eb165ab510fd13e09e9d3a99`  
		Last Modified: Wed, 15 May 2019 22:29:58 GMT  
		Size: 35.0 MB (34993704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc72309917095b6247024302fd07d6e429f8f7014c1d8eb467792fb9ccff69c`  
		Last Modified: Wed, 15 May 2019 22:29:39 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe697411fbfb783cabd3d8f5dfc10f7f9c85fbb04c9a2e18ef99ec9feb2a6ca5`  
		Last Modified: Wed, 15 May 2019 22:29:39 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d87e0900b76c61efd506f599652025ef7949e3afa82ae902417e945086db5b`  
		Last Modified: Thu, 16 May 2019 00:03:56 GMT  
		Size: 7.7 MB (7741374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d543454b9d024fd7555be9844a024690f3b97f3da0cf8c0510059fec9ab0481`  
		Last Modified: Thu, 16 May 2019 00:03:55 GMT  
		Size: 4.5 MB (4460957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63a5323c65471b41477cdc09c5fbdce5f1da7010966589b8d8f210965883e47`  
		Last Modified: Thu, 16 May 2019 00:04:40 GMT  
		Size: 57.8 MB (57760823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65607ddde35c1f1cd3a3036f4cc5a21352bf0c03576ce05a08dcdc6dfe875e4`  
		Last Modified: Thu, 16 May 2019 00:06:05 GMT  
		Size: 160.8 MB (160815317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:f225b45950d3637961e0fee333dba9546c7f2c4f32ae9be47ff7390254ff0c1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218529488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6233fb5f44f20372ded5e8e5e9a792862ace5b976958a85354df4567d53ba79`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:12 GMT
ADD file:55482d426d6b01f5a30fad09c850530580a4c3f89ba6e461cf280caff2e66c21 in / 
# Wed, 15 May 2019 21:44:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:44:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:17:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:18:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc71e1965cf9eb4e5add3a8c4eb00a886a7509b99535fbd04e5d609055baabd0`  
		Last Modified: Wed, 15 May 2019 21:47:39 GMT  
		Size: 28.3 MB (28313883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fb4d5561e0031d400b2369e45ce416e91f4822620526688556cfb27fddfbd6`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddbf9545181b93ecde9425c765dfb20a94915bd58d2ef564030864927ccc13`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2a6e8de0b78d54597a5bd0c477eb7290ab4307a94b87bbd2f912fb35706b8d`  
		Last Modified: Wed, 15 May 2019 22:33:34 GMT  
		Size: 6.2 MB (6228431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8c19d8d6fa92a7fc9397775b76c75f7946546ab1f5fcdbb9a59ca012e96682`  
		Last Modified: Wed, 15 May 2019 22:33:32 GMT  
		Size: 3.4 MB (3428749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efd7232ad6785a78b7c528cd32acf63c1b7fe1234c918c0e610274af8713ef0`  
		Last Modified: Wed, 15 May 2019 22:33:57 GMT  
		Size: 48.6 MB (48641875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded13b84040baedcea7e881fd9db64f738ecd1341ec5594db95ee15dab117f38`  
		Last Modified: Wed, 15 May 2019 22:34:36 GMT  
		Size: 131.9 MB (131915526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
