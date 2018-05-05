## `buildpack-deps:bionic`

```console
$ docker pull buildpack-deps@sha256:ebf58083fbfa7b7869aba60f17dda3a36814b73dc5592a1fb2d599996207811d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7ce2b14be4faa01f34af67545c9cc87ecdc3d0432190b8fcb7db34d6940d1fe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219317565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ba25303cb1cd8f5d63b8d1ea333664b3f02a5617983ac170c95cca074bdd83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:28:32 GMT
ADD file:81813d6023adb66b80fe163bc7db464004673838d17195b9d84aade4f8961b71 in / 
# Fri, 27 Apr 2018 23:28:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:28:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:28:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:28:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:28:36 GMT
CMD ["/bin/bash"]
# Fri, 04 May 2018 17:21:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:21:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 17:22:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:25:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a48c500ed24e62926cb079df35f964c57d8bb08159b1d29c6a3b0a58dc365dc1`  
		Last Modified: Fri, 27 Apr 2018 22:14:33 GMT  
		Size: 31.0 MB (30957448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1de00ff7e1fea0858b6a4b5ca208eeca970607ea9a6eb5fc972494e7a0cdde`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0330ca45a200e1fcef05ae97f434366d262a1c50b3dc053e7928b58dd37211dd`  
		Last Modified: Fri, 27 Apr 2018 23:32:05 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471db38bcfbf0f5bac78012b9d458dfd37309d5cbb99d4e95310321a60a0cfdf`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4aba487617ca27519745ae722b8ea1917474c495b91b3c4887728a3f2ee7db`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddc5e57918f988f18fa00e4d366d1797cac4fab2c8f3aa459765ccb94264b86`  
		Last Modified: Fri, 04 May 2018 18:12:34 GMT  
		Size: 5.8 MB (5823272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0d281c72dce0b3c822818df9ac97304ffba5286dbed46d9f497d46856cab50`  
		Last Modified: Fri, 04 May 2018 18:12:34 GMT  
		Size: 3.0 MB (2956243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d34acfd527072e566dc6bb82c62698849a171f65683dca94fe37e95ffa27676`  
		Last Modified: Fri, 04 May 2018 18:13:03 GMT  
		Size: 48.0 MB (48039264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280c41ed82ad1e9d46f6bdf4ab8d1e38e36652ae23fcb6c18f556387e5655bea`  
		Last Modified: Fri, 04 May 2018 18:13:51 GMT  
		Size: 131.5 MB (131539074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:83b9d14531c0d2473044b46661c1b4d38a2f068bf13702aea128f919006a1534
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189897949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0fd5b024bfe533cb3bd7ed12048c684cca62970d23fac084f3d5509ccd285e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 12:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:00:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:02:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dff6b65ceed9e01ac2520786e02e434b6f46e8cdd82c842bbe183c4b0a94519`  
		Last Modified: Sat, 05 May 2018 12:27:38 GMT  
		Size: 4.9 MB (4919091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a860e2e0dce7cd6e64811020f0834b3addce748bdbd085854cbfdca375dd94a3`  
		Last Modified: Sat, 05 May 2018 12:27:38 GMT  
		Size: 2.5 MB (2520256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bca3c3f44efe78efa16ea5c5451c03b0fb492d90071c595441628dea3748f1`  
		Last Modified: Sat, 05 May 2018 12:28:14 GMT  
		Size: 43.3 MB (43272205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1460de5c18de68928fc122aecd0b5757f30df943bbfa0c5f1e8d242b37bc274a`  
		Last Modified: Sat, 05 May 2018 12:29:07 GMT  
		Size: 112.7 MB (112697069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9b5b3c26f25cc7f63cbce11d04a3a616e9d4554a85b2b10972eded12b5cb1934
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203772485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7862c0093c1df138a3e25acfd167a7dac250ad9bc8917101af0f3090034e00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 01 May 2018 01:10:30 GMT
ADD file:2738a1f35ded405c55bf8578757cc7a8a559fecd00a693b443369262b6dd3127 in / 
# Tue, 01 May 2018 01:10:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:10:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:11:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:11:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:11:09 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 08:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:52:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:53:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:01:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b73461db237fc125ed4bbd267b3cd588b6d3957c33cf7fc1d7f9aaf6dcd23fd`  
		Last Modified: Fri, 27 Apr 2018 22:48:27 GMT  
		Size: 27.9 MB (27906574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c642ceb6d4dae80623e35056b3672b999504c5a0cb5dfdd4017f3ff74c6613d8`  
		Last Modified: Tue, 01 May 2018 01:14:58 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b10168e4f59716c9bf42ae4d202df59f2177923f5e0c6a10228be5c719a2e`  
		Last Modified: Tue, 01 May 2018 01:15:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0393063bd61dd94962711e03eb55999a0f821b5939d53509bd5aaf041018dfd`  
		Last Modified: Tue, 01 May 2018 01:14:58 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da53af2791e4570af9528b9ac2c4487a67026625b4de48184810193f3aa76f`  
		Last Modified: Tue, 01 May 2018 01:14:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af860d0aca3d48e0cde1acf968aa318e41d87624b528e74ebf9e4362248659b`  
		Last Modified: Sat, 05 May 2018 10:17:09 GMT  
		Size: 5.3 MB (5285106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d06b4e56ed9fa6fb5bfb5af0f7d302eb52922d5361523385d2b88be4bffc1a`  
		Last Modified: Sat, 05 May 2018 10:17:07 GMT  
		Size: 2.7 MB (2717381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059edc795473372c5954b3091a874ee8d3c1ab050fdab48a3e5496130f380ec`  
		Last Modified: Sat, 05 May 2018 10:18:13 GMT  
		Size: 45.9 MB (45909514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2be90cd4e66f557110d4e794cf9b65ef0af1fd1a21fb9bd48cf4dcdf048a30d`  
		Last Modified: Sat, 05 May 2018 10:20:09 GMT  
		Size: 122.0 MB (121951637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5bbec526b71b738acf83a91a1b043877b4859314d8aeda4f98dabf37ded0e0d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223531381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8918c2af296c30140509d27c6f9e3ab24b30404717c287c641595257cba61f82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:17:51 GMT
ADD file:705b98193a254b56c6c3cdf55a3d95968938a567420d2c793fb2712550fcf1f9 in / 
# Sat, 28 Apr 2018 11:17:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:17:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:17:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:17:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:17:54 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 10:47:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:47:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 10:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:51:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7762c5f33a1862a5e90424e5ebf015f0e8e61f7a22381727f6154c0a95f4d236`  
		Last Modified: Sat, 28 Apr 2018 11:19:09 GMT  
		Size: 31.4 MB (31364535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1b4b8779c4e9bc2de5762cf1e0999345a7702a0f8628e8723a2dba8d35a461`  
		Last Modified: Sat, 28 Apr 2018 11:19:03 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8704c5b1dd806648129ec4397a0a9eaf5ad294d5b1e5f1a85770e0ea6439a30e`  
		Last Modified: Sat, 28 Apr 2018 11:19:02 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316360b7b9ad8019d535c7e3e4c386499654961760addaa509fafcc58e3d0d41`  
		Last Modified: Sat, 28 Apr 2018 11:19:03 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0905b9d232d2b672df8b2317950fb9b0e6bd9f8c679d877247a085388b268018`  
		Last Modified: Sat, 28 Apr 2018 11:19:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497dcd3bf4c67e5b0d2a4dfd73cf81e611c13f1a0eb3eec666db83d4a05011ee`  
		Last Modified: Sat, 05 May 2018 11:30:06 GMT  
		Size: 6.1 MB (6099095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecc1d1f861702ae32836b49569c8d9079e79e58f52e3f6a5305e77fa9659634`  
		Last Modified: Sat, 05 May 2018 11:30:06 GMT  
		Size: 3.2 MB (3186686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62580bbf01205bc3cd57d198593928686f62802821608feb45a2006acfa1932a`  
		Last Modified: Sat, 05 May 2018 11:30:38 GMT  
		Size: 49.6 MB (49623289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90b52a2b83aaa87fbe34534173b5ce12437bee4326d0ee45479ec4de12e0bd1`  
		Last Modified: Sat, 05 May 2018 11:31:49 GMT  
		Size: 133.3 MB (133255505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:87e47216835fee38b229bdc578b744b6728cf149b6e542d3954b660612170e29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240403150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c6e7d04ffd0f54e4a349be58f4212e220662d5b139597f11416eb1bd3bca9a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:34:39 GMT
ADD file:cd32b0f79a6c6b793b0f5aacac1a9efbdb040dea18815b163aa1cb94091224d5 in / 
# Sat, 28 Apr 2018 08:34:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:34:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:34:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:34:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:34:51 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 08:27:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:27:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:29:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:34:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a53346b88292c85919f7b9ee6314cef8ec60edfabd9e3451d4c2a52eda9db142`  
		Last Modified: Sat, 28 Apr 2018 08:36:48 GMT  
		Size: 34.5 MB (34547337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7bd1b94e7e8e329981ae905d68a56d8971691f0d348a874205a6e67af892b5`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555692d414accf22ff9bfbff253879a4805e9c5a23db62d22c2c0485c8e8e76d`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6732c378bccae9cc47cf95139d14cea776fabf9edfcdaa26e67c33f22690772c`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370ca1c0154585a3d692a17ab51e04cc17c4e67d5ab259b6065079615a9eda78`  
		Last Modified: Sat, 28 Apr 2018 08:36:39 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6253922dea3e23aaf9a27304e285eb8d13688d56144de69e6abcd44f5d87bf`  
		Last Modified: Sat, 05 May 2018 10:34:32 GMT  
		Size: 6.0 MB (6013421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671bee7b3aa5a09c56bc14ed9fd6958e67e8549a1820e095947307a5a5ada8a8`  
		Last Modified: Sat, 05 May 2018 10:34:31 GMT  
		Size: 3.7 MB (3654968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df9372b67f0e6b51e6eaeb62deee4844c0aacce276aad4dc0fbe23e17da195d`  
		Last Modified: Sat, 05 May 2018 10:35:21 GMT  
		Size: 56.3 MB (56296146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2126a98863479fc5577ab4558dfdd5d5fcbee1810a9ce5b34ffd3f3e6c33d4b`  
		Last Modified: Sat, 05 May 2018 10:36:38 GMT  
		Size: 139.9 MB (139888982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:722eabe6cb66f7a1de4ee6f41204127b7f3d169e9e945dc86f38225c0f04ed46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.1 MB (205143310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66375c862a3804fbe92a14dd911c434c05fb32ad3deb01d62bdf64232d40748a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:54:42 GMT
ADD file:4f6dca59b25a5a6caceaa6835f6c0a0885403c8df01a47efcfb4ed49ebeec86a in / 
# Sat, 28 Apr 2018 11:54:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:54:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:54:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:54:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:54:45 GMT
CMD ["/bin/bash"]
# Sat, 05 May 2018 12:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:25:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:25:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:26:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:186c76a814d4261fa85311c151a332dc0a41691ef827d9b3459a3fd514c46c16`  
		Last Modified: Sat, 28 Apr 2018 11:55:51 GMT  
		Size: 29.5 MB (29523178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f8387d2972a2ad3afa30d169b71dbee33e0a868c808914c5fede67073ae1df`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614f830b61318a2f78041221cc552dcfb1775b9589f4991ee0166e04b30cc414`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8a9cce180fa5e9829b101ae05202245673d0fcb5c80c107bce31545727b471`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a1a11edf8755adf02a2599751bb2f70fda664d9375f0bc1669921d5d67c2e1`  
		Last Modified: Sat, 28 Apr 2018 11:55:45 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac483063d2be6e5abb7f7fb0e50e5e90a71a0305c01691acda9df75ffe2aba2`  
		Last Modified: Sat, 05 May 2018 12:42:43 GMT  
		Size: 5.5 MB (5509713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e733a28d34a3685736863d08041a204ee7bf93ebbab248617011cef5e378a0`  
		Last Modified: Sat, 05 May 2018 12:42:42 GMT  
		Size: 2.9 MB (2910109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e47c19b6a3cfd940f186334bac781fe8de4c13604b30ad98368070bcf02d19`  
		Last Modified: Sat, 05 May 2018 12:43:08 GMT  
		Size: 47.6 MB (47584961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4616964747364dd5263005985094a425be4a9443a800114cc78ee2112cfc3c30`  
		Last Modified: Sat, 05 May 2018 12:43:45 GMT  
		Size: 119.6 MB (119613085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
