<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `perl`

-	[`perl:5`](#perl5)
-	[`perl:5.24`](#perl524)
-	[`perl:5.24.4`](#perl5244)
-	[`perl:5.24.4-slim`](#perl5244-slim)
-	[`perl:5.24.4-slim-threaded`](#perl5244-slim-threaded)
-	[`perl:5.24.4-threaded`](#perl5244-threaded)
-	[`perl:5.24-slim`](#perl524-slim)
-	[`perl:5.24-slim-threaded`](#perl524-slim-threaded)
-	[`perl:5.24-threaded`](#perl524-threaded)
-	[`perl:5.26`](#perl526)
-	[`perl:5.26.3`](#perl5263)
-	[`perl:5.26.3-slim`](#perl5263-slim)
-	[`perl:5.26.3-slim-threaded`](#perl5263-slim-threaded)
-	[`perl:5.26.3-threaded`](#perl5263-threaded)
-	[`perl:5.26-slim`](#perl526-slim)
-	[`perl:5.26-slim-threaded`](#perl526-slim-threaded)
-	[`perl:5.26-threaded`](#perl526-threaded)
-	[`perl:5.28`](#perl528)
-	[`perl:5.28.0-slim`](#perl5280-slim)
-	[`perl:5.28.1`](#perl5281)
-	[`perl:5.28.1-slim-threaded`](#perl5281-slim-threaded)
-	[`perl:5.28.1-threaded`](#perl5281-threaded)
-	[`perl:5.28-slim`](#perl528-slim)
-	[`perl:5.28-slim-threaded`](#perl528-slim-threaded)
-	[`perl:5.28-threaded`](#perl528-threaded)
-	[`perl:5-slim`](#perl5-slim)
-	[`perl:5-slim-threaded`](#perl5-slim-threaded)
-	[`perl:5-threaded`](#perl5-threaded)
-	[`perl:latest`](#perllatest)
-	[`perl:slim`](#perlslim)
-	[`perl:slim-threaded`](#perlslim-threaded)
-	[`perl:threaded`](#perlthreaded)

## `perl:5`

```console
$ docker pull perl@sha256:f8dce12ace42cf6d690b83938f6acd8b4e58c482f32aa6f531f15b06636fc726
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
$ docker pull perl@sha256:117f6d529eed6ac62dd5b40853b75a5341284e32c56792929f2b232dfeb65777
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.7 MB (338741368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cece3f1eb47ff4597689aaa22144270dc7e26cba6f38bf1ee93d9e59bb2c2a`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:29:22 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:29:22 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:29:23 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec505e554954f588d1519f752e24c9dbe8d551b32049005dce971264beec0ad8`  
		Last Modified: Tue, 29 Jan 2019 00:50:44 GMT  
		Size: 13.9 MB (13933681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; arm variant v7

```console
$ docker pull perl@sha256:8795c08ded8471cebd375eb9559cd6fa458869d2299d71072da623ed3e0c2c8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310020261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f7cbef2d703f5a38b886c028418f0ca0b7a42ddf21404c2a4f2066497ba3da`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:23:56 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:23:57 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:23:58 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9736cdc6439897e625b0fc628a8b7aa0c8de7637faa5fb5a7910b0f0097f34`  
		Last Modified: Wed, 23 Jan 2019 16:59:25 GMT  
		Size: 13.1 MB (13110794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3c9c0e448d01d73661a1cf5b06355fa53e5a57ccf0a7847adb731bb6f8c2865f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320397924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03703e3706510b0cffa71983de787e486c18d776d89855d42c9393e952561df0`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:03:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:03:50 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:03:51 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a173605745993d9937ff9dcf7c0f63ec1e35483cc0302cb0b1bc49d2ce4ca3be`  
		Last Modified: Tue, 29 Jan 2019 12:20:57 GMT  
		Size: 13.8 MB (13765708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; 386

```console
$ docker pull perl@sha256:e3627cad444fb4595f85ec8b16f5196fe18e416f9f875dbbb0f55d64c6b3169e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345769916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d08bfdcbe88a2c4c1d5fc145a76df720e90e46af2cef486df4e435881a360`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:56:01 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:56:01 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:56:01 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07654338fdf8095292ab63bc7d8fa3b80e183615da100e8065a61dec518537ba`  
		Last Modified: Tue, 29 Jan 2019 13:23:48 GMT  
		Size: 13.4 MB (13418499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; ppc64le

```console
$ docker pull perl@sha256:10a76b3d810b60fa228edaf8cb7ce9cdb172bbc7247f14238162c1a6acebebec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333656243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a256607ae7c7c0b7d384593574694f13a7d2cbde78b5bcbe5cdfa0c3bb89333`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:28:18 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:28:22 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:28:26 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf782a539037ea50f59a31421d0d7bc9366028014f933ff0c884b1535196818`  
		Last Modified: Tue, 29 Jan 2019 10:43:51 GMT  
		Size: 13.8 MB (13805358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; s390x

```console
$ docker pull perl@sha256:dacf0fa7c83742c43b281a24c34c8699516505c5706e25f4bf0310ff32e8ee1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330267861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1802828f10489d292c55a48defa4a608f5ab625360ee50d38328ea8d003bf2c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:26:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:26:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:26:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f29fb52a7376b4769957f5ecc59b49b49c68ce442c04a383dc9bb2fc41c32a7`  
		Last Modified: Wed, 23 Jan 2019 15:37:49 GMT  
		Size: 14.4 MB (14399652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24`

```console
$ docker pull perl@sha256:a1c7eda7f04da3721dc338537056b992504ba423b684171834244d81adb090b5
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
$ docker pull perl@sha256:5ee8b9f843a5787d6b617e20fdef4c3f5046299c8ed1358b1ff63fa168e2938b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337599186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb86fdc578c23a6fda5707e1226d895f57942de159913fc81f6d91ea3f115f45`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 00:57:22 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 00:57:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:30:44 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:30:44 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:30:44 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd37142156e21ed30abd1c8154d326f0d4e3fea48993a5151ffde8a31f8c132`  
		Last Modified: Wed, 23 Jan 2019 01:29:33 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12bfb71dced0bc9ca4ea4cdeb905693c92c7a9e6b84cf593f16f767df8be65a`  
		Last Modified: Tue, 29 Jan 2019 00:51:58 GMT  
		Size: 12.8 MB (12789914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; arm variant v7

```console
$ docker pull perl@sha256:a0dc14264bcb6dccdb6849b001eba0100cea10bda353ec5aaadb9e8f57af71bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308863278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec262a6a396b6b9c8cee557f3516f9b108a6a7d8eaf7f1d89f105c27460a099`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:28:40 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:28:41 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:35:23 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:35:23 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:35:24 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac56ff07b1d82c7dbba048dc3c6523b60419d2c9099cf8a89ea490a4c2ed7032`  
		Last Modified: Wed, 23 Jan 2019 17:01:26 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efeb4ace048ebf0a98cd61ffe9f6511564f26e15ae513bbdf7e9b5b0d514e578`  
		Last Modified: Wed, 23 Jan 2019 17:01:31 GMT  
		Size: 12.0 MB (11952219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:381ef93bdd725760e724348ad4c38c4ddde65061fc77a41f37dc8e36974293e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319269656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f0ededabac4c39a08911c511797d62548d15d2f311c21b97915b9c737bebf3`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 12:52:00 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 12:52:01 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:49:07 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:49:08 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:49:09 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f67dd7e8f4ac5182129038c10ed3b2b7178188d966e969a53c4b205f0894251`  
		Last Modified: Wed, 09 Jan 2019 13:18:27 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37b35eb0709b32adb9692753cd5a9fb91d3205b9866674bb3d9a0037790993b`  
		Last Modified: Tue, 29 Jan 2019 12:23:10 GMT  
		Size: 12.6 MB (12635854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; 386

```console
$ docker pull perl@sha256:524449180dc8af58f6abbe9e84f065e3f2aea583d121ba54afbda233268534dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344610264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6526a5934ce1cf02541a433a9def452ae4c89e817c216eed4be55a5d64ba27bd`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:53:52 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:53:53 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:01:33 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:01:33 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:01:34 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e4f97c2328708b35e2e436a6ba1bd7c71a9bc3c913a636c54b811113f64cbb`  
		Last Modified: Wed, 23 Jan 2019 17:23:44 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f096c8dc7d3ac1d553f4258dd46957d6e93ab7a797d8c4b13d8553a164afc99f`  
		Last Modified: Tue, 29 Jan 2019 13:24:59 GMT  
		Size: 12.3 MB (12257262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; ppc64le

```console
$ docker pull perl@sha256:a6299489e42373d41d1535ceb00f427eac5670933de0b163ae7d4daa8ef73583
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.5 MB (332511838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5c8c7ea6527009833cea8258ecab7ad11bc1bfbe3959cffcc46e2c796e8486`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:07:47 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:07:50 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:20:40 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:20:42 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:20:44 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7af5b1ffd691683bd7bc076e2b75a6955528e269380e1a9201dd8d0ca085547`  
		Last Modified: Wed, 09 Jan 2019 11:26:52 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b42f701db39c8cd9771febab109679f5e93c9d01e297aa89847fd03ed2e6ca`  
		Last Modified: Tue, 29 Jan 2019 10:46:12 GMT  
		Size: 12.7 MB (12659362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; s390x

```console
$ docker pull perl@sha256:68c6c00527cdcae36b9d6e0905ad9a96e5514c8ff28d6646e515f2c4246907b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329054169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce884fd673a39bc8f3d94771742351ec91aa90843d953889e9e10eb47b867acb`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:11:36 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:11:37 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:16:52 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:16:52 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:16:52 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d10808924675f6870578fe7aa5e6f72df010e9e5a8066c4aca036ea15d9cf`  
		Last Modified: Wed, 23 Jan 2019 15:39:05 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11a065b3817ec8f5877c4830a43de6196b8c98c16a3c3f594a3b832be3891e5`  
		Last Modified: Wed, 23 Jan 2019 15:39:09 GMT  
		Size: 13.2 MB (13184375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.4`

```console
$ docker pull perl@sha256:a1c7eda7f04da3721dc338537056b992504ba423b684171834244d81adb090b5
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
$ docker pull perl@sha256:5ee8b9f843a5787d6b617e20fdef4c3f5046299c8ed1358b1ff63fa168e2938b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337599186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb86fdc578c23a6fda5707e1226d895f57942de159913fc81f6d91ea3f115f45`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 00:57:22 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 00:57:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:30:44 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:30:44 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:30:44 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd37142156e21ed30abd1c8154d326f0d4e3fea48993a5151ffde8a31f8c132`  
		Last Modified: Wed, 23 Jan 2019 01:29:33 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12bfb71dced0bc9ca4ea4cdeb905693c92c7a9e6b84cf593f16f767df8be65a`  
		Last Modified: Tue, 29 Jan 2019 00:51:58 GMT  
		Size: 12.8 MB (12789914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; arm variant v7

```console
$ docker pull perl@sha256:a0dc14264bcb6dccdb6849b001eba0100cea10bda353ec5aaadb9e8f57af71bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308863278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec262a6a396b6b9c8cee557f3516f9b108a6a7d8eaf7f1d89f105c27460a099`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:28:40 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:28:41 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:35:23 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:35:23 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:35:24 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac56ff07b1d82c7dbba048dc3c6523b60419d2c9099cf8a89ea490a4c2ed7032`  
		Last Modified: Wed, 23 Jan 2019 17:01:26 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efeb4ace048ebf0a98cd61ffe9f6511564f26e15ae513bbdf7e9b5b0d514e578`  
		Last Modified: Wed, 23 Jan 2019 17:01:31 GMT  
		Size: 12.0 MB (11952219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:381ef93bdd725760e724348ad4c38c4ddde65061fc77a41f37dc8e36974293e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319269656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f0ededabac4c39a08911c511797d62548d15d2f311c21b97915b9c737bebf3`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 12:52:00 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 12:52:01 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:49:07 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:49:08 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:49:09 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f67dd7e8f4ac5182129038c10ed3b2b7178188d966e969a53c4b205f0894251`  
		Last Modified: Wed, 09 Jan 2019 13:18:27 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37b35eb0709b32adb9692753cd5a9fb91d3205b9866674bb3d9a0037790993b`  
		Last Modified: Tue, 29 Jan 2019 12:23:10 GMT  
		Size: 12.6 MB (12635854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; 386

```console
$ docker pull perl@sha256:524449180dc8af58f6abbe9e84f065e3f2aea583d121ba54afbda233268534dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344610264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6526a5934ce1cf02541a433a9def452ae4c89e817c216eed4be55a5d64ba27bd`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:53:52 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:53:53 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:01:33 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:01:33 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:01:34 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e4f97c2328708b35e2e436a6ba1bd7c71a9bc3c913a636c54b811113f64cbb`  
		Last Modified: Wed, 23 Jan 2019 17:23:44 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f096c8dc7d3ac1d553f4258dd46957d6e93ab7a797d8c4b13d8553a164afc99f`  
		Last Modified: Tue, 29 Jan 2019 13:24:59 GMT  
		Size: 12.3 MB (12257262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; ppc64le

```console
$ docker pull perl@sha256:a6299489e42373d41d1535ceb00f427eac5670933de0b163ae7d4daa8ef73583
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.5 MB (332511838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5c8c7ea6527009833cea8258ecab7ad11bc1bfbe3959cffcc46e2c796e8486`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:07:47 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:07:50 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:20:40 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:20:42 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:20:44 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7af5b1ffd691683bd7bc076e2b75a6955528e269380e1a9201dd8d0ca085547`  
		Last Modified: Wed, 09 Jan 2019 11:26:52 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b42f701db39c8cd9771febab109679f5e93c9d01e297aa89847fd03ed2e6ca`  
		Last Modified: Tue, 29 Jan 2019 10:46:12 GMT  
		Size: 12.7 MB (12659362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4` - linux; s390x

```console
$ docker pull perl@sha256:68c6c00527cdcae36b9d6e0905ad9a96e5514c8ff28d6646e515f2c4246907b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329054169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce884fd673a39bc8f3d94771742351ec91aa90843d953889e9e10eb47b867acb`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:11:36 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:11:37 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:16:52 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:16:52 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:16:52 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d10808924675f6870578fe7aa5e6f72df010e9e5a8066c4aca036ea15d9cf`  
		Last Modified: Wed, 23 Jan 2019 15:39:05 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11a065b3817ec8f5877c4830a43de6196b8c98c16a3c3f594a3b832be3891e5`  
		Last Modified: Wed, 23 Jan 2019 15:39:09 GMT  
		Size: 13.2 MB (13184375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.4-slim`

```console
$ docker pull perl@sha256:0a3183b784f422de8ffe764d9f3b5f50b48f1e8f9931ab2a14c321d438b64a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24.4-slim` - linux; amd64

```console
$ docker pull perl@sha256:15353a74324fa486ba26b97b6323ab5bc94bf10f2fea90a3b0d371a216c6a0fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35798574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5fe58c6030125607f4d645b1683f121be0dc0489d672eae262cee03d24e59`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 01:05:10 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 01:05:10 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:36:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:37:00 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:37:00 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab77b3346f43339fba4bba892788fce9573bc4a26b6a3802f6a3a07b5f0f194`  
		Last Modified: Wed, 23 Jan 2019 01:29:41 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395c564e3c210908558f23094639d2319a695bb93507bc8f9131667ae7aed507`  
		Last Modified: Tue, 29 Jan 2019 00:52:05 GMT  
		Size: 13.3 MB (13296100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:fdfabdf416812fc61b767dbc860f651d186dec950d10ae9ffa505337fdaae92b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31751144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0052699e32e323dc7aab860267ce9dc220b96904527ff9d3daf23c10b9a54a46`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:35:30 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:35:30 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:42:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:42:52 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:42:53 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47095dae2e210fb599e332afbeb4103cda73af637551b3d8d480509309e0f294`  
		Last Modified: Wed, 23 Jan 2019 17:01:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f2ec89409dbeee2e5bf2d5a1ce4b6eb72c9a4cd01c13a42b6c231e82804c7e`  
		Last Modified: Wed, 23 Jan 2019 17:01:45 GMT  
		Size: 12.5 MB (12459065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:fe1c8a6d7635b84d28e6e5aa4fabb4fd243debb20ac3cc7ce288549810b23c1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33493212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188922cb7cbbc3bab8c1ea56c249ccb1f03bf5a423a21322c0e86ee1fa451638`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 06:20:34 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Fri, 25 Jan 2019 06:20:35 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:59:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:59:44 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:59:44 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726f161af2e67d306a0d6b66bbd7ab6086dab4d3395b5a08080a78115e5a2798`  
		Last Modified: Fri, 25 Jan 2019 06:48:58 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da0de3076c3df1c81cd404b9a32c8bc42f5cc59cca55e89876a5f80281de7d`  
		Last Modified: Tue, 29 Jan 2019 12:23:24 GMT  
		Size: 13.1 MB (13141267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim` - linux; 386

```console
$ docker pull perl@sha256:1c1d6a2bc6bb3658869a923113f4a25da6756c130e0344997832d0d6fabbe0c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35916199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86608ee1252108fcb06bae3cec9e80ceb0f309224e20886fbd33834d66a42c2d`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 17:00:24 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 17:00:24 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:08:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:08:28 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:08:28 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6daee4b807725966da1633b4d3933b42eade2d5113338c9f9756fb303b283f7`  
		Last Modified: Wed, 23 Jan 2019 17:23:53 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55a85c70697017f435078497458a3c43223b7a750701cd81eaf78931b659f5`  
		Last Modified: Tue, 29 Jan 2019 13:25:07 GMT  
		Size: 12.8 MB (12767319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:9185001960b239767b0cedf895d1d2dc3c949f27dea880aa345c279b26080eb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35930260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6940a4eacbc345f22e52d8100f8f9713fec8b9ae22a548a6fb6297b1bd038abf`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 12:34:33 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 12:34:38 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:27:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:27:26 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:27:28 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18165314e0dc6d0011b7ae40794dccd04114705e6ffc83d28b8d8208ea2ac597`  
		Last Modified: Wed, 23 Jan 2019 12:50:38 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a93a5b0d9f658fd6de4da02d8d4de503bc4c78089e83f82c97ed9d7a738580e`  
		Last Modified: Tue, 29 Jan 2019 10:46:29 GMT  
		Size: 13.2 MB (13173137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim` - linux; s390x

```console
$ docker pull perl@sha256:6476fce0afe5fa3a56c36c1637bb995a58276e047c993f0891294eab005b5340
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36054830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9de26ab33ff4c827c873448a9ef484a8893b53b68e6f0a03def8237fcf452a`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:16:57 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:16:57 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:22:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:22:32 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:22:32 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bf36b0bf230e64f3a95f30cf4aee61a9df3f88acefb9529f13f033a84a113`  
		Last Modified: Wed, 23 Jan 2019 15:39:14 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8422150fac0cb86c69a73c6ff753555830b022325991f1b01ee5fdab9fa994`  
		Last Modified: Wed, 23 Jan 2019 15:39:18 GMT  
		Size: 13.7 MB (13699564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.4-slim-threaded`

```console
$ docker pull perl@sha256:91606155e07c86e0906a8703667c32a7830cb99be753ccfc68ae61964011e5a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24.4-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:2193b1333d571024c18e74070ce2a04cec6218d83d1341ecbd62f054d327711d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35846749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f596c4b6ff1d946da37d0a3e9d773add9bd58e01a454d6ed852128c1374d9a2f`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 01:05:10 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 01:05:10 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:50:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:50:17 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:50:18 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab77b3346f43339fba4bba892788fce9573bc4a26b6a3802f6a3a07b5f0f194`  
		Last Modified: Wed, 23 Jan 2019 01:29:41 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8a62248a8d02ec1d4b0f0712273e73632a08071dd6438a1f06e8b0241b0885`  
		Last Modified: Tue, 29 Jan 2019 00:52:20 GMT  
		Size: 13.3 MB (13344275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:20cd9cb46499f3e8a7080b527973a1af542b9313bfc419f404f01719bd162d67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31767250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ac7104df2c78e85845f3afd3c35d7fe7d811aea7a6dbb4d5fa8abde9c7944b`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:35:30 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:35:30 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:58:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:58:45 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:58:45 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47095dae2e210fb599e332afbeb4103cda73af637551b3d8d480509309e0f294`  
		Last Modified: Wed, 23 Jan 2019 17:01:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b1029a43870c7a6015844593fc3baf8dd45cb7307139943e439705b5a08d84`  
		Last Modified: Wed, 23 Jan 2019 17:02:13 GMT  
		Size: 12.5 MB (12475171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:173ca52e45d44dacac08670a72cd38fc5ff89710e498abc72e26bcf384e3d87d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33519319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1a8f4c3ed7ada0da7e075487c27a5ff6a6c833d3f00c4ffed4484880b583f6`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 06:20:34 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Fri, 25 Jan 2019 06:20:35 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:20:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:20:13 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:20:13 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726f161af2e67d306a0d6b66bbd7ab6086dab4d3395b5a08080a78115e5a2798`  
		Last Modified: Fri, 25 Jan 2019 06:48:58 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d757ef38b0e0ec33a370ad9b7dd0426654d7b4afe79fc44bb832e9f08500a59f`  
		Last Modified: Tue, 29 Jan 2019 12:23:52 GMT  
		Size: 13.2 MB (13167374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:f731b1acbdd992e7ffec1dc06055a008e8b8dcd4c5b4605faa3f67ea0747deaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36009707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8b5a4b978fef9776ea6f3f501cd60295f86d9af8e170556c6c969e0d94d6ea`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 17:00:24 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 17:00:24 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:23:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:23:23 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:23:23 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6daee4b807725966da1633b4d3933b42eade2d5113338c9f9756fb303b283f7`  
		Last Modified: Wed, 23 Jan 2019 17:23:53 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce947a352e36d88442dedc403eefa0c56b82a9265726e0217184f518bb6f7c1`  
		Last Modified: Tue, 29 Jan 2019 13:25:22 GMT  
		Size: 12.9 MB (12860827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:83a83148000d0f10521b49a9242805911a011124652d1b3762268f79f3f00a9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35987867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f27c82bfe932a4f90a98fa33172d4b85a0fad521d585001b1b380da031a9ad`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 12:34:33 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 12:34:38 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:43:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:43:09 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:43:11 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18165314e0dc6d0011b7ae40794dccd04114705e6ffc83d28b8d8208ea2ac597`  
		Last Modified: Wed, 23 Jan 2019 12:50:38 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb03f1148674c4a8ad476d90bcc71980a70ae261e6e1fcd305f2cf470e0da7`  
		Last Modified: Tue, 29 Jan 2019 10:46:59 GMT  
		Size: 13.2 MB (13230744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:7268941f42787b4ab8fb139d7420032d748ed86113a83f7fc8ad68b0332bf213
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36070599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b2221074f72ee074bd04a90d93e4ca2252676af43d11afbe1f7bbbca84158b`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:16:57 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:16:57 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:37:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:37:13 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:37:13 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bf36b0bf230e64f3a95f30cf4aee61a9df3f88acefb9529f13f033a84a113`  
		Last Modified: Wed, 23 Jan 2019 15:39:14 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974ef52ea62fbdb8177121d7d625e038d93959bc8effb0303e4273a76014085e`  
		Last Modified: Wed, 23 Jan 2019 15:39:37 GMT  
		Size: 13.7 MB (13715333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.4-threaded`

```console
$ docker pull perl@sha256:809dc72427aa4dcd03ed37e8428c7e1342978d1a357d3ca0996914106f13fbe0
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
$ docker pull perl@sha256:7cdf1cd0fbd5322baad0f596a5c106751ea0a0144405c6744b6a1c3fefa31a2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337640054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e737f3e66a3b18970579e476888934f53688e07a73e7b38af6fd5ff2d5ead92c`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 00:57:22 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 00:57:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:43:40 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:43:40 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:43:40 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd37142156e21ed30abd1c8154d326f0d4e3fea48993a5151ffde8a31f8c132`  
		Last Modified: Wed, 23 Jan 2019 01:29:33 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f580c191daed431f51f37df552902caa37a78feec79b6fb74006f99747242e48`  
		Last Modified: Tue, 29 Jan 2019 00:52:11 GMT  
		Size: 12.8 MB (12830782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:1776ee64e4d05745e7bc25d842d6ef9faa9a721eba5f3f88712ba7c165daad52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308873053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62f3a8d7fe342fddfffccb6264d59e4fc4c8e701469574bed89569d9fb2c8b0`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:28:40 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:28:41 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:49:48 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:49:49 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:49:50 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac56ff07b1d82c7dbba048dc3c6523b60419d2c9099cf8a89ea490a4c2ed7032`  
		Last Modified: Wed, 23 Jan 2019 17:01:26 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec7a288c6c0136be91944be13cb22e4a4186337363554ac4182fd743ae1e66d`  
		Last Modified: Wed, 23 Jan 2019 17:01:58 GMT  
		Size: 12.0 MB (11961994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:27f09f266086779e00406ff3fd74c23dc8cf93b0b2ffef1468f655381aed48ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319295612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ca0aa2b29dab867f09847211fe951bb5d01a71caea57a2e994c55b21d4af71`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 12:52:00 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 12:52:01 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:09:15 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:09:16 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:09:16 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f67dd7e8f4ac5182129038c10ed3b2b7178188d966e969a53c4b205f0894251`  
		Last Modified: Wed, 09 Jan 2019 13:18:27 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313d86a68785a7779494447f5d8e6b8aa812ab180a5963b4bb39380e5453f265`  
		Last Modified: Tue, 29 Jan 2019 12:23:38 GMT  
		Size: 12.7 MB (12661810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; 386

```console
$ docker pull perl@sha256:2df73b1614ec0d596bf7a252652e0acd2e64357d19d0f74fc583eca1f7d159e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344697580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776e77f3011d0d0d087e0358709f865bd61dbf559ff4991d1c09fe920380affe`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:53:52 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:53:53 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:15:52 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:15:52 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:15:52 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e4f97c2328708b35e2e436a6ba1bd7c71a9bc3c913a636c54b811113f64cbb`  
		Last Modified: Wed, 23 Jan 2019 17:23:44 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8286a5400c257e9f94bc398dd96abcf4a63d790b5c2019a91ab9fbf7059ddcee`  
		Last Modified: Tue, 29 Jan 2019 13:25:15 GMT  
		Size: 12.3 MB (12344578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:4d495306d6c59139a8e71e718e7784f88f5f117afe78a08577bbf02bc9dcf940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332579484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7832e91edba0421eeb8a4a897f2d0628ccf99f2caa5d1df9376ce3db505daf5c`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:07:47 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:07:50 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:32:51 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:32:54 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:32:55 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7af5b1ffd691683bd7bc076e2b75a6955528e269380e1a9201dd8d0ca085547`  
		Last Modified: Wed, 09 Jan 2019 11:26:52 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcf3e20752882f0f9437334e521908855d62644842511744c92e36b9985cf56`  
		Last Modified: Tue, 29 Jan 2019 10:46:45 GMT  
		Size: 12.7 MB (12727008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.4-threaded` - linux; s390x

```console
$ docker pull perl@sha256:4226174a9a829688bbfb1ed044fbdabdd13b76aaaa714b421a4a3101fd9584bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329062131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb92336a0c124c5f8c6076d8dcc624fc9892cdd8cff0db71991856811b2edc3`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:11:36 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:11:37 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:29:40 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:29:41 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:29:41 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d10808924675f6870578fe7aa5e6f72df010e9e5a8066c4aca036ea15d9cf`  
		Last Modified: Wed, 23 Jan 2019 15:39:05 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5baafb2971baffb6d246bc95867b3ae6eba47581988a9e2c90a44b994c14dda`  
		Last Modified: Wed, 23 Jan 2019 15:39:27 GMT  
		Size: 13.2 MB (13192337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-slim`

```console
$ docker pull perl@sha256:0a3183b784f422de8ffe764d9f3b5f50b48f1e8f9931ab2a14c321d438b64a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24-slim` - linux; amd64

```console
$ docker pull perl@sha256:15353a74324fa486ba26b97b6323ab5bc94bf10f2fea90a3b0d371a216c6a0fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35798574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e5fe58c6030125607f4d645b1683f121be0dc0489d672eae262cee03d24e59`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 01:05:10 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 01:05:10 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:36:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:37:00 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:37:00 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab77b3346f43339fba4bba892788fce9573bc4a26b6a3802f6a3a07b5f0f194`  
		Last Modified: Wed, 23 Jan 2019 01:29:41 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395c564e3c210908558f23094639d2319a695bb93507bc8f9131667ae7aed507`  
		Last Modified: Tue, 29 Jan 2019 00:52:05 GMT  
		Size: 13.3 MB (13296100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:fdfabdf416812fc61b767dbc860f651d186dec950d10ae9ffa505337fdaae92b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31751144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0052699e32e323dc7aab860267ce9dc220b96904527ff9d3daf23c10b9a54a46`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:35:30 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:35:30 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:42:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:42:52 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:42:53 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47095dae2e210fb599e332afbeb4103cda73af637551b3d8d480509309e0f294`  
		Last Modified: Wed, 23 Jan 2019 17:01:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f2ec89409dbeee2e5bf2d5a1ce4b6eb72c9a4cd01c13a42b6c231e82804c7e`  
		Last Modified: Wed, 23 Jan 2019 17:01:45 GMT  
		Size: 12.5 MB (12459065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:fe1c8a6d7635b84d28e6e5aa4fabb4fd243debb20ac3cc7ce288549810b23c1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33493212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188922cb7cbbc3bab8c1ea56c249ccb1f03bf5a423a21322c0e86ee1fa451638`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 06:20:34 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Fri, 25 Jan 2019 06:20:35 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:59:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:59:44 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:59:44 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726f161af2e67d306a0d6b66bbd7ab6086dab4d3395b5a08080a78115e5a2798`  
		Last Modified: Fri, 25 Jan 2019 06:48:58 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9da0de3076c3df1c81cd404b9a32c8bc42f5cc59cca55e89876a5f80281de7d`  
		Last Modified: Tue, 29 Jan 2019 12:23:24 GMT  
		Size: 13.1 MB (13141267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim` - linux; 386

```console
$ docker pull perl@sha256:1c1d6a2bc6bb3658869a923113f4a25da6756c130e0344997832d0d6fabbe0c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35916199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86608ee1252108fcb06bae3cec9e80ceb0f309224e20886fbd33834d66a42c2d`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 17:00:24 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 17:00:24 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:08:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:08:28 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:08:28 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6daee4b807725966da1633b4d3933b42eade2d5113338c9f9756fb303b283f7`  
		Last Modified: Wed, 23 Jan 2019 17:23:53 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55a85c70697017f435078497458a3c43223b7a750701cd81eaf78931b659f5`  
		Last Modified: Tue, 29 Jan 2019 13:25:07 GMT  
		Size: 12.8 MB (12767319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:9185001960b239767b0cedf895d1d2dc3c949f27dea880aa345c279b26080eb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35930260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6940a4eacbc345f22e52d8100f8f9713fec8b9ae22a548a6fb6297b1bd038abf`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 12:34:33 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 12:34:38 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:27:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:27:26 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:27:28 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18165314e0dc6d0011b7ae40794dccd04114705e6ffc83d28b8d8208ea2ac597`  
		Last Modified: Wed, 23 Jan 2019 12:50:38 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a93a5b0d9f658fd6de4da02d8d4de503bc4c78089e83f82c97ed9d7a738580e`  
		Last Modified: Tue, 29 Jan 2019 10:46:29 GMT  
		Size: 13.2 MB (13173137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim` - linux; s390x

```console
$ docker pull perl@sha256:6476fce0afe5fa3a56c36c1637bb995a58276e047c993f0891294eab005b5340
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36054830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9de26ab33ff4c827c873448a9ef484a8893b53b68e6f0a03def8237fcf452a`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:16:57 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:16:57 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:22:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:22:32 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:22:32 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bf36b0bf230e64f3a95f30cf4aee61a9df3f88acefb9529f13f033a84a113`  
		Last Modified: Wed, 23 Jan 2019 15:39:14 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8422150fac0cb86c69a73c6ff753555830b022325991f1b01ee5fdab9fa994`  
		Last Modified: Wed, 23 Jan 2019 15:39:18 GMT  
		Size: 13.7 MB (13699564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-slim-threaded`

```console
$ docker pull perl@sha256:91606155e07c86e0906a8703667c32a7830cb99be753ccfc68ae61964011e5a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.24-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:2193b1333d571024c18e74070ce2a04cec6218d83d1341ecbd62f054d327711d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35846749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f596c4b6ff1d946da37d0a3e9d773add9bd58e01a454d6ed852128c1374d9a2f`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 01:05:10 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 01:05:10 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:50:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:50:17 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:50:18 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab77b3346f43339fba4bba892788fce9573bc4a26b6a3802f6a3a07b5f0f194`  
		Last Modified: Wed, 23 Jan 2019 01:29:41 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8a62248a8d02ec1d4b0f0712273e73632a08071dd6438a1f06e8b0241b0885`  
		Last Modified: Tue, 29 Jan 2019 00:52:20 GMT  
		Size: 13.3 MB (13344275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:20cd9cb46499f3e8a7080b527973a1af542b9313bfc419f404f01719bd162d67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31767250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ac7104df2c78e85845f3afd3c35d7fe7d811aea7a6dbb4d5fa8abde9c7944b`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:35:30 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:35:30 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:58:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:58:45 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:58:45 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47095dae2e210fb599e332afbeb4103cda73af637551b3d8d480509309e0f294`  
		Last Modified: Wed, 23 Jan 2019 17:01:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b1029a43870c7a6015844593fc3baf8dd45cb7307139943e439705b5a08d84`  
		Last Modified: Wed, 23 Jan 2019 17:02:13 GMT  
		Size: 12.5 MB (12475171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:173ca52e45d44dacac08670a72cd38fc5ff89710e498abc72e26bcf384e3d87d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33519319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1a8f4c3ed7ada0da7e075487c27a5ff6a6c833d3f00c4ffed4484880b583f6`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 06:20:34 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Fri, 25 Jan 2019 06:20:35 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:20:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:20:13 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:20:13 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726f161af2e67d306a0d6b66bbd7ab6086dab4d3395b5a08080a78115e5a2798`  
		Last Modified: Fri, 25 Jan 2019 06:48:58 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d757ef38b0e0ec33a370ad9b7dd0426654d7b4afe79fc44bb832e9f08500a59f`  
		Last Modified: Tue, 29 Jan 2019 12:23:52 GMT  
		Size: 13.2 MB (13167374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:f731b1acbdd992e7ffec1dc06055a008e8b8dcd4c5b4605faa3f67ea0747deaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36009707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8b5a4b978fef9776ea6f3f501cd60295f86d9af8e170556c6c969e0d94d6ea`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 17:00:24 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 17:00:24 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:23:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:23:23 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:23:23 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6daee4b807725966da1633b4d3933b42eade2d5113338c9f9756fb303b283f7`  
		Last Modified: Wed, 23 Jan 2019 17:23:53 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce947a352e36d88442dedc403eefa0c56b82a9265726e0217184f518bb6f7c1`  
		Last Modified: Tue, 29 Jan 2019 13:25:22 GMT  
		Size: 12.9 MB (12860827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:83a83148000d0f10521b49a9242805911a011124652d1b3762268f79f3f00a9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35987867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f27c82bfe932a4f90a98fa33172d4b85a0fad521d585001b1b380da031a9ad`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 12:34:33 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 12:34:38 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:43:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:43:09 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:43:11 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18165314e0dc6d0011b7ae40794dccd04114705e6ffc83d28b8d8208ea2ac597`  
		Last Modified: Wed, 23 Jan 2019 12:50:38 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb03f1148674c4a8ad476d90bcc71980a70ae261e6e1fcd305f2cf470e0da7`  
		Last Modified: Tue, 29 Jan 2019 10:46:59 GMT  
		Size: 13.2 MB (13230744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:7268941f42787b4ab8fb139d7420032d748ed86113a83f7fc8ad68b0332bf213
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36070599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b2221074f72ee074bd04a90d93e4ca2252676af43d11afbe1f7bbbca84158b`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:16:57 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:16:57 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:37:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:37:13 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:37:13 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bf36b0bf230e64f3a95f30cf4aee61a9df3f88acefb9529f13f033a84a113`  
		Last Modified: Wed, 23 Jan 2019 15:39:14 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974ef52ea62fbdb8177121d7d625e038d93959bc8effb0303e4273a76014085e`  
		Last Modified: Wed, 23 Jan 2019 15:39:37 GMT  
		Size: 13.7 MB (13715333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-threaded`

```console
$ docker pull perl@sha256:809dc72427aa4dcd03ed37e8428c7e1342978d1a357d3ca0996914106f13fbe0
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
$ docker pull perl@sha256:7cdf1cd0fbd5322baad0f596a5c106751ea0a0144405c6744b6a1c3fefa31a2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337640054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e737f3e66a3b18970579e476888934f53688e07a73e7b38af6fd5ff2d5ead92c`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 00:57:22 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 00:57:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:43:40 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:43:40 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:43:40 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd37142156e21ed30abd1c8154d326f0d4e3fea48993a5151ffde8a31f8c132`  
		Last Modified: Wed, 23 Jan 2019 01:29:33 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f580c191daed431f51f37df552902caa37a78feec79b6fb74006f99747242e48`  
		Last Modified: Tue, 29 Jan 2019 00:52:11 GMT  
		Size: 12.8 MB (12830782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:1776ee64e4d05745e7bc25d842d6ef9faa9a721eba5f3f88712ba7c165daad52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308873053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62f3a8d7fe342fddfffccb6264d59e4fc4c8e701469574bed89569d9fb2c8b0`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:28:40 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:28:41 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:49:48 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:49:49 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:49:50 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac56ff07b1d82c7dbba048dc3c6523b60419d2c9099cf8a89ea490a4c2ed7032`  
		Last Modified: Wed, 23 Jan 2019 17:01:26 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec7a288c6c0136be91944be13cb22e4a4186337363554ac4182fd743ae1e66d`  
		Last Modified: Wed, 23 Jan 2019 17:01:58 GMT  
		Size: 12.0 MB (11961994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:27f09f266086779e00406ff3fd74c23dc8cf93b0b2ffef1468f655381aed48ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319295612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ca0aa2b29dab867f09847211fe951bb5d01a71caea57a2e994c55b21d4af71`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 12:52:00 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 12:52:01 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:09:15 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:09:16 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:09:16 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f67dd7e8f4ac5182129038c10ed3b2b7178188d966e969a53c4b205f0894251`  
		Last Modified: Wed, 09 Jan 2019 13:18:27 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313d86a68785a7779494447f5d8e6b8aa812ab180a5963b4bb39380e5453f265`  
		Last Modified: Tue, 29 Jan 2019 12:23:38 GMT  
		Size: 12.7 MB (12661810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; 386

```console
$ docker pull perl@sha256:2df73b1614ec0d596bf7a252652e0acd2e64357d19d0f74fc583eca1f7d159e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344697580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776e77f3011d0d0d087e0358709f865bd61dbf559ff4991d1c09fe920380affe`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 16:53:52 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 16:53:53 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:15:52 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:15:52 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:15:52 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e4f97c2328708b35e2e436a6ba1bd7c71a9bc3c913a636c54b811113f64cbb`  
		Last Modified: Wed, 23 Jan 2019 17:23:44 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8286a5400c257e9f94bc398dd96abcf4a63d790b5c2019a91ab9fbf7059ddcee`  
		Last Modified: Tue, 29 Jan 2019 13:25:15 GMT  
		Size: 12.3 MB (12344578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:4d495306d6c59139a8e71e718e7784f88f5f117afe78a08577bbf02bc9dcf940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332579484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7832e91edba0421eeb8a4a897f2d0628ccf99f2caa5d1df9376ce3db505daf5c`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:07:47 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:07:50 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:32:51 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:32:54 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:32:55 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7af5b1ffd691683bd7bc076e2b75a6955528e269380e1a9201dd8d0ca085547`  
		Last Modified: Wed, 09 Jan 2019 11:26:52 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcf3e20752882f0f9437334e521908855d62644842511744c92e36b9985cf56`  
		Last Modified: Tue, 29 Jan 2019 10:46:45 GMT  
		Size: 12.7 MB (12727008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; s390x

```console
$ docker pull perl@sha256:4226174a9a829688bbfb1ed044fbdabdd13b76aaaa714b421a4a3101fd9584bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329062131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb92336a0c124c5f8c6076d8dcc624fc9892cdd8cff0db71991856811b2edc3`
-	Default Command: `["perl5.24.4","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:11:36 GMT
COPY file:e156a55e26f54ccb7be2f8e9831b8853bca33fa0de690dbcffcf4de15a936cc2 in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:11:37 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:29:40 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:29:41 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:29:41 GMT
CMD ["perl5.24.4" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d10808924675f6870578fe7aa5e6f72df010e9e5a8066c4aca036ea15d9cf`  
		Last Modified: Wed, 23 Jan 2019 15:39:05 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5baafb2971baffb6d246bc95867b3ae6eba47581988a9e2c90a44b994c14dda`  
		Last Modified: Wed, 23 Jan 2019 15:39:27 GMT  
		Size: 13.2 MB (13192337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26`

```console
$ docker pull perl@sha256:14ea0458682046a0ed4708ae22b5157d05ab858cc4370fbaf0feb30ea8eb905c
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
$ docker pull perl@sha256:c92fbf9859b5612210c862f81e82b92563a4d9dac3a503a21ace192135a50235
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (337962119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9c3e82b9973a29341a84a1fbad4b69bcdb2509752d112c69f39b326b36b1d6`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:01:01 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:01:02 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:01:02 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079bef8c3a2f2f720738b5b5d195b439633971e1a98c77680cc04ba49d7e310c`  
		Last Modified: Tue, 29 Jan 2019 00:51:20 GMT  
		Size: 13.2 MB (13154432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; arm variant v7

```console
$ docker pull perl@sha256:7f2422291d02cade8134c5f2e938eb7284d598d90c320bb696179605ae975ad9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309208670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43572a343828d9ec49eb1d90f95f74fa1d8bcecd5d8281a9854bb82edc330824`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:01:04 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:01:05 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:01:05 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d0470924081faaae51aa925891f04432f26e55b9a66023f6390b206786dd54`  
		Last Modified: Wed, 23 Jan 2019 17:00:33 GMT  
		Size: 12.3 MB (12299203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:0cd146bd8bcf6568b90c9e174a7f44862c9dcc03063126bfe84286b350c9c256
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319630588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eff59653a7c305663038ec3be27338a8faa6e7f6f7cd23e0f0e8912b32a6a7e`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:57:43 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:57:44 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:57:45 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c330940bfa0522b13609ce84cdc00e9d2f10a61b09ab0f2c1657f93dc81ab8d`  
		Last Modified: Tue, 29 Jan 2019 12:22:12 GMT  
		Size: 13.0 MB (12998372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; 386

```console
$ docker pull perl@sha256:8bb74ef3bdfc604211b2405f04f6884098e6721d192e06352240163a242dcf43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344990554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f71f184d90937b2194ef053efbe0e3706cbbdc51702255e4bcb6f1274ced6a4`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:29:25 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:29:26 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:29:26 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a999924e330b98f809ee1494a3f85e66982c3a62240534323eb8762b701ed`  
		Last Modified: Tue, 29 Jan 2019 13:24:29 GMT  
		Size: 12.6 MB (12639137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; ppc64le

```console
$ docker pull perl@sha256:0eb0e3e58e17a4674dba0a3c1567106edcd9380785f25d416d7577886bd62320
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332873124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3c8e8db816cc8670c3abac92cf27f58df1e28b76f84d58edaaff3a328a55ca`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:54:38 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:54:41 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:54:42 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdc680fca7e75ed0c308e4292127b17e56070af4104926974fb525e2512a022`  
		Last Modified: Tue, 29 Jan 2019 10:45:15 GMT  
		Size: 13.0 MB (13022239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; s390x

```console
$ docker pull perl@sha256:97387bcee45a30940b8364d349c54f4ed4ea60ada740919dbe44169ddbbceff2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329403725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d4d465946e09e7d2172875e42c07a887ba8c3be01ad1a57a8c4194bacf07a51`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:53:08 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:53:08 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:53:08 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255ea4c0890c6713411228ff21beeceb16dabb56fffb6e58d5a6f57019d6b819`  
		Last Modified: Wed, 23 Jan 2019 15:38:35 GMT  
		Size: 13.5 MB (13535516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.3`

```console
$ docker pull perl@sha256:14ea0458682046a0ed4708ae22b5157d05ab858cc4370fbaf0feb30ea8eb905c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26.3` - linux; amd64

```console
$ docker pull perl@sha256:c92fbf9859b5612210c862f81e82b92563a4d9dac3a503a21ace192135a50235
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (337962119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9c3e82b9973a29341a84a1fbad4b69bcdb2509752d112c69f39b326b36b1d6`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:01:01 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:01:02 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:01:02 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079bef8c3a2f2f720738b5b5d195b439633971e1a98c77680cc04ba49d7e310c`  
		Last Modified: Tue, 29 Jan 2019 00:51:20 GMT  
		Size: 13.2 MB (13154432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3` - linux; arm variant v7

```console
$ docker pull perl@sha256:7f2422291d02cade8134c5f2e938eb7284d598d90c320bb696179605ae975ad9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309208670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43572a343828d9ec49eb1d90f95f74fa1d8bcecd5d8281a9854bb82edc330824`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:01:04 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:01:05 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:01:05 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d0470924081faaae51aa925891f04432f26e55b9a66023f6390b206786dd54`  
		Last Modified: Wed, 23 Jan 2019 17:00:33 GMT  
		Size: 12.3 MB (12299203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:0cd146bd8bcf6568b90c9e174a7f44862c9dcc03063126bfe84286b350c9c256
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319630588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eff59653a7c305663038ec3be27338a8faa6e7f6f7cd23e0f0e8912b32a6a7e`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:57:43 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:57:44 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:57:45 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c330940bfa0522b13609ce84cdc00e9d2f10a61b09ab0f2c1657f93dc81ab8d`  
		Last Modified: Tue, 29 Jan 2019 12:22:12 GMT  
		Size: 13.0 MB (12998372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3` - linux; 386

```console
$ docker pull perl@sha256:8bb74ef3bdfc604211b2405f04f6884098e6721d192e06352240163a242dcf43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344990554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f71f184d90937b2194ef053efbe0e3706cbbdc51702255e4bcb6f1274ced6a4`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:29:25 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:29:26 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:29:26 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1a999924e330b98f809ee1494a3f85e66982c3a62240534323eb8762b701ed`  
		Last Modified: Tue, 29 Jan 2019 13:24:29 GMT  
		Size: 12.6 MB (12639137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3` - linux; ppc64le

```console
$ docker pull perl@sha256:0eb0e3e58e17a4674dba0a3c1567106edcd9380785f25d416d7577886bd62320
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332873124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3c8e8db816cc8670c3abac92cf27f58df1e28b76f84d58edaaff3a328a55ca`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:54:38 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:54:41 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:54:42 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdc680fca7e75ed0c308e4292127b17e56070af4104926974fb525e2512a022`  
		Last Modified: Tue, 29 Jan 2019 10:45:15 GMT  
		Size: 13.0 MB (13022239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3` - linux; s390x

```console
$ docker pull perl@sha256:97387bcee45a30940b8364d349c54f4ed4ea60ada740919dbe44169ddbbceff2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329403725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d4d465946e09e7d2172875e42c07a887ba8c3be01ad1a57a8c4194bacf07a51`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:53:08 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:53:08 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:53:08 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255ea4c0890c6713411228ff21beeceb16dabb56fffb6e58d5a6f57019d6b819`  
		Last Modified: Wed, 23 Jan 2019 15:38:35 GMT  
		Size: 13.5 MB (13535516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.3-slim`

```console
$ docker pull perl@sha256:efa6049d883f210ead2a4ef1301a03520a256608a6d8511bcd77decccb080364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26.3-slim` - linux; amd64

```console
$ docker pull perl@sha256:6994fb6497bcab3fcc33e8316f1f861da3d6e630f900965ec925d163f7546115
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36165956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc0e3246a2c16b4d3bc6cf85f61a7113f7e49e10c49f79ec3acdc14827c0445`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:08:31 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:08:31 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd63e8024acc1a04f0d1066655a91bf09f5d6e22fe041ffa519b0e13a2ff20e4`  
		Last Modified: Tue, 29 Jan 2019 00:51:34 GMT  
		Size: 13.7 MB (13665071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:d07a3352aa9e31b48792a81981b0f9c4d413fa173be17e9b75af55c70ee31c3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32093284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7331d2f17308b3a0af780fee058ef7ccb522d0371f9170fe7bf3ab44dc38862d`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:11:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:11:05 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:11:05 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d423cee4588b0734c1fdfcf8c225d63a7fd70213b074845ef6525fabb5f181`  
		Last Modified: Wed, 23 Jan 2019 17:00:47 GMT  
		Size: 12.8 MB (12802795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:ff7325893e27607d971b274d2b5da5a044de9539a559805356b393141e298b86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33847405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92af47c4f8c52e3b51e402c5c5ac4307b5ce65f614e9633ca753885c33cbd5be`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:12:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:12:02 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:12:02 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7837b7ce373017bdbcac3e2f3f58a341bdc8b91031d37c4fc568717b8d3f70b`  
		Last Modified: Tue, 29 Jan 2019 12:22:27 GMT  
		Size: 13.5 MB (13497046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim` - linux; 386

```console
$ docker pull perl@sha256:b599e8a5cadec6c19362a312a5045f1b8e873d9233f5c56dd283c79e2255bf30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36305427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee643dfcbc744fb95af47d79486be64896571e364f742b693679d765a719b56d`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:37:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:37:27 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:37:27 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc81dc2db472bc7462be74f79593497beef0f313e1a23cdb7223cc2487803df`  
		Last Modified: Tue, 29 Jan 2019 13:24:36 GMT  
		Size: 13.2 MB (13158133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:1fe99d631980ede6f702b447181ef272ce9026e5e3a4e92b6da1480443c5baac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36283287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ac8ea0b1995ae26cabcdaf18b7cd4374a49c0bdd3e4f21c30fb2ccb5ff3107`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:01:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:01:59 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:02:01 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4eaae03ba3857f1c2f73594f76ac29d4e138dbefb7c49c4e56654cabb55d20`  
		Last Modified: Tue, 29 Jan 2019 10:45:29 GMT  
		Size: 13.5 MB (13527752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim` - linux; s390x

```console
$ docker pull perl@sha256:33eaf6ecd870c928f168bb8bc8075534afae1d3fbcdf7169c07a1a77537b5bd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36391759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257ec640813e167e67d56d9c4cb081c714913a9e1d78f1bbd6310a940b6b8ed`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:58:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:58:43 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:58:43 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329e9396b9593c8c6ec27c69dc65cd0f51c7b5505cc08fbaf3cd60f252604c2`  
		Last Modified: Wed, 23 Jan 2019 15:38:42 GMT  
		Size: 14.0 MB (14038084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.3-slim-threaded`

```console
$ docker pull perl@sha256:6234de147b044fd154e4b015db174dbee2695f57d9c15fb37d8f6870074b94a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26.3-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:019ae9545eac5f549fa2daaa17b11955f7ad5d6a500bce16be7efa2b486b5078
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36212788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a4444eb67b85b3aa481065bcd0f16660c5a7d21cbefb21af6cdd8d25b9d312`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:24:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:24:50 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:24:50 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93d8240f7506c6bc6bb9ad232fd8d5df89628bbc2cf0f448aa3e1b22181470`  
		Last Modified: Tue, 29 Jan 2019 00:51:50 GMT  
		Size: 13.7 MB (13711903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:6f6263de75caed9596cad58d92f6046908ef75dcdb471b8ce223be800fb4b5c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32101360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f7a6ca58eabcf9a3554d74fdf94814e459476ba254170ad71d149617a83c2b`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:28:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:28:27 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:28:27 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b31a173bcf5e976f6f2bf322b36630679e43f2e7afdb680fd0cf59332c1de32`  
		Last Modified: Wed, 23 Jan 2019 17:01:18 GMT  
		Size: 12.8 MB (12810871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6350d6f517d33fd3793ca9d949f22340636b89a007e8fbb7a81a8f559632fe97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33877672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253c3b400bbeaf4f4e0988b765537ec0f936c356cc3cda59798382ec7378d725`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:39:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:39:41 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:39:41 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be485bae63d80d906f9f3001160c0a723a2ec771674c4a693dc7d4fbf97dafd`  
		Last Modified: Tue, 29 Jan 2019 12:22:56 GMT  
		Size: 13.5 MB (13527313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:4c043e20124ee1e41b6f0dd549468547302c3b413b2e3e53c9cff1cb555401e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36397225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ec6b21d2e3c803e3fe2a84917fa0ce52ae2fcc46efe2e0c0c82c7d4043b275`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:55:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:55:02 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:55:02 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d2bfb4751b7ab407c772ac174d620a6b507d7432728d6dcfbdee757d4671f7`  
		Last Modified: Tue, 29 Jan 2019 13:24:51 GMT  
		Size: 13.2 MB (13249931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:4f2725ec525493ff739220e72fbd677c0925aff02f8f0a1bc5d904cfd8eafa01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36349348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6c6eed8181b31b855e5f8db781d60dd1d3a79e8a38cfc0236601f7a55ccaf8`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:15:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:15:47 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:15:48 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2530546fc729616b553780fad0865d465b415549a9f95b15c6f9a04f1c75535`  
		Last Modified: Tue, 29 Jan 2019 10:45:58 GMT  
		Size: 13.6 MB (13593813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:261e6a8c08dbb02f8117e19733278b2e6e8e1466731dc45a1ee55a3481660236
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36405074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed18ce43c353f8def39bc78a737316ff8e4da52c79107d6c11adfe4feef12561`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:11:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:11:23 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:11:24 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a594c1754dbd59deefbf2cb88a79f649a9e0042e37bf7bc3f2807a16f2282d`  
		Last Modified: Wed, 23 Jan 2019 15:38:59 GMT  
		Size: 14.1 MB (14051399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.3-threaded`

```console
$ docker pull perl@sha256:4baac407c9e3dc7d1f4d782524c441c048b8004cf0eeb44e7eaa5a754ca1468e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26.3-threaded` - linux; amd64

```console
$ docker pull perl@sha256:14b6d115d3a9772c8d5e714587b2415dc0e53b1478cc72b6135146b8989d0f45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338004121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbe402166544273730d06dae505b3c13d70d38bf170ce443231a270ae396231`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:16:37 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:16:38 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:16:38 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b81ddf831944508e3c78ef6a7f1f25090279ed8cfa6bbeb158be8913b2de2`  
		Last Modified: Tue, 29 Jan 2019 00:51:41 GMT  
		Size: 13.2 MB (13196434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:98c0895c6f2f20fb53aab43abdc3ea04ba73756bc911bcd71c568e3414210768
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309223732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73170ff3a76724f8c054a8a3b0903bf51432b6951ac7104492ea53e8f58948da`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:19:28 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:19:29 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:19:30 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c7e8178a3ab7354f518d81a60c7246fea790b7d678cc0db49f2f735c08d346`  
		Last Modified: Wed, 23 Jan 2019 17:01:05 GMT  
		Size: 12.3 MB (12314265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6b31ef56dc7ccd87f2c1c66967385870bc94509bc7e0cf847948fadbc083854a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319648636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0893c069e7705bbd2882c00f059f05b988d38993c18dae3ffd2665bed431b1`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:25:16 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:25:17 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:25:18 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda40a8e96e70e3239a6ec841651e7e61cce1f1bb9377f3ca1a23e56c2193bf4`  
		Last Modified: Tue, 29 Jan 2019 12:22:41 GMT  
		Size: 13.0 MB (13016420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-threaded` - linux; 386

```console
$ docker pull perl@sha256:d88893f5c9dd00c0a524d7df51106e3ba215ecc096852b54c39dbe64f6d80d07
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345077104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc383af4d7e57f7eb63403dd57db7489d9d0a4a40060dc9440f86e6a39a0775`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:46:04 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:46:04 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:46:05 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e136553070d0061fd9b9985963afc20850bd9bb2c97679f6ebc2b2657fa516`  
		Last Modified: Tue, 29 Jan 2019 13:24:44 GMT  
		Size: 12.7 MB (12725687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:22ab3afbf763739933d32c05cb9854fc5e5ec2004ae03b4a848c46d079178340
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332931971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83358872ebf42461ba3aae048da850ac4a0fc35f60d14d7e581b03847349197e`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:08:20 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:08:25 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:08:27 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df54627a0c85d49cc319c59c5cdbb90dc92cd5bcc47be429376ccbc3bf3600f6`  
		Last Modified: Tue, 29 Jan 2019 10:45:43 GMT  
		Size: 13.1 MB (13081086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.3-threaded` - linux; s390x

```console
$ docker pull perl@sha256:ee4ecce5164c8e9ce1acdc77755cf062f97b3f802b8a6d8ae75d466df9e2ff49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329409825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c19ff17bdfbd9d5937218dc9d5fd6ddc1882e2665ae69ddcb23ca1ff8f73d1`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:04:52 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:04:52 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:04:52 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9a2d4159e195cb7cca84fe815ab27f07313024e0494cf4b6d5f00fbe87dc4`  
		Last Modified: Wed, 23 Jan 2019 15:38:50 GMT  
		Size: 13.5 MB (13541616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26-slim`

```console
$ docker pull perl@sha256:efa6049d883f210ead2a4ef1301a03520a256608a6d8511bcd77decccb080364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26-slim` - linux; amd64

```console
$ docker pull perl@sha256:6994fb6497bcab3fcc33e8316f1f861da3d6e630f900965ec925d163f7546115
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36165956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc0e3246a2c16b4d3bc6cf85f61a7113f7e49e10c49f79ec3acdc14827c0445`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:08:31 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:08:31 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd63e8024acc1a04f0d1066655a91bf09f5d6e22fe041ffa519b0e13a2ff20e4`  
		Last Modified: Tue, 29 Jan 2019 00:51:34 GMT  
		Size: 13.7 MB (13665071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:d07a3352aa9e31b48792a81981b0f9c4d413fa173be17e9b75af55c70ee31c3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32093284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7331d2f17308b3a0af780fee058ef7ccb522d0371f9170fe7bf3ab44dc38862d`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:11:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:11:05 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:11:05 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d423cee4588b0734c1fdfcf8c225d63a7fd70213b074845ef6525fabb5f181`  
		Last Modified: Wed, 23 Jan 2019 17:00:47 GMT  
		Size: 12.8 MB (12802795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:ff7325893e27607d971b274d2b5da5a044de9539a559805356b393141e298b86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33847405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92af47c4f8c52e3b51e402c5c5ac4307b5ce65f614e9633ca753885c33cbd5be`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:12:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:12:02 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:12:02 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7837b7ce373017bdbcac3e2f3f58a341bdc8b91031d37c4fc568717b8d3f70b`  
		Last Modified: Tue, 29 Jan 2019 12:22:27 GMT  
		Size: 13.5 MB (13497046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim` - linux; 386

```console
$ docker pull perl@sha256:b599e8a5cadec6c19362a312a5045f1b8e873d9233f5c56dd283c79e2255bf30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36305427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee643dfcbc744fb95af47d79486be64896571e364f742b693679d765a719b56d`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:37:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:37:27 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:37:27 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc81dc2db472bc7462be74f79593497beef0f313e1a23cdb7223cc2487803df`  
		Last Modified: Tue, 29 Jan 2019 13:24:36 GMT  
		Size: 13.2 MB (13158133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:1fe99d631980ede6f702b447181ef272ce9026e5e3a4e92b6da1480443c5baac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36283287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ac8ea0b1995ae26cabcdaf18b7cd4374a49c0bdd3e4f21c30fb2ccb5ff3107`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:01:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:01:59 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:02:01 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4eaae03ba3857f1c2f73594f76ac29d4e138dbefb7c49c4e56654cabb55d20`  
		Last Modified: Tue, 29 Jan 2019 10:45:29 GMT  
		Size: 13.5 MB (13527752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim` - linux; s390x

```console
$ docker pull perl@sha256:33eaf6ecd870c928f168bb8bc8075534afae1d3fbcdf7169c07a1a77537b5bd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36391759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257ec640813e167e67d56d9c4cb081c714913a9e1d78f1bbd6310a940b6b8ed`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:58:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:58:43 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:58:43 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329e9396b9593c8c6ec27c69dc65cd0f51c7b5505cc08fbaf3cd60f252604c2`  
		Last Modified: Wed, 23 Jan 2019 15:38:42 GMT  
		Size: 14.0 MB (14038084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26-slim-threaded`

```console
$ docker pull perl@sha256:6234de147b044fd154e4b015db174dbee2695f57d9c15fb37d8f6870074b94a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.26-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:019ae9545eac5f549fa2daaa17b11955f7ad5d6a500bce16be7efa2b486b5078
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36212788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a4444eb67b85b3aa481065bcd0f16660c5a7d21cbefb21af6cdd8d25b9d312`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:24:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:24:50 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:24:50 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93d8240f7506c6bc6bb9ad232fd8d5df89628bbc2cf0f448aa3e1b22181470`  
		Last Modified: Tue, 29 Jan 2019 00:51:50 GMT  
		Size: 13.7 MB (13711903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:6f6263de75caed9596cad58d92f6046908ef75dcdb471b8ce223be800fb4b5c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32101360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f7a6ca58eabcf9a3554d74fdf94814e459476ba254170ad71d149617a83c2b`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:28:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:28:27 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:28:27 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b31a173bcf5e976f6f2bf322b36630679e43f2e7afdb680fd0cf59332c1de32`  
		Last Modified: Wed, 23 Jan 2019 17:01:18 GMT  
		Size: 12.8 MB (12810871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6350d6f517d33fd3793ca9d949f22340636b89a007e8fbb7a81a8f559632fe97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33877672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253c3b400bbeaf4f4e0988b765537ec0f936c356cc3cda59798382ec7378d725`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:39:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:39:41 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:39:41 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be485bae63d80d906f9f3001160c0a723a2ec771674c4a693dc7d4fbf97dafd`  
		Last Modified: Tue, 29 Jan 2019 12:22:56 GMT  
		Size: 13.5 MB (13527313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:4c043e20124ee1e41b6f0dd549468547302c3b413b2e3e53c9cff1cb555401e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36397225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ec6b21d2e3c803e3fe2a84917fa0ce52ae2fcc46efe2e0c0c82c7d4043b275`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:55:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:55:02 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:55:02 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d2bfb4751b7ab407c772ac174d620a6b507d7432728d6dcfbdee757d4671f7`  
		Last Modified: Tue, 29 Jan 2019 13:24:51 GMT  
		Size: 13.2 MB (13249931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:4f2725ec525493ff739220e72fbd677c0925aff02f8f0a1bc5d904cfd8eafa01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36349348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6c6eed8181b31b855e5f8db781d60dd1d3a79e8a38cfc0236601f7a55ccaf8`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:15:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:15:47 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:15:48 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2530546fc729616b553780fad0865d465b415549a9f95b15c6f9a04f1c75535`  
		Last Modified: Tue, 29 Jan 2019 10:45:58 GMT  
		Size: 13.6 MB (13593813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:261e6a8c08dbb02f8117e19733278b2e6e8e1466731dc45a1ee55a3481660236
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36405074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed18ce43c353f8def39bc78a737316ff8e4da52c79107d6c11adfe4feef12561`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:11:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:11:23 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:11:24 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a594c1754dbd59deefbf2cb88a79f649a9e0042e37bf7bc3f2807a16f2282d`  
		Last Modified: Wed, 23 Jan 2019 15:38:59 GMT  
		Size: 14.1 MB (14051399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26-threaded`

```console
$ docker pull perl@sha256:4baac407c9e3dc7d1f4d782524c441c048b8004cf0eeb44e7eaa5a754ca1468e
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
$ docker pull perl@sha256:14b6d115d3a9772c8d5e714587b2415dc0e53b1478cc72b6135146b8989d0f45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338004121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbe402166544273730d06dae505b3c13d70d38bf170ce443231a270ae396231`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 00:16:37 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 00:16:38 GMT
WORKDIR /root
# Tue, 29 Jan 2019 00:16:38 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b81ddf831944508e3c78ef6a7f1f25090279ed8cfa6bbeb158be8913b2de2`  
		Last Modified: Tue, 29 Jan 2019 00:51:41 GMT  
		Size: 13.2 MB (13196434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:98c0895c6f2f20fb53aab43abdc3ea04ba73756bc911bcd71c568e3414210768
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309223732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73170ff3a76724f8c054a8a3b0903bf51432b6951ac7104492ea53e8f58948da`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 16:19:28 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 16:19:29 GMT
WORKDIR /root
# Wed, 23 Jan 2019 16:19:30 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c7e8178a3ab7354f518d81a60c7246fea790b7d678cc0db49f2f735c08d346`  
		Last Modified: Wed, 23 Jan 2019 17:01:05 GMT  
		Size: 12.3 MB (12314265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:6b31ef56dc7ccd87f2c1c66967385870bc94509bc7e0cf847948fadbc083854a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319648636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0893c069e7705bbd2882c00f059f05b988d38993c18dae3ffd2665bed431b1`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:25:16 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:25:17 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:25:18 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda40a8e96e70e3239a6ec841651e7e61cce1f1bb9377f3ca1a23e56c2193bf4`  
		Last Modified: Tue, 29 Jan 2019 12:22:41 GMT  
		Size: 13.0 MB (13016420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; 386

```console
$ docker pull perl@sha256:d88893f5c9dd00c0a524d7df51106e3ba215ecc096852b54c39dbe64f6d80d07
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345077104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc383af4d7e57f7eb63403dd57db7489d9d0a4a40060dc9440f86e6a39a0775`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:46:04 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:46:04 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:46:05 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e136553070d0061fd9b9985963afc20850bd9bb2c97679f6ebc2b2657fa516`  
		Last Modified: Tue, 29 Jan 2019 13:24:44 GMT  
		Size: 12.7 MB (12725687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:22ab3afbf763739933d32c05cb9854fc5e5ec2004ae03b4a848c46d079178340
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332931971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83358872ebf42461ba3aae048da850ac4a0fc35f60d14d7e581b03847349197e`
-	Default Command: `["perl5.26.3","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:08:20 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.3.tar.bz2 -o perl-5.26.3.tar.bz2     && echo '9ff35a613213f29ab53975141af6825ae7d4408895538cac0922e47ab92a1477 *perl-5.26.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.3.tar.bz2 -C /usr/src/perl     && rm perl-5.26.3.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:08:25 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:08:27 GMT
CMD ["perl5.26.3" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df54627a0c85d49cc319c59c5cdbb90dc92cd5bcc47be429376ccbc3bf3600f6`  
		Last Modified: Tue, 29 Jan 2019 10:45:43 GMT  
		Size: 13.1 MB (13081086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; s390x

```console
$ docker pull perl@sha256:ee4ecce5164c8e9ce1acdc77755cf062f97b3f802b8a6d8ae75d466df9e2ff49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329409825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c19ff17bdfbd9d5937218dc9d5fd6ddc1882e2665ae69ddcb23ca1ff8f73d1`
-	Default Command: `["perl5.26.2","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:04:52 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.26.2.tar.bz2 -o perl-5.26.2.tar.bz2     && echo '3f6a6b5bbd43016e5211e24b6631ea84216dd300216a2293b41c9195032f3e81 *perl-5.26.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.26.2.tar.bz2 -C /usr/src/perl     && rm perl-5.26.2.tar.bz2     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:04:52 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:04:52 GMT
CMD ["perl5.26.2" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9a2d4159e195cb7cca84fe815ab27f07313024e0494cf4b6d5f00fbe87dc4`  
		Last Modified: Wed, 23 Jan 2019 15:38:50 GMT  
		Size: 13.5 MB (13541616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28`

```console
$ docker pull perl@sha256:f8dce12ace42cf6d690b83938f6acd8b4e58c482f32aa6f531f15b06636fc726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28` - linux; amd64

```console
$ docker pull perl@sha256:117f6d529eed6ac62dd5b40853b75a5341284e32c56792929f2b232dfeb65777
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.7 MB (338741368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cece3f1eb47ff4597689aaa22144270dc7e26cba6f38bf1ee93d9e59bb2c2a`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:29:22 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:29:22 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:29:23 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec505e554954f588d1519f752e24c9dbe8d551b32049005dce971264beec0ad8`  
		Last Modified: Tue, 29 Jan 2019 00:50:44 GMT  
		Size: 13.9 MB (13933681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28` - linux; arm variant v7

```console
$ docker pull perl@sha256:8795c08ded8471cebd375eb9559cd6fa458869d2299d71072da623ed3e0c2c8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310020261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f7cbef2d703f5a38b886c028418f0ca0b7a42ddf21404c2a4f2066497ba3da`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:23:56 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:23:57 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:23:58 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9736cdc6439897e625b0fc628a8b7aa0c8de7637faa5fb5a7910b0f0097f34`  
		Last Modified: Wed, 23 Jan 2019 16:59:25 GMT  
		Size: 13.1 MB (13110794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3c9c0e448d01d73661a1cf5b06355fa53e5a57ccf0a7847adb731bb6f8c2865f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320397924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03703e3706510b0cffa71983de787e486c18d776d89855d42c9393e952561df0`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:03:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:03:50 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:03:51 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a173605745993d9937ff9dcf7c0f63ec1e35483cc0302cb0b1bc49d2ce4ca3be`  
		Last Modified: Tue, 29 Jan 2019 12:20:57 GMT  
		Size: 13.8 MB (13765708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28` - linux; 386

```console
$ docker pull perl@sha256:e3627cad444fb4595f85ec8b16f5196fe18e416f9f875dbbb0f55d64c6b3169e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345769916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d08bfdcbe88a2c4c1d5fc145a76df720e90e46af2cef486df4e435881a360`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:56:01 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:56:01 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:56:01 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07654338fdf8095292ab63bc7d8fa3b80e183615da100e8065a61dec518537ba`  
		Last Modified: Tue, 29 Jan 2019 13:23:48 GMT  
		Size: 13.4 MB (13418499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28` - linux; ppc64le

```console
$ docker pull perl@sha256:10a76b3d810b60fa228edaf8cb7ce9cdb172bbc7247f14238162c1a6acebebec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333656243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a256607ae7c7c0b7d384593574694f13a7d2cbde78b5bcbe5cdfa0c3bb89333`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:28:18 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:28:22 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:28:26 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf782a539037ea50f59a31421d0d7bc9366028014f933ff0c884b1535196818`  
		Last Modified: Tue, 29 Jan 2019 10:43:51 GMT  
		Size: 13.8 MB (13805358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28` - linux; s390x

```console
$ docker pull perl@sha256:dacf0fa7c83742c43b281a24c34c8699516505c5706e25f4bf0310ff32e8ee1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330267861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1802828f10489d292c55a48defa4a608f5ab625360ee50d38328ea8d003bf2c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:26:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:26:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:26:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f29fb52a7376b4769957f5ecc59b49b49c68ce442c04a383dc9bb2fc41c32a7`  
		Last Modified: Wed, 23 Jan 2019 15:37:49 GMT  
		Size: 14.4 MB (14399652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28.0-slim`

```console
$ docker pull perl@sha256:7912c9b6f6082309d3d81e7a1d22f9011df859312ed5d0298733cfdd4b4260f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28.0-slim` - linux; amd64

```console
$ docker pull perl@sha256:dd2843675e802992dcd68fd1ea70a9ece87f38cd94b7c132bc7a522fa6ccf666
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36947779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c0f3f936893369b447ce0a302a88d888a3edbb559be355c9d6f4c749e88952`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:37:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:37:57 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:37:58 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3929075961b1cbc278ea4334502331ec397967daedaa6c4fd144f7debcf9ef5e`  
		Last Modified: Tue, 29 Jan 2019 00:50:56 GMT  
		Size: 14.4 MB (14446894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.0-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:b8205965a9bc33194b474087dd66f6fe6a5e4776c2fef1a8d53c8de8f6b3410f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32888527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4633264b2815cfa9fae58b64e397039b2e75e0087405571f6242715d771ade`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:34:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:34:22 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7125e3491ad50dc87f8595a69f7b7f4e3b0faec40e49c60e51e296dde759fad0`  
		Last Modified: Wed, 23 Jan 2019 16:59:40 GMT  
		Size: 13.6 MB (13598038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.0-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:a4ebfa269879f9f99b0b08aa2c573d74a6ba1b4776c913aa81e72b6a6b8fed99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34620986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e34f7acc1646704b3586c9bfdeae97e78cf8dc418600c8deaa3c8d06a9e58c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:19:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:19:10 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:19:11 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f81256072acb6f2968c61af23d5808b3d4a02c92fcb922caa17b47a73745fa6`  
		Last Modified: Tue, 29 Jan 2019 12:21:17 GMT  
		Size: 14.3 MB (14270627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.0-slim` - linux; 386

```console
$ docker pull perl@sha256:28fbf3b02498e5849095ed007c6639581ed3be5efd6945954d3c1a56bd847b31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37081894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d7f50e6b064385f6ceecddb0d039ee03668b57dd0bba4821b5812b9e91e0b1`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:04:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:04:14 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:04:14 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b46a6229eaa04800013a6e093827e859188cbd8c9a4dd5a9fc5b7f7efe3fb3`  
		Last Modified: Tue, 29 Jan 2019 13:24:00 GMT  
		Size: 13.9 MB (13934600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.0-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:c8c78ed5665b731d227d6aff50363de4115878be9d170200adaaca613ef0d328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37062823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959f38e41de59dca6fbfb8b667d6aa39206172b76e0c70bddec991067590a56`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:35:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:36:01 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:36:03 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757beb7061a52e0979c975d98d3069f5cd7556014b1bc9577041bdb40b45e965`  
		Last Modified: Tue, 29 Jan 2019 10:44:12 GMT  
		Size: 14.3 MB (14307288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.0-slim` - linux; s390x

```console
$ docker pull perl@sha256:ed3c785d57a120afb4c8ad5b73967a05b7579295e441b71943fcc7b937d87f93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37262799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed953aa673a5b38d200ade0c43c5cc292fa1e482e492d57da0a1f94622cc5617`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:33:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:33:41 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:33:41 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4dca8e96e2b768f94ff337fd0156e3212644173c8868f36093a9963def432e`  
		Last Modified: Wed, 23 Jan 2019 15:38:00 GMT  
		Size: 14.9 MB (14909124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28.1`

```console
$ docker pull perl@sha256:f8dce12ace42cf6d690b83938f6acd8b4e58c482f32aa6f531f15b06636fc726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28.1` - linux; amd64

```console
$ docker pull perl@sha256:117f6d529eed6ac62dd5b40853b75a5341284e32c56792929f2b232dfeb65777
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.7 MB (338741368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cece3f1eb47ff4597689aaa22144270dc7e26cba6f38bf1ee93d9e59bb2c2a`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:29:22 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:29:22 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:29:23 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec505e554954f588d1519f752e24c9dbe8d551b32049005dce971264beec0ad8`  
		Last Modified: Tue, 29 Jan 2019 00:50:44 GMT  
		Size: 13.9 MB (13933681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1` - linux; arm variant v7

```console
$ docker pull perl@sha256:8795c08ded8471cebd375eb9559cd6fa458869d2299d71072da623ed3e0c2c8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310020261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f7cbef2d703f5a38b886c028418f0ca0b7a42ddf21404c2a4f2066497ba3da`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:23:56 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:23:57 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:23:58 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9736cdc6439897e625b0fc628a8b7aa0c8de7637faa5fb5a7910b0f0097f34`  
		Last Modified: Wed, 23 Jan 2019 16:59:25 GMT  
		Size: 13.1 MB (13110794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3c9c0e448d01d73661a1cf5b06355fa53e5a57ccf0a7847adb731bb6f8c2865f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320397924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03703e3706510b0cffa71983de787e486c18d776d89855d42c9393e952561df0`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:03:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:03:50 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:03:51 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a173605745993d9937ff9dcf7c0f63ec1e35483cc0302cb0b1bc49d2ce4ca3be`  
		Last Modified: Tue, 29 Jan 2019 12:20:57 GMT  
		Size: 13.8 MB (13765708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1` - linux; 386

```console
$ docker pull perl@sha256:e3627cad444fb4595f85ec8b16f5196fe18e416f9f875dbbb0f55d64c6b3169e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345769916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d08bfdcbe88a2c4c1d5fc145a76df720e90e46af2cef486df4e435881a360`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 11:56:01 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 11:56:01 GMT
WORKDIR /root
# Tue, 29 Jan 2019 11:56:01 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07654338fdf8095292ab63bc7d8fa3b80e183615da100e8065a61dec518537ba`  
		Last Modified: Tue, 29 Jan 2019 13:23:48 GMT  
		Size: 13.4 MB (13418499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1` - linux; ppc64le

```console
$ docker pull perl@sha256:10a76b3d810b60fa228edaf8cb7ce9cdb172bbc7247f14238162c1a6acebebec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333656243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a256607ae7c7c0b7d384593574694f13a7d2cbde78b5bcbe5cdfa0c3bb89333`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:28:18 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:28:22 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:28:26 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf782a539037ea50f59a31421d0d7bc9366028014f933ff0c884b1535196818`  
		Last Modified: Tue, 29 Jan 2019 10:43:51 GMT  
		Size: 13.8 MB (13805358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1` - linux; s390x

```console
$ docker pull perl@sha256:dacf0fa7c83742c43b281a24c34c8699516505c5706e25f4bf0310ff32e8ee1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330267861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1802828f10489d292c55a48defa4a608f5ab625360ee50d38328ea8d003bf2c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:26:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:26:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:26:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f29fb52a7376b4769957f5ecc59b49b49c68ce442c04a383dc9bb2fc41c32a7`  
		Last Modified: Wed, 23 Jan 2019 15:37:49 GMT  
		Size: 14.4 MB (14399652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28.1-slim-threaded`

```console
$ docker pull perl@sha256:bb6df0f0ebbfe2d607a4d4cf56ff8e8850bb1dbff118b15a7db6cd1d456f8624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28.1-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c40e8ac235d3547efadbede28c437b7a6d5516bf4f549f52f9ad72dc89e8ed26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36999653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246ef8cec8e49345768f570829eb54a4f86fb00926a1c7864d9b04678c4f426b`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:53:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:53:40 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:53:40 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b55d6ab94494ff7a00036774fb7a7474615dceb81d003c7b2bd22fc84fb7af`  
		Last Modified: Tue, 29 Jan 2019 00:51:12 GMT  
		Size: 14.5 MB (14498768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:f2296e1fbd2565e3550b2c7afa88616dd9e7594dbbd91e7fecf26f871c83f2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0766ce885f35676b788856ca2e60314439469fbede0812196da4d189d79833`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:52:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:52:22 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:52:23 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ccc4a5c51fe17d059c819bc9f032eb6831987052e0b3c1ea8752d5a99b6cc1`  
		Last Modified: Wed, 23 Jan 2019 17:00:13 GMT  
		Size: 13.6 MB (13620692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f0d40ad777c03db6c30d3df126feaff9115336cf90f51d4b9711024c1302e245
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34654953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c17d175824a519d6c1b04cbb4129fe1fbbc3f7187b404c88080faa7def7d38`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:44:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:44:38 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:44:38 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4227c71ec0b8adfbb4a1953a2349024ae87e3e2740100d2edf667f11425a920a`  
		Last Modified: Tue, 29 Jan 2019 12:21:55 GMT  
		Size: 14.3 MB (14304594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:1f137f427ae12a40d62cada5e9cfac9aca005c4644d3ea89c3e5573dcd6653e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37168813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c47e24ce9403244ee81f69c25fd14dac5d633b8ecf1895f56e5508b8200e3`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:21:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:21:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:21:35 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f3bb0aaee46e4f44707124a399ad4cf05e9b21f5eb0e9c16e8754ef1d88c7`  
		Last Modified: Tue, 29 Jan 2019 13:24:20 GMT  
		Size: 14.0 MB (14021519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:5d9c1c7c60a3738d30c936e852dac861d7dbb4a5a59a40fab57d26d32a722a6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37132261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da83d4ae93193dad9ea3cb78f3d12ea82a78f13618c8fa5e7d1cd91b749df432`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:48:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:48:27 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:48:29 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc5583f2ae56a8ebfd503b4dca3e56970afbdf37f7a404c4c833ec30026c446`  
		Last Modified: Tue, 29 Jan 2019 10:44:52 GMT  
		Size: 14.4 MB (14376726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:29e9372811654f35f40cc6fcb8dca7b911d8db1bbb66ba5707261577343347d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14d37524f59b77a4160ebcdb2d635822a5fd2200a3974f7fedbca313f9b51ad`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:47:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:47:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:47:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8924080b3ac778174ccec7cd6df9720d38e457da8b83e8eb784d0f1ff3168756`  
		Last Modified: Wed, 23 Jan 2019 15:38:22 GMT  
		Size: 14.9 MB (14923693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28.1-threaded`

```console
$ docker pull perl@sha256:384dfae9cec05fce8b5ae5726040022397459c74391e6b8a8ff7158b66285aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28.1-threaded` - linux; amd64

```console
$ docker pull perl@sha256:faec23443aaf23b7d541a205568769343a1be3827e8ebdc18b5a469fb55fad57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338790962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f96484e2cafd19efe9e8cf136ec1b31ff79a091cfa1dd306d86c7044f4432c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:45:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:45:47 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:45:47 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4628004557eee8bd51ffab2b338e5ac4f4746876018e4127ed680566719385`  
		Last Modified: Tue, 29 Jan 2019 00:51:03 GMT  
		Size: 14.0 MB (13983275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:4a23ae7cb26024f8280b6ee09cee4af585de91db33e699991953b149d888312a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310024830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee8f7f1abb337952d71ffce1b654a9d995ab87857b8d2b5bfa4f97f1489357c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:43:20 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:43:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:43:21 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b63a7b08e4ebb212d9650816ab337f69b826a0cdc1198ca6db74ba74f2bc72`  
		Last Modified: Wed, 23 Jan 2019 16:59:56 GMT  
		Size: 13.1 MB (13115363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:9bb8742ec47ee93cccef2ca78242bcfd0e2cd3440c248ebee3b3e4adabb937f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320430017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e08921561ba09b6af44ee80d376685a3059bdf7e273210e04cda87a06697848`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:31:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:31:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:31:36 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6346fc9ede3422489e7c9f70dcc8a3532c9bdd36444363efc34f2a2562a3773b`  
		Last Modified: Tue, 29 Jan 2019 12:21:35 GMT  
		Size: 13.8 MB (13797801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-threaded` - linux; 386

```console
$ docker pull perl@sha256:855f7ea0283613ece66cb17c5622b5c9b31c9f2fe5006845437fbf37263f1175
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345857888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f797e8ef9dc90f953f9fdf8cae49f069faaac6376ff10e127f40ba01557318a7`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:12:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:12:49 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:12:49 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f56bc824097249e143080eb7d7837a6932f050fd6ba15281ea5dc015cec56e`  
		Last Modified: Tue, 29 Jan 2019 13:24:09 GMT  
		Size: 13.5 MB (13506471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:595dbcc2a5d5f4348567d576673ae4172650f2f39d1a865b757158bc2d097eee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333715548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c609a2599a618272484bfe02ca53fa5357a16d6c960c349f71fdf537aeed37`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:41:42 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:41:45 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:41:46 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50b4965eda349c17144c998e0bbeb664fdd5eecc09e926014069ec2d9b33bb1`  
		Last Modified: Tue, 29 Jan 2019 10:44:31 GMT  
		Size: 13.9 MB (13864663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28.1-threaded` - linux; s390x

```console
$ docker pull perl@sha256:d872eda180d1aaf3101fdfe0be7f9594858a735a0798265982bc2f32e705c85b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330279686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af43c4950a49170d1293a8e7d806a7c643be4290d28a45c36ccdb3768c77014`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:40:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:40:47 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:40:47 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b1cd0442398c37481cfa3b80dda60e22ea0c8858930b9e6a5b7df477922b4f`  
		Last Modified: Wed, 23 Jan 2019 15:38:11 GMT  
		Size: 14.4 MB (14411477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28-slim`

```console
$ docker pull perl@sha256:7912c9b6f6082309d3d81e7a1d22f9011df859312ed5d0298733cfdd4b4260f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28-slim` - linux; amd64

```console
$ docker pull perl@sha256:dd2843675e802992dcd68fd1ea70a9ece87f38cd94b7c132bc7a522fa6ccf666
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36947779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c0f3f936893369b447ce0a302a88d888a3edbb559be355c9d6f4c749e88952`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:37:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:37:57 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:37:58 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3929075961b1cbc278ea4334502331ec397967daedaa6c4fd144f7debcf9ef5e`  
		Last Modified: Tue, 29 Jan 2019 00:50:56 GMT  
		Size: 14.4 MB (14446894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:b8205965a9bc33194b474087dd66f6fe6a5e4776c2fef1a8d53c8de8f6b3410f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32888527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4633264b2815cfa9fae58b64e397039b2e75e0087405571f6242715d771ade`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:34:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:34:22 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7125e3491ad50dc87f8595a69f7b7f4e3b0faec40e49c60e51e296dde759fad0`  
		Last Modified: Wed, 23 Jan 2019 16:59:40 GMT  
		Size: 13.6 MB (13598038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:a4ebfa269879f9f99b0b08aa2c573d74a6ba1b4776c913aa81e72b6a6b8fed99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34620986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e34f7acc1646704b3586c9bfdeae97e78cf8dc418600c8deaa3c8d06a9e58c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:19:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:19:10 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:19:11 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f81256072acb6f2968c61af23d5808b3d4a02c92fcb922caa17b47a73745fa6`  
		Last Modified: Tue, 29 Jan 2019 12:21:17 GMT  
		Size: 14.3 MB (14270627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim` - linux; 386

```console
$ docker pull perl@sha256:28fbf3b02498e5849095ed007c6639581ed3be5efd6945954d3c1a56bd847b31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37081894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d7f50e6b064385f6ceecddb0d039ee03668b57dd0bba4821b5812b9e91e0b1`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:04:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:04:14 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:04:14 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b46a6229eaa04800013a6e093827e859188cbd8c9a4dd5a9fc5b7f7efe3fb3`  
		Last Modified: Tue, 29 Jan 2019 13:24:00 GMT  
		Size: 13.9 MB (13934600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:c8c78ed5665b731d227d6aff50363de4115878be9d170200adaaca613ef0d328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37062823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959f38e41de59dca6fbfb8b667d6aa39206172b76e0c70bddec991067590a56`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:35:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:36:01 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:36:03 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757beb7061a52e0979c975d98d3069f5cd7556014b1bc9577041bdb40b45e965`  
		Last Modified: Tue, 29 Jan 2019 10:44:12 GMT  
		Size: 14.3 MB (14307288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim` - linux; s390x

```console
$ docker pull perl@sha256:ed3c785d57a120afb4c8ad5b73967a05b7579295e441b71943fcc7b937d87f93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37262799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed953aa673a5b38d200ade0c43c5cc292fa1e482e492d57da0a1f94622cc5617`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:33:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:33:41 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:33:41 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4dca8e96e2b768f94ff337fd0156e3212644173c8868f36093a9963def432e`  
		Last Modified: Wed, 23 Jan 2019 15:38:00 GMT  
		Size: 14.9 MB (14909124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28-slim-threaded`

```console
$ docker pull perl@sha256:bb6df0f0ebbfe2d607a4d4cf56ff8e8850bb1dbff118b15a7db6cd1d456f8624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c40e8ac235d3547efadbede28c437b7a6d5516bf4f549f52f9ad72dc89e8ed26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36999653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246ef8cec8e49345768f570829eb54a4f86fb00926a1c7864d9b04678c4f426b`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:53:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:53:40 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:53:40 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b55d6ab94494ff7a00036774fb7a7474615dceb81d003c7b2bd22fc84fb7af`  
		Last Modified: Tue, 29 Jan 2019 00:51:12 GMT  
		Size: 14.5 MB (14498768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:f2296e1fbd2565e3550b2c7afa88616dd9e7594dbbd91e7fecf26f871c83f2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0766ce885f35676b788856ca2e60314439469fbede0812196da4d189d79833`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:52:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:52:22 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:52:23 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ccc4a5c51fe17d059c819bc9f032eb6831987052e0b3c1ea8752d5a99b6cc1`  
		Last Modified: Wed, 23 Jan 2019 17:00:13 GMT  
		Size: 13.6 MB (13620692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f0d40ad777c03db6c30d3df126feaff9115336cf90f51d4b9711024c1302e245
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34654953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c17d175824a519d6c1b04cbb4129fe1fbbc3f7187b404c88080faa7def7d38`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:44:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:44:38 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:44:38 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4227c71ec0b8adfbb4a1953a2349024ae87e3e2740100d2edf667f11425a920a`  
		Last Modified: Tue, 29 Jan 2019 12:21:55 GMT  
		Size: 14.3 MB (14304594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:1f137f427ae12a40d62cada5e9cfac9aca005c4644d3ea89c3e5573dcd6653e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37168813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c47e24ce9403244ee81f69c25fd14dac5d633b8ecf1895f56e5508b8200e3`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:21:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:21:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:21:35 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f3bb0aaee46e4f44707124a399ad4cf05e9b21f5eb0e9c16e8754ef1d88c7`  
		Last Modified: Tue, 29 Jan 2019 13:24:20 GMT  
		Size: 14.0 MB (14021519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:5d9c1c7c60a3738d30c936e852dac861d7dbb4a5a59a40fab57d26d32a722a6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37132261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da83d4ae93193dad9ea3cb78f3d12ea82a78f13618c8fa5e7d1cd91b749df432`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:48:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:48:27 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:48:29 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc5583f2ae56a8ebfd503b4dca3e56970afbdf37f7a404c4c833ec30026c446`  
		Last Modified: Tue, 29 Jan 2019 10:44:52 GMT  
		Size: 14.4 MB (14376726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:29e9372811654f35f40cc6fcb8dca7b911d8db1bbb66ba5707261577343347d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14d37524f59b77a4160ebcdb2d635822a5fd2200a3974f7fedbca313f9b51ad`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:47:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:47:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:47:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8924080b3ac778174ccec7cd6df9720d38e457da8b83e8eb784d0f1ff3168756`  
		Last Modified: Wed, 23 Jan 2019 15:38:22 GMT  
		Size: 14.9 MB (14923693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.28-threaded`

```console
$ docker pull perl@sha256:384dfae9cec05fce8b5ae5726040022397459c74391e6b8a8ff7158b66285aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5.28-threaded` - linux; amd64

```console
$ docker pull perl@sha256:faec23443aaf23b7d541a205568769343a1be3827e8ebdc18b5a469fb55fad57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338790962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f96484e2cafd19efe9e8cf136ec1b31ff79a091cfa1dd306d86c7044f4432c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:45:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:45:47 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:45:47 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4628004557eee8bd51ffab2b338e5ac4f4746876018e4127ed680566719385`  
		Last Modified: Tue, 29 Jan 2019 00:51:03 GMT  
		Size: 14.0 MB (13983275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:4a23ae7cb26024f8280b6ee09cee4af585de91db33e699991953b149d888312a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310024830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee8f7f1abb337952d71ffce1b654a9d995ab87857b8d2b5bfa4f97f1489357c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:43:20 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:43:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:43:21 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b63a7b08e4ebb212d9650816ab337f69b826a0cdc1198ca6db74ba74f2bc72`  
		Last Modified: Wed, 23 Jan 2019 16:59:56 GMT  
		Size: 13.1 MB (13115363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:9bb8742ec47ee93cccef2ca78242bcfd0e2cd3440c248ebee3b3e4adabb937f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320430017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e08921561ba09b6af44ee80d376685a3059bdf7e273210e04cda87a06697848`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:31:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:31:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:31:36 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6346fc9ede3422489e7c9f70dcc8a3532c9bdd36444363efc34f2a2562a3773b`  
		Last Modified: Tue, 29 Jan 2019 12:21:35 GMT  
		Size: 13.8 MB (13797801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-threaded` - linux; 386

```console
$ docker pull perl@sha256:855f7ea0283613ece66cb17c5622b5c9b31c9f2fe5006845437fbf37263f1175
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345857888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f797e8ef9dc90f953f9fdf8cae49f069faaac6376ff10e127f40ba01557318a7`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:12:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:12:49 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:12:49 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f56bc824097249e143080eb7d7837a6932f050fd6ba15281ea5dc015cec56e`  
		Last Modified: Tue, 29 Jan 2019 13:24:09 GMT  
		Size: 13.5 MB (13506471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:595dbcc2a5d5f4348567d576673ae4172650f2f39d1a865b757158bc2d097eee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333715548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c609a2599a618272484bfe02ca53fa5357a16d6c960c349f71fdf537aeed37`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:41:42 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:41:45 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:41:46 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50b4965eda349c17144c998e0bbeb664fdd5eecc09e926014069ec2d9b33bb1`  
		Last Modified: Tue, 29 Jan 2019 10:44:31 GMT  
		Size: 13.9 MB (13864663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.28-threaded` - linux; s390x

```console
$ docker pull perl@sha256:d872eda180d1aaf3101fdfe0be7f9594858a735a0798265982bc2f32e705c85b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330279686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af43c4950a49170d1293a8e7d806a7c643be4290d28a45c36ccdb3768c77014`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:40:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:40:47 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:40:47 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b1cd0442398c37481cfa3b80dda60e22ea0c8858930b9e6a5b7df477922b4f`  
		Last Modified: Wed, 23 Jan 2019 15:38:11 GMT  
		Size: 14.4 MB (14411477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-slim`

```console
$ docker pull perl@sha256:7912c9b6f6082309d3d81e7a1d22f9011df859312ed5d0298733cfdd4b4260f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5-slim` - linux; amd64

```console
$ docker pull perl@sha256:dd2843675e802992dcd68fd1ea70a9ece87f38cd94b7c132bc7a522fa6ccf666
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36947779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c0f3f936893369b447ce0a302a88d888a3edbb559be355c9d6f4c749e88952`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:37:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:37:57 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:37:58 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3929075961b1cbc278ea4334502331ec397967daedaa6c4fd144f7debcf9ef5e`  
		Last Modified: Tue, 29 Jan 2019 00:50:56 GMT  
		Size: 14.4 MB (14446894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:b8205965a9bc33194b474087dd66f6fe6a5e4776c2fef1a8d53c8de8f6b3410f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32888527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4633264b2815cfa9fae58b64e397039b2e75e0087405571f6242715d771ade`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:34:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:34:22 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7125e3491ad50dc87f8595a69f7b7f4e3b0faec40e49c60e51e296dde759fad0`  
		Last Modified: Wed, 23 Jan 2019 16:59:40 GMT  
		Size: 13.6 MB (13598038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:a4ebfa269879f9f99b0b08aa2c573d74a6ba1b4776c913aa81e72b6a6b8fed99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34620986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e34f7acc1646704b3586c9bfdeae97e78cf8dc418600c8deaa3c8d06a9e58c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:19:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:19:10 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:19:11 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f81256072acb6f2968c61af23d5808b3d4a02c92fcb922caa17b47a73745fa6`  
		Last Modified: Tue, 29 Jan 2019 12:21:17 GMT  
		Size: 14.3 MB (14270627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; 386

```console
$ docker pull perl@sha256:28fbf3b02498e5849095ed007c6639581ed3be5efd6945954d3c1a56bd847b31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37081894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d7f50e6b064385f6ceecddb0d039ee03668b57dd0bba4821b5812b9e91e0b1`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:04:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:04:14 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:04:14 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b46a6229eaa04800013a6e093827e859188cbd8c9a4dd5a9fc5b7f7efe3fb3`  
		Last Modified: Tue, 29 Jan 2019 13:24:00 GMT  
		Size: 13.9 MB (13934600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:c8c78ed5665b731d227d6aff50363de4115878be9d170200adaaca613ef0d328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37062823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959f38e41de59dca6fbfb8b667d6aa39206172b76e0c70bddec991067590a56`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:35:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:36:01 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:36:03 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757beb7061a52e0979c975d98d3069f5cd7556014b1bc9577041bdb40b45e965`  
		Last Modified: Tue, 29 Jan 2019 10:44:12 GMT  
		Size: 14.3 MB (14307288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; s390x

```console
$ docker pull perl@sha256:ed3c785d57a120afb4c8ad5b73967a05b7579295e441b71943fcc7b937d87f93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37262799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed953aa673a5b38d200ade0c43c5cc292fa1e482e492d57da0a1f94622cc5617`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:33:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:33:41 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:33:41 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4dca8e96e2b768f94ff337fd0156e3212644173c8868f36093a9963def432e`  
		Last Modified: Wed, 23 Jan 2019 15:38:00 GMT  
		Size: 14.9 MB (14909124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-slim-threaded`

```console
$ docker pull perl@sha256:bb6df0f0ebbfe2d607a4d4cf56ff8e8850bb1dbff118b15a7db6cd1d456f8624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c40e8ac235d3547efadbede28c437b7a6d5516bf4f549f52f9ad72dc89e8ed26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36999653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246ef8cec8e49345768f570829eb54a4f86fb00926a1c7864d9b04678c4f426b`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:53:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:53:40 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:53:40 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b55d6ab94494ff7a00036774fb7a7474615dceb81d003c7b2bd22fc84fb7af`  
		Last Modified: Tue, 29 Jan 2019 00:51:12 GMT  
		Size: 14.5 MB (14498768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:f2296e1fbd2565e3550b2c7afa88616dd9e7594dbbd91e7fecf26f871c83f2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0766ce885f35676b788856ca2e60314439469fbede0812196da4d189d79833`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:52:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:52:22 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:52:23 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ccc4a5c51fe17d059c819bc9f032eb6831987052e0b3c1ea8752d5a99b6cc1`  
		Last Modified: Wed, 23 Jan 2019 17:00:13 GMT  
		Size: 13.6 MB (13620692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f0d40ad777c03db6c30d3df126feaff9115336cf90f51d4b9711024c1302e245
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34654953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c17d175824a519d6c1b04cbb4129fe1fbbc3f7187b404c88080faa7def7d38`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:44:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:44:38 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:44:38 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4227c71ec0b8adfbb4a1953a2349024ae87e3e2740100d2edf667f11425a920a`  
		Last Modified: Tue, 29 Jan 2019 12:21:55 GMT  
		Size: 14.3 MB (14304594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:1f137f427ae12a40d62cada5e9cfac9aca005c4644d3ea89c3e5573dcd6653e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37168813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c47e24ce9403244ee81f69c25fd14dac5d633b8ecf1895f56e5508b8200e3`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:21:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:21:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:21:35 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f3bb0aaee46e4f44707124a399ad4cf05e9b21f5eb0e9c16e8754ef1d88c7`  
		Last Modified: Tue, 29 Jan 2019 13:24:20 GMT  
		Size: 14.0 MB (14021519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:5d9c1c7c60a3738d30c936e852dac861d7dbb4a5a59a40fab57d26d32a722a6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37132261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da83d4ae93193dad9ea3cb78f3d12ea82a78f13618c8fa5e7d1cd91b749df432`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:48:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:48:27 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:48:29 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc5583f2ae56a8ebfd503b4dca3e56970afbdf37f7a404c4c833ec30026c446`  
		Last Modified: Tue, 29 Jan 2019 10:44:52 GMT  
		Size: 14.4 MB (14376726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:29e9372811654f35f40cc6fcb8dca7b911d8db1bbb66ba5707261577343347d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14d37524f59b77a4160ebcdb2d635822a5fd2200a3974f7fedbca313f9b51ad`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:47:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:47:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:47:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8924080b3ac778174ccec7cd6df9720d38e457da8b83e8eb784d0f1ff3168756`  
		Last Modified: Wed, 23 Jan 2019 15:38:22 GMT  
		Size: 14.9 MB (14923693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-threaded`

```console
$ docker pull perl@sha256:384dfae9cec05fce8b5ae5726040022397459c74391e6b8a8ff7158b66285aa3
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
$ docker pull perl@sha256:faec23443aaf23b7d541a205568769343a1be3827e8ebdc18b5a469fb55fad57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338790962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f96484e2cafd19efe9e8cf136ec1b31ff79a091cfa1dd306d86c7044f4432c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:45:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:45:47 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:45:47 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4628004557eee8bd51ffab2b338e5ac4f4746876018e4127ed680566719385`  
		Last Modified: Tue, 29 Jan 2019 00:51:03 GMT  
		Size: 14.0 MB (13983275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:4a23ae7cb26024f8280b6ee09cee4af585de91db33e699991953b149d888312a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310024830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee8f7f1abb337952d71ffce1b654a9d995ab87857b8d2b5bfa4f97f1489357c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:43:20 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:43:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:43:21 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b63a7b08e4ebb212d9650816ab337f69b826a0cdc1198ca6db74ba74f2bc72`  
		Last Modified: Wed, 23 Jan 2019 16:59:56 GMT  
		Size: 13.1 MB (13115363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:9bb8742ec47ee93cccef2ca78242bcfd0e2cd3440c248ebee3b3e4adabb937f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320430017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e08921561ba09b6af44ee80d376685a3059bdf7e273210e04cda87a06697848`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:31:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:31:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:31:36 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6346fc9ede3422489e7c9f70dcc8a3532c9bdd36444363efc34f2a2562a3773b`  
		Last Modified: Tue, 29 Jan 2019 12:21:35 GMT  
		Size: 13.8 MB (13797801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; 386

```console
$ docker pull perl@sha256:855f7ea0283613ece66cb17c5622b5c9b31c9f2fe5006845437fbf37263f1175
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345857888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f797e8ef9dc90f953f9fdf8cae49f069faaac6376ff10e127f40ba01557318a7`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:12:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:12:49 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:12:49 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f56bc824097249e143080eb7d7837a6932f050fd6ba15281ea5dc015cec56e`  
		Last Modified: Tue, 29 Jan 2019 13:24:09 GMT  
		Size: 13.5 MB (13506471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:595dbcc2a5d5f4348567d576673ae4172650f2f39d1a865b757158bc2d097eee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333715548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c609a2599a618272484bfe02ca53fa5357a16d6c960c349f71fdf537aeed37`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:41:42 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:41:45 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:41:46 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50b4965eda349c17144c998e0bbeb664fdd5eecc09e926014069ec2d9b33bb1`  
		Last Modified: Tue, 29 Jan 2019 10:44:31 GMT  
		Size: 13.9 MB (13864663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; s390x

```console
$ docker pull perl@sha256:d872eda180d1aaf3101fdfe0be7f9594858a735a0798265982bc2f32e705c85b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330279686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af43c4950a49170d1293a8e7d806a7c643be4290d28a45c36ccdb3768c77014`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:40:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:40:47 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:40:47 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b1cd0442398c37481cfa3b80dda60e22ea0c8858930b9e6a5b7df477922b4f`  
		Last Modified: Wed, 23 Jan 2019 15:38:11 GMT  
		Size: 14.4 MB (14411477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:latest`

```console
$ docker pull perl@sha256:59f1bfaeed99bcfd3c1efb0fe349a02c1b8972287b2f6543218a59ed78d1b33f
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
$ docker pull perl@sha256:117f6d529eed6ac62dd5b40853b75a5341284e32c56792929f2b232dfeb65777
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.7 MB (338741368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cece3f1eb47ff4597689aaa22144270dc7e26cba6f38bf1ee93d9e59bb2c2a`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:29:22 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:29:22 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:29:23 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec505e554954f588d1519f752e24c9dbe8d551b32049005dce971264beec0ad8`  
		Last Modified: Tue, 29 Jan 2019 00:50:44 GMT  
		Size: 13.9 MB (13933681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; arm variant v7

```console
$ docker pull perl@sha256:8795c08ded8471cebd375eb9559cd6fa458869d2299d71072da623ed3e0c2c8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310020261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f7cbef2d703f5a38b886c028418f0ca0b7a42ddf21404c2a4f2066497ba3da`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:23:56 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:23:57 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:23:58 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9736cdc6439897e625b0fc628a8b7aa0c8de7637faa5fb5a7910b0f0097f34`  
		Last Modified: Wed, 23 Jan 2019 16:59:25 GMT  
		Size: 13.1 MB (13110794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:3c9c0e448d01d73661a1cf5b06355fa53e5a57ccf0a7847adb731bb6f8c2865f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320397924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03703e3706510b0cffa71983de787e486c18d776d89855d42c9393e952561df0`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:03:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:03:50 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:03:51 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a173605745993d9937ff9dcf7c0f63ec1e35483cc0302cb0b1bc49d2ce4ca3be`  
		Last Modified: Tue, 29 Jan 2019 12:20:57 GMT  
		Size: 13.8 MB (13765708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; 386

```console
$ docker pull perl@sha256:e1b3c0e6c7c904169ecb4504f3c7b3f102eebe18528b6ae4057c67fd598da435
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345788336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ff9628cb5078fe70c665e9377600cc91a2d1ba2a2ccc228b99535f2919e9a2`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:52:42 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:52:42 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:52:43 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f70c000d1d6c159f343ff1a9986d21cbe45397924214c5ddfcfe37661dbfc7`  
		Last Modified: Wed, 23 Jan 2019 17:22:33 GMT  
		Size: 13.4 MB (13436919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; ppc64le

```console
$ docker pull perl@sha256:10a76b3d810b60fa228edaf8cb7ce9cdb172bbc7247f14238162c1a6acebebec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333656243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a256607ae7c7c0b7d384593574694f13a7d2cbde78b5bcbe5cdfa0c3bb89333`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:28:18 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:28:22 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:28:26 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf782a539037ea50f59a31421d0d7bc9366028014f933ff0c884b1535196818`  
		Last Modified: Tue, 29 Jan 2019 10:43:51 GMT  
		Size: 13.8 MB (13805358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; s390x

```console
$ docker pull perl@sha256:dacf0fa7c83742c43b281a24c34c8699516505c5706e25f4bf0310ff32e8ee1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330267861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1802828f10489d292c55a48defa4a608f5ab625360ee50d38328ea8d003bf2c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:26:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:26:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:26:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f29fb52a7376b4769957f5ecc59b49b49c68ce442c04a383dc9bb2fc41c32a7`  
		Last Modified: Wed, 23 Jan 2019 15:37:49 GMT  
		Size: 14.4 MB (14399652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:slim`

```console
$ docker pull perl@sha256:7912c9b6f6082309d3d81e7a1d22f9011df859312ed5d0298733cfdd4b4260f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:slim` - linux; amd64

```console
$ docker pull perl@sha256:dd2843675e802992dcd68fd1ea70a9ece87f38cd94b7c132bc7a522fa6ccf666
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36947779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c0f3f936893369b447ce0a302a88d888a3edbb559be355c9d6f4c749e88952`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:37:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:37:57 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:37:58 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3929075961b1cbc278ea4334502331ec397967daedaa6c4fd144f7debcf9ef5e`  
		Last Modified: Tue, 29 Jan 2019 00:50:56 GMT  
		Size: 14.4 MB (14446894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:b8205965a9bc33194b474087dd66f6fe6a5e4776c2fef1a8d53c8de8f6b3410f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32888527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4633264b2815cfa9fae58b64e397039b2e75e0087405571f6242715d771ade`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:34:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:34:22 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7125e3491ad50dc87f8595a69f7b7f4e3b0faec40e49c60e51e296dde759fad0`  
		Last Modified: Wed, 23 Jan 2019 16:59:40 GMT  
		Size: 13.6 MB (13598038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:a4ebfa269879f9f99b0b08aa2c573d74a6ba1b4776c913aa81e72b6a6b8fed99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34620986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e34f7acc1646704b3586c9bfdeae97e78cf8dc418600c8deaa3c8d06a9e58c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:19:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:19:10 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:19:11 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f81256072acb6f2968c61af23d5808b3d4a02c92fcb922caa17b47a73745fa6`  
		Last Modified: Tue, 29 Jan 2019 12:21:17 GMT  
		Size: 14.3 MB (14270627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; 386

```console
$ docker pull perl@sha256:28fbf3b02498e5849095ed007c6639581ed3be5efd6945954d3c1a56bd847b31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37081894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d7f50e6b064385f6ceecddb0d039ee03668b57dd0bba4821b5812b9e91e0b1`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:04:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:04:14 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:04:14 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b46a6229eaa04800013a6e093827e859188cbd8c9a4dd5a9fc5b7f7efe3fb3`  
		Last Modified: Tue, 29 Jan 2019 13:24:00 GMT  
		Size: 13.9 MB (13934600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; ppc64le

```console
$ docker pull perl@sha256:c8c78ed5665b731d227d6aff50363de4115878be9d170200adaaca613ef0d328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37062823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959f38e41de59dca6fbfb8b667d6aa39206172b76e0c70bddec991067590a56`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:35:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:36:01 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:36:03 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757beb7061a52e0979c975d98d3069f5cd7556014b1bc9577041bdb40b45e965`  
		Last Modified: Tue, 29 Jan 2019 10:44:12 GMT  
		Size: 14.3 MB (14307288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; s390x

```console
$ docker pull perl@sha256:ed3c785d57a120afb4c8ad5b73967a05b7579295e441b71943fcc7b937d87f93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37262799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed953aa673a5b38d200ade0c43c5cc292fa1e482e492d57da0a1f94622cc5617`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:33:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:33:41 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:33:41 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4dca8e96e2b768f94ff337fd0156e3212644173c8868f36093a9963def432e`  
		Last Modified: Wed, 23 Jan 2019 15:38:00 GMT  
		Size: 14.9 MB (14909124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:slim-threaded`

```console
$ docker pull perl@sha256:bb6df0f0ebbfe2d607a4d4cf56ff8e8850bb1dbff118b15a7db6cd1d456f8624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c40e8ac235d3547efadbede28c437b7a6d5516bf4f549f52f9ad72dc89e8ed26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36999653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246ef8cec8e49345768f570829eb54a4f86fb00926a1c7864d9b04678c4f426b`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:53:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:53:40 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:53:40 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b55d6ab94494ff7a00036774fb7a7474615dceb81d003c7b2bd22fc84fb7af`  
		Last Modified: Tue, 29 Jan 2019 00:51:12 GMT  
		Size: 14.5 MB (14498768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:f2296e1fbd2565e3550b2c7afa88616dd9e7594dbbd91e7fecf26f871c83f2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0766ce885f35676b788856ca2e60314439469fbede0812196da4d189d79833`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:52:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:52:22 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:52:23 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ccc4a5c51fe17d059c819bc9f032eb6831987052e0b3c1ea8752d5a99b6cc1`  
		Last Modified: Wed, 23 Jan 2019 17:00:13 GMT  
		Size: 13.6 MB (13620692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f0d40ad777c03db6c30d3df126feaff9115336cf90f51d4b9711024c1302e245
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34654953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c17d175824a519d6c1b04cbb4129fe1fbbc3f7187b404c88080faa7def7d38`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:44:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:44:38 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:44:38 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4227c71ec0b8adfbb4a1953a2349024ae87e3e2740100d2edf667f11425a920a`  
		Last Modified: Tue, 29 Jan 2019 12:21:55 GMT  
		Size: 14.3 MB (14304594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:1f137f427ae12a40d62cada5e9cfac9aca005c4644d3ea89c3e5573dcd6653e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37168813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c47e24ce9403244ee81f69c25fd14dac5d633b8ecf1895f56e5508b8200e3`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:21:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:21:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:21:35 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f3bb0aaee46e4f44707124a399ad4cf05e9b21f5eb0e9c16e8754ef1d88c7`  
		Last Modified: Tue, 29 Jan 2019 13:24:20 GMT  
		Size: 14.0 MB (14021519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:5d9c1c7c60a3738d30c936e852dac861d7dbb4a5a59a40fab57d26d32a722a6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37132261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da83d4ae93193dad9ea3cb78f3d12ea82a78f13618c8fa5e7d1cd91b749df432`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:48:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:48:27 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:48:29 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc5583f2ae56a8ebfd503b4dca3e56970afbdf37f7a404c4c833ec30026c446`  
		Last Modified: Tue, 29 Jan 2019 10:44:52 GMT  
		Size: 14.4 MB (14376726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:29e9372811654f35f40cc6fcb8dca7b911d8db1bbb66ba5707261577343347d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14d37524f59b77a4160ebcdb2d635822a5fd2200a3974f7fedbca313f9b51ad`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:47:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:47:35 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:47:35 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8924080b3ac778174ccec7cd6df9720d38e457da8b83e8eb784d0f1ff3168756`  
		Last Modified: Wed, 23 Jan 2019 15:38:22 GMT  
		Size: 14.9 MB (14923693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:threaded`

```console
$ docker pull perl@sha256:384dfae9cec05fce8b5ae5726040022397459c74391e6b8a8ff7158b66285aa3
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
$ docker pull perl@sha256:faec23443aaf23b7d541a205568769343a1be3827e8ebdc18b5a469fb55fad57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338790962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f96484e2cafd19efe9e8cf136ec1b31ff79a091cfa1dd306d86c7044f4432c`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:31:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:31:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:31:13 GMT
WORKDIR /usr/src/perl
# Mon, 28 Jan 2019 23:45:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 28 Jan 2019 23:45:47 GMT
WORKDIR /root
# Mon, 28 Jan 2019 23:45:47 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f7a0920ce12498040091232541e5f75306c09564f092b55c539d66b93aee7c`  
		Last Modified: Tue, 22 Jan 2019 20:14:14 GMT  
		Size: 214.3 MB (214278924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d15566f961e27787bfbcbe10c2748e436fef63475731ee5cf117b97074afd3`  
		Last Modified: Wed, 23 Jan 2019 01:28:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4628004557eee8bd51ffab2b338e5ac4f4746876018e4127ed680566719385`  
		Last Modified: Tue, 29 Jan 2019 00:51:03 GMT  
		Size: 14.0 MB (13983275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:4a23ae7cb26024f8280b6ee09cee4af585de91db33e699991953b149d888312a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (310024830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee8f7f1abb337952d71ffce1b654a9d995ab87857b8d2b5bfa4f97f1489357c`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:52 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:14:53 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:14:54 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 15:43:20 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 15:43:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 15:43:21 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35cd4818b824d185e333c10d37da272b35fa2ba5b8ec12d4266b1fee894ac0`  
		Last Modified: Wed, 23 Jan 2019 16:59:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b63a7b08e4ebb212d9650816ab337f69b826a0cdc1198ca6db74ba74f2bc72`  
		Last Modified: Wed, 23 Jan 2019 16:59:56 GMT  
		Size: 13.1 MB (13115363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:9bb8742ec47ee93cccef2ca78242bcfd0e2cd3440c248ebee3b3e4adabb937f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.4 MB (320430017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e08921561ba09b6af44ee80d376685a3059bdf7e273210e04cda87a06697848`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:55:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 11:55:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 11:55:23 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:31:34 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:31:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:31:36 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5896a5b9f158145ab5671e972702f14b4afa91bc8ecbb009a22490f903e795`  
		Last Modified: Wed, 09 Jan 2019 13:16:56 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6346fc9ede3422489e7c9f70dcc8a3532c9bdd36444363efc34f2a2562a3773b`  
		Last Modified: Tue, 29 Jan 2019 12:21:35 GMT  
		Size: 13.8 MB (13797801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; 386

```console
$ docker pull perl@sha256:855f7ea0283613ece66cb17c5622b5c9b31c9f2fe5006845437fbf37263f1175
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345857888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f797e8ef9dc90f953f9fdf8cae49f069faaac6376ff10e127f40ba01557318a7`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:45:12 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:45:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:45:13 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:12:49 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:12:49 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:12:49 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b3cd21e45d4a214b7cf296da71cf72ec90b1a04306232020142f7fea0f3b0`  
		Last Modified: Wed, 23 Jan 2019 13:12:16 GMT  
		Size: 219.3 MB (219328576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b04738c57374b84125b350e0e39ebd11701ee15fafa509c53dbfc1d05891c1`  
		Last Modified: Wed, 23 Jan 2019 17:22:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f56bc824097249e143080eb7d7837a6932f050fd6ba15281ea5dc015cec56e`  
		Last Modified: Tue, 29 Jan 2019 13:24:09 GMT  
		Size: 13.5 MB (13506471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:595dbcc2a5d5f4348567d576673ae4172650f2f39d1a865b757158bc2d097eee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 MB (333715548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c609a2599a618272484bfe02ca53fa5357a16d6c960c349f71fdf537aeed37`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:57:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:36:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 09 Jan 2019 10:36:22 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 09 Jan 2019 10:36:25 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 09:41:42 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 09:41:45 GMT
WORKDIR /root
# Tue, 29 Jan 2019 09:41:46 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ace8dbaa7a950370e43b9a17e3e70fa96999798e37e877dd3827ddd5949dc`  
		Last Modified: Wed, 09 Jan 2019 10:17:36 GMT  
		Size: 209.9 MB (209898301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211a5b3dfd3947ac0a66567138718414b1b1e08bdc228e6decc5dbbbc86bed9b`  
		Last Modified: Wed, 09 Jan 2019 11:25:25 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50b4965eda349c17144c998e0bbeb664fdd5eecc09e926014069ec2d9b33bb1`  
		Last Modified: Tue, 29 Jan 2019 10:44:31 GMT  
		Size: 13.9 MB (13864663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; s390x

```console
$ docker pull perl@sha256:d872eda180d1aaf3101fdfe0be7f9594858a735a0798265982bc2f32e705c85b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.3 MB (330279686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af43c4950a49170d1293a8e7d806a7c643be4290d28a45c36ccdb3768c77014`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:21:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:21:04 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:21:04 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:40:47 GMT
RUN true     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:40:47 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:40:47 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fb834ba4a689b81cd8a5bfd53889387ddfd0090c29be704bdcb94be8628f9`  
		Last Modified: Wed, 23 Jan 2019 13:27:47 GMT  
		Size: 205.5 MB (205480585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0987ef8673ce0247c71b9f785700c7f0fa2888dee632eb97454c8d03cbbfd79`  
		Last Modified: Wed, 23 Jan 2019 15:37:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b1cd0442398c37481cfa3b80dda60e22ea0c8858930b9e6a5b7df477922b4f`  
		Last Modified: Wed, 23 Jan 2019 15:38:11 GMT  
		Size: 14.4 MB (14411477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
