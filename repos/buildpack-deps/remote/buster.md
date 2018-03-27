## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:5bd587393a3d0f163846d24cd6d5147aef988741c858e4d2f06af7d9ba2292ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:buster` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:89602e327c9a9299c89d249a467558b135d2b1762eb5940ed082075d0f003b69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.5 MB (310491866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298f855ec466f7908bfebdbb3f1aeb314d4759d0ffb36a5df428dca1e9762bd7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:23:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:23:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:25:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902ef9bb40cf26af0ca5b4e59394ef05874342e7b0fdab3709f6d81db2e1dd74`  
		Last Modified: Wed, 14 Mar 2018 00:18:52 GMT  
		Size: 8.6 MB (8633494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e66d443de451643ebfc61b107549a8ec674a3ccacea1df51ae8db332f882913`  
		Last Modified: Wed, 14 Mar 2018 00:18:53 GMT  
		Size: 9.1 MB (9103454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826091e0ca204a323086ba62278e007a1b7b30ea250ab85b458b9c21818e3ee2`  
		Last Modified: Wed, 14 Mar 2018 00:19:28 GMT  
		Size: 49.1 MB (49084024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b33e0009877c4884df824db19b7eb43425348c0a7d19264b3cc1c2b2bf1c536`  
		Last Modified: Wed, 14 Mar 2018 00:20:54 GMT  
		Size: 195.5 MB (195511924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:370c7d96dab1026a59352f4ad243a3ad283516f4fb2381efdf22a3f5695ea136
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292056733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9cf37abcf5975dfc778455befef8fef871d806be423814eec2bcd19e37dcd0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:54:44 GMT
ADD file:d2d295ccc43cef52084ca0ba28f30b5bdcf84c56606e9584a277238f11689cbe in / 
# Wed, 14 Mar 2018 19:54:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:34:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:38:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:944025c4ab4f6da4a6f4cd84c23ced4cc2c71f0e649c6dc4983806bf127c1717`  
		Last Modified: Wed, 14 Mar 2018 20:05:42 GMT  
		Size: 46.2 MB (46152089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea07882965a49e43efe695a54d988276ac6c1cb348a0f05e9694633f27649349`  
		Last Modified: Wed, 14 Mar 2018 20:52:11 GMT  
		Size: 7.8 MB (7806768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fa20fe5cb6d353fe6212536953e33b47635d6f818f9bd6201cbadb68a3d5e`  
		Last Modified: Wed, 14 Mar 2018 20:52:11 GMT  
		Size: 8.8 MB (8849414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ce846a429363d8ce3f87a5ad001c82c0710c9a3eaf3439ea9afaea599999e0`  
		Last Modified: Wed, 14 Mar 2018 20:52:38 GMT  
		Size: 46.9 MB (46913869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad560feab7b9383e2879573136b06a776f808ade71ff77191100602477ff3ca1`  
		Last Modified: Wed, 14 Mar 2018 20:53:36 GMT  
		Size: 182.3 MB (182334593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:868cc3eaf52ce3f2be44cdc33393e1beeece64d68725a3b669cca986a1f8db1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195885157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca8a92fd6148e89b79801cb98a71c63d985ff4e4699d00cde93f6e2aefbb5c3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:23:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 27 Mar 2018 00:11:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 00:13:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8313e3b246b7c44ea3c146e17b2033969fc87cfb112a0bcd76b58b4d26ad6e6`  
		Last Modified: Wed, 07 Mar 2018 14:31:37 GMT  
		Size: 6.2 MB (6164421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a02b249e6e3ddb4c01efa9a7dff78feb9000ad682c71b959fade19b3ca2f936`  
		Last Modified: Tue, 27 Mar 2018 00:26:06 GMT  
		Size: 34.3 MB (34297534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caf33e3d9e534e4d39c1e140baa1676697f3bcada440ab80eca840da57d7821`  
		Last Modified: Tue, 27 Mar 2018 00:26:53 GMT  
		Size: 117.3 MB (117347929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:8890df1e359249401282ea8e32799559992490865eb8702a4fd48da4ea314664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295348143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201e97077293ff8513949eb626bb0fcaf84ee35cd967ce0aa22b79edd217ebf1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:23:02 GMT
ADD file:4d06cc781e9fabadda4327717b9e858e087a533b952ce4c62c6903392b4e76ce in / 
# Wed, 14 Mar 2018 17:23:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:10:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:11:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:12:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:21:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5f4421c3a5683a5815aa38bb9e5b6d9900c1fdead4046af0aa2e60a21ca2db9e`  
		Last Modified: Wed, 14 Mar 2018 17:36:30 GMT  
		Size: 45.5 MB (45463739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adc8930e784e1fdda85378c52f6f208653e7fb05f762bb8e7f429be32ead022`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 7.9 MB (7852846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870315f2036e8576f26842c96366fa568ab0156a2a2e17b8eb5e0e5b44f6b9b6`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 8.8 MB (8837935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5209cc31bbe17adc0667b8aa70b72a1613bcf1c931a898fa5b05f1f5aeb5bda5`  
		Last Modified: Wed, 14 Mar 2018 18:58:41 GMT  
		Size: 47.4 MB (47391731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d30a52d87f3109b5658a80a37f92ae20c069ccc5f615fbd4f00d1aeb5819a60`  
		Last Modified: Wed, 14 Mar 2018 19:01:07 GMT  
		Size: 185.8 MB (185801892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4a1acac3bd7599abc92f950ced1e447f79963ae2d162fa0821f8a1ca68a0bc93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.3 MB (349337430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77726b126f55b0c96abb4d59ec8fe129586de8d87a9d7693b49af6b1a663d2ac`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 14:32:40 GMT
ADD file:3c01fc209b7f339c808191aa480867f0b99e4accf7ef1462f8349f440a20ab7f in / 
# Thu, 15 Feb 2018 14:32:41 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 06:51:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 07:03:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 07:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 08:05:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f1e2ef09ccab2284fed00608cbd492f1b548c36e40555caeb9fc07f55ccb93b`  
		Last Modified: Thu, 15 Feb 2018 00:43:51 GMT  
		Size: 48.7 MB (48716336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20316313277691ccc8b35bbd735daf23d96848633d4716f31640518fd2d32f3`  
		Last Modified: Fri, 16 Feb 2018 10:39:14 GMT  
		Size: 8.6 MB (8607086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed9135cebb062a71fb97e6aa68c8a1795b667f7ec722ee92ecd70210a629e20`  
		Last Modified: Fri, 16 Feb 2018 10:39:14 GMT  
		Size: 10.0 MB (9969430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9da33a3c575a8da04806e82b5c5350f3c6794d1d7b67fc42b86f012b27f647`  
		Last Modified: Fri, 16 Feb 2018 10:39:54 GMT  
		Size: 52.8 MB (52848736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0236cff784b35431cddb6b4ee64e42741e379b81ce6427f9164f4c1222631e`  
		Last Modified: Fri, 16 Feb 2018 10:55:39 GMT  
		Size: 229.2 MB (229195842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5f925e5714dba170891f097447a169d80e52b5f4c5b3d917ffcfa10acee59179
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316806579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d517afeaf9f0b967d4e6ed0a9b18116988d1cba9e81cbc33936b27f60e749f77`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:31:43 GMT
ADD file:04ae5de245ffb9dbfd27912d890db10dc909b586e3d500130e2885d1f3c095c2 in / 
# Wed, 14 Mar 2018 00:31:45 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:15:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:18:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:33:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b2963dd0429a4b00d9fabcbfa40f0cd89eb0d08a0d517051d81782f0a6248ba`  
		Last Modified: Wed, 14 Mar 2018 00:37:44 GMT  
		Size: 49.6 MB (49560566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f82e6418b7f0e6a05245fae45fc4a2519fcc5938208be5b3627df385f120dd4`  
		Last Modified: Thu, 15 Mar 2018 02:27:48 GMT  
		Size: 8.2 MB (8210891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568277d30e9372795dc30b603c291ae586bedea422f47885369dfea9c1779be0`  
		Last Modified: Thu, 15 Mar 2018 02:27:48 GMT  
		Size: 9.3 MB (9339651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a2c08fa85337855097ab022ae680e9e1266baf7a0cd10ca6729f04bfbcfb34`  
		Last Modified: Thu, 15 Mar 2018 02:28:13 GMT  
		Size: 52.0 MB (51996389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d384137ea1b25958d458ec01cfa89622344ee9c22f395c7d3aeacbfeb47372a`  
		Last Modified: Thu, 15 Mar 2018 02:29:09 GMT  
		Size: 197.7 MB (197699082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:093fe72be43b2bdd78a45de7471e6fae5cb60cde713fa5feefe21440560b197d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297521498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439752e5f77507c9f4859f303c4ec80555cfe9870684192ddd355211e6e248c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:31 GMT
ADD file:8d3dda58905073b30d5dc7024667b795f7d4a69c2343682083583478415ef303 in / 
# Wed, 14 Mar 2018 05:21:31 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:46:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:49:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f93a691cf870e13a2c95b73a495fd6e7444fb8fc891b02bf8bdab7a1e76016f2`  
		Last Modified: Wed, 14 Mar 2018 05:25:38 GMT  
		Size: 47.3 MB (47341756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03124b87d86a7936f701b2593a938660b1cde782c41c2bb93e48c1b93d0b1f`  
		Last Modified: Wed, 14 Mar 2018 05:57:54 GMT  
		Size: 8.2 MB (8166947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d65c633f97f1be69a472eefe993e1dcc889444a3acafe05b6857a9e1d2c9eb`  
		Last Modified: Wed, 14 Mar 2018 05:57:53 GMT  
		Size: 9.1 MB (9075317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea87d0643e8fa7d2f3054701e87459690f6e0b2c88e861996fc10324d40848b6`  
		Last Modified: Wed, 14 Mar 2018 05:58:09 GMT  
		Size: 49.1 MB (49073416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e684b598d78825a04aceea96ca4be2cce5e2b82cbe6d94993d99c6c7602a2e65`  
		Last Modified: Wed, 14 Mar 2018 05:58:46 GMT  
		Size: 183.9 MB (183864062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
