## `perl:threaded`

```console
$ docker pull perl@sha256:996ac3c16871d41a67afb58a3c99b29ef6dfef3a6f44a14470c41d3c574e6d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:threaded` - linux; amd64

```console
$ docker pull perl@sha256:bad03bc14a5e7d0f0579bade55cdcfff5e9ae2b717bfd26c836de6cf8cdc4507
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339489291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:737dae74cdbdb81d9b9826d6e78194a79894b2dc0c89756b04d04ae7223eccad`
-	Default Command: `["perl5.30.0","-de0"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:32:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:40:31 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 11 Jun 2019 06:40:32 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 11 Jun 2019 06:40:32 GMT
WORKDIR /usr/src/perl
# Tue, 11 Jun 2019 07:36:24 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.30.0.tar.xz -o perl-5.30.0.tar.xz     && echo 'ac501cad4af904d33370a9ea39dbb7a8ad4cb19bc7bc8a9c17d8dc3e81ef6306 *perl-5.30.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.30.0.tar.xz -C /usr/src/perl     && rm perl-5.30.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 11 Jun 2019 07:36:25 GMT
WORKDIR /root
# Tue, 11 Jun 2019 07:36:25 GMT
CMD ["perl5.30.0" "-de0"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615db220d76c063138a2e6c5849703a7a80d682a682f7e1a841e6e7ed5f43879`  
		Last Modified: Tue, 11 Jun 2019 00:39:20 GMT  
		Size: 215.1 MB (215084021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e20d4e2352b762a77eb8384823ccfc44b975fe4f41b53d35e70cebba370de`  
		Last Modified: Tue, 11 Jun 2019 09:50:58 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c658e7f7b7827417a8e91f58fef38ab48e64bc60a72304ab2217c88b0fed65`  
		Last Modified: Tue, 11 Jun 2019 09:51:25 GMT  
		Size: 13.9 MB (13874547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:829938b7849074a1b270e188db4a202b9c8db7b8f7640e9939754f7bd20f81f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310649472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2a689852d0690980c8468a5bd0d75b4387baf9af34088b7ccea3d45216da7d`
-	Default Command: `["perl5.30.0","-de0"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:09:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:21:38 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 11 Jun 2019 01:21:39 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 11 Jun 2019 01:21:41 GMT
WORKDIR /usr/src/perl
# Tue, 11 Jun 2019 01:51:55 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.30.0.tar.xz -o perl-5.30.0.tar.xz     && echo 'ac501cad4af904d33370a9ea39dbb7a8ad4cb19bc7bc8a9c17d8dc3e81ef6306 *perl-5.30.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.30.0.tar.xz -C /usr/src/perl     && rm perl-5.30.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 11 Jun 2019 01:51:56 GMT
WORKDIR /root
# Tue, 11 Jun 2019 01:51:56 GMT
CMD ["perl5.30.0" "-de0"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a839ba8a519368963fe3d571588fd00f64c1dcd18fd761e52acf61455810033`  
		Last Modified: Tue, 11 Jun 2019 01:17:57 GMT  
		Size: 46.4 MB (46388837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d85c23523be2c3db73d0b3b5b521f0159f8aa50eca80487e3de8c3fc06b276e`  
		Last Modified: Tue, 11 Jun 2019 01:19:05 GMT  
		Size: 195.8 MB (195773701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c12b4248d602b4e6c3244bbec078f7138bb12ad5711b48923098bbc36b3e0`  
		Last Modified: Tue, 11 Jun 2019 03:25:40 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270f6677c37a084bc7583cab2c353a6f7b88d42c013da6b9cb06e1f503b3004a`  
		Last Modified: Tue, 11 Jun 2019 03:26:21 GMT  
		Size: 13.0 MB (13000261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:e33be0598209bece16aed155cdc2b07a6e7c59613f37c583f148010060ab7632
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321155403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94f8731e9e8d4f64db76bd9ff78c9bcce5844cde757b5578050c8f4316dd7fe`
-	Default Command: `["perl5.30.0","-de0"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:22:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 01:22:41 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 19 Jun 2019 01:22:42 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 19 Jun 2019 01:22:43 GMT
WORKDIR /usr/src/perl
# Wed, 19 Jun 2019 01:42:10 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.30.0.tar.xz -o perl-5.30.0.tar.xz     && echo 'ac501cad4af904d33370a9ea39dbb7a8ad4cb19bc7bc8a9c17d8dc3e81ef6306 *perl-5.30.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.30.0.tar.xz -C /usr/src/perl     && rm perl-5.30.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 19 Jun 2019 01:42:11 GMT
WORKDIR /root
# Wed, 19 Jun 2019 01:42:12 GMT
CMD ["perl5.30.0" "-de0"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62257d11a8d1d6b3d34cb19071cd773c444414427778315b21faf5c9c6364cb`  
		Last Modified: Tue, 11 Jun 2019 00:37:09 GMT  
		Size: 48.0 MB (48014844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d377e1ea9d0ab691a994019d976d8507205f9da4765e8ebad978d1a2a81289`  
		Last Modified: Tue, 11 Jun 2019 00:38:12 GMT  
		Size: 202.5 MB (202481936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d426aad3d7a8d9ec34dbb9609a19dbfac9134fd74ed1d8a288171188fa6edd`  
		Last Modified: Wed, 19 Jun 2019 02:18:19 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19da1b169394144e7425571374251845d8383eb9627db5b873beacd6af8d2c4a`  
		Last Modified: Wed, 19 Jun 2019 02:18:45 GMT  
		Size: 13.7 MB (13688016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; 386

```console
$ docker pull perl@sha256:f73dbf5d50fe0488889fdbe78e6490319872889cae68c0fae97ebee5afa331a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.6 MB (346578890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cecf2304dcaec2395561cddde5b1cecc5bf975c55544bbf986c9616356cf44b`
-	Default Command: `["perl5.30.0","-de0"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 05:47:48 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 11 Jun 2019 05:47:49 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 11 Jun 2019 05:47:49 GMT
WORKDIR /usr/src/perl
# Tue, 11 Jun 2019 06:36:06 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.30.0.tar.xz -o perl-5.30.0.tar.xz     && echo 'ac501cad4af904d33370a9ea39dbb7a8ad4cb19bc7bc8a9c17d8dc3e81ef6306 *perl-5.30.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.30.0.tar.xz -C /usr/src/perl     && rm perl-5.30.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 11 Jun 2019 06:36:06 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:36:07 GMT
CMD ["perl5.30.0" "-de0"]
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb43b313681796954e3087507ee6415597662549766f992963c6b40b09374d96`  
		Last Modified: Tue, 11 Jun 2019 03:13:25 GMT  
		Size: 220.2 MB (220163496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4f745b588a2038d164c172e60abf9337ad829bea5a8ebed0db8b6978a54db1`  
		Last Modified: Tue, 11 Jun 2019 08:48:07 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab27407f12bb4b5ead7167d7bdb2f68eaeac8df88a40f0b0fadd9369fbe5403d`  
		Last Modified: Tue, 11 Jun 2019 08:48:46 GMT  
		Size: 13.4 MB (13401021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:a19c2dc0b38388276a89ea456672aeb71db301bb7857a8ea877997e62b76b824
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334443476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c83ea1b02e52aa0477719d9fabd26f0c068a78da58d6bc296d68a44184e201`
-	Default Command: `["perl5.30.0","-de0"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:11:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 05:27:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 11 Jun 2019 05:27:58 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 11 Jun 2019 05:28:00 GMT
WORKDIR /usr/src/perl
# Tue, 11 Jun 2019 05:51:02 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.30.0.tar.xz -o perl-5.30.0.tar.xz     && echo 'ac501cad4af904d33370a9ea39dbb7a8ad4cb19bc7bc8a9c17d8dc3e81ef6306 *perl-5.30.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.30.0.tar.xz -C /usr/src/perl     && rm perl-5.30.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 11 Jun 2019 05:51:04 GMT
WORKDIR /root
# Tue, 11 Jun 2019 05:51:05 GMT
CMD ["perl5.30.0" "-de0"]
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61be309116bf4ca657146ec391080f0c65a9d127ba3867cd1907c50e2a03fce4`  
		Last Modified: Tue, 11 Jun 2019 02:59:15 GMT  
		Size: 210.7 MB (210734913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803e7b64546190d3e4be2816d5e2f4f5c14d61dd8d4e76725f9a6bf7e6022321`  
		Last Modified: Tue, 11 Jun 2019 07:04:01 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1630699604b96565818fea6b4d3d8ecd58975bceeb1d2989594c5747c4bbc3c7`  
		Last Modified: Tue, 11 Jun 2019 07:04:58 GMT  
		Size: 13.7 MB (13745027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; s390x

```console
$ docker pull perl@sha256:a8efa6757a30574fb69b154206845192bc91311b3a360a497b832ef03264befc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331800058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640fa99a42141f7f3503c65b589d403f38434db4af9d0b8b79784f825e30bb02`
-	Default Command: `["perl5.30.0","-de0"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:47:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:12:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 11 Jun 2019 03:12:20 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 11 Jun 2019 03:12:20 GMT
WORKDIR /usr/src/perl
# Tue, 11 Jun 2019 03:25:57 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.30.0.tar.xz -o perl-5.30.0.tar.xz     && echo 'ac501cad4af904d33370a9ea39dbb7a8ad4cb19bc7bc8a9c17d8dc3e81ef6306 *perl-5.30.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.30.0.tar.xz -C /usr/src/perl     && rm perl-5.30.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 11 Jun 2019 03:25:57 GMT
WORKDIR /root
# Tue, 11 Jun 2019 03:25:57 GMT
CMD ["perl5.30.0" "-de0"]
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291770e012d4a1b08934d71ed363e66862915f1baab2787d609dddd23422fc6e`  
		Last Modified: Tue, 11 Jun 2019 01:51:13 GMT  
		Size: 207.1 MB (207130967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cc54bf527eed283a8e7fb8184ba20167723b88ca54f4d3c5494af2c2f30e26`  
		Last Modified: Tue, 11 Jun 2019 03:51:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc235ed13591b3fbe7b363aa41aedf6493c7abe87d602c5b5a992b127329b6c9`  
		Last Modified: Tue, 11 Jun 2019 03:51:41 GMT  
		Size: 14.3 MB (14295687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
