<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fsharp`

-	[`fsharp:4`](#fsharp4)
-	[`fsharp:4.0`](#fsharp40)
-	[`fsharp:4.0.1`](#fsharp401)
-	[`fsharp:4.0.1.1`](#fsharp4011)
-	[`fsharp:4.1`](#fsharp41)
-	[`fsharp:4.1.34`](#fsharp4134)
-	[`fsharp:4.1.34-netcore`](#fsharp4134-netcore)
-	[`fsharp:4.1-netcore`](#fsharp41-netcore)
-	[`fsharp:4-netcore`](#fsharp4-netcore)
-	[`fsharp:latest`](#fsharplatest)
-	[`fsharp:netcore`](#fsharpnetcore)

## `fsharp:4`

```console
$ docker pull fsharp@sha256:f0a7414f72b920ba53af7bc529274692b845352171043787bb439c71484ec43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4` - linux; amd64

```console
$ docker pull fsharp@sha256:1785ad94d53047d535c2c2a870397f2c77f8c4410f1b4c8e8807aca87bfd5a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176399299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e57efd21c513bf95de5ff14e984f208c40abdcc969d92b1db26d75919a4a6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0`

```console
$ docker pull fsharp@sha256:12e4d10e1d13f563cc27a6d7cde51f205a8b156e3237358bdfa2e5bddae14194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0` - linux; amd64

```console
$ docker pull fsharp@sha256:7c24376ac47d99d9221c881b1be6d3b05004f63101b9aecfc6fad34b41f131e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279901504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2a724ce5b55fb9d7709235e69f9c4036d16c1a282f7935302f43e59a990486`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 06:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:43:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 06:44:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:46:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:18:50 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Sat, 14 Apr 2018 02:18:51 GMT
ENV MONO_VERSION=4.8.0.495
# Sat, 14 Apr 2018 02:18:56 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 14 Apr 2018 02:18:57 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 14 Apr 2018 02:20:15 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:20:16 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 14 Apr 2018 02:20:16 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 14 Apr 2018 02:26:18 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 14 Apr 2018 02:26:18 GMT
WORKDIR /root
# Sat, 14 Apr 2018 02:26:19 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795da85449f085eda322cd34f08cfa89bebf83f53de9fee3a11c76db079479dc`  
		Last Modified: Fri, 13 Apr 2018 09:07:18 GMT  
		Size: 4.7 MB (4658328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db5dca2d20cd95091eb73d0e0d632975330ac65f51ee2709d39779303b5d42d`  
		Last Modified: Fri, 13 Apr 2018 09:08:36 GMT  
		Size: 29.6 MB (29557124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f40db2d72f40ea691c4638e5dcb76ed4089df70c829b835b7f6d44aae244d`  
		Last Modified: Fri, 13 Apr 2018 09:14:28 GMT  
		Size: 106.7 MB (106668496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2364ca6e15fdd380bfe1a60124f4642858b955791968375f51ed92ac8592c999`  
		Last Modified: Sat, 14 Apr 2018 02:43:12 GMT  
		Size: 13.8 KB (13822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1638a7c8a4b697ce61e05ac9f96959764fed03de3f6bdc961460a6e40c52f88`  
		Last Modified: Sat, 14 Apr 2018 02:43:23 GMT  
		Size: 55.3 MB (55285627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5758ff2d4313672f9bc5999d7a53fa293d49dd1de48c4cc0c51d259faf158134`  
		Last Modified: Sat, 14 Apr 2018 02:43:13 GMT  
		Size: 10.6 MB (10579263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1`

```console
$ docker pull fsharp@sha256:12e4d10e1d13f563cc27a6d7cde51f205a8b156e3237358bdfa2e5bddae14194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1` - linux; amd64

```console
$ docker pull fsharp@sha256:7c24376ac47d99d9221c881b1be6d3b05004f63101b9aecfc6fad34b41f131e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279901504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2a724ce5b55fb9d7709235e69f9c4036d16c1a282f7935302f43e59a990486`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 06:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:43:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 06:44:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:46:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:18:50 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Sat, 14 Apr 2018 02:18:51 GMT
ENV MONO_VERSION=4.8.0.495
# Sat, 14 Apr 2018 02:18:56 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 14 Apr 2018 02:18:57 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 14 Apr 2018 02:20:15 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:20:16 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 14 Apr 2018 02:20:16 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 14 Apr 2018 02:26:18 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 14 Apr 2018 02:26:18 GMT
WORKDIR /root
# Sat, 14 Apr 2018 02:26:19 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795da85449f085eda322cd34f08cfa89bebf83f53de9fee3a11c76db079479dc`  
		Last Modified: Fri, 13 Apr 2018 09:07:18 GMT  
		Size: 4.7 MB (4658328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db5dca2d20cd95091eb73d0e0d632975330ac65f51ee2709d39779303b5d42d`  
		Last Modified: Fri, 13 Apr 2018 09:08:36 GMT  
		Size: 29.6 MB (29557124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f40db2d72f40ea691c4638e5dcb76ed4089df70c829b835b7f6d44aae244d`  
		Last Modified: Fri, 13 Apr 2018 09:14:28 GMT  
		Size: 106.7 MB (106668496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2364ca6e15fdd380bfe1a60124f4642858b955791968375f51ed92ac8592c999`  
		Last Modified: Sat, 14 Apr 2018 02:43:12 GMT  
		Size: 13.8 KB (13822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1638a7c8a4b697ce61e05ac9f96959764fed03de3f6bdc961460a6e40c52f88`  
		Last Modified: Sat, 14 Apr 2018 02:43:23 GMT  
		Size: 55.3 MB (55285627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5758ff2d4313672f9bc5999d7a53fa293d49dd1de48c4cc0c51d259faf158134`  
		Last Modified: Sat, 14 Apr 2018 02:43:13 GMT  
		Size: 10.6 MB (10579263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:12e4d10e1d13f563cc27a6d7cde51f205a8b156e3237358bdfa2e5bddae14194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

```console
$ docker pull fsharp@sha256:7c24376ac47d99d9221c881b1be6d3b05004f63101b9aecfc6fad34b41f131e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279901504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2a724ce5b55fb9d7709235e69f9c4036d16c1a282f7935302f43e59a990486`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 06:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:43:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 06:44:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 06:46:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:18:50 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Sat, 14 Apr 2018 02:18:51 GMT
ENV MONO_VERSION=4.8.0.495
# Sat, 14 Apr 2018 02:18:56 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 14 Apr 2018 02:18:57 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 14 Apr 2018 02:20:15 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:20:16 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 14 Apr 2018 02:20:16 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 14 Apr 2018 02:26:18 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 14 Apr 2018 02:26:18 GMT
WORKDIR /root
# Sat, 14 Apr 2018 02:26:19 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795da85449f085eda322cd34f08cfa89bebf83f53de9fee3a11c76db079479dc`  
		Last Modified: Fri, 13 Apr 2018 09:07:18 GMT  
		Size: 4.7 MB (4658328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db5dca2d20cd95091eb73d0e0d632975330ac65f51ee2709d39779303b5d42d`  
		Last Modified: Fri, 13 Apr 2018 09:08:36 GMT  
		Size: 29.6 MB (29557124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f40db2d72f40ea691c4638e5dcb76ed4089df70c829b835b7f6d44aae244d`  
		Last Modified: Fri, 13 Apr 2018 09:14:28 GMT  
		Size: 106.7 MB (106668496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2364ca6e15fdd380bfe1a60124f4642858b955791968375f51ed92ac8592c999`  
		Last Modified: Sat, 14 Apr 2018 02:43:12 GMT  
		Size: 13.8 KB (13822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1638a7c8a4b697ce61e05ac9f96959764fed03de3f6bdc961460a6e40c52f88`  
		Last Modified: Sat, 14 Apr 2018 02:43:23 GMT  
		Size: 55.3 MB (55285627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5758ff2d4313672f9bc5999d7a53fa293d49dd1de48c4cc0c51d259faf158134`  
		Last Modified: Sat, 14 Apr 2018 02:43:13 GMT  
		Size: 10.6 MB (10579263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1`

```console
$ docker pull fsharp@sha256:f0a7414f72b920ba53af7bc529274692b845352171043787bb439c71484ec43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1` - linux; amd64

```console
$ docker pull fsharp@sha256:1785ad94d53047d535c2c2a870397f2c77f8c4410f1b4c8e8807aca87bfd5a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176399299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e57efd21c513bf95de5ff14e984f208c40abdcc969d92b1db26d75919a4a6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.34`

```console
$ docker pull fsharp@sha256:f0a7414f72b920ba53af7bc529274692b845352171043787bb439c71484ec43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1.34` - linux; amd64

```console
$ docker pull fsharp@sha256:1785ad94d53047d535c2c2a870397f2c77f8c4410f1b4c8e8807aca87bfd5a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176399299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e57efd21c513bf95de5ff14e984f208c40abdcc969d92b1db26d75919a4a6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.34-netcore`

```console
$ docker pull fsharp@sha256:9477aa616f15cb7ee8f9643a88de6db12dfd9969b580d85884f41b8e680579e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1.34-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:30658c0249f10d9190ff4d5e954e2fde7002f11f67840646620f47e167bc9903
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **649.8 MB (649781002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a197ed9c4175202f415225d13c83e634609a22778f0573944fb65e9902f6946`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
# Fri, 20 Apr 2018 05:43:15 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Fri, 20 Apr 2018 05:43:15 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Fri, 20 Apr 2018 05:43:16 GMT
ENV NUGET_XMLDOC_MODE=skip
# Fri, 20 Apr 2018 05:43:41 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Apr 2018 05:43:51 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Fri, 20 Apr 2018 05:43:52 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Fri, 20 Apr 2018 05:44:41 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Fri, 20 Apr 2018 05:44:42 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe07972c545c98915b432c20ab78fa31f925f90d5b79e8695f181c113eaa0c`  
		Last Modified: Fri, 20 Apr 2018 06:05:53 GMT  
		Size: 18.6 MB (18575605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade481b4a4fedf3f4833eeddc5e97b99072dec4c9303045ca7ebff7df93f51f`  
		Last Modified: Fri, 20 Apr 2018 06:06:10 GMT  
		Size: 164.3 MB (164322424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747754fa83bf0e02c1b08c5d3e0c6d0d2c139c84b8b10555f84da9a441781a62`  
		Last Modified: Fri, 20 Apr 2018 06:07:19 GMT  
		Size: 290.5 MB (290483674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1-netcore`

```console
$ docker pull fsharp@sha256:9477aa616f15cb7ee8f9643a88de6db12dfd9969b580d85884f41b8e680579e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:30658c0249f10d9190ff4d5e954e2fde7002f11f67840646620f47e167bc9903
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **649.8 MB (649781002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a197ed9c4175202f415225d13c83e634609a22778f0573944fb65e9902f6946`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
# Fri, 20 Apr 2018 05:43:15 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Fri, 20 Apr 2018 05:43:15 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Fri, 20 Apr 2018 05:43:16 GMT
ENV NUGET_XMLDOC_MODE=skip
# Fri, 20 Apr 2018 05:43:41 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Apr 2018 05:43:51 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Fri, 20 Apr 2018 05:43:52 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Fri, 20 Apr 2018 05:44:41 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Fri, 20 Apr 2018 05:44:42 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe07972c545c98915b432c20ab78fa31f925f90d5b79e8695f181c113eaa0c`  
		Last Modified: Fri, 20 Apr 2018 06:05:53 GMT  
		Size: 18.6 MB (18575605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade481b4a4fedf3f4833eeddc5e97b99072dec4c9303045ca7ebff7df93f51f`  
		Last Modified: Fri, 20 Apr 2018 06:06:10 GMT  
		Size: 164.3 MB (164322424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747754fa83bf0e02c1b08c5d3e0c6d0d2c139c84b8b10555f84da9a441781a62`  
		Last Modified: Fri, 20 Apr 2018 06:07:19 GMT  
		Size: 290.5 MB (290483674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4-netcore`

```console
$ docker pull fsharp@sha256:9477aa616f15cb7ee8f9643a88de6db12dfd9969b580d85884f41b8e680579e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:30658c0249f10d9190ff4d5e954e2fde7002f11f67840646620f47e167bc9903
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **649.8 MB (649781002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a197ed9c4175202f415225d13c83e634609a22778f0573944fb65e9902f6946`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
# Fri, 20 Apr 2018 05:43:15 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Fri, 20 Apr 2018 05:43:15 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Fri, 20 Apr 2018 05:43:16 GMT
ENV NUGET_XMLDOC_MODE=skip
# Fri, 20 Apr 2018 05:43:41 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Apr 2018 05:43:51 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Fri, 20 Apr 2018 05:43:52 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Fri, 20 Apr 2018 05:44:41 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Fri, 20 Apr 2018 05:44:42 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe07972c545c98915b432c20ab78fa31f925f90d5b79e8695f181c113eaa0c`  
		Last Modified: Fri, 20 Apr 2018 06:05:53 GMT  
		Size: 18.6 MB (18575605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade481b4a4fedf3f4833eeddc5e97b99072dec4c9303045ca7ebff7df93f51f`  
		Last Modified: Fri, 20 Apr 2018 06:06:10 GMT  
		Size: 164.3 MB (164322424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747754fa83bf0e02c1b08c5d3e0c6d0d2c139c84b8b10555f84da9a441781a62`  
		Last Modified: Fri, 20 Apr 2018 06:07:19 GMT  
		Size: 290.5 MB (290483674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:f0a7414f72b920ba53af7bc529274692b845352171043787bb439c71484ec43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

```console
$ docker pull fsharp@sha256:1785ad94d53047d535c2c2a870397f2c77f8c4410f1b4c8e8807aca87bfd5a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176399299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e57efd21c513bf95de5ff14e984f208c40abdcc969d92b1db26d75919a4a6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:9477aa616f15cb7ee8f9643a88de6db12dfd9969b580d85884f41b8e680579e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:30658c0249f10d9190ff4d5e954e2fde7002f11f67840646620f47e167bc9903
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **649.8 MB (649781002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a197ed9c4175202f415225d13c83e634609a22778f0573944fb65e9902f6946`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 03:55:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 14 Mar 2018 03:55:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 14 Mar 2018 04:04:25 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 14 Mar 2018 04:04:25 GMT
WORKDIR /root
# Wed, 14 Mar 2018 04:04:26 GMT
CMD ["fsharpi"]
# Fri, 20 Apr 2018 05:43:15 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Fri, 20 Apr 2018 05:43:15 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Fri, 20 Apr 2018 05:43:16 GMT
ENV NUGET_XMLDOC_MODE=skip
# Fri, 20 Apr 2018 05:43:41 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Apr 2018 05:43:51 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Fri, 20 Apr 2018 05:43:52 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Fri, 20 Apr 2018 05:44:41 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Fri, 20 Apr 2018 05:44:42 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9463bf48c48a2f42842d41308d6803838cbecce12675795d07cc036c7109e814`  
		Last Modified: Wed, 14 Mar 2018 04:22:20 GMT  
		Size: 146.3 MB (146276897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe07972c545c98915b432c20ab78fa31f925f90d5b79e8695f181c113eaa0c`  
		Last Modified: Fri, 20 Apr 2018 06:05:53 GMT  
		Size: 18.6 MB (18575605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade481b4a4fedf3f4833eeddc5e97b99072dec4c9303045ca7ebff7df93f51f`  
		Last Modified: Fri, 20 Apr 2018 06:06:10 GMT  
		Size: 164.3 MB (164322424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747754fa83bf0e02c1b08c5d3e0c6d0d2c139c84b8b10555f84da9a441781a62`  
		Last Modified: Fri, 20 Apr 2018 06:07:19 GMT  
		Size: 290.5 MB (290483674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
