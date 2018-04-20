<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `perl`

-	[`perl:5`](#perl5)
-	[`perl:5.22`](#perl522)
-	[`perl:5.22.4`](#perl5224)
-	[`perl:5.22.4-threaded`](#perl5224-threaded)
-	[`perl:5.22-threaded`](#perl522-threaded)
-	[`perl:5.24`](#perl524)
-	[`perl:5.24.4`](#perl5244)
-	[`perl:5.24.4-threaded`](#perl5244-threaded)
-	[`perl:5.24-threaded`](#perl524-threaded)
-	[`perl:5.26`](#perl526)
-	[`perl:5.26.2`](#perl5262)
-	[`perl:5.26.2-threaded`](#perl5262-threaded)
-	[`perl:5.26-threaded`](#perl526-threaded)
-	[`perl:5-threaded`](#perl5-threaded)
-	[`perl:latest`](#perllatest)
-	[`perl:threaded`](#perlthreaded)

## `perl:5`

```console
$ docker pull perl@sha256:7934bf552757565c4aa3cff1482bf23e27afeedf6d6bde525aecebb87abd62a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5` - linux; amd64

```console
$ docker pull perl@sha256:d774319a2772b11fb599a829fc785716be45876dd45001712779a57abfb740c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336883441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93fb4d472a367296f89c833bafaeb31bb9bd6aab6d6cdb39d2936845c736b6d`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:00:19 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:00:19 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:00:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db42308a28be08e0bac0c9a918123de0709794f7bb9c25bf1b283fa7856f11bc`  
		Last Modified: Fri, 20 Apr 2018 10:40:09 GMT  
		Size: 13.1 MB (13124506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; arm variant v7

```console
$ docker pull perl@sha256:b443383fc872815e6e0481febac1f2488d7fe6ccf5f2b71dfd16355d8bbda2cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308193164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e847127793f77e3b617c203f2acdddba2e55a1712e17695066bfecd5a14f8304`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:10:29 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:10:30 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:10:30 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8737a5259b4a5190a56f06558b7d5c2ef13095ff43dd33786232cec6144ddfec`  
		Last Modified: Fri, 20 Apr 2018 12:44:52 GMT  
		Size: 12.3 MB (12299184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:4f68c2a535b6916db10fbfbad724ff2add36de23054a8c9ce5176280dee93c92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318583000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae4308c997517219cce86f5947db5bb4f671207502f2a2a9a9f1e1850aa2a45`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:47:23 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:47:28 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:47:29 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a04a6ab2f5af0bb816be6144b51dfaea73adaf02494eb435e6da5568ec862`  
		Last Modified: Fri, 20 Apr 2018 10:45:21 GMT  
		Size: 13.0 MB (12971105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; 386

```console
$ docker pull perl@sha256:1d04c5a94889b3d504af1515db0b86ad1034f8c352eb32b3b59c4fbb6b1b4d44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343923221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa994e32747dbc71183d3c2fc75eabcc3c1062af21431e11c6e84ffb82cf9cb`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:40:13 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:40:14 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:40:14 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91aea46107864bbb95f292f7996f00772f72416a217849ac0268ddf5c29470f`  
		Last Modified: Fri, 20 Apr 2018 12:13:14 GMT  
		Size: 12.6 MB (12608160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; ppc64le

```console
$ docker pull perl@sha256:985224e6ccf5e50a8df9df35a4842005a690896aff96dbfb920e23de94a829fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331835543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a50a94e2f30426afefba9a09adfd2a1224ac457f997674fc6ae0539268b106`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 08:53:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 08:53:23 GMT
WORKDIR /root
# Fri, 20 Apr 2018 08:53:24 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c99d0059b9166c2e9d2a135668735b9c30aa781b8a9f16aa3fcaf457f0c05d`  
		Last Modified: Fri, 20 Apr 2018 09:22:23 GMT  
		Size: 13.0 MB (12997038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; s390x

```console
$ docker pull perl@sha256:790265be2cfa7ffa4657baa3abb4926d59e7892cf674fc8518c5511d3cdb727a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329166360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6386ad9399941f050f6f938af243afd537317c397e2f8b0b0472be978739e41`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:01:31 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:01:31 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:01:31 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba232a0dac4d9aa63efbe2780e11250d650f2c2b894742e2aff3275de5684b0`  
		Last Modified: Fri, 20 Apr 2018 12:27:52 GMT  
		Size: 13.5 MB (13535537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22`

```console
$ docker pull perl@sha256:f1edfc1699b027449e0ab9c572571ec108fb153b28ec32ae1f289c97d16cfac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.22` - linux; amd64

```console
$ docker pull perl@sha256:bfac4bc032fcc1c2699ad8b374b8502d0c5df53f80c23d25644618aa725ad211
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336318033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5954d8b14dfe518579f7369f406ef7d4332e2f76877d64db6bac3a58007a1661`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:33:20 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:33:20 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:33:21 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dbd3bf99d4321c001dcf7e5729ee0135334594f52d2ff539b16b07ad0d7294`  
		Last Modified: Fri, 20 Apr 2018 11:03:47 GMT  
		Size: 12.6 MB (12557514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22` - linux; arm variant v7

```console
$ docker pull perl@sha256:673e4441af99aa53b3e31135fda3f29d4879e0793a23b2e551a8f2cac5b491ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307632080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ad24472468e12d03d661ea6cd0438dad88bc1fdf53937d2bae1d64f0bb7d1a`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Wed, 28 Mar 2018 22:11:49 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 28 Mar 2018 22:11:49 GMT
WORKDIR /root
# Wed, 28 Mar 2018 22:11:49 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8e07833ec4d177ab4d4a76ee59d0292529a4b2d21e1a3cd6da26a68ca70de5`  
		Last Modified: Wed, 28 Mar 2018 22:19:40 GMT  
		Size: 11.7 MB (11736508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:af5a92604f0b2d6e5b3eccc8ceb07448c501f05336dc79d6c1f7c7717b15d212
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318015902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93cc204a21ced3666d56a5039584a4106f2e4ef170c0fc516b9de245bb16507`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:34:50 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:35:07 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:35:08 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae772bcdaa7d9c167ea25e472d372e1d67ab579e2833cff6c3e9450dce8afef`  
		Last Modified: Fri, 20 Apr 2018 10:50:33 GMT  
		Size: 12.4 MB (12402420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22` - linux; 386

```console
$ docker pull perl@sha256:4946bc165bbc78f747be30a75f443c8edfd236bc50c40f8d5cfca85951ce9f4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.4 MB (343359477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dec1ec1647f51a5388425fa46f66e1f15cc34358f0e41b4089fc0b0e251a0fe`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:06:36 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:06:37 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:06:37 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603c7f2235599e41874b21b8e641ac66480285d899316e6bfb45f3b8ffdd608e`  
		Last Modified: Fri, 20 Apr 2018 12:14:24 GMT  
		Size: 12.0 MB (12042833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22` - linux; ppc64le

```console
$ docker pull perl@sha256:15d87f28a0cdde88501d953ecc7d41c28a35ec98e9d61de6f5a3ab05c93c16bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331280019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62c9c8467ea3e2c6c2a6bac8849a51aec98f5581f76362c7efdd0433e177d92`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:16:24 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:16:26 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:16:27 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1318c1971fdb00f31ac363b677f9a92789818815626748266ec16543edaa0`  
		Last Modified: Fri, 20 Apr 2018 09:24:03 GMT  
		Size: 12.4 MB (12439924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22` - linux; s390x

```console
$ docker pull perl@sha256:472b323a1fc2da6f0e253118922632f61357734ba3cec3f8cc155134579b8f4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.6 MB (328577495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49dd093daa1d1e24a1a02eeb65268c26e5bc8a8a6ac868c32ea108178774fb22`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:21:55 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:21:59 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:21:59 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca2e5e0bc488994c8159d765edf4c3a8bcc0b9a46b12116bb5fdac4aeaf7c1`  
		Last Modified: Fri, 20 Apr 2018 12:29:27 GMT  
		Size: 12.9 MB (12945088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.4`

```console
$ docker pull perl@sha256:f1edfc1699b027449e0ab9c572571ec108fb153b28ec32ae1f289c97d16cfac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.22.4` - linux; amd64

```console
$ docker pull perl@sha256:bfac4bc032fcc1c2699ad8b374b8502d0c5df53f80c23d25644618aa725ad211
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336318033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5954d8b14dfe518579f7369f406ef7d4332e2f76877d64db6bac3a58007a1661`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:33:20 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:33:20 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:33:21 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dbd3bf99d4321c001dcf7e5729ee0135334594f52d2ff539b16b07ad0d7294`  
		Last Modified: Fri, 20 Apr 2018 11:03:47 GMT  
		Size: 12.6 MB (12557514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4` - linux; arm variant v7

```console
$ docker pull perl@sha256:673e4441af99aa53b3e31135fda3f29d4879e0793a23b2e551a8f2cac5b491ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307632080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ad24472468e12d03d661ea6cd0438dad88bc1fdf53937d2bae1d64f0bb7d1a`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Wed, 28 Mar 2018 22:11:49 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 28 Mar 2018 22:11:49 GMT
WORKDIR /root
# Wed, 28 Mar 2018 22:11:49 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8e07833ec4d177ab4d4a76ee59d0292529a4b2d21e1a3cd6da26a68ca70de5`  
		Last Modified: Wed, 28 Mar 2018 22:19:40 GMT  
		Size: 11.7 MB (11736508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:af5a92604f0b2d6e5b3eccc8ceb07448c501f05336dc79d6c1f7c7717b15d212
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318015902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93cc204a21ced3666d56a5039584a4106f2e4ef170c0fc516b9de245bb16507`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:34:50 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:35:07 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:35:08 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae772bcdaa7d9c167ea25e472d372e1d67ab579e2833cff6c3e9450dce8afef`  
		Last Modified: Fri, 20 Apr 2018 10:50:33 GMT  
		Size: 12.4 MB (12402420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4` - linux; 386

```console
$ docker pull perl@sha256:4946bc165bbc78f747be30a75f443c8edfd236bc50c40f8d5cfca85951ce9f4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.4 MB (343359477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dec1ec1647f51a5388425fa46f66e1f15cc34358f0e41b4089fc0b0e251a0fe`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:06:36 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:06:37 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:06:37 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603c7f2235599e41874b21b8e641ac66480285d899316e6bfb45f3b8ffdd608e`  
		Last Modified: Fri, 20 Apr 2018 12:14:24 GMT  
		Size: 12.0 MB (12042833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4` - linux; ppc64le

```console
$ docker pull perl@sha256:15d87f28a0cdde88501d953ecc7d41c28a35ec98e9d61de6f5a3ab05c93c16bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331280019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62c9c8467ea3e2c6c2a6bac8849a51aec98f5581f76362c7efdd0433e177d92`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:16:24 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:16:26 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:16:27 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1318c1971fdb00f31ac363b677f9a92789818815626748266ec16543edaa0`  
		Last Modified: Fri, 20 Apr 2018 09:24:03 GMT  
		Size: 12.4 MB (12439924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4` - linux; s390x

```console
$ docker pull perl@sha256:472b323a1fc2da6f0e253118922632f61357734ba3cec3f8cc155134579b8f4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.6 MB (328577495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49dd093daa1d1e24a1a02eeb65268c26e5bc8a8a6ac868c32ea108178774fb22`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:21:55 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:21:59 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:21:59 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca2e5e0bc488994c8159d765edf4c3a8bcc0b9a46b12116bb5fdac4aeaf7c1`  
		Last Modified: Fri, 20 Apr 2018 12:29:27 GMT  
		Size: 12.9 MB (12945088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.4-threaded`

```console
$ docker pull perl@sha256:0ded44a23b6724087f725a8de2428d1d4c930ecdd7e34a83467239d877d361d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.22.4-threaded` - linux; amd64

```console
$ docker pull perl@sha256:4843fcd1aad4006f559a7ce404529ca22fb701b6e973f7bdae69b7b750964057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336356344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80620d1998917bcdfce01861fcc04c9a3079803eb934aab8a17fe04795fe7ffe`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:39:29 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:39:30 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:39:30 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a23a7f2272ec05a2725f54f420c69f5eea9044fd0071f125041d238811e515`  
		Last Modified: Fri, 20 Apr 2018 11:04:37 GMT  
		Size: 12.6 MB (12595825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:54fcd0c560594f3110718229e97bb4aa8bdae176529cd0d1f7384fef2d47eaec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307643972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48d73d683f0bcc38c5070d4e66ead2baac462b6e4fced091dbdadbf712bcb63`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Wed, 28 Mar 2018 22:17:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 28 Mar 2018 22:17:45 GMT
WORKDIR /root
# Wed, 28 Mar 2018 22:17:45 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c994f738e8f297239f0e6a8837ee95a8e2392fe1b088d2accad6b589579d528c`  
		Last Modified: Wed, 28 Mar 2018 22:19:53 GMT  
		Size: 11.7 MB (11748400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:1aa7f9bf28be5ca2882a1e3f92b17a685d5a997b6d50eb78d041b1316d66974e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318041663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8d51a198cedb8f34588ce2d8ac1a18963ea0026c1a41b3db20063f5b9df7ca`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:44:34 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:44:35 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:44:36 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b444f4843f1b0ac1e948052de985ffc2b7cb5e8e621b5931ed13816b4f3946c`  
		Last Modified: Fri, 20 Apr 2018 10:51:27 GMT  
		Size: 12.4 MB (12428181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4-threaded` - linux; 386

```console
$ docker pull perl@sha256:5438838be75d9241b355fb787f1a7cfe092e67702dd2f2d7d9009bdd54cecbe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.4 MB (343445417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8697226bf128d5b6c4295812ae3b1306967c09f73d4f605a66e3a5e4e8f97754`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:12:56 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:12:56 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:12:56 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9931b321e09795bbd86599afbda1253d38a4df40dfde764924107d4e91dda9d`  
		Last Modified: Fri, 20 Apr 2018 12:14:39 GMT  
		Size: 12.1 MB (12128773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:1f54ae64480be60ff95461fdb586328f405213ceda6bb5bc4d15f23f6704788c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331335285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc6b715bd1c9b52baf978cac0c6889024d41594ee9cfae92a6c5444dd070986`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:21:50 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:21:52 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:21:52 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c37c9b370e7bae672982d919710d4a421d8ebfcd18accf30e27b0f37c4c09d7`  
		Last Modified: Fri, 20 Apr 2018 09:24:21 GMT  
		Size: 12.5 MB (12495190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4-threaded` - linux; s390x

```console
$ docker pull perl@sha256:dabb1dbe1d87a951d5becd3ad139307ddd166784de5d3f89e603d810a49eab0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.6 MB (328579831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a358250129c34d2682d7b8ff5b3c331b55fcb6085764014963e1f6b44b6b36de`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:27:08 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:27:12 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:27:12 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88408493b7659f5830ef156f24b7caf83aea4e0d1c56ad12fe2e24d03b5333e`  
		Last Modified: Fri, 20 Apr 2018 12:29:45 GMT  
		Size: 12.9 MB (12947424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22-threaded`

```console
$ docker pull perl@sha256:0ded44a23b6724087f725a8de2428d1d4c930ecdd7e34a83467239d877d361d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.22-threaded` - linux; amd64

```console
$ docker pull perl@sha256:4843fcd1aad4006f559a7ce404529ca22fb701b6e973f7bdae69b7b750964057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336356344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80620d1998917bcdfce01861fcc04c9a3079803eb934aab8a17fe04795fe7ffe`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:39:29 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:39:30 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:39:30 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a23a7f2272ec05a2725f54f420c69f5eea9044fd0071f125041d238811e515`  
		Last Modified: Fri, 20 Apr 2018 11:04:37 GMT  
		Size: 12.6 MB (12595825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:54fcd0c560594f3110718229e97bb4aa8bdae176529cd0d1f7384fef2d47eaec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307643972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48d73d683f0bcc38c5070d4e66ead2baac462b6e4fced091dbdadbf712bcb63`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Wed, 28 Mar 2018 22:17:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 28 Mar 2018 22:17:45 GMT
WORKDIR /root
# Wed, 28 Mar 2018 22:17:45 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c994f738e8f297239f0e6a8837ee95a8e2392fe1b088d2accad6b589579d528c`  
		Last Modified: Wed, 28 Mar 2018 22:19:53 GMT  
		Size: 11.7 MB (11748400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:1aa7f9bf28be5ca2882a1e3f92b17a685d5a997b6d50eb78d041b1316d66974e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318041663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8d51a198cedb8f34588ce2d8ac1a18963ea0026c1a41b3db20063f5b9df7ca`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:44:34 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:44:35 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:44:36 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b444f4843f1b0ac1e948052de985ffc2b7cb5e8e621b5931ed13816b4f3946c`  
		Last Modified: Fri, 20 Apr 2018 10:51:27 GMT  
		Size: 12.4 MB (12428181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22-threaded` - linux; 386

```console
$ docker pull perl@sha256:5438838be75d9241b355fb787f1a7cfe092e67702dd2f2d7d9009bdd54cecbe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.4 MB (343445417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8697226bf128d5b6c4295812ae3b1306967c09f73d4f605a66e3a5e4e8f97754`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:12:56 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:12:56 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:12:56 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9931b321e09795bbd86599afbda1253d38a4df40dfde764924107d4e91dda9d`  
		Last Modified: Fri, 20 Apr 2018 12:14:39 GMT  
		Size: 12.1 MB (12128773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:1f54ae64480be60ff95461fdb586328f405213ceda6bb5bc4d15f23f6704788c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331335285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc6b715bd1c9b52baf978cac0c6889024d41594ee9cfae92a6c5444dd070986`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:21:50 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:21:52 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:21:52 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c37c9b370e7bae672982d919710d4a421d8ebfcd18accf30e27b0f37c4c09d7`  
		Last Modified: Fri, 20 Apr 2018 09:24:21 GMT  
		Size: 12.5 MB (12495190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22-threaded` - linux; s390x

```console
$ docker pull perl@sha256:dabb1dbe1d87a951d5becd3ad139307ddd166784de5d3f89e603d810a49eab0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.6 MB (328579831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a358250129c34d2682d7b8ff5b3c331b55fcb6085764014963e1f6b44b6b36de`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:27:08 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:27:12 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:27:12 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88408493b7659f5830ef156f24b7caf83aea4e0d1c56ad12fe2e24d03b5333e`  
		Last Modified: Fri, 20 Apr 2018 12:29:45 GMT  
		Size: 12.9 MB (12947424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24`

```console
$ docker pull perl@sha256:96919b1eeefb25f4705e7c9842e0a35a9ad47caafddc5264f5c71e2ff2e6d8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24` - linux; amd64

```console
$ docker pull perl@sha256:238c33ab3a75c1a59f42a086dd67e28ae3d11d8d35f24853d100f432d0e2c479
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336550688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38b9d1ca8f16ccdbd0b2807fbafb34cce52f3332cf979ea14ba45474562782f`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:21:36 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:21:36 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:21:36 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105e7931ccb3d548be6ff7280df39d2d5830e7971c697e6bf1f80377c6a2eb4d`  
		Last Modified: Fri, 20 Apr 2018 11:00:33 GMT  
		Size: 12.8 MB (12790169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; arm variant v7

```console
$ docker pull perl@sha256:634ef77fe9268e1355781f4479b78db9f0685a076b3d9019d48fd5f7d4331649
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307847441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1180c9da8fc3639d812a67a84adc39b566e95fa362c1c69da7ab8cdae21f0bd2`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:25:14 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:25:15 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:25:15 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313249b8b9c1271e74c148b99dc11f0fd2d839c37ef3ab809dca97519d5d4a7`  
		Last Modified: Fri, 20 Apr 2018 12:45:58 GMT  
		Size: 12.0 MB (11951869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:ba229531598480eb33bb4f04b1e20c110fbfead7d5d650fcf4fec3f15fe1d3f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.2 MB (318249329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4764a8a35d9aa5b77e7892ac6d7f52742816e21c3db55568ba0c4b5e881b512e`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:12:59 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:13:02 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:13:02 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ecd218445a55c0b1a362e32ec0f3ce48615fe63036ecca1a4251d2db8fecee`  
		Last Modified: Fri, 20 Apr 2018 10:48:43 GMT  
		Size: 12.6 MB (12635847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; 386

```console
$ docker pull perl@sha256:4dc37015a5d1b5d6b16d689a1d91d7c06f3afc7d571e3e5ac8c7f01c116a1f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343573956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c58a0001f5b633590efa81e6eaddd123ea5020351e3b3ca4c8f865d16d758b8`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:54:20 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:54:20 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:54:20 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57643aff4d70e846b88b5b96947d0f39b7e24a8c02246671fb80a8b4d48961dc`  
		Last Modified: Fri, 20 Apr 2018 12:13:55 GMT  
		Size: 12.3 MB (12257312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; ppc64le

```console
$ docker pull perl@sha256:8806f20681f38ca4cec1331ca9ea98554aae8672563d4a1b8abfcde07e2e0710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331499368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b9da0e4b1fd6e5a273220e614953886eea5ac55b8914d99899add7d0dc0418`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:05:28 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:05:30 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:05:31 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf359cbd2e47910092f6d6fc35b02ab871926b7e19392fa31028c1413fcc102`  
		Last Modified: Fri, 20 Apr 2018 09:23:24 GMT  
		Size: 12.7 MB (12659273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; s390x

```console
$ docker pull perl@sha256:044ff2603df8e396060a676f54200e6b961a79daa69250ddb018966eeb331a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328816924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ff8678c0de2a4e681ab44ead1365329ae65042b66fb1820fbc02cbfeea75be`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:12:12 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:12:12 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:12:12 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adce72d82cf321ad9b151cf237d60ac731bc1bc3437a465f7167064f4faae9f3`  
		Last Modified: Fri, 20 Apr 2018 12:28:52 GMT  
		Size: 13.2 MB (13184517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.4`

```console
$ docker pull perl@sha256:96919b1eeefb25f4705e7c9842e0a35a9ad47caafddc5264f5c71e2ff2e6d8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24.4` - linux; amd64

```console
$ docker pull perl@sha256:238c33ab3a75c1a59f42a086dd67e28ae3d11d8d35f24853d100f432d0e2c479
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336550688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38b9d1ca8f16ccdbd0b2807fbafb34cce52f3332cf979ea14ba45474562782f`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:21:36 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:21:36 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:21:36 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105e7931ccb3d548be6ff7280df39d2d5830e7971c697e6bf1f80377c6a2eb4d`  
		Last Modified: Fri, 20 Apr 2018 11:00:33 GMT  
		Size: 12.8 MB (12790169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; arm variant v7

```console
$ docker pull perl@sha256:634ef77fe9268e1355781f4479b78db9f0685a076b3d9019d48fd5f7d4331649
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307847441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1180c9da8fc3639d812a67a84adc39b566e95fa362c1c69da7ab8cdae21f0bd2`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:25:14 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:25:15 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:25:15 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313249b8b9c1271e74c148b99dc11f0fd2d839c37ef3ab809dca97519d5d4a7`  
		Last Modified: Fri, 20 Apr 2018 12:45:58 GMT  
		Size: 12.0 MB (11951869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:ba229531598480eb33bb4f04b1e20c110fbfead7d5d650fcf4fec3f15fe1d3f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.2 MB (318249329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4764a8a35d9aa5b77e7892ac6d7f52742816e21c3db55568ba0c4b5e881b512e`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:12:59 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:13:02 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:13:02 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ecd218445a55c0b1a362e32ec0f3ce48615fe63036ecca1a4251d2db8fecee`  
		Last Modified: Fri, 20 Apr 2018 10:48:43 GMT  
		Size: 12.6 MB (12635847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; 386

```console
$ docker pull perl@sha256:4dc37015a5d1b5d6b16d689a1d91d7c06f3afc7d571e3e5ac8c7f01c116a1f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343573956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c58a0001f5b633590efa81e6eaddd123ea5020351e3b3ca4c8f865d16d758b8`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:54:20 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:54:20 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:54:20 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57643aff4d70e846b88b5b96947d0f39b7e24a8c02246671fb80a8b4d48961dc`  
		Last Modified: Fri, 20 Apr 2018 12:13:55 GMT  
		Size: 12.3 MB (12257312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; ppc64le

```console
$ docker pull perl@sha256:8806f20681f38ca4cec1331ca9ea98554aae8672563d4a1b8abfcde07e2e0710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331499368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b9da0e4b1fd6e5a273220e614953886eea5ac55b8914d99899add7d0dc0418`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:05:28 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:05:30 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:05:31 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf359cbd2e47910092f6d6fc35b02ab871926b7e19392fa31028c1413fcc102`  
		Last Modified: Fri, 20 Apr 2018 09:23:24 GMT  
		Size: 12.7 MB (12659273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; s390x

```console
$ docker pull perl@sha256:044ff2603df8e396060a676f54200e6b961a79daa69250ddb018966eeb331a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328816924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ff8678c0de2a4e681ab44ead1365329ae65042b66fb1820fbc02cbfeea75be`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:12:12 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:12:12 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:12:12 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adce72d82cf321ad9b151cf237d60ac731bc1bc3437a465f7167064f4faae9f3`  
		Last Modified: Fri, 20 Apr 2018 12:28:52 GMT  
		Size: 13.2 MB (13184517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.4-threaded`

```console
$ docker pull perl@sha256:a5a2cc6b1d1a37ec31cb36791be309dc4f998eff09dd938b05657d5f6787d8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24.4-threaded` - linux; amd64

```console
$ docker pull perl@sha256:7f6ae7d11149b2545a0a99a81181ef28384d822a0d3662319c6ec035e962cff5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336591134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc875f05c9be49bdcc3f81cd77cde9163152eebb659b6ec256a0f3a4a3c06d34`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:27:50 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:27:51 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:27:51 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3046bd951cc14bdbfc24e1dac274347747f9c246b7d89743a482b145ba82f39f`  
		Last Modified: Fri, 20 Apr 2018 11:01:25 GMT  
		Size: 12.8 MB (12830615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:cb6e807eaf686695396ead1af245e99264dbde7bae8620cd9a5da1ceb338a425
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307858167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f918ffd9a7cea77536de909c79d4bcadde6a47dae56acd393b1c69a0473020`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:31:48 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:31:48 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:31:49 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fdf216c0e17fc53bceb809bc508d1babd5b8c6ca13fb0dca4d4c9577cb193f`  
		Last Modified: Fri, 20 Apr 2018 12:46:20 GMT  
		Size: 12.0 MB (11962595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d63e21659aba61e8da9a51e927fc1f8dc99da41868e15b77643304627b1fc601
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318275756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1ddb134d9f0eb2429895a530eb84bcc9166b7f1b520638e1792eb9943602a3`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:24:17 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:24:22 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:24:22 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef52ee96469dfa6cd861a22b14fd632c849eaf5d5c917348bdc42db4e61e7456`  
		Last Modified: Fri, 20 Apr 2018 10:49:38 GMT  
		Size: 12.7 MB (12662274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; 386

```console
$ docker pull perl@sha256:765709da5b139a5d8703b1fe3bb8dc46c027a0ec2ab67f6570275ce25aa7082f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.7 MB (343661857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104b0009e2917b949aea67ee933282446ab6f2717441e491a81effeb20e89ff6`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:00:56 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:00:56 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:00:56 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c38a4d231c1bee15c9bf57506b79a5f8afa3b35c125827ff87350ffccccedbd`  
		Last Modified: Fri, 20 Apr 2018 12:14:09 GMT  
		Size: 12.3 MB (12345213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:a4be89cb41ef14463992157087e46e3396623cb06213568a7d694a592affb416
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.6 MB (331567015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c846a8cbc662a92a7bbad1e3e54b33ed5c3d1c19f76989081bd17a21970e6`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:11:12 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:11:13 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:11:14 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611709a0597e423ca058e295c5e2adbd8eb3cac77bf191b032a0fcbcaf916300`  
		Last Modified: Fri, 20 Apr 2018 09:23:43 GMT  
		Size: 12.7 MB (12726920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; s390x

```console
$ docker pull perl@sha256:b9053d75bff53a6bedd22bf7cff81a42a6a77df9628c24e9a5c697aa7b940411
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b211a586bdbea6bb9545c7ffa6465c982c634cd5d14677d495785a74207c7d`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:17:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:17:21 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:17:21 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa51f6713557857aae032ca1b6cf887ccee31ee4f073573dcecfa04ddac77052`  
		Last Modified: Fri, 20 Apr 2018 12:29:09 GMT  
		Size: 13.2 MB (13192828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-threaded`

```console
$ docker pull perl@sha256:a5a2cc6b1d1a37ec31cb36791be309dc4f998eff09dd938b05657d5f6787d8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24-threaded` - linux; amd64

```console
$ docker pull perl@sha256:7f6ae7d11149b2545a0a99a81181ef28384d822a0d3662319c6ec035e962cff5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336591134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc875f05c9be49bdcc3f81cd77cde9163152eebb659b6ec256a0f3a4a3c06d34`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 07:02:39 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 07:02:40 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:27:50 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:27:51 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:27:51 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54e5f2a9fa95481b7b5cc467a7804d580508bda5407775663e1194bd10b71ed`  
		Last Modified: Thu, 15 Mar 2018 07:28:44 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3046bd951cc14bdbfc24e1dac274347747f9c246b7d89743a482b145ba82f39f`  
		Last Modified: Fri, 20 Apr 2018 11:01:25 GMT  
		Size: 12.8 MB (12830615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:cb6e807eaf686695396ead1af245e99264dbde7bae8620cd9a5da1ceb338a425
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307858167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f918ffd9a7cea77536de909c79d4bcadde6a47dae56acd393b1c69a0473020`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:51:48 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:51:49 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:31:48 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:31:48 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:31:49 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b4812bdebae74ea6ca46d0056805f789698a9cc3d0c81d12b85ef085bccfc`  
		Last Modified: Wed, 28 Mar 2018 22:19:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fdf216c0e17fc53bceb809bc508d1babd5b8c6ca13fb0dca4d4c9577cb193f`  
		Last Modified: Fri, 20 Apr 2018 12:46:20 GMT  
		Size: 12.0 MB (11962595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d63e21659aba61e8da9a51e927fc1f8dc99da41868e15b77643304627b1fc601
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318275756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1ddb134d9f0eb2429895a530eb84bcc9166b7f1b520638e1792eb9943602a3`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:09:42 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:09:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:24:17 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:24:22 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:24:22 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6686cd74f35b201f5b8ee2a43ca209c3f577fca5d9f54545b65918a09464dcf`  
		Last Modified: Thu, 15 Mar 2018 06:57:44 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef52ee96469dfa6cd861a22b14fd632c849eaf5d5c917348bdc42db4e61e7456`  
		Last Modified: Fri, 20 Apr 2018 10:49:38 GMT  
		Size: 12.7 MB (12662274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; 386

```console
$ docker pull perl@sha256:765709da5b139a5d8703b1fe3bb8dc46c027a0ec2ab67f6570275ce25aa7082f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.7 MB (343661857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104b0009e2917b949aea67ee933282446ab6f2717441e491a81effeb20e89ff6`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:56:36 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:56:36 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:00:56 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:00:56 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:00:56 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9b12e7917df9bd62ec6f367aa50ff17613e6910ca497daf314c3d6b507c8`  
		Last Modified: Sat, 14 Apr 2018 00:21:51 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c38a4d231c1bee15c9bf57506b79a5f8afa3b35c125827ff87350ffccccedbd`  
		Last Modified: Fri, 20 Apr 2018 12:14:09 GMT  
		Size: 12.3 MB (12345213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:a4be89cb41ef14463992157087e46e3396623cb06213568a7d694a592affb416
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.6 MB (331567015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c846a8cbc662a92a7bbad1e3e54b33ed5c3d1c19f76989081bd17a21970e6`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:39:05 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:39:06 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:11:12 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:11:13 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:11:14 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3ee5d11f17882538fa57f21010a923b7180b7247708f651a542eed5c50b10`  
		Last Modified: Thu, 15 Mar 2018 09:02:59 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611709a0597e423ca058e295c5e2adbd8eb3cac77bf191b032a0fcbcaf916300`  
		Last Modified: Fri, 20 Apr 2018 09:23:43 GMT  
		Size: 12.7 MB (12726920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; s390x

```console
$ docker pull perl@sha256:b9053d75bff53a6bedd22bf7cff81a42a6a77df9628c24e9a5c697aa7b940411
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b211a586bdbea6bb9545c7ffa6465c982c634cd5d14677d495785a74207c7d`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:53:03 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:53:03 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:17:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:17:21 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:17:21 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27891d56073dbde1a131b2d7b57372f064c3ea5f9703bd25838e629bb8ac63a8`  
		Last Modified: Wed, 14 Mar 2018 08:15:38 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa51f6713557857aae032ca1b6cf887ccee31ee4f073573dcecfa04ddac77052`  
		Last Modified: Fri, 20 Apr 2018 12:29:09 GMT  
		Size: 13.2 MB (13192828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26`

```console
$ docker pull perl@sha256:7934bf552757565c4aa3cff1482bf23e27afeedf6d6bde525aecebb87abd62a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26` - linux; amd64

```console
$ docker pull perl@sha256:d774319a2772b11fb599a829fc785716be45876dd45001712779a57abfb740c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336883441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93fb4d472a367296f89c833bafaeb31bb9bd6aab6d6cdb39d2936845c736b6d`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:00:19 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:00:19 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:00:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db42308a28be08e0bac0c9a918123de0709794f7bb9c25bf1b283fa7856f11bc`  
		Last Modified: Fri, 20 Apr 2018 10:40:09 GMT  
		Size: 13.1 MB (13124506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; arm variant v7

```console
$ docker pull perl@sha256:b443383fc872815e6e0481febac1f2488d7fe6ccf5f2b71dfd16355d8bbda2cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308193164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e847127793f77e3b617c203f2acdddba2e55a1712e17695066bfecd5a14f8304`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:10:29 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:10:30 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:10:30 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8737a5259b4a5190a56f06558b7d5c2ef13095ff43dd33786232cec6144ddfec`  
		Last Modified: Fri, 20 Apr 2018 12:44:52 GMT  
		Size: 12.3 MB (12299184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:4f68c2a535b6916db10fbfbad724ff2add36de23054a8c9ce5176280dee93c92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318583000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae4308c997517219cce86f5947db5bb4f671207502f2a2a9a9f1e1850aa2a45`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:47:23 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:47:28 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:47:29 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a04a6ab2f5af0bb816be6144b51dfaea73adaf02494eb435e6da5568ec862`  
		Last Modified: Fri, 20 Apr 2018 10:45:21 GMT  
		Size: 13.0 MB (12971105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; 386

```console
$ docker pull perl@sha256:1d04c5a94889b3d504af1515db0b86ad1034f8c352eb32b3b59c4fbb6b1b4d44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343923221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa994e32747dbc71183d3c2fc75eabcc3c1062af21431e11c6e84ffb82cf9cb`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:40:13 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:40:14 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:40:14 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91aea46107864bbb95f292f7996f00772f72416a217849ac0268ddf5c29470f`  
		Last Modified: Fri, 20 Apr 2018 12:13:14 GMT  
		Size: 12.6 MB (12608160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; ppc64le

```console
$ docker pull perl@sha256:985224e6ccf5e50a8df9df35a4842005a690896aff96dbfb920e23de94a829fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331835543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a50a94e2f30426afefba9a09adfd2a1224ac457f997674fc6ae0539268b106`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 08:53:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 08:53:23 GMT
WORKDIR /root
# Fri, 20 Apr 2018 08:53:24 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c99d0059b9166c2e9d2a135668735b9c30aa781b8a9f16aa3fcaf457f0c05d`  
		Last Modified: Fri, 20 Apr 2018 09:22:23 GMT  
		Size: 13.0 MB (12997038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; s390x

```console
$ docker pull perl@sha256:790265be2cfa7ffa4657baa3abb4926d59e7892cf674fc8518c5511d3cdb727a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329166360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6386ad9399941f050f6f938af243afd537317c397e2f8b0b0472be978739e41`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:01:31 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:01:31 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:01:31 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba232a0dac4d9aa63efbe2780e11250d650f2c2b894742e2aff3275de5684b0`  
		Last Modified: Fri, 20 Apr 2018 12:27:52 GMT  
		Size: 13.5 MB (13535537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.2`

```console
$ docker pull perl@sha256:7934bf552757565c4aa3cff1482bf23e27afeedf6d6bde525aecebb87abd62a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26.2` - linux; amd64

```console
$ docker pull perl@sha256:d774319a2772b11fb599a829fc785716be45876dd45001712779a57abfb740c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336883441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93fb4d472a367296f89c833bafaeb31bb9bd6aab6d6cdb39d2936845c736b6d`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:00:19 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:00:19 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:00:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db42308a28be08e0bac0c9a918123de0709794f7bb9c25bf1b283fa7856f11bc`  
		Last Modified: Fri, 20 Apr 2018 10:40:09 GMT  
		Size: 13.1 MB (13124506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2` - linux; arm variant v7

```console
$ docker pull perl@sha256:b443383fc872815e6e0481febac1f2488d7fe6ccf5f2b71dfd16355d8bbda2cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308193164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e847127793f77e3b617c203f2acdddba2e55a1712e17695066bfecd5a14f8304`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:10:29 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:10:30 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:10:30 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8737a5259b4a5190a56f06558b7d5c2ef13095ff43dd33786232cec6144ddfec`  
		Last Modified: Fri, 20 Apr 2018 12:44:52 GMT  
		Size: 12.3 MB (12299184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:4f68c2a535b6916db10fbfbad724ff2add36de23054a8c9ce5176280dee93c92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318583000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae4308c997517219cce86f5947db5bb4f671207502f2a2a9a9f1e1850aa2a45`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:47:23 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:47:28 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:47:29 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a04a6ab2f5af0bb816be6144b51dfaea73adaf02494eb435e6da5568ec862`  
		Last Modified: Fri, 20 Apr 2018 10:45:21 GMT  
		Size: 13.0 MB (12971105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2` - linux; 386

```console
$ docker pull perl@sha256:1d04c5a94889b3d504af1515db0b86ad1034f8c352eb32b3b59c4fbb6b1b4d44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343923221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa994e32747dbc71183d3c2fc75eabcc3c1062af21431e11c6e84ffb82cf9cb`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:40:13 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:40:14 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:40:14 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91aea46107864bbb95f292f7996f00772f72416a217849ac0268ddf5c29470f`  
		Last Modified: Fri, 20 Apr 2018 12:13:14 GMT  
		Size: 12.6 MB (12608160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2` - linux; ppc64le

```console
$ docker pull perl@sha256:985224e6ccf5e50a8df9df35a4842005a690896aff96dbfb920e23de94a829fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331835543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a50a94e2f30426afefba9a09adfd2a1224ac457f997674fc6ae0539268b106`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 08:53:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 08:53:23 GMT
WORKDIR /root
# Fri, 20 Apr 2018 08:53:24 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c99d0059b9166c2e9d2a135668735b9c30aa781b8a9f16aa3fcaf457f0c05d`  
		Last Modified: Fri, 20 Apr 2018 09:22:23 GMT  
		Size: 13.0 MB (12997038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2` - linux; s390x

```console
$ docker pull perl@sha256:790265be2cfa7ffa4657baa3abb4926d59e7892cf674fc8518c5511d3cdb727a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329166360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6386ad9399941f050f6f938af243afd537317c397e2f8b0b0472be978739e41`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:01:31 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:01:31 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:01:31 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba232a0dac4d9aa63efbe2780e11250d650f2c2b894742e2aff3275de5684b0`  
		Last Modified: Fri, 20 Apr 2018 12:27:52 GMT  
		Size: 13.5 MB (13535537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.2-threaded`

```console
$ docker pull perl@sha256:7f46e0b56bf4c035ceb5eb4c03c384fbc0c3dcc7a7937e9cb1a47e4c608c8cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26.2-threaded` - linux; amd64

```console
$ docker pull perl@sha256:e267d92a0c3ebd8c442dca38486494dee1fe86a980fa1cceedc9e0383069992c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336924440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ef3824cff9b7022b9ffee9b052b9eb43cef4e457ec0a655591ba9e3c2bd8d6`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:15:54 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:15:54 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:15:54 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f702200967a8d450aab9c4166fdc7b1e86f1c02a370e148be6a48f1548be97`  
		Last Modified: Fri, 20 Apr 2018 10:59:03 GMT  
		Size: 13.2 MB (13165505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:9188418fc02dc808ff11a18a2b07250517cbbfc6371b9f4f3e6a5d0c0f7169dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308208177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c3c1d11970fe50507c74eeddc78f9e0b039d2ec57cf7c68f5fd92f45c16c12`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:18:15 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:18:18 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:18:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb701f37e5211fbb4ecf6df740a17139515b9c9aa785bfa3afaab2b26099edf`  
		Last Modified: Fri, 20 Apr 2018 12:45:25 GMT  
		Size: 12.3 MB (12314197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3e39a0a23b3bf1b47a2eafac66d05fba90dee6bc2fc71b7e953058736ce9d7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318598314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f051fa43abc47dbb4fb1abe0950292829359225ed7b909022949c69e3607b73`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:01:42 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:01:52 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:01:53 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ed53a2075432302c2dc01f9b7725af4a713fef1ac2f0fac043c401090efa72`  
		Last Modified: Fri, 20 Apr 2018 10:47:02 GMT  
		Size: 13.0 MB (12986419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2-threaded` - linux; 386

```console
$ docker pull perl@sha256:700626fb8aa88ffe0278977ecaeecef3d707749af0b1649eda544eead988a57c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (344012398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9167ba4c0f0824e2c7c48974abb4e3fa8667b47dbbbc60c74a17bdff01409793`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:48:17 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:48:17 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:48:17 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2b82aeffa362d5baab8d03ef16cdcb07b2039136776daf7f98d537bce464bd`  
		Last Modified: Fri, 20 Apr 2018 12:13:34 GMT  
		Size: 12.7 MB (12697337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:cbe52e72600fbaea5e6f17456fce69af0a48d93a556b73ff2af3d80d69765e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.9 MB (331883062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fe8dbda888185796353b1eb4449eb1612f0974ca110966035491e68021d2d8`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:00:03 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:00:04 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:00:04 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37fb93b2c293eb313b93dbb4db4b2fdb2e7676181a0dc548d82f2c9995bdf61`  
		Last Modified: Fri, 20 Apr 2018 09:22:52 GMT  
		Size: 13.0 MB (13044557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.2-threaded` - linux; s390x

```console
$ docker pull perl@sha256:4d9fe362c899a360d9b2fec33ecb29ddded8aa0546f04914abd117c7bbf31818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329172807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48930a5b531a1aed2198a494ce1b587ed758c63c1930138f209f07e2716cc0a`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:07:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:07:21 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:07:21 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db5456b077114ce35a36323af8b12b1ce92977aa5f93823511fb4e737b3d990`  
		Last Modified: Fri, 20 Apr 2018 12:28:20 GMT  
		Size: 13.5 MB (13541984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26-threaded`

```console
$ docker pull perl@sha256:7f46e0b56bf4c035ceb5eb4c03c384fbc0c3dcc7a7937e9cb1a47e4c608c8cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26-threaded` - linux; amd64

```console
$ docker pull perl@sha256:e267d92a0c3ebd8c442dca38486494dee1fe86a980fa1cceedc9e0383069992c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336924440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ef3824cff9b7022b9ffee9b052b9eb43cef4e457ec0a655591ba9e3c2bd8d6`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:15:54 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:15:54 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:15:54 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f702200967a8d450aab9c4166fdc7b1e86f1c02a370e148be6a48f1548be97`  
		Last Modified: Fri, 20 Apr 2018 10:59:03 GMT  
		Size: 13.2 MB (13165505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:9188418fc02dc808ff11a18a2b07250517cbbfc6371b9f4f3e6a5d0c0f7169dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308208177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c3c1d11970fe50507c74eeddc78f9e0b039d2ec57cf7c68f5fd92f45c16c12`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:18:15 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:18:18 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:18:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb701f37e5211fbb4ecf6df740a17139515b9c9aa785bfa3afaab2b26099edf`  
		Last Modified: Fri, 20 Apr 2018 12:45:25 GMT  
		Size: 12.3 MB (12314197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3e39a0a23b3bf1b47a2eafac66d05fba90dee6bc2fc71b7e953058736ce9d7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318598314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f051fa43abc47dbb4fb1abe0950292829359225ed7b909022949c69e3607b73`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:01:42 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:01:52 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:01:53 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ed53a2075432302c2dc01f9b7725af4a713fef1ac2f0fac043c401090efa72`  
		Last Modified: Fri, 20 Apr 2018 10:47:02 GMT  
		Size: 13.0 MB (12986419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; 386

```console
$ docker pull perl@sha256:700626fb8aa88ffe0278977ecaeecef3d707749af0b1649eda544eead988a57c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (344012398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9167ba4c0f0824e2c7c48974abb4e3fa8667b47dbbbc60c74a17bdff01409793`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:48:17 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:48:17 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:48:17 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2b82aeffa362d5baab8d03ef16cdcb07b2039136776daf7f98d537bce464bd`  
		Last Modified: Fri, 20 Apr 2018 12:13:34 GMT  
		Size: 12.7 MB (12697337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:cbe52e72600fbaea5e6f17456fce69af0a48d93a556b73ff2af3d80d69765e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.9 MB (331883062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fe8dbda888185796353b1eb4449eb1612f0974ca110966035491e68021d2d8`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:00:03 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:00:04 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:00:04 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37fb93b2c293eb313b93dbb4db4b2fdb2e7676181a0dc548d82f2c9995bdf61`  
		Last Modified: Fri, 20 Apr 2018 09:22:52 GMT  
		Size: 13.0 MB (13044557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; s390x

```console
$ docker pull perl@sha256:4d9fe362c899a360d9b2fec33ecb29ddded8aa0546f04914abd117c7bbf31818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329172807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48930a5b531a1aed2198a494ce1b587ed758c63c1930138f209f07e2716cc0a`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:07:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:07:21 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:07:21 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db5456b077114ce35a36323af8b12b1ce92977aa5f93823511fb4e737b3d990`  
		Last Modified: Fri, 20 Apr 2018 12:28:20 GMT  
		Size: 13.5 MB (13541984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-threaded`

```console
$ docker pull perl@sha256:7f46e0b56bf4c035ceb5eb4c03c384fbc0c3dcc7a7937e9cb1a47e4c608c8cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5-threaded` - linux; amd64

```console
$ docker pull perl@sha256:e267d92a0c3ebd8c442dca38486494dee1fe86a980fa1cceedc9e0383069992c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336924440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ef3824cff9b7022b9ffee9b052b9eb43cef4e457ec0a655591ba9e3c2bd8d6`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:15:54 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:15:54 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:15:54 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f702200967a8d450aab9c4166fdc7b1e86f1c02a370e148be6a48f1548be97`  
		Last Modified: Fri, 20 Apr 2018 10:59:03 GMT  
		Size: 13.2 MB (13165505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:9188418fc02dc808ff11a18a2b07250517cbbfc6371b9f4f3e6a5d0c0f7169dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308208177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c3c1d11970fe50507c74eeddc78f9e0b039d2ec57cf7c68f5fd92f45c16c12`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:18:15 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:18:18 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:18:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb701f37e5211fbb4ecf6df740a17139515b9c9aa785bfa3afaab2b26099edf`  
		Last Modified: Fri, 20 Apr 2018 12:45:25 GMT  
		Size: 12.3 MB (12314197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3e39a0a23b3bf1b47a2eafac66d05fba90dee6bc2fc71b7e953058736ce9d7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318598314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f051fa43abc47dbb4fb1abe0950292829359225ed7b909022949c69e3607b73`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:01:42 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:01:52 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:01:53 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ed53a2075432302c2dc01f9b7725af4a713fef1ac2f0fac043c401090efa72`  
		Last Modified: Fri, 20 Apr 2018 10:47:02 GMT  
		Size: 13.0 MB (12986419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; 386

```console
$ docker pull perl@sha256:700626fb8aa88ffe0278977ecaeecef3d707749af0b1649eda544eead988a57c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (344012398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9167ba4c0f0824e2c7c48974abb4e3fa8667b47dbbbc60c74a17bdff01409793`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:48:17 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:48:17 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:48:17 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2b82aeffa362d5baab8d03ef16cdcb07b2039136776daf7f98d537bce464bd`  
		Last Modified: Fri, 20 Apr 2018 12:13:34 GMT  
		Size: 12.7 MB (12697337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:cbe52e72600fbaea5e6f17456fce69af0a48d93a556b73ff2af3d80d69765e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.9 MB (331883062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fe8dbda888185796353b1eb4449eb1612f0974ca110966035491e68021d2d8`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:00:03 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:00:04 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:00:04 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37fb93b2c293eb313b93dbb4db4b2fdb2e7676181a0dc548d82f2c9995bdf61`  
		Last Modified: Fri, 20 Apr 2018 09:22:52 GMT  
		Size: 13.0 MB (13044557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; s390x

```console
$ docker pull perl@sha256:4d9fe362c899a360d9b2fec33ecb29ddded8aa0546f04914abd117c7bbf31818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329172807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48930a5b531a1aed2198a494ce1b587ed758c63c1930138f209f07e2716cc0a`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:07:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:07:21 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:07:21 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db5456b077114ce35a36323af8b12b1ce92977aa5f93823511fb4e737b3d990`  
		Last Modified: Fri, 20 Apr 2018 12:28:20 GMT  
		Size: 13.5 MB (13541984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:latest`

```console
$ docker pull perl@sha256:38629368f2319f6f65b754d2fe307305c291b04bc00d4a9034fba4af771f60a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:latest` - linux; amd64

```console
$ docker pull perl@sha256:d774319a2772b11fb599a829fc785716be45876dd45001712779a57abfb740c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336883441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93fb4d472a367296f89c833bafaeb31bb9bd6aab6d6cdb39d2936845c736b6d`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:00:19 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:00:19 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:00:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db42308a28be08e0bac0c9a918123de0709794f7bb9c25bf1b283fa7856f11bc`  
		Last Modified: Fri, 20 Apr 2018 10:40:09 GMT  
		Size: 13.1 MB (13124506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; arm variant v7

```console
$ docker pull perl@sha256:5e4437624be3a19b478af36ff163d13ecfe24debe267cbac5f87827b8f1708c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308178462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4227c6edbc7fb3976b088bba7a5a0f71aa38562ea8887532b022a46a576b102`
-	Default Command: `["perl5.26.1","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Wed, 28 Mar 2018 21:43:04 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.1.tar.bz2 -o perl-5.26.1.tar.bz2     && echo '2812a01dd4d4cd7650cb70abfe259ee572bf6a0f1ee95763422ba7e54c68d12d *perl-5.26.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.1.tar.bz2 -C /usr/src/perl     && rm perl-5.26.1.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 28 Mar 2018 21:43:05 GMT
WORKDIR /root
# Wed, 28 Mar 2018 21:43:07 GMT
CMD ["perl5.26.1" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4f22cc3abe79f000e9c6946d6469458bda6546443ac99269c8e57fc1cfc781`  
		Last Modified: Wed, 28 Mar 2018 22:18:15 GMT  
		Size: 12.3 MB (12284482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:4f68c2a535b6916db10fbfbad724ff2add36de23054a8c9ce5176280dee93c92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318583000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae4308c997517219cce86f5947db5bb4f671207502f2a2a9a9f1e1850aa2a45`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:47:23 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:47:28 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:47:29 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771a04a6ab2f5af0bb816be6144b51dfaea73adaf02494eb435e6da5568ec862`  
		Last Modified: Fri, 20 Apr 2018 10:45:21 GMT  
		Size: 13.0 MB (12971105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; 386

```console
$ docker pull perl@sha256:1d04c5a94889b3d504af1515db0b86ad1034f8c352eb32b3b59c4fbb6b1b4d44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343923221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa994e32747dbc71183d3c2fc75eabcc3c1062af21431e11c6e84ffb82cf9cb`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:40:13 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:40:14 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:40:14 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91aea46107864bbb95f292f7996f00772f72416a217849ac0268ddf5c29470f`  
		Last Modified: Fri, 20 Apr 2018 12:13:14 GMT  
		Size: 12.6 MB (12608160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; ppc64le

```console
$ docker pull perl@sha256:985224e6ccf5e50a8df9df35a4842005a690896aff96dbfb920e23de94a829fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331835543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a50a94e2f30426afefba9a09adfd2a1224ac457f997674fc6ae0539268b106`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 08:53:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 08:53:23 GMT
WORKDIR /root
# Fri, 20 Apr 2018 08:53:24 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c99d0059b9166c2e9d2a135668735b9c30aa781b8a9f16aa3fcaf457f0c05d`  
		Last Modified: Fri, 20 Apr 2018 09:22:23 GMT  
		Size: 13.0 MB (12997038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; s390x

```console
$ docker pull perl@sha256:790265be2cfa7ffa4657baa3abb4926d59e7892cf674fc8518c5511d3cdb727a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329166360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6386ad9399941f050f6f938af243afd537317c397e2f8b0b0472be978739e41`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:01:31 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:01:31 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:01:31 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba232a0dac4d9aa63efbe2780e11250d650f2c2b894742e2aff3275de5684b0`  
		Last Modified: Fri, 20 Apr 2018 12:27:52 GMT  
		Size: 13.5 MB (13535537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:threaded`

```console
$ docker pull perl@sha256:7f46e0b56bf4c035ceb5eb4c03c384fbc0c3dcc7a7937e9cb1a47e4c608c8cad
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
$ docker pull perl@sha256:e267d92a0c3ebd8c442dca38486494dee1fe86a980fa1cceedc9e0383069992c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336924440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ef3824cff9b7022b9ffee9b052b9eb43cef4e457ec0a655591ba9e3c2bd8d6`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:58:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:48:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 06:48:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 06:48:11 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:15:54 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:15:54 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:15:54 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1785850988c5179b2b83fc5877b21c5d95fd9b769561956798b83cb4c86d7de1`  
		Last Modified: Wed, 14 Mar 2018 00:49:26 GMT  
		Size: 213.2 MB (213156459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d243779c9e6b26ef1e3dc4b8f76076e00edd93ef161d36f99724e9c05dc14`  
		Last Modified: Thu, 15 Mar 2018 07:26:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f702200967a8d450aab9c4166fdc7b1e86f1c02a370e148be6a48f1548be97`  
		Last Modified: Fri, 20 Apr 2018 10:59:03 GMT  
		Size: 13.2 MB (13165505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:9188418fc02dc808ff11a18a2b07250517cbbfc6371b9f4f3e6a5d0c0f7169dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308208177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c3c1d11970fe50507c74eeddc78f9e0b039d2ec57cf7c68f5fd92f45c16c12`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:21:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:34:57 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 28 Mar 2018 21:34:57 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 28 Mar 2018 21:34:57 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:18:15 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:18:18 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:18:19 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bca40d02e5c2f5645fed5e5eaf0f590692026944c62f10e3524defe9c88d46`  
		Last Modified: Wed, 14 Mar 2018 13:32:09 GMT  
		Size: 194.0 MB (193952652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f95aa2748b5cda0dbfe34f241750b48ce3b81f61deb0d870ea7d8bc80e1ab`  
		Last Modified: Wed, 28 Mar 2018 22:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb701f37e5211fbb4ecf6df740a17139515b9c9aa785bfa3afaab2b26099edf`  
		Last Modified: Fri, 20 Apr 2018 12:45:25 GMT  
		Size: 12.3 MB (12314197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3e39a0a23b3bf1b47a2eafac66d05fba90dee6bc2fc71b7e953058736ce9d7ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318598314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f051fa43abc47dbb4fb1abe0950292829359225ed7b909022949c69e3607b73`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:56:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:37:42 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 05:37:43 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 05:37:43 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 10:01:42 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 10:01:52 GMT
WORKDIR /root
# Fri, 20 Apr 2018 10:01:53 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2e8e4d90ab1f49700b3a0a2d3221504875f2e9dcba4fc7391bbee09172481`  
		Last Modified: Wed, 14 Mar 2018 19:08:00 GMT  
		Size: 200.6 MB (200566477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6a2833b4a8e41c3e792d9e3311b8af42ee7f64285993b26e8b12de03ab8f36`  
		Last Modified: Thu, 15 Mar 2018 06:54:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ed53a2075432302c2dc01f9b7725af4a713fef1ac2f0fac043c401090efa72`  
		Last Modified: Fri, 20 Apr 2018 10:47:02 GMT  
		Size: 13.0 MB (12986419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; 386

```console
$ docker pull perl@sha256:700626fb8aa88ffe0278977ecaeecef3d707749af0b1649eda544eead988a57c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (344012398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9167ba4c0f0824e2c7c48974abb4e3fa8667b47dbbbc60c74a17bdff01409793`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 23:41:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 13 Apr 2018 23:41:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Fri, 13 Apr 2018 23:41:22 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 11:48:17 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 11:48:17 GMT
WORKDIR /root
# Fri, 20 Apr 2018 11:48:17 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc5c29ba40aaea92a8b0df017ed89cffbf2a0cf80cfd95b74118bdb578a55a4`  
		Last Modified: Fri, 13 Apr 2018 22:33:42 GMT  
		Size: 218.2 MB (218211846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b8d35605af94d62aacfaef5e8c32293b72645c1fd7efc7677cf8f91c800ff`  
		Last Modified: Sat, 14 Apr 2018 00:21:13 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2b82aeffa362d5baab8d03ef16cdcb07b2039136776daf7f98d537bce464bd`  
		Last Modified: Fri, 20 Apr 2018 12:13:34 GMT  
		Size: 12.7 MB (12697337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:cbe52e72600fbaea5e6f17456fce69af0a48d93a556b73ff2af3d80d69765e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.9 MB (331883062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fe8dbda888185796353b1eb4449eb1612f0974ca110966035491e68021d2d8`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:26:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:25:20 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 15 Mar 2018 08:25:22 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 15 Mar 2018 08:25:24 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 09:00:03 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 09:00:04 GMT
WORKDIR /root
# Fri, 20 Apr 2018 09:00:04 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd800af831f90c1f5ec83800a29d0bcbe4b4c73de4cc0c188ca657d1915f441`  
		Last Modified: Thu, 15 Mar 2018 02:33:55 GMT  
		Size: 208.8 MB (208802862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f0609c2f39184a4e1a6f6374c919a5331a22b35721c982d9b904b171dc7e36`  
		Last Modified: Thu, 15 Mar 2018 09:01:42 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37fb93b2c293eb313b93dbb4db4b2fdb2e7676181a0dc548d82f2c9995bdf61`  
		Last Modified: Fri, 20 Apr 2018 09:22:52 GMT  
		Size: 13.0 MB (13044557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; s390x

```console
$ docker pull perl@sha256:4d9fe362c899a360d9b2fec33ecb29ddded8aa0546f04914abd117c7bbf31818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329172807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48930a5b531a1aed2198a494ce1b587ed758c63c1930138f209f07e2716cc0a`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:57:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:41:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 14 Mar 2018 07:41:02 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 14 Mar 2018 07:41:02 GMT
WORKDIR /usr/src/perl
# Fri, 20 Apr 2018 12:07:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Fri, 20 Apr 2018 12:07:21 GMT
WORKDIR /root
# Fri, 20 Apr 2018 12:07:21 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a5607de93ee7d6364649919cec7537a26ea198ff48d11b95b3c7406afeb25a`  
		Last Modified: Wed, 14 Mar 2018 06:01:51 GMT  
		Size: 205.2 MB (205171037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaeb0abe29fc224b5a0ad44894598659a32ce015be413e17616e7b07295d0e5`  
		Last Modified: Wed, 14 Mar 2018 08:14:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db5456b077114ce35a36323af8b12b1ce92977aa5f93823511fb4e737b3d990`  
		Last Modified: Fri, 20 Apr 2018 12:28:20 GMT  
		Size: 13.5 MB (13541984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
