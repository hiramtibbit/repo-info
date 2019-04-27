## `buildpack-deps:disco`

```console
$ docker pull buildpack-deps@sha256:e134ae805079901d609631fad6c7552648785ee32e9e1f89f02abcbd0fe351c4
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
$ docker pull buildpack-deps@sha256:b103bc56dd400e45d30d01b1e6e0296505336dc5d0b72da44b06960029b5793f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234504553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0f8c45def351e3690d60c8511ab21f2b50f32d0666ba673b6da07829b11134`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:46 GMT
ADD file:3d102fe260ec4d6629916600b464c22ec98d92f70fbd77eb5bc9be491246aec7 in / 
# Fri, 26 Apr 2019 22:21:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:48 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 22:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:50:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Apr 2019 22:51:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:53:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7eab35e32a16ff1387d61b34bddec80cc134f691c428065bdb4c81a3a339fb44`  
		Last Modified: Fri, 26 Apr 2019 22:23:13 GMT  
		Size: 29.8 MB (29761618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0b49bd5b97141e4edf0018e1345d0e6d44ab1a80ac86c753ef7ca1f96f6284`  
		Last Modified: Fri, 26 Apr 2019 22:23:08 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ea149966fabba8a80d6f2c9f22589f7b851f60ca712e844bdd67038a63e554`  
		Last Modified: Fri, 26 Apr 2019 22:23:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56480354398151b0726ab0aa1e02a6c51ebfbada0eaa3611748d4d27c3c05ce`  
		Last Modified: Fri, 26 Apr 2019 22:23:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f11ddc8843fecf98b8321de938abc3014f4aa990903a2890e77a49bb61a419d`  
		Last Modified: Fri, 26 Apr 2019 23:01:47 GMT  
		Size: 6.7 MB (6666774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9859ec75336f5ab1a44f11f358e9fa44c77ebbf147c95e2e0aafe44a68d032`  
		Last Modified: Fri, 26 Apr 2019 23:01:45 GMT  
		Size: 3.5 MB (3511173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6d291e8c52dee3df6b77168a7cc1859b3b53a6b21cef617e4f68f4a0a5d386`  
		Last Modified: Fri, 26 Apr 2019 23:02:04 GMT  
		Size: 49.0 MB (48978924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b7459cac756a2a1d805672950d8f1f4670a62d98715e6af79e27185ff82107`  
		Last Modified: Fri, 26 Apr 2019 23:02:39 GMT  
		Size: 145.6 MB (145584844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d1c21eea632298de7e65ff0280c0bde5e5f63ffcb9e812b7a80c37c8700d9864
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201540263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d02c40a3dfd39378471b7f266d9ff1c337aae94dd994ade0b69534ea03fb93`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:08:28 GMT
ADD file:bcca04af0d36d0354bfb4a46dad49d1280bc0e2704b6968568b6edcc4deab6a1 in / 
# Sat, 27 Apr 2019 12:08:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:08:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:08:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:08:35 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:35:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:35:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 12:36:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b1fe240e4003ec1271825b46f7f1e43da4ba58394bcef835042c33768914dc9c`  
		Last Modified: Sat, 27 Apr 2019 12:10:57 GMT  
		Size: 25.3 MB (25257056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4126a91a351568fba2a92beb6235cae02a3978ca00eb3a29a11f640c26909b`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12143ea0542941ecd71aa302dd7afef3ebc2f0eb810f307095d4e5106a35fdcc`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629ff63959669f2ce7218bde428a29a0f3992f5098d1937fb8513ba279a09f38`  
		Last Modified: Sat, 27 Apr 2019 12:10:50 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a0495fbe9dd27d67516bd3f9fa616047002b91c11ecfc7ee578e73facd06c5`  
		Last Modified: Sat, 27 Apr 2019 12:49:22 GMT  
		Size: 5.6 MB (5640326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5fdaad6dd7378260adf57ab16080905d6f906cad0d731783f10f47e6681f17`  
		Last Modified: Sat, 27 Apr 2019 12:49:22 GMT  
		Size: 3.0 MB (2975577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84496719b0544dd9511c13065af9fbf8e457032fe65bfc354c9b6660f6eb41e`  
		Last Modified: Sat, 27 Apr 2019 12:49:43 GMT  
		Size: 44.5 MB (44500259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a810e6ede50b01443e6ad712f991efc2e7356e5b335329698c04721a99ba8d4b`  
		Last Modified: Sat, 27 Apr 2019 12:50:24 GMT  
		Size: 123.2 MB (123165797 bytes)  
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
$ docker pull buildpack-deps@sha256:e8b27f0ece9204350c4f49a206a71e57e64ce1447f5f50c7e968442d3af05e1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238800245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be93ec38d577cecafba2bd420d33c4e6950a26535ce2db64223d146be3ddd76`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 11:58:26 GMT
ADD file:590e9ab0529542976636982092fc27d82616b92d7e8e9218dae6f9c479faed89 in / 
# Sat, 27 Apr 2019 11:58:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 11:58:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:58:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 11:58:28 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:30:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 12:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b0ec486e8ca6e81f7667ce95a52d0d0bd8d37f18d64873f2b619cea5150a2083`  
		Last Modified: Sat, 27 Apr 2019 11:59:55 GMT  
		Size: 30.4 MB (30420686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2493384b114bcc4649d72fc3a028bdf832a2fde19616608498907ab07a2554`  
		Last Modified: Sat, 27 Apr 2019 11:59:48 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb173cff22a28fe95d92de25bc466e320ae283dbecddc2276592c7e8e31d15e`  
		Last Modified: Sat, 27 Apr 2019 11:59:48 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6d341fe48e1bec15f0d2e842ae04ce911c0d91bb683de15f6b89c65cd25b3e`  
		Last Modified: Sat, 27 Apr 2019 11:59:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28627c8ce0bb9c9a11bc19d7ae150f4a808245cce7f3acf1e1aa4611e63a792`  
		Last Modified: Sat, 27 Apr 2019 12:41:43 GMT  
		Size: 7.0 MB (6979404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812af0b5d0c21fbec46e9bc282cc83b3000d953bb1e2e002d86cb06730431495`  
		Last Modified: Sat, 27 Apr 2019 12:41:42 GMT  
		Size: 3.8 MB (3804559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79103ac417160535166427d295b072d2af46a55f7b5c372fc22a75f12ee862a`  
		Last Modified: Sat, 27 Apr 2019 12:42:00 GMT  
		Size: 50.5 MB (50515008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506c2236cebe24bbef983e6e0bcfe37959a063455e79387825aa649257f10ebf`  
		Last Modified: Sat, 27 Apr 2019 12:42:38 GMT  
		Size: 147.1 MB (147079368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8c8bf54770673620c6c3215ab764e4f11ec040e872b308b468203292ec3bce04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265810390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a8bff00b189b4c2dae47be02949083fba630c2f8e49b21b1182e5834bc0ac2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:24:32 GMT
ADD file:58bb3a0119a14002fa97781ba0f47f14a78ec4a1b0ccdb3d6709f91cd330b340 in / 
# Sat, 27 Apr 2019 09:24:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:24:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:24:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:24:53 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:22:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:23:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 10:27:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:44:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a999c107c313f741c65c3a8769432eb37516e9d8d70d880e8c422bdaf0a585fc`  
		Last Modified: Sat, 27 Apr 2019 09:31:20 GMT  
		Size: 35.0 MB (35024949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa2b0476ee53b4f0e8d4a8b579933f32271ac9bf8bc59b5db23ceaa5a4b1688`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 872.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7377a54be74859898e331f16ce38ed25707db0fc01a825977654155e9118026`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a57350737985b161b838f05ab6e216fc9a1b04899afbe9371a4005d977109c`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d4a20350a3ade0f659947f77b00f7a2c16028efd5d7553978d3f858b4a8a83`  
		Last Modified: Sat, 27 Apr 2019 11:15:12 GMT  
		Size: 7.7 MB (7741711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc43be99fff6f4b757dd635be156dd00a9dace995b76cb45ca503371aa605abc`  
		Last Modified: Sat, 27 Apr 2019 11:15:11 GMT  
		Size: 4.5 MB (4461300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cd5c478aa7e430409abf83af049e5cfc873cb83e1edd5bb151f7c0ffa79797`  
		Last Modified: Sat, 27 Apr 2019 11:16:26 GMT  
		Size: 57.8 MB (57761122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936e3d5fcc874232462eaefb973ce8a34cc1f1675603b22ef9d3dcff39e24ada`  
		Last Modified: Sat, 27 Apr 2019 11:18:56 GMT  
		Size: 160.8 MB (160820056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:623416046bbd113e1666e972a57e19f01ddca14f7303f83de9123f5ca52cbe17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218565744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fa55c13ae5cbd050840ad046a007b18ea9d8316ccc684edfcf32c8ac30da4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:54:58 GMT
ADD file:a16897092822baeb56b0876084d73f88afc87588ef3e1dcfb24fcf5d6ef68f06 in / 
# Sat, 27 Apr 2019 12:55:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:55:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:55:08 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:32:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 13:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:35:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:db0fed35c1fe21f6cef98284377fee19d2fd29544e8ea4d049e738cb5d344756`  
		Last Modified: Sat, 27 Apr 2019 12:56:52 GMT  
		Size: 28.3 MB (28345778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227d97e8c201531ee5b8921cadf3f0fd5c473196487ebb905c78da97ed26ad78`  
		Last Modified: Sat, 27 Apr 2019 12:56:45 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8943efa94d3a3f24e7ab82e536d7062446f10832d784cce97723b4ba981ec48f`  
		Last Modified: Sat, 27 Apr 2019 12:56:45 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea6800dae56e1d243377f7e8510d85ea1ebeab2a7792f6c0e047c388daccd01`  
		Last Modified: Sat, 27 Apr 2019 12:56:45 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dac8f9cd310af6d03ee08342ed686ffbd3d031e5513faa94cbaa0ad827cefd`  
		Last Modified: Sat, 27 Apr 2019 13:40:28 GMT  
		Size: 6.2 MB (6228324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0c713b34900deb405ffb639bec5b7ff5697bb4be79a77757d760da444f7fa4`  
		Last Modified: Sat, 27 Apr 2019 13:40:27 GMT  
		Size: 3.4 MB (3428686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61263e443a8cbfb9be4aa359c6c352051ff72b3f5696585f5e3d5475fcd1988e`  
		Last Modified: Sat, 27 Apr 2019 13:40:43 GMT  
		Size: 48.6 MB (48642104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471dd7ab4c9aaac7159341b18f186728e6b84c223bf17643af22be56b3792c9`  
		Last Modified: Sat, 27 Apr 2019 13:41:17 GMT  
		Size: 131.9 MB (131919640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
